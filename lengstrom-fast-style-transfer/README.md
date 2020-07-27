# [Fast Style Transfer](https://github.com/lengstrom/fast-style-transfer) by [lengstrom](https://github.com/lengstrom)
Fast style transfer implemented in Python with TensorFlow. For more information, please refer to the github repository [lengstrom/fast-style-transfer](https://github.com/lengstrom/fast-style-transfer).

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
Currently only support single image style transformation.

#### Notes
The recommended maximum input image size is 1024x1024 pixels. Since the style transformation is performed without the use of a GPU, the required CPU and memory resources may exceed the limit. If you would like to increase the CPU and memory limits, you can update them with [`docker update`](https://docs.docker.com/engine/reference/commandline/update/) or set them in the `Preferences/Resources` section in the Docker GUI.

### Quick try
Clone this repository and run the following command under `lengstrom-fast-style-transfer` folder. The output image `pier-wave.png` can be found in folder `output`
```shell
docker run --rm -v $(pwd)/input:/app/input:ro -v $(pwd)/output:/app/output tzuhsuanhuang/fast-style-transfer
```

### Usage
Transform image `<input_image>` to style `<style>` and output the result to `<output_image>`. The input image `<input_image>` should be placed in folder `input` and the output image can be found in folder `output`
```shell
docker run --rm -v $(pwd)/input:/app/input:ro -v $(pwd)/output:/app/output \
    tzuhsuanhuang/fast-style-transfer python run.py \
    --checkpoint styles/<style>.ckpt \
    --in-path    input/<input_image> \
    --out-path   output/<output_image>
```

#### Available styles
<table>
　<tr>
    <td align='center'>wave</td>
    <td align='center'>udnie</td>
    <td align='center'>rain_princess</td>
    <td align='center'>la_muse</td>
    <td align='center'>wreck</td>
    <td align='center'>scream</td>
　</tr>
　<tr>
    <td align='center'><a href='https://github.com/thhuang/fast-style-transfer/blob/master/examples/style/wave.jpg'><img src='https://github.com/thhuang/fast-style-transfer/blob/master/examples/thumbs/wave.jpg?raw=true' height='200px'></a></td>
    <td align='center'><a href='https://github.com/thhuang/fast-style-transfer/blob/master/examples/style/udnie.jpg'><img src='https://github.com/thhuang/fast-style-transfer/blob/master/examples/thumbs/udnie.jpg?raw=true' height='200px'></a></td>
    <td align='center'><a href='https://github.com/thhuang/fast-style-transfer/blob/master/examples/style/rain_princess.jpg'><img src='https://github.com/thhuang/fast-style-transfer/blob/master/examples/thumbs/rain_princess.jpg?raw=true' height='200px'></a></td>
    <td align='center'><a href='https://github.com/thhuang/fast-style-transfer/blob/master/examples/style/la_muse.jpg'><img src='https://github.com/thhuang/fast-style-transfer/blob/master/examples/thumbs/la_muse.jpg?raw=true' height='200px'></a></td>
    <td align='center'><a href='https://github.com/thhuang/fast-style-transfer/blob/master/examples/style/the_shipwreck_of_the_minotaur.jpg'><img src='https://github.com/thhuang/fast-style-transfer/blob/master/examples/thumbs/the_shipwreck_of_the_minotaur.jpg?raw=true' height='200px'></a></td>
    <td align='center'><a href='https://github.com/thhuang/fast-style-transfer/blob/master/examples/style/the_scream.jpg'><img src='https://github.com/thhuang/fast-style-transfer/blob/master/examples/thumbs/the_scream.jpg?raw=true' height='200px'></a></td>
　</tr>
</table>

#### Example
Transform image `pier.jpg` to `udnie` style and output to `pier-udnie.png`
```shell
docker run --rm -v $(pwd)/input:/app/input:ro -v $(pwd)/output:/app/output \
    tzuhsuanhuang/fast-style-transfer python run.py \
    --checkpoint styles/udnie.ckpt \
    --in-path    input/pier.jpg \
    --out-path   output/pier-udnie.png
```
