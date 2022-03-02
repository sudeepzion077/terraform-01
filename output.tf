output "onebucket_complete_details" {
    value = aws_s3_bucket.testing-s3-ok-terraform
}

output "my_iam_user_complete_details" {
  value = aws_iam_user.my-iam-user-abc-ok
}