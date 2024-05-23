# サイコロを30回振ったときに6が出る回数を10000回試行する
set.seed(123)  # 再現性のために乱数のシードを設定

# サイコロを30回振ったときに6が出る回数を計算する関数
roll_dice <- function() {
  rolls <- sample(1:6, 30, replace = TRUE)  # サイコロを30回振る
  sum(rolls == 6)  # 6が出た回数を数える
}

# 10000回試行して結果を保存する
results <- replicate(10000, roll_dice())

# 結果を表示する
summary(results)
hist(results, main="Distribution of the number of 6's in 30 dice rolls", xlab="Number of 6's", breaks=30)
