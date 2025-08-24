module "sops_suna_id" {
  source       = "../../_modules/sops"
  common_alias = "sops-suna-id"
  common_aliow_arns = {
    manage = [
      "arn:aws:iam::${var.account_id.id}:root"
    ]
    use = [
      local.remote_iam.sops_suna_id_common_role_arn
    ]
    delete = ["arn:aws:iam::${var.account_id.id}:root"]
  }
  secure_alias = "secure_sops-suna-id"
  secure_aliow_arns = {
    manage = ["arn:aws:iam::${var.account_id.id}:root"]
    use = [
      local.remote_iam.sops_suna_id_secure_role_arn
    ]
    delete = ["arn:aws:iam::${var.account_id.id}:root"]
  }
}
