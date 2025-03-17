# TODO: must set as terminal env var:
# export AWS_PROFILE="my-aws-profile"
# $env:AWS_PROFILE = "my-aws-profile"

tags = {
  "project" = "terraform-workshop",
  "env"     = "extlambdaapigwv4" # <-- Change this
}
ENV_NAME        = "extlambdaapigwv4"            # <-- Change this
LAMBDA_ZIP_FILE = "artifacts/python_app.zip" ###=> "../artifacts/terraform-lambda.zip"
