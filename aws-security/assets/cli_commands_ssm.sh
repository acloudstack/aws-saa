# GET PARAMETERS
aws ssm get-parameters --names /example-app/dev/db-url /example-app/dev/db-password

# GET PARAMETERS WITH DECRYPTION
aws ssm get-parameters --names /example-app/dev/db-url /example-app/dev/db-password --with-decryption

# GET PARAMETERS BY PATH
aws ssm get-parameters-by-path --path /example-app/dev/

# GET PARAMETERS BY PATH RECURSIVE
aws ssm get-parameters-by-path --path /example-app/ --recursive

# GET PARAMETERS BY PATH WITH DECRYPTION
aws ssm get-parameters-by-path --path /example-app/ --recursive --with-decryption