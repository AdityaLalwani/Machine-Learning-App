# SGPA Sem - 5 Project

A Flutter application in which user can know What is Machine Learning, How Models are Train and Deployment of these Trained Models. 

## 1. To known What is Machine Learning and To build a Model for Android Devices

I have enrolled in some coursera courses but these courses help me a lot for building this application
* [Introduction to TensorFlow for Artificial Intelligence, Machine Learning, and Deep Learning](https://www.coursera.org/learn/introduction-tensorflow)
* [Device-based Models with TensorFlow Lite](https://www.coursera.org/learn/device-based-models-tensorflow)

## 2. Selected Some basic Models to Train and Delop them in single Application (Custom Based - offline)

- [x] Dog vs Cat 
- [x] Flower Recognition (5 Flower)
- [ ] MNIST (1-10 Numbers) 
- [x] Color Detection (Realtime)

## 3. I have Train these Model from TensorFlow Tutorial, Google Colab and Teachable Machine

- [Cats-v-Dogs.ipynb](https://colab.research.google.com/github/lmoroney/mlday-tokyo/blob/master/Lab6-Cats-v-Dogs.ipynb#scrollTo=G4cwNEH46UAI)
- [flowers_tf_lite.ipynb](https://colab.research.google.com/github/tensorflow/examples/blob/master/community/en/flowers_tf_lite.ipynb)
- [MNIST.ipynb](https://colab.research.google.com/github/tensorflow/examples/blob/master/lite/codelabs/digit_classifier/ml/step2_train_ml_model.ipynb)
- [Color Detection](https://drive.google.com/file/d/1t7KKfyrt_t8QXFvSrv4TImrkM7wl2KEN/view?usp=sharing) Download this dataset and Upload in [Teachable Machine](https://teachablemachine.withgoogle.com/train/image)

## 4. After Training these Models Convert them to tflite format

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

## 5. Now Deploy these Models in Application using [tflite](https://pub.dev/packages/tflite) package

Add this to your package's pubspec.yaml file:
```
dependencies:
  tflite: ^1.1.1
```

## 6. Video

![Machine Learning App Gif]({{https://github.com/AdityaLalwani/Machine-Learning-App/blob/master}}/Gifs/sgpa.gif "Machine Learning App")
