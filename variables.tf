
variable "ext_port" {
  type    = number
  default = 1880
  validation {
    condition     = var.ext_port == 1880
    error_message = "Not 1880, must be 1880."
  }
}
variable "int_port" {
  type    = number
  default = 1880
  validation {
    condition     = var.int_port == 1880
    error_message = "Not 1880, must be 1880."
  }
}
