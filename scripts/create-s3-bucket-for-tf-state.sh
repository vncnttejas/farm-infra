# Create s3 bucket for tf state

# replace <bucket-name> with real bucket name
aws s3api create-bucket \
    --bucket <bucket-name> \
    --region eu-west-1
