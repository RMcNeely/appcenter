!#/bin/bash
echo "starting docker..."
docker run -e DISPLAY $HOME/.Xauthority:/home/developer/.Xauthority --net=host appcenter
