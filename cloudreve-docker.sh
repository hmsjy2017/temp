docker run -d \
  --name cloudreve \
  -e PUID=0 \
  -e PGID=0 \
  -e TZ="Asia/Shanghai" \
  -p 5212:5212 \ 
  --restart=unless-stopped \
  -v /sharedfolders:/cloudreve/uploads \
  -v /dockercnf/cloudreve/conf.ini:/cloudreve/conf.ini \
  -v /dockercnf/cloudreve/cloudreve.db:/cloudreve/cloudreve.db \
  -v /dockercnf/cloudreve/avatar:/cloudreve/avatar \
  xavierniu/cloudreve
