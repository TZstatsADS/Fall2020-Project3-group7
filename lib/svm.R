#################################################################
### Functions for creating Tuned Support Vector Machine Model ###
#################################################################

library(e1071)

svm_tune <- function(df){
  set.seed(0)
  return(
    tune(method = svm,
         train.x = as.matrix(df[,-6007]),
         train.y = factor(df$label),
         kernel = "linear",
         ranges = list(
           gamma = seq(0.04, 0.12, 0.02),
           cost = seq(0.02, 0.1, 0.02)
         ))
  )
}

svm_train <- function(df, opt.gamma, opt.cost){
  set.seed(0)
  return(
    svm (df$label ~ .,
         data = df,
         gamma = opt.gamma,
         cost = opt.cost,
         kernel = "linear",
         cross = 10
    )
  )
}

svm_test <- function(model, testdf){
  test.x <- as.matrix(testdf[, -6007])
  set.seed(0)
  return(
    predict(model, test.x)
  )
}
