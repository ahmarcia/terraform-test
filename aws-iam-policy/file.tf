resource "aws_iam_policy" "file-example" {
  policy = file("policy.json")
}
