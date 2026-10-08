variable "zone" {
    type        = string
    default     = "ru-central1-a"
    description = "Default compute zone"
}

variable "vm_count" {
    type        = number
    default     = 1
    description = "Count vm"
}

variable "subnet_id" {
  description = "ID of the subnet for yc-vms"
  type        = string
}

variable "image_id" {
  description = "ID of the Ubuntu image"
  type        = string
}

variable "ssh_key" {
  description = "Public SSH key"
  type        = string
}

variable "vm_name" {
  type        = string
  default     = "yc-vm"
}

variable "cores" {
    type      = number
    default   = 2
}

variable "memory" {
  type        = number
  default     = 2
}

variable "core_frac" {
  type        = number
  default     = 20
}

variable "disk_size" {
  type        = number
  default     = 10
}

variable "disk_type" {
  type        = string
  default     = "network-hdd"
}
