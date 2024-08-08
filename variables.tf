variable "drop_rules" {
    type = map(object({
      accountId = number
      description = string
      action = string
      query = string
      //attributes = list(string)


    }))
  
}