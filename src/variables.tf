variable "location" {
  type    = string
  default = "eastus"

  description = "Lugar onde serão deployado os recursos na Azure"
  nullable    = false
}

variable "default_tags" {
  type = map(string)

  default = {
    managed-by = "terraform"
    owner      = "rasmoo-course"
  }

  description = "Valores padroes a serem utilazados como tags nos recursos"
}
