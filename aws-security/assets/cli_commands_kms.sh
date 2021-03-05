# 1) encryption
aws kms encrypt --key-id alias/test-key --plaintext fileb://secret_data.txt --output text --query CiphertextBlob  --region us-east-1 > secret_data_Encrypted.base64

# base64 decode for Linux or Mac OS 
cat secret_data_Encrypted.base64 | base64 --decode > secret_data_Encrypted

# base64 decode for Windows
certutil -decode .\secret_data_Encrypted.base64 .\secret_data_Encrypted


# 2) decryption
aws kms decrypt --ciphertext-blob fileb://secret_data_Encrypted --output text --query Plaintext > secret_data_Decrypted.base64  --region us-east-1

# base64 decode for Linux or Mac OS 
cat secret_data_Decrypted.base64 | base64 --decode > secret_data_Decrypted.txt


# base64 decode for Windows
certutil -decode .\ExampleFileDecrypted.base64 .\ExampleFileDecrypted.txt

