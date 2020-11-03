# Project: Can you recognize the emotion from an image of a face? 
<img src="figs/CE.jpg" alt="Compound Emotions" width="500"/>
(Image source: https://www.pnas.org/content/111/15/E1454)

### [Full Project Description](doc/project3_desc.md)

Term: Fall 2020

+ Team ##
+ Team members
	Kong Depeng(dk3112)  
	Feng Xinying(xf2208)  
	Peng Xinyuan(xp2177)  
	Duan Siyu(sd3329)  
	Natalie Williams(naw2127)  

+ Project summary: In this project, we created a classification engine for facial emotion recognition. We first extract feature and try different methods to rebalance our data. Then we split the dataset into train set and test set. After that, we use train dataset with different rebalance methods to built GBM, Logistic regression, Random forest, Xgboost and SVM model to make prediction. For each training model, we use gridsearch to tune for best parameters. After obtain the best parameters, we use test dataset to make prediction and obtain the final result. We choose rose to rebalance our data according to the final result. The final result is as follow:

+ The result of Logistic regression is not good so we didn't put it into main file 
	
**Contribution statement**: ([default](doc/a_note_on_contributions.md)) All team members contributed equally in all stages of this project. All team members approve our work presented in this GitHub repository including this contributions statement. 
+ Kong Depeng responsible for Logistic regression and Random forest model. In addition, he contributed to SVM model.  
+ Peng Xinyuan responsibe for GBM baseline and improve model. She also contributed to SVM model.  
+ Duan Siyu responsible for feature extraction, rebalance data and all the data prepocess work. She also responsible for summarize all our code and run it.  
+ Natalie Williams is the presenter. She responsible for presentation and also contribute to SVM model.  
+ Feng Xinying responsible for Xgboost model and readme in github.  


Following [suggestions](http://nicercode.github.io/blog/2013-04-05-projects/) by [RICH FITZJOHN](http://nicercode.github.io/about/#Team) (@richfitz). This folder is orgarnized as follows.

```
proj/
├── lib/
├── data/
├── doc/
├── figs/
└── output/
```

Please see each subfolder for a README file.
