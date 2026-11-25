provider "aws" {
  region = "us-east-1"
}

resource "aws_iam_user" "user" {
  name = var.user_name
}

resource "aws_iam_user_policy_attachment" "s3_read" {
  user       = aws_iam_user.user.name
  policy_arn = var.policy_arn
}
