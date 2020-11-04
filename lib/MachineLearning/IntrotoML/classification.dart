import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sgpa_sem5/colors.dart';

import 'card.dart';

class Classification extends StatefulWidget {
  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Classification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: f10,
        title: Center(
            child: Text(
          "Classification",
          style: GoogleFonts.blackOpsOne(
              textStyle: TextStyle(
            color: Colors.white,
            fontSize: 28,
          )),
        )),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                    color: f9,
                    height: MediaQuery.of(context).size.height - 80,
                    child: ListView(
                      children: <Widget>[
                        Carde(
                          head: "Intro to Classification",
                          body:
                              "Classification is the process of predicting the class of given data points.\nClasses are sometimes called as targets/ labels or categories. Classification predictive modeling is the task of approximating a mapping function (f) from input variables (X) to discrete output variables (y).\nFor example, spam detection in email service providers can be identified as a classification problem. This is s binary classification since there are only 2 classes as spam and not spam. A classifier utilizes some training data to understand how given input variables relate to the class. In this case, known spam and non-spam emails have to be used as the training data. When the classifier is trained accurately, it can be used to detect an unknown email.\nClassification belongs to the category of supervised learning where the targets also provided with the input data.",
                        ),
                        Carde(
                          head: "K-Nearest Neighbors",
                          body:
                              "K-Nearest Neighbors is one of the most basic yet essential classification algorithms in Machine Learning. It belongs to the supervised learning domain and finds intense application in pattern recognition, data mining and intrusion detection.\nIt is widely disposable in real-life scenarios since it is non-parametric, meaning, it does not make any underlying assumptions about the distribution of data (as opposed to other algorithms such as GMM, which assume a Gaussian distribution of the given data).\nWe are given some prior data (also called training data), which classifies coordinates into groups identified by an attribute.\nK-nearest neighbors (KNN) algorithm uses ‘feature similarity’ to predict the values of new datapoints which further means that the new data point will be assigned a value based on how closely it matches the points in the training set.",
                        ),
                        Carde(
                          head: "Intro to Decision Trees",
                          body:
                              "Decision tree is the most powerful and popular tool for classification and prediction.\nA Decision tree is a flowchart like tree structure, where each internal node denotes a test on an attribute, each branch represents an outcome of the test, and each leaf node (terminal node) holds a class label.\nDecision tree uses the tree representation to solve the problem in which each leaf node corresponds to a class label and attributes are represented on the internal node of the tree.",
                        ),
                        Carde(
                          head: "Intro to Logistic Regression",
                          body:
                              "Logistic regression is one of the most popular Machine Learning algorithms, which comes under the Supervised Learning technique. It is used for predicting the categorical dependent variable using a given set of independent variables.\nLogistic regression predicts the output of a categorical dependent variable. Therefore the outcome must be a categorical or discrete value. It can be either Yes or No, 0 or 1, true or False, etc. but instead of giving the exact value as 0 and 1, it gives the probabilistic values which lie between 0 and 1.\nLogistic Regression is much similar to the Linear Regression except that how they are used. Linear Regression is used for solving Regression problems, whereas Logistic regression is used for solving the classification problems.\nIn Logistic regression, instead of fitting a regression line, we fit an \"S\" shaped logistic function, which predicts two maximum values (0 or 1).",
                        ),
                        Carde(
                          head: "Logistic Regression vs Linear Regression",
                          body:
                              "The linear regression technique involves the continuous dependent variable and the independent variables can be continuous or discrete. By using best fit straight line linear regression sets up a relationship between dependent variable (Y) and one or more independent variables (X). In other words, there exist a linear relationship between independent and dependent variables.\nThe logistic regression technique involves dependent variable which can be represented in the binary (0 or 1, true or false, yes or no) values, means that the outcome could only be in either one form of two. For example, it can be utilized when we need to find the probability of successful or fail event. Here, the same formula is used with the additional sigmoid function, and the value of Y ranges from 0 to 1.",
                        ),
                        Carde(
                          head: "Support Vector Machines (SVMs)",
                          body:
                              "Support vector machines (SVMs) are powerful yet flexible supervised machine learning algorithms which are used both for classification and regression. But generally, they are used in classification problems. In 1960s, SVMs were first introduced but later they got refined in 1990. SVMs have their unique way of implementation as compared to other machine learning algorithms. Lately, they are extremely popular because of their ability to handle multiple continuous and categorical variables.",
                        ),
                      ],
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
