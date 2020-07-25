# [Fast Style Transfer](https://github.com/lengstrom/fast-style-transfer) by [lengstrom](https://github.com/lengstrom)

## Preparation
1. [Install Docker](https://docs.docker.com/install/)
    - [Install Docker Engine - Community on Ubuntu](https://docs.docker.com/install/linux/docker-ce/ubuntu/)
    - [Install Docker Engine - Community on CentOS](https://docs.docker.com/install/linux/docker-ce/centos/)
    - [Install Docker Desktop on Mac](https://docs.docker.com/docker-for-mac/install/)
    - [Install Docker Desktop on Windows](https://docs.docker.com/docker-for-windows/install/)
    - [Other information](https://docs.docker.com/install/)
2. Build the environment for the tool
    ```shell
    docker build -t fast-style-transfer .
    ```

## Execution
Currently only support single image style transformation.

### Quick try
The output image `pier-wave.png` can be found in folder `output`
```shell
docker run -v $(pwd)/input:/app/input:ro -v $(pwd)/output:/app/output fast-style-transfer
```

### Usage
Transform image `<input_image>` to style `<style>` and output the result to `<output_image>`. The input image `<input_image>` should be placed in folder `<input>` and the output image can be found in folder `output`
```shell
docker run -v $(pwd)/input:/app/input:ro -v $(pwd)/output:/app/output \
    fast-style-transfer python run.py \
    --checkpoint styles/<style>.ckpt \
    --in-path    input/<input_image> \
    --out-path   output/<output_image>
```

#### Available styles
<table>
　<tr>
    <td align='center'>la_muse</td>
    <td align='center'>rain_princess</td>
    <td align='center'>scream</td>
    <td align='center'>udnie</td>
    <td align='center'>wave</td>
    <td align='center'>wreck</td>
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
docker run -v $(pwd)/input:/app/input:ro -v $(pwd)/output:/app/output \
    fast-style-transfer python run.py \
    --checkpoint styles/udnie.ckpt \
    --in-path    input/pier.jpg \
    --out-path   output/pier-udnie.png
```
