@echo off
title [2] vid2seqence
ffmpeg -loglevel verbose -i input.mp4 -vf fps=10 _images/image%%d.png
echo.
pause