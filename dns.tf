resource "aws_route53_record" "mx" {
  zone_id = var.zone_id
  name    = ""
  type    = "MX"
  ttl     = "30"
  records = var.mx_records
}

resource "aws_route53_record" "spf" {
  zone_id = var.zone_id
  name    = ""
  type    = "TXT"
  ttl     = "30"
  records = [ var.spf_record ]
}

resource "aws_route53_record" "dkim" {
  zone_id = var.zone_id
  name    = var.dkim_name
  type    = "TXT"
  ttl     = "30"
  records = [ "${substr(var.dkim_record, 0, 255)}\"\"${substr(var.dkim_record, 255, 512)}" ]
}
