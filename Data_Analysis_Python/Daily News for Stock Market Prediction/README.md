# Daily News for Stock Market Prediction

### RESULT

===Step1: 处理数据集===
清洗数据...
已处理1列.
已处理2列.
已处理3列.
已处理4列.
已处理5列.
已处理6列.
已处理7列.
已处理8列.
已处理9列.
已处理10列.
已处理11列.
已处理12列.
已处理13列.
已处理14列.
已处理15列.
已处理16列.
已处理17列.
已处理18列.
已处理19列.
已处理20列.
已处理21列.
已处理22列.
已处理23列.
已处理24列.
已处理25列.
完成，并保存结果至 ./cln_text.csv
================

===Step2. 查看数据集===
各类样本数量：
label
0     924
1    1065
dtype: int64
===Step3. 分割训练集合测试集===
训练集中各类的数据个数：
label
0    738
1    873
dtype: int64
测试集中各类的数据个数：
label
0    186
1    192
dtype: int64
================

===Step4. 文本特征提取===
统计词频...
出现最多的200个词是：
us: 2499次
israel: 1948次
new: 1872次
says: 1841次
world: 1829次
china: 1729次
government: 1724次
police: 1666次
: 1611次
people: 1555次
u: 1499次
war: 1411次
russia: 1325次
year: 1240次
000: 1219次
years: 1196次
israeli: 1191次
one: 1177次
iran: 1160次
uk: 1157次
president: 1123次
killed: 1083次
north: 1061次
korea: 1012次
country: 1009次
first: 960次
two: 929次
military: 928次
state: 918次
russian: 906次
news: 892次
said: 885次
gaza: 864次
nuclear: 858次
man: 834次
un: 833次
minister: 823次
court: 823次
chinese: 815次
death: 811次
amp: 806次
south: 786次
attack: 742次
law: 741次
old: 737次
could: 734次
found: 731次
women: 729次
1: 726次
may: 722次
india: 720次
british: 714次
rights: 709次
syria: 705次
oil: 690次
human: 674次
japan: 672次
would: 665次
pakistan: 665次
say: 659次
million: 658次
report: 653次
children: 652次
anti: 650次
bank: 631次
dead: 617次
internet: 607次
iraq: 594次
2: 593次
time: 591次
germany: 575次
last: 570次
canada: 566次
drug: 566次
egypt: 566次
palestinian: 562次
al: 561次
wikileaks: 553次
german: 548次
international: 546次
ukraine: 534次
protest: 531次
forces: 529次
france: 529次
afghanistan: 526次
french: 521次
protesters: 518次
woman: 512次
n: 511次
europe: 507次
security: 506次
city: 505次
former: 502次
ban: 502次
mexico: 500次
video: 494次
like: 491次
protests: 491次
leader: 489次
power: 488次
use: 488次
army: 487次
3: 485次
eu: 484次
three: 483次
european: 483次
arrested: 474次
right: 472次
syrian: 472次
bbc: 465次
officials: 465次
american: 461次
calls: 459次
saudi: 455次
global: 454次
fire: 449次
10: 448次
day: 446次
group: 446次
thousands: 445次
r: 442次
back: 441次
5: 437次
water: 437次
australian: 437次
public: 436次
troops: 435次
countries: 434次
billion: 433次
men: 433次
party: 432次
prime: 431次
top: 428次
united: 428次
crisis: 425次
since: 425次
britain: 424次
end: 422次
sex: 421次
west: 412次
australia: 411次
many: 409次
obama: 407次
high: 406次
putin: 406次
muslim: 404次
take: 397次
even: 393次
life: 392次
workers: 391次
secret: 390次
states: 389次
media: 384次
foreign: 384次
snowden: 384次
get: 383次
prison: 382次
air: 379次
child: 379次
face: 378次
canadian: 377次
soldiers: 376次
free: 373次
gay: 372次
iranian: 372次
stop: 371次
least: 371次
4: 370次
killing: 369次
attacks: 368次
official: 366次
without: 366次
afghan: 365次
food: 365次
strike: 363次
parliament: 362次
kill: 355次
help: 353次
korean: 353次
africa: 352次
islamic: 350次
turkey: 350次
set: 349次
make: 348次
100: 346次
shot: 345次
weapons: 340次
home: 340次
today: 338次
london: 338次
border: 338次
palestinians: 336次
accused: 334次
east: 333次
used: 333次
case: 332次
claims: 332次
plans: 330次
girl: 327次
chief: 327次

