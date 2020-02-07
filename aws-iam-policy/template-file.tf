resource "aws_vpc" "template-file" {
  cidr_block = "10.0.0.0/16"
}

data "template_file" "template-file" {
  template = file("policy.json.tpl")

  vars = {
    resource = aws_vpc.template-file.arn
  }
}

resource "aws_iam_policy" "template-file-example" {
  policy = data.template_file.template-file.rendered
}
