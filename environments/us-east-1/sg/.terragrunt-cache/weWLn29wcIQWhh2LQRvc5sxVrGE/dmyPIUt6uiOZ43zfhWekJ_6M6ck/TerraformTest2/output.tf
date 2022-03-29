//how to read the output from module and use them in our calling script
output key_alias {
    value = module.kms.alias
}
  output key_arn{
      value = module.kms.id
  }
