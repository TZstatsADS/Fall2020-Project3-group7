
library(randomForest)

rf_tune <- function(df){
  tunex = df[, -6007]
  tuney = factor(df[, 6007])
  return(
    tuneRF(x = tunex,
           y = tuney)
  )
}


rf_train <- function(df, mtry){
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

rf_test <- function(model, testdf){
  test.x = testdf[ , -6007]
  set.seed(2020)
  return(
    predict(model, test.x)
  )
}

?predict
