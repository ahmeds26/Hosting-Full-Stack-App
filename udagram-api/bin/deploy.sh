cd ./www
eb init --region us-east-1 --platform node.js udaapi
eb use udaapi-env
eb deploy --profile default