variable "location" {
  type    = string
  default = "eastus"

  description = "Lugar onde serão deployado os recursos na Azure"
  nullable    = false
}

variable "environment" {
  type    = string
  default = "DEV"

  description = "Ambiente onde serão deployados os recursos"
  nullable    = false
}
