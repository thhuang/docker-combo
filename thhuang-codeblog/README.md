# [Code Blog](https://github.com/thhuang/CodeBlog) by [thhuang](https://github.com/thhuang)
It's a markdown editor built with the Flutter SDK! For more information, please refer to the github repository [thhuang/CodeBlog](https://github.com/thhuang/CodeBlog).

## Preparation
1. [Install Docker](https://docs.docker.com/install/) (skip this step if Docker has already been installed)
    - [Install Docker Engine - Community on Ubuntu](https://docs.docker.com/install/linux/docker-ce/ubuntu/)
    - [Install Docker Engine - Community on CentOS](https://docs.docker.com/install/linux/docker-ce/centos/)
    - [Install Docker Desktop on Mac](https://docs.docker.com/docker-for-mac/install/)
    - [Install Docker Desktop on Windows](https://docs.docker.com/docker-for-windows/install/)
    - [Other information](https://docs.docker.com/install/)
2. [Optional] If you would like to build the docker image from scratch, you can use the following command to build it:
    ```shell
    docker build -t <image_name> .
    ```

## Execution
Currently only support basic markdown editing.

### Quick try
1. Start up the editor
    ```shell
    docker run --rm --name codeblog -p 16384:80 tzuhsuanhuang/codeblog:latest
    ```
2. Try out the editor at http://localhost:16384