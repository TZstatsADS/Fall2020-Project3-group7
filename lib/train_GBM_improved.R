###########################################################
### Train a classification model with training features ###
###########################################################

train_GBM_improved <- function(features){
  ### Train a classfication model using processed features from training images
  
  ### Input:  a dataframe containing features and labels
  ### Output: trained model
  
  ### load libraries
  library(gbm)
  
  ### set seed
  set.seed(2020)
  seed <- .Random.seed
  
  ### Train with gbm
  
  model <- gbm(label~., data = features,n.trees =200,
               distribution = "bernoulli",
               shrinkage = 0.1,
               interaction.depth = 3,
               cv.folds = 3)
  
  
  return(model)
}


