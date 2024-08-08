resource "newrelic_nrql_drop_rule" "Drop_Rule" {
    for_each = var.drop_rules
  account_id  = each.value.accountId
  description = each.value.description
  action      = each.value.action
  nrql        = each.value.query
  

}


