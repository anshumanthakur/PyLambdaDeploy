variable "CLOUD_REGION" {
  description = "AWS Region"
  default = "us-west-2"
}

variable "env" {
  type    = string
  default = "qa"
}

variable "AIRPORT_CODE" {
  type = map(string)
  default = {
    us-west-2      = "pdx"
    us-east-1      = "iad"
    us-east-2      = "cvg"
    us-west-1      = "sfo"
    ca-central-1   = "yul"
    sa-east-1      = "gru"
    eu-central-1   = "fra"
    eu-west-2      = "lhr"
    eu-west-1      = "dub"
    ap-south-1     = "bon"
    ap-northeast-2 = "icn"
    ap-northeast-1 = "hnd"
    ap-southeast-2 = "syd"
    ap-southeast-1 = "sin"
  }
}