训练样本提取特征...
提取特征...
已完成100个样本的特征提取
已完成200个样本的特征提取
已完成300个样本的特征提取
已完成400个样本的特征提取
已完成500个样本的特征提取
已完成600个样本的特征提取
已完成700个样本的特征提取
已完成800个样本的特征提取
已完成900个样本的特征提取
已完成1000个样本的特征提取
已完成1100个样本的特征提取
已完成1200个样本的特征提取
已完成1300个样本的特征提取
已完成1400个样本的特征提取
已完成1500个样本的特征提取
已完成1600个样本的特征提取
完成

测试样本提取特征...
提取特征...
已完成100个样本的特征提取
已完成200个样本的特征提取
已完成300个样本的特征提取
完成
================

特征处理结束
处理后每个样本特征维度： 157
===Step5. 训练模型===
1. 朴素贝叶斯模型：
完成

2. 逻辑回归：
Fitting 3 folds for each of 6 candidates, totalling 18 fits
[CV] C=0.001 .........................................................
[CV] .......................... C=0.001, score=0.493482, total=   0.0s
[Parallel(n_jobs=1)]: Done   1 out of   1 | elapsed:    0.0s remaining:    0.0s
[CV] C=0.001 .........................................................
[CV] .......................... C=0.001, score=0.527002, total=   0.0s
[Parallel(n_jobs=1)]: Done   2 out of   2 | elapsed:    0.0s remaining:    0.0s
[CV] C=0.001 .........................................................
[CV] .......................... C=0.001, score=0.510242, total=   0.0s
[CV] C=0.01 ..........................................................
[CV] ........................... C=0.01, score=0.500931, total=   0.0s
[CV] C=0.01 ..........................................................
[CV] ........................... C=0.01, score=0.532588, total=   0.0s
[CV] C=0.01 ..........................................................
[CV] ........................... C=0.01, score=0.512104, total=   0.0s
[CV] C=0.1 ...........................................................
[CV] ............................ C=0.1, score=0.495345, total=   0.0s
[CV] C=0.1 ...........................................................
[CV] ............................ C=0.1, score=0.545624, total=   0.0s
[CV] C=0.1 ...........................................................
[CV] ............................ C=0.1, score=0.497207, total=   0.0s
[CV] C=1 .............................................................
[CV] .............................. C=1, score=0.491620, total=   0.0s
[CV] C=1 .............................................................
[CV] .............................. C=1, score=0.540037, total=   0.0s
[CV] C=1 .............................................................
[CV] .............................. C=1, score=0.491620, total=   0.0s
[CV] C=10 ............................................................
[CV] ............................. C=10, score=0.491620, total=   0.0s
[CV] C=10 ............................................................
[CV] ............................. C=10, score=0.540037, total=   0.0s
[CV] C=10 ............................................................
[CV] ............................. C=10, score=0.493482, total=   0.0s
[CV] C=100 ...........................................................
[CV] ............................ C=100, score=0.491620, total=   0.0s
[CV] C=100 ...........................................................
[CV] ............................ C=100, score=0.540037, total=   0.0s
[CV] C=100 ...........................................................
[CV] ............................ C=100, score=0.493482, total=   0.0s
[Parallel(n_jobs=1)]: Done  18 out of  18 | elapsed:    0.4s finished
完成

