# データ1読み込み
dat1<-read.csv('week1_1.csv')
# テスト条件のヒストグラム
hist(dat1$test)
# 統制条件のヒストグラム
hist(dat1$control)
# 箱ひげ図
boxplot(dat1)
# 散布図
plot(dat1$control,dat1$test)

library(ggplot2)

# データ2読み込み
dat2<-read.csv('week1_2.csv')

# 重ねたヒストグラム
g1<-ggplot(data=dat2, mapping=aes(x=RT, fill=condition))
g1<-g1+geom_histogram(alpha=0.4,position='identity')
plot(g1)

# 棒グラフ＋個々のデータ
g2<-ggplot(data=dat2, mapping=aes(x=condition, y=RT))
g2 <- g2 + stat_summary(fun.y = "mean", geom = "bar", width = 0.5, fill = "grey", position = position_dodge(width = .6))
g2 <- g2 + geom_point(position = position_jitter(width = 0.1, height = 0)) 
plot(g2)

# バイオリンプロット＋平均値
g3<-ggplot(data=dat2, mapping=aes(x=condition, y=RT))
g3<-g3+geom_violin(draw_quantiles = c(0.25, 0.5, 0.75))
g3<-g3+stat_summary(fun.y="mean", geom="point")
plot(g3)


