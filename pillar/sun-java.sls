java_home: /usr/local/java/default

java:
  {% set ops = salt['grains.get']('ops', 'vagrant') %}
  {% if ops == 'vagrant' %}
  source_url: http://192.168.56.1/java/jdk-7u60-linux-x64.tar.gz
  {% else %}
  source_url: http://s3.amazonaws.com/bigdata-thirdparty/sun-jdk/jdk-7u60-linux-x64.tar.gz
  {% endif%}
  version_name: jdk1.7.0_60
  prefix: /usr/local/java
  dl_opts: -L

