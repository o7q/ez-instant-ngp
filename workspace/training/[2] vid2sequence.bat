@echo off
title [2] vid2seqence
ffmpeg -loglevel verbose -i input.mp4 -vf fps=1 "_images/image%%d.png"
echo.
echo DONE!
pause