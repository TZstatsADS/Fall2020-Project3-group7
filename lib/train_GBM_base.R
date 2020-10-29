###########################################################
### Train a classification model with training features ###
###########################################################

train_GBM_base <- function(features){
  ### Train a classfication model using processed features from training images
  
  ### Input:  a df containing features and labels
  ### Output: trained model
  
  ### load libraries
  library(gbm)
  
  ### set seed
  set.seed(2020)
  seed <- .Random.seed
  
  ### Train with gbm
  
  model <- gbm(label~., data = features,n.trees =100, distribution = "bernoulli",shrinkage = 0.01)
  ###parameters are all defalut:
               #distribution = "bernoulli"
               #n.trees = 100, 
               #shrinkage = 0.1, 
               #interaction.depth = 1,
  
  return(model)
}


## test on a small dataset

#library(gbm)
#data_try = dat_train[1:100,]
#data_try$label <- as.numeric(data_try$label)-1
#d<-gbm(label~. , data = data_try, n.trees =100, ,shrinkage = 0.01)

#predict.gbm(d,newdata = data_try, n.trees = 100, type="response")
