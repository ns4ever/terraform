provider "google" {
  credentials = "{
  "type": "service_account",
  "project_id": "iron-mountain-219809",
  "private_key_id": "2306b39c75579458c23304f65cba7f3a320a0111",
  "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCz0c5jtbk+EE0d\n4eYsMMDH0ZnBHjPL4R0TbdPH4osy6HjU8AL6MqFG1DodNWR0+zalL9gF2X6XhDDb\nXXsSLeADRxC5AJaPVa+iQ1jzlrNDnS0ABJgSxA5PmX+yrjXHagBU07KM29UOiCce\nRtSZY5nID3WzTV3lZS0smfBBiA4gKHPr5q1WVeFKgL1rmimShnHXtXQLO34eSTup\ntkRySlOTFgWtb9WECxHMCFDRnu0mkqi0PTGEayddYV9t+HYrGtFKkZTyuKTHyLvV\nLP+vq/woePzP3BMBsToVF4vzNBcZrF+eA27omnngOPU+ZGLOb/ZnD/NB5H8tAS85\n5ddSQNN9AgMBAAECggEAH4RmwxG7I95qEdKCDB1IcM1zQEa5p+KvPLRLghWaNcRK\nx3HA59b/bwFsJSnyT1GnqIjL+Wx/VHG6OXy3QT6yrIhkbTSl7v4DAHMC8IDprzBp\njn7/o4xjAL8kA26m5OqWn8eSHD+8pmUlTBh4k2ECd28EP3bQPhB/fDmIA4hkB20c\nXbllj0NzFpBFf+1uA+rE7tnRirm879KXYZJ12nNYivoJioUBg9w8fvKeoer8qo1T\n2ST5R35RS90oTruunzzmIQYe8l8lttyhSKj1kRxN4Q+bcUKQEa0+trfZLe1Gwe2b\n/yXupH9XkDRq74mfrxE/vKM2Ie9xPO6gN67fUSzN+QKBgQDi8s/8BRZPw9NS2lUt\nFnImH6pNJHD60BU+tgx9O9cy81/7HS8c/XSMiExhX3XI2hEfz2ZxenI24saf73xP\nKJZaQ4NbfgOdBISJxoRLWQnEof8Rouz+6vKbv2TsOWJgM8a3qtaYmzKz2wZSSHY4\n31QYYixZMMp233mxRLO+2tqwSQKBgQDK1o+Yrn1MyG5xuProNRRClwPOLBclrDq5\nqNWF03FfXU0Mh20hrTi/X2Z5zMwkyzo5v9pNDV/hSsuYqBmJopnrMT0JuU2Ub2wb\nhOOokGGHyajK8lH2TZiPoznHBDffMt3c7jCrZCTAPdEzxLytWoDvf/ZMvvUWr6Bk\n1uxIb+hxlQKBgBNym0ANb4wGS+WdsA7dDYsWy5Ewvj2/9xIYp5lTt202TdNG/PKP\nBZ3FUEZH1+AOT8laDH1M8NyjMkIiU5S09a1me6srcUPTT0g/KrcKOjwPZbwtKgHu\nQDv4er2DbVqxFSZIDXumUQH4kuIaM4dMG/i68PHzrGXjYJpAOObx+iuBAoGAK0o9\nnWVoIpIIWEcVbaeealPWoRLx4b1vTx6Ea6pj4OmFvy3MEcrpeJaAxW/7BcNF6vtS\nOO2oz+lpqGv//0rvtK1ujHu63folxX3IJLqjxho45w9uhLWs4MMCWsJAtmchyLwh\nMQMPgOPwmS7c4daV/AeAZoK+xhe3kK36Ab+4iT0CgYEA2ETf2cQci29NtzZV29bq\nSkRZgGd7z2B8IIhhfH4s0ZQRvqaRn2VJW2oa6Ef6QftrKzxQimeAzttZWLZ24O5z\nrcMYytFWNWV4rj9UFEhTahHYycCI8LiIOYm1Qfir7d6KGI41IVCM9jxgBa9ox2ap\nrRfhFnxy2ZJukK4v14e/kvU=\n-----END PRIVATE KEY-----\n",
  "client_email": "190625647148-compute@developer.gserviceaccount.com",
  "client_id": "111324441105319041988",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/190625647148-compute%40developer.gserviceaccount.com"
}"
  project     = "${var.project}"
  region      = "${var.region}"
}



resource "google_compute_network" "vpc" {
 name                    = "${var.vpcname}"
 auto_create_subnetworks = "false"
routing_mode = "${var.routing_mode}"
}




