data "aws_iam_policy_document" "document" {
  version = "2012-10-17"

  statement {
    actions   = ["*"]
    resources = ["*"]
    effect    = "Allow"
    sid       = ""
  }
}

resource "aws_iam_policy" "document-example" {
  policy = data.aws_iam_policy_document.document.json
}
