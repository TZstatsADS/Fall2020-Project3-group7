# Project: Can you recognize the emotion from an image of a face? 
<img src="figs/CE.jpg" alt="Compound Emotions" width="500"/>
(Image source: https://www.pnas.org/content/111/15/E1454)

### [Full Project Description](doc/project3_desc.md)

Term: Fall 2020

+ Team ##07
+ Team members
	Depeng Kong(dk3112)  
	Xinying Feng(xf2208)  
	Xinyuan Peng(xp2177)  
	Siyu Duan(sd3329)  
	Natalie Williams(naw2127)  

+ Project summary: In this project, we created a classification engine for facial emotion recognition. We first extract feature and try different methods to rebalance our data. Then we split the dataset into train set and test set. After that, we use train dataset with different rebalance methods to built GBM, Logistic regression, Random forest, Xgboost and SVM model to make prediction. For each training model, we use gridsearch to tune for best parameters. After obtain the best parameters, we use test dataset to make prediction and obtain the final result. We choose rose to rebalance our data according to the final result. The final result is as follow:

	
**Contribution statement**: ([default](doc/a_note_on_contributions.md)) All team members approve our work presented in this GitHub repository including this contributions statement. 
+ Depeng Kong built Random Forest and SVM Model to improve the overall performance of predictions through Cross-validation and tuning parameters. 

+ Peng Xinyuan built GBM Model to improve prediction performance through Cross-validation and tuning parameters. She also contributed on improving the performance SVM Model. Construct initial skeleton of main.RMD file.   She also helped debug across different models. 

+ Duan Siyu rebalanced training data using different methods, and rebalanced testing data to calculate AUC and accuracy for all models. She also contributed on tuning parameters of GBM model. She integrated all the codes into main, tidied the file, and created tables and plots to summarize performance of all models.   

+ Natalie Williams wrote initial skeleton code of SVM model.  She prepared a verbal script for presentation, and was the presentor of our group. 

+ Xinying Feng  built XGB Model to improve prediction performance through Cross-validation and tuning parameters, and REEADME in github.  


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
