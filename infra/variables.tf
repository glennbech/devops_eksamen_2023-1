variable "prefix" {
  type = string
}

variable "image" {
  type = string
}

variable "port" {
  type    = string
  default = "8080"
}

variable "alarm_email" {
  type = string
}