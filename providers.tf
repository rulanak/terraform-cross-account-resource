provider "aws" {
  region = "us-east-1"
  assume_role = {
    role_arn = "arn:aws:iam::055xxxx55228:role/CrossAccountIAMRole"
  }
}
