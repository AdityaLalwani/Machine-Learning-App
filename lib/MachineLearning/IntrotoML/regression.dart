import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sgpa_sem5/colors.dart';

import 'card.dart';

class Regression extends StatefulWidget {
  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Regression> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: f10,
        title: Center(
            child: Text(
          "Regression",
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
                          head: "Intro to Regression",
                          body:
                              "Regression is the process of predicting a continuous value. In regression there are two types of variables: a dependent variable and one or more independent variables. The dependent variable can be seen as the state, target or final goal we study and try to predict, and the independent variables, also known as explanatory variables, can be seen as the causes of those states. The independent variables are shown conventionally by x; and the dependent variable is notated by y. A regression model relates y, or the dependent variable, to a function of x, i.e., the independent variables. The key point in the regression is that our dependent value should be continuous, and cannot be a discreet value. However, the independent variable or variables can be measured on either a categorical or continuous measurement scale. So, what we want to do here is to use the historical data of some cars, using one or more of their features, and from that data, make a model. We use regression to build such a regression/estimation model. Then the model is used to predict the expected Co2 emission for a new or unknown car. Basically there are 2 types of regression models: simple regression and multiple regression. Simple regression is when one independent variable is used to estimate a dependent variable. It can be either linear on non-linear.",
                        ),
                        Carde(
                          head: "Simple Linear Regression",
                          body:
                              "Simple Linear Regression is a type of Regression algorithms that models the relationship between a dependent variable and a single independent variable. The relationship shown by a Simple Linear Regression model is linear or a sloped straight line, hence it is called Simple Linear Regression.\nThe key point in Simple Linear Regression is that the dependent variable must be a continuous/real value. However, the independent variable can be measured on continuous or categorical values.\nSimple Linear regression algorithm has mainly two objectives:\n   Model the relationship between the two variables.\n   Forecasting new observations.",
                        ),
                        Carde(
                          head: "Multiple Linear Regression",
                          body:
                              "Multiple linear regression (MLR), also known simply as multiple regression, is a statistical technique that uses several explanatory variables to predict the outcome of a response variable. The goal of multiple linear regression (MLR) is to model the linear relationship between the explanatory (independent) variables and response (dependent) variable.\nThe multiple regression model is based on the following assumptions:\n    There is a linear relationship between the dependent variables and the independent variables.\n   The independent variables are not too highly correlated with each other.\n    yi observations are selected independently and randomly from the population.\n    Residuals should be normally distributed with a mean of 0 and variance σ.\nMultiple Linear Regression is one of the important regression algorithms which models the linear relationship between a single dependent continuous variable and more than one independent variable.",
                        ),
                        Carde(
                          head: "Non-Linear Regression",
                          body:
                              "Nonlinear regression is a form of regression analysis in which data is fit to a model and then expressed as a mathematical function. Simple linear regression relates two variables (X and Y) with a straight line (y = mx + b), while nonlinear regression relates the two variables in a nonlinear (curved) relationship. \nNonlinear regression is a curved function of an X variable (or variables) that is used to predict a Y variable.\nNonlinear regression can show a prediction of population growth over time.\nNonlinear models are more complicated than linear models to develop because the function is created through a series of approximations (iterations) that may stem from trial-and-error. Mathematicians use several established methods, such as the Gauss-Newton method and the Levenberg-Marquardt method.",
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
