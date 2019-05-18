<img src="images/logo.png" allign="center">  
# Swift TensorFlow with CUDA Docker environment
* From within the directory of the Dockerfile execute the following command  
```BASH
docker build -t swift_tf_cuda_docker .
```
* To run with bash and a shared volume
```BASH
docker run -v <host_path>:<container_path> -ti swift_tf_cuda_docker:latest bash
```