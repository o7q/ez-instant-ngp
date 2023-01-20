@echo off
title [1] setup
mkdir "dataset" 2> nul
mkdir "dataset/_images" 2> nul
mkdir "_images" 2> nul
echo.
title [2] vid2seqence
ffmpeg -loglevel verbose -i input.mp4 -vf fps=10 _images/image%%d.png
echo.
title [3] sequence2colmap
python colmap2nerf.py --colmap_matcher exhaustive --run_colmap --aabb_scale 16 --images _images
echo.
title [4] finalize_dataset
robocopy "_images" "dataset/_images" /e 2> nul
copy "transforms.json" "dataset" 2> nul
echo.
pause