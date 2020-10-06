
keytool -keystore ./certs/truststore.jks -alias cacert -import \
-file ./certs/root_ca.pem

openssl pkcs12 -export -out ./certs/bundle.p12 -in ./certs/mycertfile.crt \
-inkey ./certs/mycertfile.key

keytool -destkeystore ./certs/keystore.jks -importkeystore \
-srckeystore ./certs/bundle.p12 -srcstoretype PKCS12 
