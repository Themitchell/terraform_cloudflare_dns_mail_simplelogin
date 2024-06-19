module "mail_records" {
  source = "git@github.com:Themitchell/terraform_cloudflare_dns_mail"

  zone_id = var.zone_id

  mail_servers = [
    "mx1.simplelogin.co.",
    "mx2.simplelogin.co."
  ]

  dmarc        = "v=DMARC1; p=quarantine; pct=100; adkim=s; aspf=s"
  spf          = "v=spf1 include:simplelogin.co ~all"
  verification = "sl-verification=${var.verification_code}"

  domain_keys = {
    "dkim._domainkey"   = "dkim._domainkey.simplelogin.co."
    "dkim02._domainkey" = "dkim02._domainkey.simplelogin.co."
    "dkim03._domainkey" = "dkim03._domainkey.simplelogin.co."
  }

  ttl = var.ttl
}