3. 支持向量机：
Fitting 3 folds for each of 10 candidates, totalling 30 fits
[CV] C=0.01, gamma=0.001, kernel=rbf .................................
[CV] .. C=0.01, gamma=0.001, kernel=rbf, score=0.541899, total=   1.0s
[Parallel(n_jobs=1)]: Done   1 out of   1 | elapsed:    1.2s remaining:    0.0s
[CV] C=0.01, gamma=0.001, kernel=rbf .................................
[CV] .. C=0.01, gamma=0.001, kernel=rbf, score=0.541899, total=   1.0s
[Parallel(n_jobs=1)]: Done   2 out of   2 | elapsed:    2.4s remaining:    0.0s
[CV] C=0.01, gamma=0.001, kernel=rbf .................................
[CV] .. C=0.01, gamma=0.001, kernel=rbf, score=0.541899, total=   1.0s
[CV] C=0.01, gamma=0.0001, kernel=rbf ................................
[CV] . C=0.01, gamma=0.0001, kernel=rbf, score=0.541899, total=   1.0s
[CV] C=0.01, gamma=0.0001, kernel=rbf ................................
[CV] . C=0.01, gamma=0.0001, kernel=rbf, score=0.541899, total=   1.0s
[CV] C=0.01, gamma=0.0001, kernel=rbf ................................
[CV] . C=0.01, gamma=0.0001, kernel=rbf, score=0.541899, total=   1.0s
[CV] C=0.1, gamma=0.001, kernel=rbf ..................................
[CV] ... C=0.1, gamma=0.001, kernel=rbf, score=0.541899, total=   1.1s
[CV] C=0.1, gamma=0.001, kernel=rbf ..................................
[CV] ... C=0.1, gamma=0.001, kernel=rbf, score=0.541899, total=   1.1s
[CV] C=0.1, gamma=0.001, kernel=rbf ..................................
[CV] ... C=0.1, gamma=0.001, kernel=rbf, score=0.541899, total=   1.1s
[CV] C=0.1, gamma=0.0001, kernel=rbf .................................
[CV] .. C=0.1, gamma=0.0001, kernel=rbf, score=0.541899, total=   1.0s
[CV] C=0.1, gamma=0.0001, kernel=rbf .................................
[CV] .. C=0.1, gamma=0.0001, kernel=rbf, score=0.541899, total=   1.0s
[CV] C=0.1, gamma=0.0001, kernel=rbf .................................
[CV] .. C=0.1, gamma=0.0001, kernel=rbf, score=0.541899, total=   1.0s
[CV] C=1, gamma=0.001, kernel=rbf ....................................
[CV] ..... C=1, gamma=0.001, kernel=rbf, score=0.506518, total=   1.1s
[CV] C=1, gamma=0.001, kernel=rbf ....................................
[CV] ..... C=1, gamma=0.001, kernel=rbf, score=0.549348, total=   1.0s
[CV] C=1, gamma=0.001, kernel=rbf ....................................
[CV] ..... C=1, gamma=0.001, kernel=rbf, score=0.534451, total=   1.1s
[CV] C=1, gamma=0.0001, kernel=rbf ...................................
[CV] .... C=1, gamma=0.0001, kernel=rbf, score=0.541899, total=   1.0s
[CV] C=1, gamma=0.0001, kernel=rbf ...................................
[CV] .... C=1, gamma=0.0001, kernel=rbf, score=0.541899, total=   1.1s
[CV] C=1, gamma=0.0001, kernel=rbf ...................................
[CV] .... C=1, gamma=0.0001, kernel=rbf, score=0.541899, total=   1.2s
[CV] C=10, gamma=0.001, kernel=rbf ...................................
[CV] .... C=10, gamma=0.001, kernel=rbf, score=0.493482, total=   1.1s
[CV] C=10, gamma=0.001, kernel=rbf ...................................
[CV] .... C=10, gamma=0.001, kernel=rbf, score=0.534451, total=   1.1s
[CV] C=10, gamma=0.001, kernel=rbf ...................................
[CV] .... C=10, gamma=0.001, kernel=rbf, score=0.499069, total=   1.1s
[CV] C=10, gamma=0.0001, kernel=rbf ..................................
[CV] ... C=10, gamma=0.0001, kernel=rbf, score=0.491620, total=   1.0s
[CV] C=10, gamma=0.0001, kernel=rbf ..................................
[CV] ... C=10, gamma=0.0001, kernel=rbf, score=0.538175, total=   1.0s
[CV] C=10, gamma=0.0001, kernel=rbf ..................................
[CV] ... C=10, gamma=0.0001, kernel=rbf, score=0.510242, total=   1.0s
[CV] C=100, gamma=0.001, kernel=rbf ..................................
[CV] ... C=100, gamma=0.001, kernel=rbf, score=0.495345, total=   1.5s
[CV] C=100, gamma=0.001, kernel=rbf ..................................
[CV] ... C=100, gamma=0.001, kernel=rbf, score=0.521415, total=   1.6s
[CV] C=100, gamma=0.001, kernel=rbf ..................................
[CV] ... C=100, gamma=0.001, kernel=rbf, score=0.495345, total=   1.6s
[CV] C=100, gamma=0.0001, kernel=rbf .................................
[CV] .. C=100, gamma=0.0001, kernel=rbf, score=0.508380, total=   1.1s
[CV] C=100, gamma=0.0001, kernel=rbf .................................
[CV] .. C=100, gamma=0.0001, kernel=rbf, score=0.530726, total=   1.1s
[CV] C=100, gamma=0.0001, kernel=rbf .................................
[CV] .. C=100, gamma=0.0001, kernel=rbf, score=0.506518, total=   1.1s
[Parallel(n_jobs=1)]: Done  30 out of  30 | elapsed:   38.4s finished
完成

