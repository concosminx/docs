Commands
========

https://www.samltool.com/format_x509cert.php

Generate keystore file in jks format - http://javaevangelist.blogspot.com/2016/08/how-to-generate-sha-2-sha-256-self.html 
------------------------------------

.. code:: 
 
 keytool -genkey -alias my_example -keyalg RSA -sigalg SHA256withRSA -keysize 2048 -validity 3650 -keystore my_keystore.jks

Convert JKS to PKCS12 - https://dzone.com/articles/extracting-a-private-key-from-java-keystore-jks
---------------------

.. code:: 
 
 keytool -importkeystore -srckeystore my_keystore.jks -destkeystore my_keystore.jks -deststoretype pkcs12
 keytool -importkeystore -srckeystore my_keystore.jks -destkeystore my_keystore.p12 -srcstoretype JKS -deststoretype PKCS12 -srcstorepass password -deststorepass destpass -srcalias wso2carbon -destalias myalias -srckeypass wso2carbon -destkeypass destpass -noprompt


Extract certificate from PKCS12 format with openssl 
---------------------------------------------------

.. code:: 
 
 openssl pkcs12 -in my_keystore.jks -nokeys -out my_certificate.crt
 openssl pkcs12 -in mystore.p12 -out wso2.pem
 
Extract key from PKCS12 format with openssl 
---------------------------------------------------

.. code:: 
 
 openssl pkcs12 -in my_keystore.jks -nocerts -nodes -out my_key.key
 openssl pkcs12 -in mystore.p12 -nocerts -out wso2.key -passin pass:destpass
 Get the DECRYPTED private key/Remove pass phrase from private key
 
 openssl rsa -in wso2.key -out wso2.key
 
 
Convert to pkcs8 format - https://www.mail-archive.com/openssl-users@openssl.org/msg19551.html
-----------------------

.. code:: 
  
 openssl pkcs8 -topk8 -inform pem -nocrypt -in my_key.key -outform pem -out my_key_pkcs8.pem
 openssl pkcs8 -topk8 -nocrypt -in my_key.key -out my_key_pkcs8-2.pem
 

Convert to pkcs8 format
-----------------------

.. code:: 
  
 openssl pkcs8 -topk8 -inform pem -nocrypt -in my_key.key -outform pem -out my_key_pkcs8.pem
 openssl pkcs8 -topk8 -nocrypt -in my_key.key -out my_key_pkcs8-2.pem

Extract key from keystore and convert to pkcs8 format
-----------------------------------------------------

.. code:: 
  
 openssl pkcs12 -in my_keystore.jks -nocerts -out key2.pem
 openssl pkcs8 -in key2.pem -topk8 -out key2-pkcs8.pem
 
 
Generate certificate signing requeste (CSR)
-------------------------------------------

- generate a private key and a CSR
- use ```-sha256``` flag to sign the CSR with SHA-2
- ```-nodes``` the private key should not be encrypted with a pass phrase
- to non-interactively answer the CSR information prompt use: ```-subj "/C=RO/ST=Romania/L=Pitesti/O=Example Company/CN=examplecompany.com"```

.. code:: 
 openssl req -newkey rsa:2048 -nodes -keyout thekey.key -out thecsr.csr
 
 
- generate a CSR from existing private key 

.. code:: 
 openssl req -key my_private_key.key -new -out my_csr_from_key.csr
 
 
- generate a CSR from existing certificate and private key 
-```-x509toreq``` option specifies that you are using an X509 certificate to make a CSR

.. code:: 
 openssl x509 -in my_certificate.crt -signkey my_key.key -x509toreq -out my_new.csr
 

Generating SSL Certificates
---------------------------

- generate a self-signed certificate

.. code:: 
 openssl req -newkey rsa:2048 -nodes -keyout myssl.key -x509 -days 365 -out myssl.crt
 
- generate a self-signed certificate from an existing private key

.. code:: 
 openssl req -key mykey.key -new -x509 -days 365 -out mycert.crt

- generate a self-signed certificate from an existing private key and csr

.. code:: 
 openssl x509 -signkey mykey.key -in mycsr.csr -req -days 365 -out mycert.crt
 
View Certificates
---------------------------


- view and verify the contents of a CSR

.. code:: 
 openssl req -text -noout -verify -in thecsr.csr


- view the contents of a certificate

.. code:: 
 openssl x509 -text -noout -in thecert.crt
 
- view the contents of a certificate

.. code:: 
 openssl x509 -text -noout -in thecert.crt 
 
Private Keys 
---------------------------

- create a private key 

.. code:: 
 openssl genrsa -des3 -out mykey2.key 2048
 
- verify a private key 

.. code:: 
 openssl rsa -check -in mykey2.key
 
- verify a private key matches a certificate and CSR (check the output)

.. code:: 
 openssl rsa -noout -modulus -in a.key | openssl md5
 openssl x509 -noout -modulus -in a.crt | openssl md5
 openssl req -noout -modulus -in a.csr | openssl md5
 
- encrypt a private Key

.. code:: 
 openssl rsa -des3 -in unencrypted.key -out encrypted.key
 
- decrypt a private Key

.. code:: 
 openssl rsa -in encrypted.key -out decrypted.key
 
Convert Certificate Formats
---------------------------

- PEM to DER

.. code:: 
 openssl x509 -in domain.crt -outform der -out domain.der
 
- DER to PEM

.. code:: 
 openssl x509 -inform der -in domain.der -out domain.crt
 
- PEM to PKCS7

.. code:: 
 openssl crl2pkcs7 -nocrl -certfile domain.crt -certfile ca-chain.crt -out domain.p7b
 
- PKCS7 to PEM 
 
.. code:: 
  openssl pkcs7 -in domain.p7b -print_certs -out domain.crt
 
- PEM to PKCS12

.. code:: 
  openssl pkcs12 -inkey domain.key -in domain.crt -export -out domain.pfx

- PKCS12 to PEM

.. code:: 
  openssl pkcs12 -in domain.pfx -nodes -out domain.combined.crt
  
