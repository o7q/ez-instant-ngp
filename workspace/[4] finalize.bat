@echo off
title [4] finalize_dataset
robocopy "_images" "dataset/_images" /e 2> nul
copy "transforms.json" "dataset" 2> nul
echo.
pause