Steps
1. Install logstash and jdbc driver to connect mysql
2. Create config for db input and ES output 
3. Run the migration 
4. test the migration using kibana 


Install Logstash 

Mac:
brew update
brew install logstash

Or download src 
https://artifacts.elastic.co/downloads/logstash/logstash-7.9.2.tar.gz

Reference 
https://www.elastic.co/downloads/logstash

Test logstash
logstash -e “input { stdin { } } output { stdout {} }”

Get JDBC driver
https://dev.mysql.com/downloads/connector/j/
