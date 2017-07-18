#libraries needed
require(dplyr)
require(randomForest)
require(ROCR)
# library(ROCR)

#read data
data = read.csv("~/Dropbox/JOB/DS/Fraud/Fraud_Data.csv")
ip_addresses = read.csv("~/Dropbox/JOB/DS/Fraud/IpAddress_to_Country.csv")

#are there duplicates?
nrow(data) == length(unique(data$user_id))


#Let's add the country to the original data set by using the ip address
data_country = rep(NA, nrow(data))
for (i in 1: nrow(data)){
  tmp = as.character(ip_addresses [data$ip_address[i] >= ip_addresses$lower_bound_ip_address & data$ip_address[i] <= ip_addresses$upper_bound_ip_address,
                                   "country"])
  if (length(tmp) == 1) {data_country[i] = tmp}
}
data$country = data_country
data[, "signup_time"] = as.POSIXct(data[, "signup_time"], tz="GMT")
data[, "purchase_time"] = as.POSIXct(data[, "purchase_time"], tz="GMT")
summary(as.factor(data$country))



#time difference between purchase and signup
data$purchase_signup_diff = as.numeric(difftime(as.POSIXct(data$purchase_time, "GMT"), as.POSIXct(data$signup_time, tz="GMT"), unit="secs"))
#check for each device id how many different users had it
data = data %>%
  group_by(device_id) %>%
  mutate (device_id_count = n())
#check for each ip address how many different users had it
data = data.frame(data %>%
                    group_by(ip_address) %>%
                    mutate (ip_address_count = n())
)
#day of the week
data$signup_time_wd = format(data$signup_time, "%A")
data$purchase_time_wd = format(data$purchase_time, "%A" )
#week of the yr
data$signup_time_wy = as.numeric(format(data$signup_time, "%U"))
data$purchase_time_wy = as.numeric(format(data$purchase_time, "%U" ))
#data set for the model. Drop first 3 vars and device id.
data_rf = data[, -c(1:3, 5)]
#replace the NA in the country var
data_rf$country[is.na(data_rf$country)]="Not_found"
#just keep the top 50 country, everything else is "other"
data_rf$country = ifelse(data_rf$country %in% names(sort(table(data_rf$country), 
                decreasing = TRUE ) )[51:length(unique(data_rf$country))], # after top 50 countries
                         "Other", as.character(data_rf$country)
)
#make class a factor
data_rf$class = as.factor(data_rf$class)
#all characters become factors
data_rf[sapply(data_rf, is.character)] <- lapply(data_rf[sapply(data_rf, is.character)], as.factor)
# train/test split
train_sample = sample(nrow(data_rf), size = nrow(data)*0.66)
train_data = data_rf[train_sample,]
test_data = data_rf[-train_sample,]
# a takehome is rarely the place where to optimize the model/the params. Choose so
# mething that makes sense, explain why it makes sense and then say that with more t
# ime you would try 2/3 different models and different params (specify which models
# you would try and why)

rf = randomForest(y=train_data$class, x = train_data[, -7],
                  ytest = test_data$class, xtest = test_data[, -7],
                  ntree = 50, mtry = 3, keep.forest = TRUE)

rf

#let's combine in one data set model predictions and actual values.
#The first column are the actual classes in our test set and the second one the rf predicted scores
rf_results = data.frame (true_values = test_data$class,
                         predictions = rf$test$votes[,2]
)
# we can double check that with a 0.5 cut-off we get the same results shown by rf output(since randomforest internally uses 0.5)
identical( as.numeric(as.character(rf$test$predicted)), ifelse (rf_results$predictions>0.5, 1, 0))


#this creates an object with all the information you can possibly need about how 
#d ifferent cutoff va􀁏ues impact all possible metrics􀀛􀀁true positive, true negative,
#false positive, false negative􀀏􀀏􀀏
pred = prediction (rf_results$predictions, rf_results$true_values)
#now let's just plot the ROC and look at true positive vs false positive
perf = performance (pred, measure = 'tpr', x.measure = "fpr")
plot(perf) + abline(a=0, b=1, col = 'red') # the red line is randomness


