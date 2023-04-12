variable "dbuser" {
  type        = string
  default     = "catmaster"
  description = "Google SQL database user"
}

variable "dbpassword" {
  type        = string
  description = "Google SQL database user's password"
}
