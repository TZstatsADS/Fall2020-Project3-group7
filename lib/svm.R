#################################################################
### Functions for creating Tuned Support Vector Machine Model ###
#################################################################

library(e1071)

svm_tune <- function(df){
  tunex = df[, -6007]
  tuney = factor(df[, 6007])
  set.seed(2020)
  return(
    tune(svm, x = tunex,
         y = tuney,
         ranges = list(epsilon = seq(0,1,0.1),
                       cost = 2^(2:9)))
  )
}

svm_train <- function(df, mtry){
  trainx = df[, -6007]
  trainy = factor(df[, 6007])
  set.seed(2020)
  return(
    randomForest(x = trainx,
                 y = trainy,
                 mtry = mtry,
    )
  )
}

svm_test <- function(model, testdf){
  test.x = testdf[ , -6007]
  set.seed(2020)
  return(
    predict(model, test.x)
  )
}
