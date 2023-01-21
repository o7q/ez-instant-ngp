@echo off
title [4] finalize_dataset
robocopy "_images" "dataset/_images" /e
copy "transforms.json" "dataset"
echo.
echo DONE!
pause