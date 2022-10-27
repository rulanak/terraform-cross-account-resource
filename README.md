# terraform-cross-account-resource

**You share resources in one account with users in a different account.** By setting up cross-account access in this way, you don't have to create individual IAM users in each account. In addition, users don't have to sign out of one account and sign into another in order to access resources in different AWS accounts. 

`AWS AssumeRole` allows you to grant temporary credentials with additional privileges to users as needed, following the principle of least privilege. To configure AssumeRole access, you must define an IAM role that specifies the privileges that it grants and which entities can assume it. AssumeRole can grant access within or across AWS accounts.

![Screen Shot 2022-10-27 at 1 00 06 PM](https://user-images.githubusercontent.com/107318829/198399149-40ef00b0-5954-492e-b9e6-417a0f34ce19.png)

In this repository I assumed role from different AWS account:
- we modify providers.tf file:
```
provider "aws" {
  region  = "us-east-2"
  profile = "source"

  assume_role {
    role_arn = "<ROLE_ARN>"
  }
}
```
