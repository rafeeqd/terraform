resource "aws_iam_user" "name" {
  count = 3
  name = user[count.index]
}
