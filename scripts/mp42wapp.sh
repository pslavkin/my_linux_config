ffmpeg -i $1 -c:v libx264 -profile:v baseline -level 3.0 -pix_fmt yuv420p $1_wapp.mp4
