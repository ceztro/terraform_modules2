resource "aws_iam_user" "user" {
    for_each = var.name
    name = each.value
}