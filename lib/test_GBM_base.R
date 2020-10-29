###########################################################
### Make predictions with test features ###
###########################################################

test_GBM_base <- function(model_GBM, features){
  ### Test the GBM model using processed features from training/testing images
  
  ### Input:  a df containing features and labels
  ### Output: model's prediction accuracy
  
  ### load libraries
  library(gbm)
  
  ### set seed
  set.seed(2020)
  seed <- .Random.seed
  
  ### Train with gbm
  
  pred <-  predict.gbm(model_GBM,
                       newdata = features,
                       n.trees = 100,
                       type = "response")
  
  return(pred)
}