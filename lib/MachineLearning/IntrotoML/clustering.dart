import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sgpa_sem5/colors.dart';

import 'card.dart';

class Clustering extends StatefulWidget {
  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Clustering> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: f10,
        title: Center(
            child: Text(
          "Clustering",
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
                          head: "Intro to Clustering",
                          body:
                              "It is basically a type of unsupervised learning method . An unsupervised learning method is a method in which we draw references from datasets consisting of input data without labelled responses. Generally, it is used as a process to find meaningful structure, explanatory underlying processes, generative features, and groupings inherent in a set of examples.\nClustering is the task of dividing the population or data points into a number of groups such that data points in the same groups are more similar to other data points in the same group and dissimilar to the data points in other groups. It is basically a collection of objects on the basis of similarity and dissimilarity between them.",
                        ),
                        Carde(
                            head: "K-Means Clustering",
                            body:
                                "K-Means Clustering is an unsupervised learning algorithm that is used to solve the clustering problems in machine learning or data science.\nk-means clustering is a method of vector quantization, originally from signal processing, that aims to partition n observations into k clusters in which each observation belongs to the cluster with the nearest mean (cluster centers or cluster centroid), serving as a prototype of the cluster."),
                        Carde(
                          head: "Hierarchical Clustering",
                          body:
                              "Hierarchical clustering is another unsupervised machine learning algorithm, which is used to group the unlabeled datasets into a cluster and also known as hierarchical cluster analysis or HCA.\nSometimes the results of K-means clustering and hierarchical clustering may look similar, but they both differ depending on how they work. As there is no requirement to predetermine the number of clusters as we did in the K-Means algorithm.\nThe hierarchical clustering technique has two approaches:\n1. Agglomerative: Agglomerative is a bottom-up approach, in which the algorithm starts with taking all data points as single clusters and merging them until one cluster is left.\n2. Divisive: Divisive algorithm is the reverse of the agglomerative algorithm as it is a top-down approach.",
                        ),
                        Carde(
                          head: "DBSCAN Clustering",
                          body:
                              "Clustering analysis or simply Clustering is basically an Unsupervised learning method that divides the data points into a number of specific batches or groups, such that the data points in the same groups have similar properties and data points in different groups have different properties in some sense. It comprises of many different methods based on different evolution.",
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
