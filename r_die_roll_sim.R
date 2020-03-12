rolls_until_sum_7 <- c()
set.seed(1)
for(i in 1:10000) {
  dierolls <- c()
  dierolls <- c(dierolls, sample(1:6, 1))
  dierolls <- c(dierolls, sample(1:6, 1))
  index1 = 1
  index2 = 2
  number_of_rolls = 2
  t = TRUE
  while(t == TRUE) {
    if(sum(dierolls[index1]+dierolls[index2]) != 7) {
      dierolls <- c(dierolls, sample(1:6, 1))
      index1 = index1+1
      index2 = index2+1
    } else {
      number_of_rolls = length(dierolls)
      rolls_until_sum_7 <- c(rolls_until_sum_7, number_of_rolls)
      t = FALSE
    }
  }
}

mean(rolls_until_sum_7)