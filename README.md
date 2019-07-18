<img src="https://github.com/KnowledgePending/Swift-TensorFlow-with-CUDA-Docker/blob/master/images/logo.png?raw=true" width ="900" height="140"> 

# Swift TensorFlow with CUDA Docker environment
## Image details
* Ubuntu 18.04 Bionic
* CUDA 9.2 devel
* Swift 5.0
* TensorFlow for Swift v0.3.1

### Required
* Follow [nvidia-docker instructions](https://github.com/NVIDIA/nvidia-docker)

## Option 1. Build Docker Image
* From within the directory of the Dockerfile execute the following command to build the image
```BASH
docker build -t swift_tf_cuda_docker .
```
* To run with bash and a shared volume
```BASH
docker run -v <host_path>:<container_path> -ti swift_tf_cuda_docker:latest bash
```
## Option 2. Pull image from Docker Hub
* Go to the repository page [bryankp/swift_tf_cuda](https://hub.docker.com/r/bryankp/swift_tf_cuda)
* Pull the latest image
```BASH
docker pull bryankp/swift_tf_cuda:latest
```

### Further Details
* [TensorFlow for Swift](https://www.tensorflow.org/swift)
* The initial run of a TF program will take a decent amount time to start this is normal
* For troubleshooting issues see the [TF installation guide](https://github.com/tensorflow/swift/blob/master/Installation.md)
and [nvidia-docker instructions](https://github.com/NVIDIA/nvidia-docker)
