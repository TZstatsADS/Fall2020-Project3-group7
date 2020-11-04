
library(randomForest)

rf_tune <- function(df){
  set.seed(0)
  tunex = as.matrix(df[, -6007])
  tuney = factor(df[, 6007])
  return(
    tuneRF(x = tunex,
           y = tuney,
           ntreeTry = 750,
           improve = 0.1,
           stepFactor = 1)
  )
}


rf_train <- function(df, mtry){
  trainx = as.matrix(df[, -6007])
  trainy = df[, 6007]
  set.seed(0)
  return(
    randomForest(x = trainx,
                 y = trainy,
                 mtry = mtry,
                 ntree = 1000,
                 sampsize = nrow(trainx),
                 nodesize = 25
    )
  )
}

rf_test <- function(model, testdf){
  test.x = as.matrix(testdf[ , -6007])
  set.seed(0)
  return(
    predict(model, test.x)
  )
}

?predict
