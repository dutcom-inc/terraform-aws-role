resource "aws_iam_role" "kaptngo" {
    name = local.name
    assume_role_policy = "${file("policies/${var.assume_role_policy_name}")}"

  tags = merge(
    local.common_tags
  ) 
}