sudo modprobe v4l2loopback
#ip_webcam2video0_play.sh &
ffmpeg -f mjpeg -i http://192.168.1.30:8080/video -pix_fmt yuv420p -f v4l2 /dev/video0

