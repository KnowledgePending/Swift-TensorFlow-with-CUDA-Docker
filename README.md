<img src="https://github.com/KnowledgePending/Swift-TensorFlow-with-CUDA-Docker/blob/master/images/logo.png?raw=true" width ="900" height="155"> 

# [Swift TensorFlow with CUDA Docker environment](https://github.com/KnowledgePending/Swift-TensorFlow-with-CUDA-Docker)
[![Docker Pulls](https://img.shields.io/docker/pulls/bryankp/swift_tf_cuda.svg)](https://hub.docker.com/r/bryankp/swift_tf_cuda)
## Image details
* Ubuntu 18.04 Bionic
* CUDA 10.0
* Swift 5.0
* TensorFlow for Swift v0.4

### Required
* Follow [nvidia-docker instructions](https://github.com/NVIDIA/nvidia-docker)

## Option 1. Build Docker Image
* From within the directory of the Dockerfile execute the following command to build the image
```BASH
docker build -t swift_tf_cuda_docker .
```
* To run with bash and a shared volume
```BASH
docker run --runtime=nvidia -v <host_path>:<container_path> -ti swift_tf_cuda_docker:latest bash
```
## Option 2. Pull image from Docker Hub
* Go to the repository page [bryankp/swift_tf_cuda](https://hub.docker.com/r/bryankp/swift_tf_cuda)
* Pull the latest image
```BASH
docker pull bryankp/swift_tf_cuda:latest
```
* To run with bash and a shared volume
```BASH
docker run --runtime=nvidia -v <host_path>:<container_path> -ti bryankp/swift_tf_cuda_docker:latest bash
```
### Example Programs
* Official Tensorflow [swift-models](https://github.com/tensorflow/swift-models)

### Further Details
* [TensorFlow for Swift](https://www.tensorflow.org/swift)
* The initial run of a TF program will take a decent amount time to start this is normal
* For troubleshooting issues see the [TF installation guide](https://github.com/tensorflow/swift/blob/master/Installation.md)
and [nvidia-docker instructions](https://github.com/NVIDIA/nvidia-docker)
* To use the swift repl while running docker on macos the container needs to be run with the following flag --privileged
    * Example ```docker run --privileged --runtime=nvidia -v <host_path>:<container_path> -ti bryankp/swift_tf_cuda_docker:latest bash```
    * see https://github.com/apple/swift-docker/issues/9

