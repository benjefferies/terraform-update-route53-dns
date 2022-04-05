variable "ip_address" {
  description = "The IP address to set the A record to. You should automatically detect this with a tool like `curl ifconfig.co`."
  type = "string"
}

variable "domain" {
  description = "The domain to manage as a zone record."
  type = "string"
}

variable "a_record_domain" {
  description = "The A record to assoicate with the IP address"
  type = "string"
}
