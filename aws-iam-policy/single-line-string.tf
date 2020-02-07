resource "aws_iam_policy" "single-line-string-example" {
  policy = "{\"Version\": \"2012-10-17\", \"Statement\": {\"Effect\": \"Allow\", \"Action\": \"*\", \"Resource\":   \"*\"}}"
}
