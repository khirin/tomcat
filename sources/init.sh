#!/bin/sh
        echo -e "\n\t\t[#] init.sh [#]"

if [ ! -f "/var/init_tomcat_ok" ]; then

# Install docker-java-home
	echo -e "\t[i] Install docker-java-home"
	mv /tmp/alpine_docker-java-home /usr/local/bin/docker-java-home
	chown tomcat:tomcat /usr/local/bin/docker-java-home
	chmod +x /usr/local/bin/docker-java-home

# Remove defaults webapps
	echo -e "\t[i] Remove defaults webapps"
	rm -rf /var/lib/tomcat/webapps/*
		
# Permissions
        echo -e "\t[i] Set permissions"
	chown -R tomcat:tomcat /var/lib/tomcat
	chmod -R 550 /var/lib/tomcat
	chmod u+w /var/lib/tomcat/logs
	chmod u+w /var/lib/tomcat/temp
	chmod u+w /var/lib/tomcat/work
	chmod u+w /var/lib/tomcat/conf
	chmod g+w /var/lib/tomcat/conf
	chmod 440 /var/lib/tomcat/conf/*
	chmod u+w /var/lib/tomcat/webapps
	chmod g+w /var/lib/tomcat/webapps

# Create init flag /var/init_tomcat_ok
        echo -e "\t[i] Create init flag /var/init_tomcat_ok\n"
        touch /var/init_tomcat_ok
else
        echo -e "\n\t[i] Settings already done ...\n"
fi

