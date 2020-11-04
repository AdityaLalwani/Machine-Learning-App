import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sgpa_sem5/colors.dart';

import 'card.dart';

class Intro extends StatefulWidget {
  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: f10,
        title: Center(
            child: Text(
          "Machine Learning",
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
                          head: "Introduction",
                          body:
                              "Machine learning is a subset of data science that deals with predictive modeling. In other words, using data to create models that can predict unknown values. It works by identifying relationships between data values that describe characteristics of something (its features) and the value we want to predict (the label), and encapsulating these relationships in a model through a training process.",
                        ),
                        Carde(
                          head: "Role of Data Scientist",
                          body:
                              "Unsurprisingly, the role of a data scientist primarily involves exploring and analyzing data. The results of this analysis might form the basis of a report or a machine learning model; but it all begins with data.",
                        ),
                        Carde(
                          head: "Prerequisites",
                          body: "Python for data science.",
                        ),
                        Carde(
                            head: "What is Machine Learning",
                            body:
                                "Machine learning is the subfield of computer science that gives \" computers the ability to learn without being explicitly programmed.\" \nPrior to machine learning, each image would be transformed to a vector of features Then, traditionally, we had to write down some rules or methods in order to get computers to be intelligent and detect the feature sets."),
                        Carde(
                          head: "Machine Learning Techniques",
                          body:
                              "1. Regression/Estimation\n       >predicting continuous value \n2. Classification\n       >Predicting the class or category\n3. Clustering\n       >groups of similar cases\n4. Association\n       >Associating frequent co-occurring\n       items\n5. Anomaly Detection\n       >discover abnormal and unusual\n       cases\n6. Sequence Mining\n       >predicting the next event\n7. Dimension Reduction\n       >reduce the size of data\n8. Recommendation Systems\n       Recommending Items>",
                        ),
                        Carde(
                          head: "ML vs AI vs DL",
                          body:
                              "ML stands for Machine Learning, and is the study that uses statistical methods enabling machines to improve with experience.\nAI stands for Artificial Intelligence, and is basically the study/process which enables machines to mimic human behaviour through particular algorithm.\nDL stands for Deep Learning, and is the study that makes use of Neural Networks(similar to neurons present in human brain) to imitate functionality just like a human brain.",
                        ),
                        Carde(
                          head: "Python Libraries for ML",
                          body:
                              "1. NumPy\n2. SciPy\n3. Matplotlib\n4. Pandas\n5. Scikit-learn",
                        ),
                        Carde(
                          head: "Supervised vs Unsupervised leaning",
                          body:
                              "Supervised: Supervised learning is a learning in which we teach or train the machine using data which is well labeled that means some data is already tagged with the correct answer. After that, the machine is provided with a new set of examples(data) so that supervised learning algorithm analyses the training data and produces a correct outcome from labeled data.\n\nSupervised learning classified into two categories of algorithms:\n1. Classification: A classification\n     problem is when the output variable\n     is a category, such as “Red” or “blue”\n     or “disease” and “no disease”.\n2. Regression: A regression problem is\n     when the output variable is a real\n     value, such as “dollars” or “weight”.\n\nUnsupervised: Unsupervised learning is the training of machine using information that is neither classified nor labeled and allowing the algorithm to act on that information without guidance. Here the task of machine is to group unsorted information according to similarities, patterns and differences without any prior training of data. \n\nUnsupervised learning classified into two categories of algorithms:\n1. Clustering: A clustering problem is\n     where you want to discover the\n     inherent groupings in the data, such\n     as grouping customers by\n     purchasing behavior.\n2. Association: An association rule\n     learning problem is where you want\n     to discover rules that describe large\n     portions of your data, such as people\n     that buy X also tend to buy Y.",
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
