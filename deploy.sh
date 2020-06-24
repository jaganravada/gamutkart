#!bin/bash
##
##
ENVIRONMENT=$1
if [ $ENVIRONMENT = "QA" ];then 
	sshpass -p "gamut" scp target/gamutkart.war gamutguru@172.17.0.3:/home/gamutguru/distros/apache-tomcat-8.5.56/webapps
elif [ $ENVIRONMENT = "SIT" ];then
	sshpass -p "gamut" ssh  gamutguru@172.17.0.3 "JAVA_HOME=/home/gamutguru/distros/jdk1.8.0_251" "/home/gamutguru/distros/apache-tomcat-8.5.56/bin/startup.sh"
	echo "deployment has been done!"
fi

