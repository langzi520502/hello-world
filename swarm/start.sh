appName="swarm"
word="1"
echo "$word"
word=`docker ps -a -q --no-trunc --filter name=^/"$appName"$`
echo "$word"
if [ -z "$word" ];
then
    echo "当前不存在该容器，直接进行启动该操作-------------------------------------"
elif [ -n "$word" ];
then
    echo "当前已存在容器，停止并移除该容器-------------------------------------"
    /usr/bin/docker stop "$word"
    /usr/bin/docker rm "$word"
elif [ "$word" == "1" ];
then
    echo "查询的信息有误，执行默认操作-------------------------------------"
    /usr/bin/docker stop "$word"
    /usr/bin/docker rm "$word"
fi
/usr/local/sbin/apache-maven-3.3.9/bin/mvn clean package -P spring-boot docker:build
/usr/bin/docker stack deploy -c docker-compose.yml "$appName"
