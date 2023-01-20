@echo off
rmdir "_images" /s /q 2> nul
rmdir "colmap_sparse" /s /q 2> nul
rmdir "colmap_text" /s /q 2> nul
del "colmap.db" /f 2> nul
del "transforms.json" /f 2> nul