4. 随机森林：
Fitting 3 folds for each of 5 candidates, totalling 15 fits
[CV] n_estimators=10 .................................................
[CV] .................. n_estimators=10, score=0.480447, total=   0.1s
[Parallel(n_jobs=1)]: Done   1 out of   1 | elapsed:    0.1s remaining:    0.0s
[CV] n_estimators=10 .................................................
[CV] .................. n_estimators=10, score=0.484171, total=   0.1s
[Parallel(n_jobs=1)]: Done   2 out of   2 | elapsed:    0.2s remaining:    0.0s
[CV] n_estimators=10 .................................................
[CV] .................. n_estimators=10, score=0.472998, total=   0.1s
[CV] n_estimators=50 .................................................
[CV] .................. n_estimators=50, score=0.478585, total=   0.4s
[CV] n_estimators=50 .................................................
[CV] .................. n_estimators=50, score=0.513966, total=   0.4s
[CV] n_estimators=50 .................................................
[CV] .................. n_estimators=50, score=0.493482, total=   0.4s
[CV] n_estimators=100 ................................................
[CV] ................. n_estimators=100, score=0.499069, total=   0.8s
[CV] n_estimators=100 ................................................
[CV] ................. n_estimators=100, score=0.525140, total=   0.9s
[CV] n_estimators=100 ................................................
[CV] ................. n_estimators=100, score=0.510242, total=   0.8s
[CV] n_estimators=150 ................................................
[CV] ................. n_estimators=150, score=0.506518, total=   1.3s
[CV] n_estimators=150 ................................................
[CV] ................. n_estimators=150, score=0.540037, total=   1.4s
[CV] n_estimators=150 ................................................
[CV] ................. n_estimators=150, score=0.508380, total=   1.3s
[CV] n_estimators=200 ................................................
[CV] ................. n_estimators=200, score=0.500931, total=   1.6s
[CV] n_estimators=200 ................................................
[CV] ................. n_estimators=200, score=0.538175, total=   1.7s
[CV] n_estimators=200 ................................................
[CV] ................. n_estimators=200, score=0.554935, total=   1.7s
[Parallel(n_jobs=1)]: Done  15 out of  15 | elapsed:   13.5s finished
完成

===Step6. 测试模型===
1-朴素贝叶斯
准确率： 0.492063492063
AUC： 0.510780689964
混淆矩阵
[[ 61 125]
 [ 67 125]]

2-逻辑回归
准确率： 0.455026455026
AUC： 0.545866935484
混淆矩阵
[[ 55 131]
 [ 75 117]]

3-支持向量机
准确率： 0.507936507937
AUC： 0.535338261649
混淆矩阵
[[  0 186]
 [  0 192]]

4-随机森林
准确率： 0.534391534392
AUC： 0.465361783154
混淆矩阵
