@echo off
title [4] finalize_dataset
robocopy "_images" "dataset/_images" /e
copy "transforms.json" "dataset"
rmdir "_images" /s /q 2> nul
echo.
echo DONE!
pause