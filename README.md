# hadoop-fca
> Automatic map of concepts: Combination of Big Data and distributed FCA.
Forked from [magarciaroig/hadoop-fca](https://github.com/magarciaroig/hadoop-fca)

## Start project
### Develop Environment(Windows 10)
- [Java8](http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html)
- [IDEA](https://download.jetbrains.com/idea/ideaIU-2017.3.3.exe)
- [Maven](http://mirrors.hust.edu.cn/apache/maven/maven-3/3.5.2/binaries/apache-maven-3.5.2-bin.zip) 
- [shadowsocks-windows](https://github.com/shadowsocks/shadowsocks-windows/releases/download/4.0.7/Shadowsocks-4.0.7.zip) 
- [hadoop2.8.3](http://www.apache.org/dyn/closer.cgi/hadoop/common/hadoop-2.8.3/hadoop-2.8.3.tar.gz) 
- [hadoop-winutils](https://github.com/steveloughran/winutils/releases/download/tag_2017-08-29-hadoop-2.8.1-native/hadoop-2.8.1.zip)
- [tomcat8](http://mirrors.shu.edu.cn/apache/tomcat/tomcat-8/v8.5.24/bin/apache-tomcat-8.5.24.tar.gz)

### Install Tutorial
1. configure your shadowsocks.
2. configure your IDE(Intellij IDEA) with Maven and JAva
3. [Configure Hadoop](http://blog.csdn.net/rav009/article/details/70214788)
4. import createTable.sql to Mysql
4. Maven->Import pom.xml->mvn clean package
5. transfer ${project-name}.war to ${tomcat_dir}/webapps -> start tomcat

