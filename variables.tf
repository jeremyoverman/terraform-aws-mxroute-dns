variable "zone_id" {
    type = string
}

variable "spf_record" {
    type = string
}

variable "dkim_name" {
    type = string
}

variable "dkim_record" {
    type = string
}

variable "mx_records" {
    type = list(string)
    default = [
        "10 wednesday.mxrouting.net",
        "20 wednesday-relay.mxrouting.net"
    ]
}