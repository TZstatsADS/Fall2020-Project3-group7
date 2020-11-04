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

+ Project summary:
The goal of this project is efficiently and accurately classifying images by facial emotions. We took the parwise distance between fiducial points as our features for facial emotion recognition.  To deal with the imbalanced data problem, we re balanced training data using Bootstrap Random Over-Sampling Examples Technique(ROSE) after training and testing split. Our beaseline model is GBM using default parameters.  Improved GBM, Random Forest, Xgboost and SVM were built to improve the efficiency and accuracy of predictions through parameter tuning. Cross-validation is used in training all models.  To evaluate the performances of our model,  we rebalanced our testing data, and then using balanced testing data to calculate accuracy, weightedROC, weightedAUC of our models as part of our evaluation metrics for choosing the final model.   Also, training time and testing time included in the evaluation metrics.  Our final model is SVM, compared to basedline GBM, the AUC increased around 0.2, and prediction accuracy improved around 25%.  

	
**Contribution statement**: ([default](doc/a_note_on_contributions.md)) All team members approve our work presented in this GitHub repository including this contributions statement. 
+ Depeng Kong built Random Forest and SVM Model to improve the overall performance of predictions through Cross-validation and tuning parameters. 

+ Xinyuan Peng built GBM Model to improve prediction performance through Cross-validation and tuning parameters. She also contributed on improving the performance SVM Model. Construct initial skeleton of main.RMD file.   She also helped debug across different models. 

+ Siyu Duan rebalanced training data using different methods, and rebalanced testing data to calculate AUC and accuracy for all models. She also contributed on tuning parameters of GBM model. She integrated all the codes into main to make sure all codes run smoothly, tidied the file, and created tables  to summarize performance of all models.   

+ Natalie Williams wrote initial skeleton code of SVM model.  She prepared a verbal script for presentation, and was the presentor of our group. 

+ Xinying Feng built XGB Model to improve prediction performance through Cross-validation and tuning parameters, and README in github.  


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
