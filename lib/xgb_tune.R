xgb_tune<-function(dtrain, labels){
  xgb_trcontrol = trainControl(
    method = "cv",
    number = 5,  
    allowParallel = TRUE,
    verboseIter = FALSE,
    returnData = FALSE
  )

  xgbGrid <- expand.grid(eta = c(0.01, 0.1, 0.3, 0.5),
                         gamma = c(0, 0.1, 1, 10),
                         nrounds = 50,
                         max_depth=c(4, 5),
                         min_child_weight = 1,
                         subsample = 1,
                         colsample_bytree=1
  )

  xgb_model = train(
    dtrain, labels,  
    trControl = xgb_trcontrol,
    tuneGrid = xgbGrid,
    method = "xgbTree",
    objective = "binary:logistic"
  )

  return(xgb_model$bestTune)
}