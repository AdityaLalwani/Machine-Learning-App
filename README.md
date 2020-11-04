# SGPA Sem - 5 Project

A Flutter application in which user can know What is Machine Learning, How Models are Train and Deployment of these Trained Models. 

## Abstract

Building a machine Learning model is an easy task nowadays as most algorithms are available and by using these Algorithm we can implement Models. 
The main task is to known how we can deploy the model in Application. So by using tensorflow tflite model I have deploy Some basic ML models in a single Android Application.

##  Introduction ![a](https://github.githubassets.com/images/icons/emoji/unicode/2139.png?v8)

Only a small fraction of real-world ML systems is composed of the ML code, as shown by the small black box in the middle (see diagram below). The required surrounding infrastructure is vast and complex.
![Machine Learning Systems](https://raw.githubusercontent.com/AdityaLalwani/Machine-Learning-App/master/assets/images/ml.png "Machine Learning Systems")

## Useful Courses ![books](https://github.githubassets.com/images/icons/emoji/unicode/1f4da.png?v8)

I have enrolled in some coursera courses but these courses help me a lot for building this application
* [Introduction to TensorFlow for Artificial Intelligence, Machine Learning, and Deep Learning](https://www.coursera.org/learn/introduction-tensorflow)
* [Device-based Models with TensorFlow Lite](https://www.coursera.org/learn/device-based-models-tensorflow)

## Differnet Models to Train and Delop them in single Application (Custom Based - offline)

- [x] Dog vs Cat 
- [x] Flower Recognition (5 Flower)
- [x] MNIST (1-10 Numbers) 
- [x] Color Detection (Realtime)

## Project Flow ![flow](https://github.githubassets.com/images/icons/emoji/unicode/23f3.png?v8)

- Collection of different dataset.
- Train one part of Dataset
- Test with the other to known the Accuracy of Model
- Convert the Model in tflite version
- Deploy this Model in Android Application

### Dataset Collection ![memo](https://github.githubassets.com/images/icons/emoji/unicode/1f4dd.png?v8)

* [Dog and cat Dataset - Kaggle](https://download.microsoft.com/download/3/E/1/3E1C3F21-ECDB-4869-8368-6DEBA77B919F/kagglecatsanddogs_3367a.zip)
* [Flower Recognition - Tensorflow](https://storage.googleapis.com/download.tensorflow.org/example_images/flower_photos.tgz)
* [MNIST - Keras](https://storage.googleapis.com/tensorflow/tf-keras-datasets/mnist.npz)
* [Color Detection](https://cvhci.anthropomatik.kit.edu/~bschauer/datasets/google-512)

### Training - Testing ![man_technologist](https://github.githubassets.com/images/icons/emoji/unicode/1f468-1f4bb.png?v8)

- [Cats-v-Dogs.ipynb](https://colab.research.google.com/github/lmoroney/mlday-tokyo/blob/master/Lab6-Cats-v-Dogs.ipynb#scrollTo=G4cwNEH46UAI)
- [flowers_tf_lite.ipynb](https://colab.research.google.com/github/tensorflow/examples/blob/master/community/en/flowers_tf_lite.ipynb)
- [MNIST.ipynb](https://colab.research.google.com/github/tensorflow/examples/blob/master/lite/codelabs/digit_classifier/ml/step2_train_ml_model.ipynb)
- [Color Detection](https://drive.google.com/file/d/19s0zBS0Mbf90DFTaVx22MY9g6M2HNaKu/view?usp=sharing) Download this dataset and Upload in [Teachable Machine](https://teachablemachine.withgoogle.com/train/image)

### Converting ![film_strip](https://github.githubassets.com/images/icons/emoji/unicode/1f39e.png?v8)

```
# Converting a SavedModel to a TensorFlow Lite model.
converter = tf.lite.TFLiteConverter.from_saved_model(saved_model_dir)
tflite_model = converter.convert()
```
```
# Converting a tf.Keras model to a TensorFlow Lite model.
converter = tf.lite.TFLiteConverter.from_keras_model(model)
tflite_model = converter.convert()
```
```
# Converting ConcreteFunctions to a TensorFlow Lite model.
converter = tf.lite.TFLiteConverter.from_concrete_functions([func])
tflite_model = converter.convert()
```

## Deployment ![cyclone](https://github.githubassets.com/images/icons/emoji/unicode/1f300.png?v8)

### Add [tflite](https://pub.dev/packages/tflite) package in pubspec.yaml 
```
dependencies:
  tflite: ^1.1.1
```

### Every tensorflow (tflite) model gives 3 different output that are 
1. index
2. label
3. confidence.

### The dog and cat model and flower recognition model both are deployed by using tflite package function runModelOnImage() 

```
var output = await Tflite.runModelOnImage(
      path: image.path,
      numResults: 2,
      threshold: 0.5,
      imageMean: 127.5,
      imageStd: 127.5,
    );
```

### For MNIST model I have used canvas to create an image which will be resized to 28x28px that is the same size of image we used to train our model. Then will convert this image to list of Uint8 and run runModelOnBinary() method. 

```
var output = await Tflite.runModelOnBinary(
      binary: imageToByteListFloat32(image, 224, 127.5, 127.5),// required
      numResults: 6,    // defaults to 5
      threshold: 0.05,  // defaults to 0.1
      asynch: true      // defaults to true
);
```
### For Color Detection model I have used method runModelOnFrame() as this model is real-time based and image is changing every frame by frame. 

```
var output = await Tflite.runModelOnFrame(
      bytesList: img.planes.map((plane) {return plane.bytes;}).toList(),// required
      imageHeight: img.height,
      imageWidth: img.width,
      imageMean: 127.5,   // defaults to 127.5
      imageStd: 127.5,    // defaults to 127.5
      rotation: 90,       // defaults to 90, Android only
      numResults: 2,      // defaults to 5
      threshold: 0.1,     // defaults to 0.1
      asynch: true        // defaults to true
);
```

## Gif ![tada](https://github.githubassets.com/images/icons/emoji/unicode/1f389.png?v8)

![Machine Learning App Gif](https://github.com/AdityaLalwani/Machine-Learning-App/raw/master/assets/images/sgpa-min.gif "Machine Learning App")

