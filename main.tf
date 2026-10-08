resource "yandex_compute_instance" "yc-vm" {
    count = var.vm_count
    name = "${var.vm_name}-${count.index+1}"
    hostname = "${var.vm_name}-${count.index+1}"

    resources {
        cores = var.cores
        memory = var.memory
        core_fraction = var.core_frac
    }

    boot_disk {
        initialize_params {
            name = "${var.vm_name}-disk-${count.index+1}"
            size = var.disk_size
            type = var.disk_type
            image_id = var.image_id
        }
    }

    network_interface {
        subnet_id = var.subnet_id
        nat = true
    }

    metadata = {
        serial-port-enable = true
        ssh-keys = "ubuntu:${var.ssh_key}"        
    }
}