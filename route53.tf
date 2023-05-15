resource "aws_route53_zone" "public_hosted_zone" {
  name = local.domain_name

  tags = {
    name = "public-hosted-zone"
  }
}

resource "aws_route53_record" "a_record" {
  zone_id = aws_route53_zone.public_hosted_zone.zone_id
  name    = local.arecord_name
  type    = "A"
  ttl     = 300
  records = [local.records_ip] #random ip just as we give while creating in console
}