<img src="assets/images/chloe.gif"> My dog, Chloe, in 3d.

# ez-instant-ngp
A pre-configured [instant-ngp](https://github.com/NVlabs/instant-ngp) workspace that includes helpful scripts for getting started with NVIDIA's NeRF model. \
This repo will not hold your hand through the process, it just makes the process much easier.

## **Tutorial**
- ### **Installation**
    - Ensure you have [Python](https://www.python.org/downloads) and [ffmpeg](https://ffmpeg.org/download.html) installed (ffmpeg as an environment variable, see [this](https://github.com/o7q/ez-instant-ngp/blob/main/assets/images/enviro_vars_tut.gif) tutorial on how to create a path environment)
    - Install opencv-python:
        ```
        pip install opencv-python
        ```
    - Install [instant-ngp](https://github.com/NVlabs/instant-ngp/releases) and [colmap](https://github.com/colmap/colmap/releases) either manually or by using the pre-made installation scripts found in `./install_scripts`
    - Add the downloaded COLMAP folder to your path environment variables, for example: `C:\COLMAP-3.7-windows-cuda`
- ### Creating Datasets
    - Put your video inside the `./workspace/dataset_creation` folder and rename it to `input.mp4`
    - Run each script in the order by number (feel free to modify any if needed) **or** run `run_all.bat` to automate the process (this will make it harder to debug)
    - If successful, you will be left with a new folder named `dataset`. It should contain two things, `transforms.json` and `_images`. If both are present then congrats! You successfully created a dataset for `instant-ngp`
    - Run `instant-ngp.exe` (which you installed earlier) and drag 'n drop your dataset
    - I have also made some datasets in which you can try, they are included inside of the `dataset_examples` folder