# How to setup JDBC with ES 2.2.0

## Major trick
The most common installation and config instruction is [here](http://r2d2.cc/2015/08/05/elastic-search-on-windows-with-mysql-sql-server-2014-and-import-feeder/). However it is based on ES version 1.7, but recent versions  (> 2.0.0). The author did not update and it is hard to follow.
After ES 1.5, there is no ES-river-jdbc as plugin, so once get [elasticsearch-jdbc](https://github.com/jprante/elasticsearch-jdbc/), it can not be installed under /elasticsearch-2.2.0/plugins/ as a website or a jar app. It has to be installed standalone.

Here is my practice.

## Eniviornment

. Server: Windows 2012
. Elasticsearch: 2.2.0


 
 