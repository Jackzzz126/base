# install
1. download and unpack
2. add following to /etc/profile
```
export JAVA_HOME=/usr/lib/jvm/jdk1.8.0_131
export JRE_HOME=${JAVA_HOME}/jre
export CLASSPATH=.:${JAVA_HOME}/lib:${JRE_HOME}/lib
export  PATH=${JAVA_HOME}/bin:$PATH
```
3. source /etc/profile
4. java -version


