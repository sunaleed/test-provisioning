module "sops_suna_id" {
  source = "../_modules/sops"
  name   = "suna-id"
  allowed_arns_for_common = [
    "arn:aws:iam::${var.account_id.id}:root",
    "arn:aws:iam::${var.account_id.id}:role/atlantis-ecs_task_execution"
  ]
  allowed_arns_for_secure = [
    "arn:aws:iam::${var.account_id.id}:root",
    "arn:aws:iam::${var.account_id.id}:role/atlantis-ecs_task_execution"
  ]
}

output "sops_suna_id_common_role_arn" {
  value = module.sops_suna_id.common_role_arn
}

output "sops_suna_id_secure_role_arn" {
  value = module.sops_suna_id.secure_role_arn
}
