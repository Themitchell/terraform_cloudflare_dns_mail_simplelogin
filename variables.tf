variable "zone_id" {
  description = "The zone id"
  type        = string
}

variable "verification_code" {
  description = "The text record domain verification code"
  type        = string
}

variable "ttl" {
  description = "The TTL for DNS records"
  type        = number
  default     = 10800
}
