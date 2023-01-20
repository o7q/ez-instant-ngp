@echo off
title [3] sequence2colmap
python colmap2nerf.py --colmap_matcher exhaustive --run_colmap --aabb_scale 16 --images _images
echo.
pause