#################################################################
### Functions for creating Tuned Support Vector Machine Model ###
#################################################################

library(e1071)

svm_tune <- function(train.df, test.df){
  tunex = NormalizeObject(train.df[, -6007])
  tuney = factor(train.df[, 6007])
  valix = NormalizeObject(test.df[, -6007])
  valiy = factor(test.df[, 6007])
  set.seed(2020)
  return(
    tune(svm, train.x = tunex,
         train.y = tuney,
         validation.x = valix,
         validation.y = valiy,
         ranges = list(epsilon = seq(0,1,0.1),
                       cost = 2^(2:9)))
  )
}

svm_train <- function(df){
  trainx = NormalizeObject(df[, -6007])
  trainy = factor(df[, 6007])
  set.seed(2020)
  return(
    svm (x = trainx,
         y = trainy,
         kernel = "sigmoid",
         cross = 50
    )
  )
}

svm_test <- function(model, testdf){
  test.x = NormalizeObject(testdf[ , -6007])
  set.seed(2020)
  return(
    predict(model, test.x)
  )
}
