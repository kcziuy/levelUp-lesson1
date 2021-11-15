# 2.2 #

## plugins.sh ##
\$ plugins.sh \[pluginfile\]

Построчно разбирает плагины jenkins-a и загружает в /opt/pluigins 
Параметры:

* pluginfile.txt - файл с перечислением плагинов jenkins-a формата:
```
        Plugin: %pluginname%
        Version: %pluginversion%
```
Дополнительно: 
    Если не существует директории /opt/plugins с правами 700 для этого пользователя, 
    скрипт автоматически ее создаст, но запросит sudo-пароль этого пользователя.

# 2.1 #
## terraform plan ##
```
Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the
following symbols:
  + create

Terraform will perform the following actions:

  # aws_instance.ubuntu-master will be created
  + resource "aws_instance" "ubuntu-master" {
      + ami                                  = "ami-0a49b025fffbbdac6"
      + arn                                  = (known after apply)
      + associate_public_ip_address          = (known after apply)
      + availability_zone                    = (known after apply)
      + cpu_core_count                       = (known after apply)
      + cpu_threads_per_core                 = (known after apply)
      + disable_api_termination              = (known after apply)
      + ebs_optimized                        = (known after apply)
      + get_password_data                    = false
      + host_id                              = (known after apply)
      + id                                   = (known after apply)
      + instance_initiated_shutdown_behavior = (known after apply)
      + instance_state                       = (known after apply)
      + instance_type                        = "t2.micro"
      + ipv6_address_count                   = (known after apply)
      + ipv6_addresses                       = (known after apply)
      + key_name                             = "key1"
      + monitoring                           = (known after apply)
      + outpost_arn                          = (known after apply)
      + password_data                        = (known after apply)
      + placement_group                      = (known after apply)
      + placement_partition_number           = (known after apply)
      + primary_network_interface_id         = (known after apply)
      + private_dns                          = (known after apply)
      + private_ip                           = (known after apply)
      + public_dns                           = (known after apply)
      + public_ip                            = (known after apply)
      + secondary_private_ips                = (known after apply)
      + security_groups                      = [
          + "allow-all",
        ]
      + source_dest_check                    = true
      + subnet_id                            = (known after apply)
      + tags                                 = {
          + "Name" = "Master"
        }
      + tags_all                             = {
          + "Name" = "Master"
        }
      + tenancy                              = (known after apply)
      + user_data                            = (known after apply)
      + user_data_base64                     = (known after apply)
      + vpc_security_group_ids               = (known after apply)

      + capacity_reservation_specification {
          + capacity_reservation_preference = (known after apply)

          + capacity_reservation_target {
              + capacity_reservation_id = (known after apply)
            }
        }

      + ebs_block_device {
          + delete_on_termination = (known after apply)
          + device_name           = (known after apply)
          + encrypted             = (known after apply)
          + iops                  = (known after apply)
          + kms_key_id            = (known after apply)
          + snapshot_id           = (known after apply)
          + tags                  = (known after apply)
          + throughput            = (known after apply)
          + volume_id             = (known after apply)
          + volume_size           = (known after apply)
          + volume_type           = (known after apply)
        }

      + enclave_options {
          + enabled = (known after apply)
        }

      + ephemeral_block_device {
          + device_name  = (known after apply)
          + no_device    = (known after apply)
          + virtual_name = (known after apply)
        }

      + metadata_options {
          + http_endpoint               = (known after apply)
          + http_put_response_hop_limit = (known after apply)
          + http_tokens                 = (known after apply)
        }

      + network_interface {
          + delete_on_termination = (known after apply)
          + device_index          = (known after apply)
          + network_interface_id  = (known after apply)
        }

      + root_block_device {
          + delete_on_termination = (known after apply)
          + device_name           = (known after apply)
          + encrypted             = (known after apply)
          + iops                  = (known after apply)
          + kms_key_id            = (known after apply)
          + tags                  = (known after apply)
          + throughput            = (known after apply)
          + volume_id             = (known after apply)
          + volume_size           = (known after apply)
          + volume_type           = (known after apply)
        }
    }

  # aws_instance.ubuntu-slave will be created
  + resource "aws_instance" "ubuntu-slave" {
      + ami                                  = "ami-0a49b025fffbbdac6"
      + arn                                  = (known after apply)
      + associate_public_ip_address          = (known after apply)
      + availability_zone                    = (known after apply)
      + cpu_core_count                       = (known after apply)
      + cpu_threads_per_core                 = (known after apply)
      + disable_api_termination              = (known after apply)
      + ebs_optimized                        = (known after apply)
      + get_password_data                    = false
      + host_id                              = (known after apply)
      + id                                   = (known after apply)
      + instance_initiated_shutdown_behavior = (known after apply)
      + instance_state                       = (known after apply)
      + instance_type                        = "t2.micro"
      + ipv6_address_count                   = (known after apply)
      + ipv6_addresses                       = (known after apply)
      + key_name                             = "key1"
      + monitoring                           = (known after apply)
      + outpost_arn                          = (known after apply)
      + password_data                        = (known after apply)
      + placement_group                      = (known after apply)
      + placement_partition_number           = (known after apply)
      + primary_network_interface_id         = (known after apply)
      + private_dns                          = (known after apply)
      + private_ip                           = (known after apply)
      + public_dns                           = (known after apply)
      + public_ip                            = (known after apply)
      + secondary_private_ips                = (known after apply)
      + security_groups                      = [
          + "allow-all",
        ]
      + source_dest_check                    = true
      + subnet_id                            = (known after apply)
      + tags                                 = {
          + "Name" = "Slave"
        }
      + tags_all                             = {
          + "Name" = "Slave"
        }
      + tenancy                              = (known after apply)
      + user_data                            = (known after apply)
      + user_data_base64                     = (known after apply)
      + vpc_security_group_ids               = (known after apply)

      + capacity_reservation_specification {
          + capacity_reservation_preference = (known after apply)

          + capacity_reservation_target {
              + capacity_reservation_id = (known after apply)
            }
        }

      + ebs_block_device {
          + delete_on_termination = (known after apply)
          + device_name           = (known after apply)
          + encrypted             = (known after apply)
          + iops                  = (known after apply)
          + kms_key_id            = (known after apply)
          + snapshot_id           = (known after apply)
          + tags                  = (known after apply)
          + throughput            = (known after apply)
          + volume_id             = (known after apply)
          + volume_size           = (known after apply)
          + volume_type           = (known after apply)
        }

      + enclave_options {
          + enabled = (known after apply)
        }

      + ephemeral_block_device {
          + device_name  = (known after apply)
          + no_device    = (known after apply)
          + virtual_name = (known after apply)
        }

      + metadata_options {
          + http_endpoint               = (known after apply)
          + http_put_response_hop_limit = (known after apply)
          + http_tokens                 = (known after apply)
        }

      + network_interface {
          + delete_on_termination = (known after apply)
          + device_index          = (known after apply)
          + network_interface_id  = (known after apply)
        }

      + root_block_device {
          + delete_on_termination = (known after apply)
          + device_name           = (known after apply)
          + encrypted             = (known after apply)
          + iops                  = (known after apply)
          + kms_key_id            = (known after apply)
          + tags                  = (known after apply)
          + throughput            = (known after apply)
          + volume_id             = (known after apply)
          + volume_size           = (known after apply)
          + volume_type           = (known after apply)
        }
    }

  # aws_key_pair.kp will be created
  + resource "aws_key_pair" "kp" {
      + arn         = (known after apply)
      + fingerprint = (known after apply)
      + id          = (known after apply)
      + key_name    = "key1"
      + key_pair_id = (known after apply)
      + public_key  = (known after apply)
      + tags_all    = (known after apply)
    }

  # aws_security_group.ubuntu-vm-security will be created
  + resource "aws_security_group" "ubuntu-vm-security" {
      + arn                    = (known after apply)
      + description            = "Managed by Terraform"
      + egress                 = [
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + description      = ""
              + from_port        = 0
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "-1"
              + security_groups  = []
              + self             = false
              + to_port          = 0
            },
        ]
      + id                     = (known after apply)
      + ingress                = [
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + description      = ""
              + from_port        = 22
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "tcp"
              + security_groups  = []
              + self             = false
              + to_port          = 22
            },
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + description      = ""
              + from_port        = 443
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "tcp"
              + security_groups  = []
              + self             = false
              + to_port          = 443
            },
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + description      = ""
              + from_port        = 80
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "tcp"
              + security_groups  = []
              + self             = false
              + to_port          = 80
            },
        ]
      + name                   = "allow-all"
      + name_prefix            = (known after apply)
      + owner_id               = (known after apply)
      + revoke_rules_on_delete = false
      + tags_all               = (known after apply)
      + vpc_id                 = (known after apply)
    }

  # tls_private_key.pk will be created
  + resource "tls_private_key" "pk" {
      + algorithm                  = "RSA"
      + ecdsa_curve                = "P224"
      + id                         = (known after apply)
      + private_key_pem            = (sensitive value)
      + public_key_fingerprint_md5 = (known after apply)
      + public_key_openssh         = (known after apply)
      + public_key_pem             = (known after apply)
      + rsa_bits                   = 4096
    }

Plan: 5 to add, 0 to change, 0 to destroy.

───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if
you run "terraform apply" now.

```

## terraform apply ##
```

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the
following symbols:
  + create

Terraform will perform the following actions:

  # aws_instance.ubuntu-master will be created
  + resource "aws_instance" "ubuntu-master" {
      + ami                                  = "ami-0a49b025fffbbdac6"
      + arn                                  = (known after apply)
      + associate_public_ip_address          = (known after apply)
      + availability_zone                    = (known after apply)
      + cpu_core_count                       = (known after apply)
      + cpu_threads_per_core                 = (known after apply)
      + disable_api_termination              = (known after apply)
      + ebs_optimized                        = (known after apply)
      + get_password_data                    = false
      + host_id                              = (known after apply)
      + id                                   = (known after apply)
      + instance_initiated_shutdown_behavior = (known after apply)
      + instance_state                       = (known after apply)
      + instance_type                        = "t2.micro"
      + ipv6_address_count                   = (known after apply)
      + ipv6_addresses                       = (known after apply)
      + key_name                             = "key1"
      + monitoring                           = (known after apply)
      + outpost_arn                          = (known after apply)
      + password_data                        = (known after apply)
      + placement_group                      = (known after apply)
      + placement_partition_number           = (known after apply)
      + primary_network_interface_id         = (known after apply)
      + private_dns                          = (known after apply)
      + private_ip                           = (known after apply)
      + public_dns                           = (known after apply)
      + public_ip                            = (known after apply)
      + secondary_private_ips                = (known after apply)
      + security_groups                      = [
          + "allow-all",
        ]
      + source_dest_check                    = true
      + subnet_id                            = (known after apply)
      + tags                                 = {
          + "Name" = "Master"
        }
      + tags_all                             = {
          + "Name" = "Master"
        }
      + tenancy                              = (known after apply)
      + user_data                            = (known after apply)
      + user_data_base64                     = (known after apply)
      + vpc_security_group_ids               = (known after apply)

      + capacity_reservation_specification {
          + capacity_reservation_preference = (known after apply)

          + capacity_reservation_target {
              + capacity_reservation_id = (known after apply)
            }
        }

      + ebs_block_device {
          + delete_on_termination = (known after apply)
          + device_name           = (known after apply)
          + encrypted             = (known after apply)
          + iops                  = (known after apply)
          + kms_key_id            = (known after apply)
          + snapshot_id           = (known after apply)
          + tags                  = (known after apply)
          + throughput            = (known after apply)
          + volume_id             = (known after apply)
          + volume_size           = (known after apply)
          + volume_type           = (known after apply)
        }

      + enclave_options {
          + enabled = (known after apply)
        }

      + ephemeral_block_device {
          + device_name  = (known after apply)
          + no_device    = (known after apply)
          + virtual_name = (known after apply)
        }

      + metadata_options {
          + http_endpoint               = (known after apply)
          + http_put_response_hop_limit = (known after apply)
          + http_tokens                 = (known after apply)
        }

      + network_interface {
          + delete_on_termination = (known after apply)
          + device_index          = (known after apply)
          + network_interface_id  = (known after apply)
        }

      + root_block_device {
          + delete_on_termination = (known after apply)
          + device_name           = (known after apply)
          + encrypted             = (known after apply)
          + iops                  = (known after apply)
          + kms_key_id            = (known after apply)
          + tags                  = (known after apply)
          + throughput            = (known after apply)
          + volume_id             = (known after apply)
          + volume_size           = (known after apply)
          + volume_type           = (known after apply)
        }
    }

  # aws_instance.ubuntu-slave will be created
  + resource "aws_instance" "ubuntu-slave" {
      + ami                                  = "ami-0a49b025fffbbdac6"
      + arn                                  = (known after apply)
      + associate_public_ip_address          = (known after apply)
      + availability_zone                    = (known after apply)
      + cpu_core_count                       = (known after apply)
      + cpu_threads_per_core                 = (known after apply)
      + disable_api_termination              = (known after apply)
      + ebs_optimized                        = (known after apply)
      + get_password_data                    = false
      + host_id                              = (known after apply)
      + id                                   = (known after apply)
      + instance_initiated_shutdown_behavior = (known after apply)
      + instance_state                       = (known after apply)
      + instance_type                        = "t2.micro"
      + ipv6_address_count                   = (known after apply)
      + ipv6_addresses                       = (known after apply)
      + key_name                             = "key1"
      + monitoring                           = (known after apply)
      + outpost_arn                          = (known after apply)
      + password_data                        = (known after apply)
      + placement_group                      = (known after apply)
      + placement_partition_number           = (known after apply)
      + primary_network_interface_id         = (known after apply)
      + private_dns                          = (known after apply)
      + private_ip                           = (known after apply)
      + public_dns                           = (known after apply)
      + public_ip                            = (known after apply)
      + secondary_private_ips                = (known after apply)
      + security_groups                      = [
          + "allow-all",
        ]
      + source_dest_check                    = true
      + subnet_id                            = (known after apply)
      + tags                                 = {
          + "Name" = "Slave"
        }
      + tags_all                             = {
          + "Name" = "Slave"
        }
      + tenancy                              = (known after apply)
      + user_data                            = (known after apply)
      + user_data_base64                     = (known after apply)
      + vpc_security_group_ids               = (known after apply)

      + capacity_reservation_specification {
          + capacity_reservation_preference = (known after apply)

          + capacity_reservation_target {
              + capacity_reservation_id = (known after apply)
            }
        }

      + ebs_block_device {
          + delete_on_termination = (known after apply)
          + device_name           = (known after apply)
          + encrypted             = (known after apply)
          + iops                  = (known after apply)
          + kms_key_id            = (known after apply)
          + snapshot_id           = (known after apply)
          + tags                  = (known after apply)
          + throughput            = (known after apply)
          + volume_id             = (known after apply)
          + volume_size           = (known after apply)
          + volume_type           = (known after apply)
        }

      + enclave_options {
          + enabled = (known after apply)
        }

      + ephemeral_block_device {
          + device_name  = (known after apply)
          + no_device    = (known after apply)
          + virtual_name = (known after apply)
        }

      + metadata_options {
          + http_endpoint               = (known after apply)
          + http_put_response_hop_limit = (known after apply)
          + http_tokens                 = (known after apply)
        }

      + network_interface {
          + delete_on_termination = (known after apply)
          + device_index          = (known after apply)
          + network_interface_id  = (known after apply)
        }

      + root_block_device {
          + delete_on_termination = (known after apply)
          + device_name           = (known after apply)
          + encrypted             = (known after apply)
          + iops                  = (known after apply)
          + kms_key_id            = (known after apply)
          + tags                  = (known after apply)
          + throughput            = (known after apply)
          + volume_id             = (known after apply)
          + volume_size           = (known after apply)
          + volume_type           = (known after apply)
        }
    }

  # aws_key_pair.kp will be created
  + resource "aws_key_pair" "kp" {
      + arn         = (known after apply)
      + fingerprint = (known after apply)
      + id          = (known after apply)
      + key_name    = "key1"
      + key_pair_id = (known after apply)
      + public_key  = (known after apply)
      + tags_all    = (known after apply)
    }

  # aws_security_group.ubuntu-vm-security will be created
  + resource "aws_security_group" "ubuntu-vm-security" {
      + arn                    = (known after apply)
      + description            = "Managed by Terraform"
      + egress                 = [
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + description      = ""
              + from_port        = 0
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "-1"
              + security_groups  = []
              + self             = false
              + to_port          = 0
            },
        ]
      + id                     = (known after apply)
      + ingress                = [
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + description      = ""
              + from_port        = 22
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "tcp"
              + security_groups  = []
              + self             = false
              + to_port          = 22
            },
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + description      = ""
              + from_port        = 443
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "tcp"
              + security_groups  = []
              + self             = false
              + to_port          = 443
            },
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + description      = ""
              + from_port        = 80
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "tcp"
              + security_groups  = []
              + self             = false
              + to_port          = 80
            },
        ]
      + name                   = "allow-all"
      + name_prefix            = (known after apply)
      + owner_id               = (known after apply)
      + revoke_rules_on_delete = false
      + tags_all               = (known after apply)
      + vpc_id                 = (known after apply)
    }

  # tls_private_key.pk will be created
  + resource "tls_private_key" "pk" {
      + algorithm                  = "RSA"
      + ecdsa_curve                = "P224"
      + id                         = (known after apply)
      + private_key_pem            = (sensitive value)
      + public_key_fingerprint_md5 = (known after apply)
      + public_key_openssh         = (known after apply)
      + public_key_pem             = (known after apply)
      + rsa_bits                   = 4096
    }

Plan: 5 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

tls_private_key.pk: Creating...
tls_private_key.pk: Creation complete after 1s [id=ca140fa4c62faea7778048b435999ad84d3de2f7]
aws_key_pair.kp: Creating...
aws_security_group.ubuntu-vm-security: Creating...
aws_key_pair.kp: Provisioning with 'local-exec'...
aws_key_pair.kp (local-exec): (output suppressed due to sensitive value in config)
aws_key_pair.kp: Provisioning with 'local-exec'...
aws_key_pair.kp (local-exec): Executing: ["/bin/sh" "-c" "cp key.pem ~/.ssh/"]
aws_key_pair.kp: Provisioning with 'local-exec'...
aws_key_pair.kp (local-exec): Executing: ["/bin/sh" "-c" "chmod 700 ~/.ssh/key.pem"]
aws_key_pair.kp: Creation complete after 0s [id=key1]
aws_instance.ubuntu-master: Creating...
aws_security_group.ubuntu-vm-security: Creation complete after 2s [id=sg-07bc0172a3ed90711]
aws_instance.ubuntu-master: Still creating... [10s elapsed]
aws_instance.ubuntu-master: Still creating... [20s elapsed]
aws_instance.ubuntu-master: Still creating... [30s elapsed]
aws_instance.ubuntu-master: Still creating... [40s elapsed]
aws_instance.ubuntu-master: Provisioning with 'remote-exec'...
aws_instance.ubuntu-master (remote-exec): Connecting to remote host via SSH...
aws_instance.ubuntu-master (remote-exec):   Host: 18.192.5.196
aws_instance.ubuntu-master (remote-exec):   User: ubuntu
aws_instance.ubuntu-master (remote-exec):   Password: false
aws_instance.ubuntu-master (remote-exec):   Private key: true
aws_instance.ubuntu-master (remote-exec):   Certificate: false
aws_instance.ubuntu-master (remote-exec):   SSH Agent: false
aws_instance.ubuntu-master (remote-exec):   Checking Host Key: false
aws_instance.ubuntu-master (remote-exec):   Target Platform: unix
aws_instance.ubuntu-master (remote-exec): Connecting to remote host via SSH...
aws_instance.ubuntu-master (remote-exec):   Host: 18.192.5.196
aws_instance.ubuntu-master (remote-exec):   User: ubuntu
aws_instance.ubuntu-master (remote-exec):   Password: false
aws_instance.ubuntu-master (remote-exec):   Private key: true
aws_instance.ubuntu-master (remote-exec):   Certificate: false
aws_instance.ubuntu-master (remote-exec):   SSH Agent: false
aws_instance.ubuntu-master (remote-exec):   Checking Host Key: false
aws_instance.ubuntu-master (remote-exec):   Target Platform: unix
aws_instance.ubuntu-master (remote-exec): Connecting to remote host via SSH...
aws_instance.ubuntu-master (remote-exec):   Host: 18.192.5.196
aws_instance.ubuntu-master (remote-exec):   User: ubuntu
aws_instance.ubuntu-master (remote-exec):   Password: false
aws_instance.ubuntu-master (remote-exec):   Private key: true
aws_instance.ubuntu-master (remote-exec):   Certificate: false
aws_instance.ubuntu-master (remote-exec):   SSH Agent: false
aws_instance.ubuntu-master (remote-exec):   Checking Host Key: false
aws_instance.ubuntu-master (remote-exec):   Target Platform: unix
aws_instance.ubuntu-master: Still creating... [50s elapsed]
aws_instance.ubuntu-master (remote-exec): Connecting to remote host via SSH...
aws_instance.ubuntu-master (remote-exec):   Host: 18.192.5.196
aws_instance.ubuntu-master (remote-exec):   User: ubuntu
aws_instance.ubuntu-master (remote-exec):   Password: false
aws_instance.ubuntu-master (remote-exec):   Private key: true
aws_instance.ubuntu-master (remote-exec):   Certificate: false
aws_instance.ubuntu-master (remote-exec):   SSH Agent: false
aws_instance.ubuntu-master (remote-exec):   Checking Host Key: false
aws_instance.ubuntu-master (remote-exec):   Target Platform: unix
aws_instance.ubuntu-master (remote-exec): Connected!
aws_instance.ubuntu-master (remote-exec):
aws_instance.ubuntu-master (remote-exec): 0% [Working]
aws_instance.ubuntu-master (remote-exec): Get:1 http://security.ubuntu.com/ubuntu focal-security InRelease [114 kB]
aws_instance.ubuntu-master (remote-exec):
aws_instance.ubuntu-master (remote-exec): 0% [Waiting for headers] [1 InRelease 1
aws_instance.ubuntu-master (remote-exec): Hit:2 http://archive.ubuntu.com/ubuntu focal InRelease
aws_instance.ubuntu-master (remote-exec):
aws_instance.ubuntu-master (remote-exec): 0% [Waiting for headers] [1 InRelease 1
aws_instance.ubuntu-master (remote-exec): Get:3 http://archive.ubuntu.com/ubuntu focal-updates InRelease [114 kB]
aws_instance.ubuntu-master (remote-exec):
aws_instance.ubuntu-master (remote-exec): 0% [3 InRelease 15.6 kB/114 kB 14%]
aws_instance.ubuntu-master (remote-exec): 0% [Waiting for headers]
aws_instance.ubuntu-master (remote-exec): Get:4 http://archive.ubuntu.com/ubuntu focal-backports InRelease [101 kB]
aws_instance.ubuntu-master (remote-exec):
aws_instance.ubuntu-master (remote-exec): 0% [4 InRelease 5499 B/101 kB 5%]
aws_instance.ubuntu-master (remote-exec): 0% [Working]
aws_instance.ubuntu-master (remote-exec):
aws_instance.ubuntu-master (remote-exec): 0% [Working]
aws_instance.ubuntu-master (remote-exec): Get:5 http://archive.ubuntu.com/ubuntu focal/universe amd64 Packages [8628 kB]
aws_instance.ubuntu-master (remote-exec):
aws_instance.ubuntu-master (remote-exec): 0% [5 Packages 14.3 kB/8628 kB 0%]
aws_instance.ubuntu-master (remote-exec):
aws_instance.ubuntu-master (remote-exec): 0% [5 Packages 8628 kB/8628 kB 100%]
aws_instance.ubuntu-master (remote-exec): Get:6 http://security.ubuntu.com/ubuntu focal-security/main amd64 Packages [987 kB]
aws_instance.ubuntu-master (remote-exec):
aws_instance.ubuntu-master (remote-exec): 0% [5 Packages 8628 kB/8628 kB 100%] [6
aws_instance.ubuntu-master (remote-exec): 0% [6 Packages 352 kB/987 kB 36%]
aws_instance.ubuntu-master (remote-exec): 0% [5 Packages store 0 B] [Waiting for
aws_instance.ubuntu-master (remote-exec): Get:7 http://archive.ubuntu.com/ubuntu focal/universe Translation-en [5124 kB]
aws_instance.ubuntu-master (remote-exec):
aws_instance.ubuntu-master (remote-exec): 0% [5 Packages store 0 B] [7 Translatio
aws_instance.ubuntu-master (remote-exec): 0% [5 Packages store 0 B] [7 Translatio
aws_instance.ubuntu-master (remote-exec): Get:8 http://security.ubuntu.com/ubuntu focal-security/main Translation-en [183 kB]
aws_instance.ubuntu-master (remote-exec):
aws_instance.ubuntu-master (remote-exec): 0% [5 Packages store 0 B] [7 Translatio
aws_instance.ubuntu-master (remote-exec): 0% [5 Packages store 0 B] [7 Translatio
aws_instance.ubuntu-master (remote-exec): Get:9 http://security.ubuntu.com/ubuntu focal-security/main amd64 c-n-f Metadata [8880 B]
aws_instance.ubuntu-master (remote-exec):
aws_instance.ubuntu-master (remote-exec): 0% [5 Packages store 0 B] [7 Translatio
aws_instance.ubuntu-master (remote-exec): 0% [5 Packages store 0 B] [7 Translatio
aws_instance.ubuntu-master (remote-exec): Get:10 http://security.ubuntu.com/ubuntu focal-security/restricted amd64 Packages [526 kB]
aws_instance.ubuntu-master (remote-exec):
aws_instance.ubuntu-master (remote-exec): 0% [5 Packages store 0 B] [7 Translatio
aws_instance.ubuntu-master (remote-exec): 0% [5 Packages store 0 B] [7 Translatio
aws_instance.ubuntu-master (remote-exec): Get:11 http://security.ubuntu.com/ubuntu focal-security/restricted Translation-en [75.4 kB]
aws_instance.ubuntu-master (remote-exec):
aws_instance.ubuntu-master (remote-exec): 0% [5 Packages store 0 B] [7 Translatio
aws_instance.ubuntu-master (remote-exec): 0% [5 Packages store 0 B] [7 Translatio
aws_instance.ubuntu-master (remote-exec): Get:12 http://security.ubuntu.com/ubuntu focal-security/restricted amd64 c-n-f Metadata [528 B]
aws_instance.ubuntu-master (remote-exec):
aws_instance.ubuntu-master (remote-exec): 0% [5 Packages store 0 B] [7 Translatio
aws_instance.ubuntu-master (remote-exec): 0% [5 Packages store 0 B] [7 Translatio
aws_instance.ubuntu-master (remote-exec): Get:13 http://security.ubuntu.com/ubuntu focal-security/universe amd64 Packages [651 kB]
aws_instance.ubuntu-master (remote-exec):
aws_instance.ubuntu-master (remote-exec): 0% [5 Packages store 0 B] [7 Translatio
aws_instance.ubuntu-master (remote-exec): 0% [5 Packages store 0 B] [7 Translatio
aws_instance.ubuntu-master (remote-exec): Get:14 http://security.ubuntu.com/ubuntu focal-security/universe Translation-en [107 kB]
aws_instance.ubuntu-master (remote-exec):
aws_instance.ubuntu-master (remote-exec): 0% [5 Packages store 0 B] [7 Translatio
aws_instance.ubuntu-master (remote-exec): 0% [5 Packages store 0 B] [7 Translatio
aws_instance.ubuntu-master (remote-exec): Get:15 http://security.ubuntu.com/ubuntu focal-security/universe amd64 c-n-f Metadata [12.9 kB]
aws_instance.ubuntu-master (remote-exec):
aws_instance.ubuntu-master (remote-exec): 0% [5 Packages store 0 B] [7 Translatio
aws_instance.ubuntu-master (remote-exec): 0% [5 Packages store 0 B] [7 Translatio
aws_instance.ubuntu-master (remote-exec): Get:16 http://security.ubuntu.com/ubuntu focal-security/multiverse amd64 Packages [21.9 kB]
aws_instance.ubuntu-master (remote-exec):
aws_instance.ubuntu-master (remote-exec): 0% [5 Packages store 0 B] [7 Translatio
aws_instance.ubuntu-master (remote-exec): 0% [5 Packages store 0 B] [7 Translatio
aws_instance.ubuntu-master (remote-exec): Get:17 http://security.ubuntu.com/ubuntu focal-security/multiverse Translation-en [4948 B]
aws_instance.ubuntu-master (remote-exec):
aws_instance.ubuntu-master (remote-exec): 0% [5 Packages store 0 B] [7 Translatio
aws_instance.ubuntu-master (remote-exec): 0% [5 Packages store 0 B] [7 Translatio
aws_instance.ubuntu-master (remote-exec): Get:18 http://security.ubuntu.com/ubuntu focal-security/multiverse amd64 c-n-f Metadata [540 B]
aws_instance.ubuntu-master (remote-exec):
aws_instance.ubuntu-master (remote-exec): 0% [5 Packages store 0 B] [7 Translatio
aws_instance.ubuntu-master (remote-exec): 0% [5 Packages store 0 B] [7 Translatio
aws_instance.ubuntu-master (remote-exec): Get:19 http://archive.ubuntu.com/ubuntu focal/universe amd64 c-n-f Metadata [265 kB]
aws_instance.ubuntu-master (remote-exec):
aws_instance.ubuntu-master (remote-exec): 0% [5 Packages store 0 B] [19 Commands-
aws_instance.ubuntu-master (remote-exec): 0% [5 Packages store 0 B]
aws_instance.ubuntu-master (remote-exec): Get:20 http://archive.ubuntu.com/ubuntu focal/multiverse amd64 Packages [144 kB]
aws_instance.ubuntu-master (remote-exec):
aws_instance.ubuntu-master (remote-exec): 0% [5 Packages store 0 B] [20 Packages
aws_instance.ubuntu-master (remote-exec): 0% [5 Packages store 0 B]
aws_instance.ubuntu-master (remote-exec): Get:21 http://archive.ubuntu.com/ubuntu focal/multiverse Translation-en [104 kB]
aws_instance.ubuntu-master (remote-exec):
aws_instance.ubuntu-master (remote-exec): 0% [5 Packages store 0 B] [21 Translati
aws_instance.ubuntu-master (remote-exec): 0% [5 Packages store 0 B]
aws_instance.ubuntu-master (remote-exec): Get:22 http://archive.ubuntu.com/ubuntu focal/multiverse amd64 c-n-f Metadata [9136 B]
aws_instance.ubuntu-master (remote-exec):
aws_instance.ubuntu-master (remote-exec): 0% [5 Packages store 0 B] [22 Commands-
aws_instance.ubuntu-master (remote-exec): 0% [5 Packages store 0 B]
aws_instance.ubuntu-master (remote-exec):
aws_instance.ubuntu-master (remote-exec): 0% [5 Packages store 0 B]
aws_instance.ubuntu-master (remote-exec): Get:23 http://archive.ubuntu.com/ubuntu focal-updates/main amd64 Packages [1344 kB]
aws_instance.ubuntu-master (remote-exec):
aws_instance.ubuntu-master (remote-exec): 0% [5 Packages store 0 B] [23 Packages
aws_instance.ubuntu-master (remote-exec): 0% [5 Packages store 0 B]
aws_instance.ubuntu-master (remote-exec): Get:24 http://archive.ubuntu.com/ubuntu focal-updates/main Translation-en [276 kB]
aws_instance.ubuntu-master (remote-exec):
aws_instance.ubuntu-master (remote-exec): 0% [5 Packages store 0 B] [24 Translati
aws_instance.ubuntu-master (remote-exec): 0% [5 Packages store 0 B]
aws_instance.ubuntu-master (remote-exec): Get:25 http://archive.ubuntu.com/ubuntu focal-updates/main amd64 c-n-f Metadata [14.5 kB]
aws_instance.ubuntu-master (remote-exec):
aws_instance.ubuntu-master (remote-exec): 0% [5 Packages store 0 B] [25 Commands-
aws_instance.ubuntu-master (remote-exec): 0% [5 Packages store 0 B]
aws_instance.ubuntu-master (remote-exec): Get:26 http://archive.ubuntu.com/ubuntu focal-updates/restricted amd64 Packages [569 kB]
aws_instance.ubuntu-master (remote-exec):
aws_instance.ubuntu-master (remote-exec): 0% [5 Packages store 0 B] [26 Packages
aws_instance.ubuntu-master (remote-exec): 0% [5 Packages store 0 B]
aws_instance.ubuntu-master (remote-exec): Get:27 http://archive.ubuntu.com/ubuntu focal-updates/restricted Translation-en [81.6 kB]
aws_instance.ubuntu-master (remote-exec):
aws_instance.ubuntu-master (remote-exec): 0% [5 Packages store 0 B] [27 Translati
aws_instance.ubuntu-master (remote-exec): 0% [5 Packages store 0 B]
aws_instance.ubuntu-master (remote-exec): Get:28 http://archive.ubuntu.com/ubuntu focal-updates/restricted amd64 c-n-f Metadata [528 B]
aws_instance.ubuntu-master (remote-exec):
aws_instance.ubuntu-master (remote-exec): 0% [5 Packages store 0 B] [28 Commands-
aws_instance.ubuntu-master (remote-exec): 0% [5 Packages store 0 B]
aws_instance.ubuntu-master (remote-exec): Get:29 http://archive.ubuntu.com/ubuntu focal-updates/universe amd64 Packages [875 kB]
aws_instance.ubuntu-master (remote-exec):
aws_instance.ubuntu-master (remote-exec): 0% [5 Packages store 0 B] [29 Packages
aws_instance.ubuntu-master (remote-exec): 0% [5 Packages store 0 B]
aws_instance.ubuntu-master (remote-exec): Get:30 http://archive.ubuntu.com/ubuntu focal-updates/universe Translation-en [189 kB]
aws_instance.ubuntu-master (remote-exec):
aws_instance.ubuntu-master (remote-exec): 0% [5 Packages store 0 B] [30 Translati
aws_instance.ubuntu-master (remote-exec): 0% [5 Packages store 0 B]
aws_instance.ubuntu-master (remote-exec): Get:31 http://archive.ubuntu.com/ubuntu focal-updates/universe amd64 c-n-f Metadata [19.5 kB]
aws_instance.ubuntu-master (remote-exec):
aws_instance.ubuntu-master (remote-exec): 0% [5 Packages store 0 B] [31 Commands-
aws_instance.ubuntu-master (remote-exec): 0% [5 Packages store 0 B]
aws_instance.ubuntu-master (remote-exec): Get:32 http://archive.ubuntu.com/ubuntu focal-updates/multiverse amd64 Packages [24.5 kB]
aws_instance.ubuntu-master (remote-exec):
aws_instance.ubuntu-master (remote-exec): 0% [5 Packages store 0 B] [32 Packages
aws_instance.ubuntu-master (remote-exec): 0% [5 Packages store 0 B]
aws_instance.ubuntu-master (remote-exec): Get:33 http://archive.ubuntu.com/ubuntu focal-updates/multiverse Translation-en [6856 B]
aws_instance.ubuntu-master (remote-exec):
aws_instance.ubuntu-master (remote-exec): 0% [5 Packages store 0 B] [33 Translati
aws_instance.ubuntu-master (remote-exec): 0% [5 Packages store 0 B]
aws_instance.ubuntu-master (remote-exec): Get:34 http://archive.ubuntu.com/ubuntu focal-updates/multiverse amd64 c-n-f Metadata [616 B]
aws_instance.ubuntu-master (remote-exec):
aws_instance.ubuntu-master (remote-exec): 0% [5 Packages store 0 B] [34 Commands-
aws_instance.ubuntu-master (remote-exec): 0% [5 Packages store 0 B]
aws_instance.ubuntu-master (remote-exec):
aws_instance.ubuntu-master (remote-exec): 91% [5 Packages store 0 B]
aws_instance.ubuntu-master (remote-exec): Get:35 http://archive.ubuntu.com/ubuntu focal-backports/main amd64 Packages [2568 B]
aws_instance.ubuntu-master (remote-exec):
aws_instance.ubuntu-master (remote-exec): 91% [5 Packages store 0 B]
aws_instance.ubuntu-master (remote-exec): Get:36 http://archive.ubuntu.com/ubuntu focal-backports/main Translation-en [1120 B]
aws_instance.ubuntu-master (remote-exec): Get:37 http://archive.ubuntu.com/ubuntu focal-backports/main amd64 c-n-f Metadata [400 B]
aws_instance.ubuntu-master (remote-exec): Get:38 http://archive.ubuntu.com/ubuntu focal-backports/restricted amd64 c-n-f Metadata [116 B]
aws_instance.ubuntu-master (remote-exec): Get:39 http://archive.ubuntu.com/ubuntu focal-backports/universe amd64 Packages [6592 B]
aws_instance.ubuntu-master (remote-exec): Get:40 http://archive.ubuntu.com/ubuntu focal-backports/universe Translation-en [3292 B]
aws_instance.ubuntu-master (remote-exec):
aws_instance.ubuntu-master (remote-exec): 91% [5 Packages store 0 B] [40 Translat
aws_instance.ubuntu-master (remote-exec): Get:41 http://archive.ubuntu.com/ubuntu focal-backports/universe amd64 c-n-f Metadata [580 B]
aws_instance.ubuntu-master (remote-exec): Get:42 http://archive.ubuntu.com/ubuntu focal-backports/multiverse amd64 c-n-f Metadata [116 B]
aws_instance.ubuntu-master (remote-exec):
aws_instance.ubuntu-master (remote-exec): 91% [5 Packages store 0 B]
aws_instance.ubuntu-master (remote-exec):
aws_instance.ubuntu-master (remote-exec): 91% [5 Packages store 0 B]
aws_instance.ubuntu-master (remote-exec):
aws_instance.ubuntu-master (remote-exec): 91% [5 Packages store 0 B]
aws_instance.ubuntu-master (remote-exec):
aws_instance.ubuntu-master (remote-exec): 91% [5 Packages store 0 B]
aws_instance.ubuntu-master (remote-exec):
aws_instance.ubuntu-master (remote-exec): 91% [Working]
aws_instance.ubuntu-master (remote-exec): 91% [6 Packages store 0 B]
aws_instance.ubuntu-master (remote-exec):
aws_instance.ubuntu-master (remote-exec): 91% [Working]
aws_instance.ubuntu-master (remote-exec): 91% [8 Translation-en store 0 B]
aws_instance.ubuntu-master (remote-exec):
aws_instance.ubuntu-master (remote-exec): 92% [Working]
aws_instance.ubuntu-master (remote-exec): 92% [9 Commands-amd64 store 0 B]
aws_instance.ubuntu-master (remote-exec): 92% [Working]
aws_instance.ubuntu-master (remote-exec): 92% [10 Packages store 0 B]
aws_instance.ubuntu-master (remote-exec):
aws_instance.ubuntu-master (remote-exec): 92% [Working]
aws_instance.ubuntu-master (remote-exec): 92% [11 Translation-en store 0 B]
aws_instance.ubuntu-master (remote-exec): 92% [Working]
aws_instance.ubuntu-master (remote-exec): 92% [12 Commands-amd64 store 0 B]
aws_instance.ubuntu-master (remote-exec): 93% [Working]
aws_instance.ubuntu-master (remote-exec): 93% [13 Packages store 0 B]
aws_instance.ubuntu-master (remote-exec):
aws_instance.ubuntu-master (remote-exec): 93% [Working]
aws_instance.ubuntu-master (remote-exec): 93% [14 Translation-en store 0 B]
aws_instance.ubuntu-master (remote-exec): 93% [Working]
aws_instance.ubuntu-master (remote-exec): 93% [15 Commands-amd64 store 0 B]
aws_instance.ubuntu-master (remote-exec): 93% [Working]
aws_instance.ubuntu-master (remote-exec): 93% [16 Packages store 0 B]
aws_instance.ubuntu-master (remote-exec): 94% [Working]
aws_instance.ubuntu-master (remote-exec): 94% [17 Translation-en store 0 B]
aws_instance.ubuntu-master (remote-exec): 94% [Working]
aws_instance.ubuntu-master (remote-exec): 94% [18 Commands-amd64 store 0 B]
aws_instance.ubuntu-master (remote-exec): 94% [Working]
aws_instance.ubuntu-master (remote-exec): 94% [7 Translation-en store 0 B]
aws_instance.ubuntu-master (remote-exec):
aws_instance.ubuntu-master (remote-exec): 94% [7 Translation-en store 0 B]
aws_instance.ubuntu-master: Still creating... [1m0s elapsed]
aws_instance.ubuntu-master (remote-exec):
aws_instance.ubuntu-master (remote-exec): 94% [Working]
aws_instance.ubuntu-master (remote-exec): 94% [19 Commands-amd64 store 0 B]
aws_instance.ubuntu-master (remote-exec): 95% [Working]
aws_instance.ubuntu-master (remote-exec): 95% [20 Packages store 0 B]
aws_instance.ubuntu-master (remote-exec): 95% [Working]
aws_instance.ubuntu-master (remote-exec): 95% [21 Translation-en store 0 B]
aws_instance.ubuntu-master (remote-exec): 95% [Working]
aws_instance.ubuntu-master (remote-exec): 95% [22 Commands-amd64 store 0 B]
aws_instance.ubuntu-master (remote-exec): 95% [Working]
aws_instance.ubuntu-master (remote-exec): 95% [23 Packages store 0 B]
aws_instance.ubuntu-master (remote-exec):
aws_instance.ubuntu-master (remote-exec): 95% [Working]
aws_instance.ubuntu-master (remote-exec): 95% [24 Translation-en store 0 B]
aws_instance.ubuntu-master (remote-exec): 96% [Working]
aws_instance.ubuntu-master (remote-exec): 96% [25 Commands-amd64 store 0 B]
aws_instance.ubuntu-master (remote-exec): 96% [Working]
aws_instance.ubuntu-master (remote-exec): 96% [26 Packages store 0 B]
aws_instance.ubuntu-master (remote-exec): 96% [Working]              3421 kB/s 0s
aws_instance.ubuntu-master (remote-exec): 96% [27 Translation-en store 0 B]
aws_instance.ubuntu-master (remote-exec): 96% [Working]              3421 kB/s 0s
aws_instance.ubuntu-master (remote-exec): 96% [28 Commands-amd64 store 0 B]
aws_instance.ubuntu-master (remote-exec): 97% [Working]              3421 kB/s 0s
aws_instance.ubuntu-master (remote-exec): 97% [29 Packages store 0 B]
aws_instance.ubuntu-master (remote-exec):
aws_instance.ubuntu-master (remote-exec): 97% [Working]              3421 kB/s 0s
aws_instance.ubuntu-master (remote-exec): 97% [30 Translation-en store 0 B]
aws_instance.ubuntu-master (remote-exec): 97% [Working]              3421 kB/s 0s
aws_instance.ubuntu-master (remote-exec): 97% [31 Commands-amd64 store 0 B]
aws_instance.ubuntu-master (remote-exec): 97% [Working]              3421 kB/s 0s
aws_instance.ubuntu-master (remote-exec): 97% [32 Packages store 0 B]
aws_instance.ubuntu-master (remote-exec): 98% [Working]              3421 kB/s 0s
aws_instance.ubuntu-master (remote-exec): 98% [33 Translation-en store 0 B]
aws_instance.ubuntu-master (remote-exec): 98% [Working]              3421 kB/s 0s
aws_instance.ubuntu-master (remote-exec): 98% [34 Commands-amd64 store 0 B]
aws_instance.ubuntu-master (remote-exec): 98% [Working]              3421 kB/s 0s
aws_instance.ubuntu-master (remote-exec): 98% [35 Packages store 0 B]
aws_instance.ubuntu-master (remote-exec): 98% [Working]              3421 kB/s 0s
aws_instance.ubuntu-master (remote-exec): 98% [36 Translation-en store 0 B]
aws_instance.ubuntu-master (remote-exec): 99% [Working]              3421 kB/s 0s
aws_instance.ubuntu-master (remote-exec): 99% [37 Commands-amd64 store 0 B]
aws_instance.ubuntu-master (remote-exec): 99% [Working]              3421 kB/s 0s
aws_instance.ubuntu-master (remote-exec): 99% [38 Commands-amd64 store 0 B]
aws_instance.ubuntu-master (remote-exec): 99% [Working]              3421 kB/s 0s
aws_instance.ubuntu-master (remote-exec): 99% [39 Packages store 0 B]
aws_instance.ubuntu-master (remote-exec): 99% [Working]              3421 kB/s 0s
aws_instance.ubuntu-master (remote-exec): 99% [40 Translation-en store 0 B]
aws_instance.ubuntu-master (remote-exec): 100% [Working]             3421 kB/s 0s
aws_instance.ubuntu-master (remote-exec): 100% [41 Commands-amd64 store 0 B]
aws_instance.ubuntu-master (remote-exec): 100% [Working]             3421 kB/s 0s
aws_instance.ubuntu-master (remote-exec): 100% [42 Commands-amd64 store 0 B]
aws_instance.ubuntu-master (remote-exec): 100% [Working]             3421 kB/s 0s
aws_instance.ubuntu-master (remote-exec): Fetched 20.6 MB in 6s (3308 kB/s)
aws_instance.ubuntu-master (remote-exec): Reading package lists... 0%
aws_instance.ubuntu-master (remote-exec): Reading package lists... 0%
aws_instance.ubuntu-master (remote-exec): Reading package lists... 0%
aws_instance.ubuntu-master (remote-exec): Reading package lists... 41%
aws_instance.ubuntu-master (remote-exec): Reading package lists... 41%
aws_instance.ubuntu-master (remote-exec): Reading package lists... 63%
aws_instance.ubuntu-master (remote-exec): Reading package lists... 63%
aws_instance.ubuntu-master (remote-exec): Reading package lists... 64%
aws_instance.ubuntu-master (remote-exec): Reading package lists... 64%
aws_instance.ubuntu-master (remote-exec): Reading package lists... 64%
aws_instance.ubuntu-master (remote-exec): Reading package lists... 64%
aws_instance.ubuntu-master (remote-exec): Reading package lists... 70%
aws_instance.ubuntu-master (remote-exec): Reading package lists... 70%
aws_instance.ubuntu-master (remote-exec): Reading package lists... 74%
aws_instance.ubuntu-master (remote-exec): Reading package lists... 74%
aws_instance.ubuntu-master (remote-exec): Reading package lists... 77%
aws_instance.ubuntu-master (remote-exec): Reading package lists... 77%
aws_instance.ubuntu-master (remote-exec): Reading package lists... 78%
aws_instance.ubuntu-master (remote-exec): Reading package lists... 78%
aws_instance.ubuntu-master (remote-exec): Reading package lists... 82%
aws_instance.ubuntu-master (remote-exec): Reading package lists... 82%
aws_instance.ubuntu-master (remote-exec): Reading package lists... 83%
aws_instance.ubuntu-master (remote-exec): Reading package lists... 83%
aws_instance.ubuntu-master (remote-exec): Reading package lists... 84%
aws_instance.ubuntu-master (remote-exec): Reading package lists... 84%
aws_instance.ubuntu-master (remote-exec): Reading package lists... 84%
aws_instance.ubuntu-master (remote-exec): Reading package lists... 84%
aws_instance.ubuntu-master (remote-exec): Reading package lists... 84%
aws_instance.ubuntu-master (remote-exec): Reading package lists... 84%
aws_instance.ubuntu-master (remote-exec): Reading package lists... 84%
aws_instance.ubuntu-master (remote-exec): Reading package lists... 84%
aws_instance.ubuntu-master (remote-exec): Reading package lists... 84%
aws_instance.ubuntu-master (remote-exec): Reading package lists... 84%
aws_instance.ubuntu-master (remote-exec): Reading package lists... 84%
aws_instance.ubuntu-master (remote-exec): Reading package lists... 84%
aws_instance.ubuntu-master (remote-exec): Reading package lists... 84%
aws_instance.ubuntu-master (remote-exec): Reading package lists... 88%
aws_instance.ubuntu-master (remote-exec): Reading package lists... 88%
aws_instance.ubuntu-master (remote-exec): Reading package lists... 91%
aws_instance.ubuntu-master (remote-exec): Reading package lists... 91%
aws_instance.ubuntu-master (remote-exec): Reading package lists... 93%
aws_instance.ubuntu-master (remote-exec): Reading package lists... 93%
aws_instance.ubuntu-master (remote-exec): Reading package lists... 95%
aws_instance.ubuntu-master (remote-exec): Reading package lists... 95%
aws_instance.ubuntu-master (remote-exec): Reading package lists... 98%
aws_instance.ubuntu-master (remote-exec): Reading package lists... 98%
aws_instance.ubuntu-master (remote-exec): Reading package lists... 99%
aws_instance.ubuntu-master (remote-exec): Reading package lists... 99%
aws_instance.ubuntu-master (remote-exec): Reading package lists... 99%
aws_instance.ubuntu-master (remote-exec): Reading package lists... 99%
aws_instance.ubuntu-master (remote-exec): Reading package lists... 99%
aws_instance.ubuntu-master (remote-exec): Reading package lists... 99%
aws_instance.ubuntu-master (remote-exec): Reading package lists... Done
aws_instance.ubuntu-master (remote-exec): Building dependency tree... 0%
aws_instance.ubuntu-master (remote-exec): Building dependency tree... 0%
aws_instance.ubuntu-master (remote-exec): Building dependency tree... 0%
aws_instance.ubuntu-master (remote-exec): Building dependency tree... 50%
aws_instance.ubuntu-master (remote-exec): Building dependency tree... 50%
aws_instance.ubuntu-master (remote-exec): Building dependency tree
aws_instance.ubuntu-master (remote-exec): Reading state information... 0%
aws_instance.ubuntu-master (remote-exec): Reading state information... 0%
aws_instance.ubuntu-master (remote-exec): Reading state information... Done
aws_instance.ubuntu-master (remote-exec): 30 packages can be upgraded. Run 'apt list --upgradable' to see them.
aws_instance.ubuntu-master (remote-exec): Reading package lists... 0%
aws_instance.ubuntu-master (remote-exec): Reading package lists... 100%
aws_instance.ubuntu-master (remote-exec): Reading package lists... Done
aws_instance.ubuntu-master (remote-exec): Building dependency tree... 0%
aws_instance.ubuntu-master (remote-exec): Building dependency tree... 0%
aws_instance.ubuntu-master (remote-exec): Building dependency tree... 50%
aws_instance.ubuntu-master (remote-exec): Building dependency tree... 50%
aws_instance.ubuntu-master (remote-exec): Building dependency tree
aws_instance.ubuntu-master (remote-exec): Reading state information... 0%
aws_instance.ubuntu-master (remote-exec): Reading state information... 0%
aws_instance.ubuntu-master (remote-exec): Reading state information... Done
aws_instance.ubuntu-master (remote-exec): rsyslog is already the newest version (8.2001.0-1ubuntu1.1).
aws_instance.ubuntu-master (remote-exec): rsyslog set to manually installed.
aws_instance.ubuntu-master (remote-exec): 0 upgraded, 0 newly installed, 0 to remove and 11 not upgraded.
aws_instance.ubuntu-master: Creation complete after 1m7s [id=i-054cebb4445c2bc90]
aws_instance.ubuntu-slave: Creating...
aws_instance.ubuntu-slave: Still creating... [10s elapsed]
aws_instance.ubuntu-slave: Still creating... [20s elapsed]
aws_instance.ubuntu-slave: Still creating... [30s elapsed]
aws_instance.ubuntu-slave: Still creating... [40s elapsed]
aws_instance.ubuntu-slave: Still creating... [50s elapsed]
aws_instance.ubuntu-slave: Provisioning with 'remote-exec'...
aws_instance.ubuntu-slave (remote-exec): Connecting to remote host via SSH...
aws_instance.ubuntu-slave (remote-exec):   Host: 3.67.42.150
aws_instance.ubuntu-slave (remote-exec):   User: ubuntu
aws_instance.ubuntu-slave (remote-exec):   Password: false
aws_instance.ubuntu-slave (remote-exec):   Private key: true
aws_instance.ubuntu-slave (remote-exec):   Certificate: false
aws_instance.ubuntu-slave (remote-exec):   SSH Agent: false
aws_instance.ubuntu-slave (remote-exec):   Checking Host Key: false
aws_instance.ubuntu-slave (remote-exec):   Target Platform: unix
aws_instance.ubuntu-slave (remote-exec): Connecting to remote host via SSH...
aws_instance.ubuntu-slave (remote-exec):   Host: 3.67.42.150
aws_instance.ubuntu-slave (remote-exec):   User: ubuntu
aws_instance.ubuntu-slave (remote-exec):   Password: false
aws_instance.ubuntu-slave (remote-exec):   Private key: true
aws_instance.ubuntu-slave (remote-exec):   Certificate: false
aws_instance.ubuntu-slave (remote-exec):   SSH Agent: false
aws_instance.ubuntu-slave (remote-exec):   Checking Host Key: false
aws_instance.ubuntu-slave (remote-exec):   Target Platform: unix
aws_instance.ubuntu-slave (remote-exec): Connecting to remote host via SSH...
aws_instance.ubuntu-slave (remote-exec):   Host: 3.67.42.150
aws_instance.ubuntu-slave (remote-exec):   User: ubuntu
aws_instance.ubuntu-slave (remote-exec):   Password: false
aws_instance.ubuntu-slave (remote-exec):   Private key: true
aws_instance.ubuntu-slave (remote-exec):   Certificate: false
aws_instance.ubuntu-slave (remote-exec):   SSH Agent: false
aws_instance.ubuntu-slave (remote-exec):   Checking Host Key: false
aws_instance.ubuntu-slave (remote-exec):   Target Platform: unix
aws_instance.ubuntu-slave (remote-exec): Connected!
aws_instance.ubuntu-slave: Still creating... [1m0s elapsed]
aws_instance.ubuntu-slave: Provisioning with 'local-exec'...
aws_instance.ubuntu-slave (local-exec): Executing: ["/bin/sh" "-c" "scp -o StrictHostKeyChecking=no -i ~/.ssh/key.pem datetimelog.sh ubuntu@3.67.42.150:/opt/mylog/"]
aws_instance.ubuntu-slave (local-exec): Warning: Permanently added '3.67.42.150' (ECDSA) to the list of known hosts.
aws_instance.ubuntu-slave: Provisioning with 'local-exec'...
aws_instance.ubuntu-slave (local-exec): Executing: ["/bin/sh" "-c" "scp -o StrictHostKeyChecking=no -i ~/.ssh/key.pem mylog.service ubuntu@3.67.42.150:~/"]
aws_instance.ubuntu-slave: Provisioning with 'remote-exec'...
aws_instance.ubuntu-slave (remote-exec): Connecting to remote host via SSH...
aws_instance.ubuntu-slave (remote-exec):   Host: 3.67.42.150
aws_instance.ubuntu-slave (remote-exec):   User: ubuntu
aws_instance.ubuntu-slave (remote-exec):   Password: false
aws_instance.ubuntu-slave (remote-exec):   Private key: true
aws_instance.ubuntu-slave (remote-exec):   Certificate: false
aws_instance.ubuntu-slave (remote-exec):   SSH Agent: false
aws_instance.ubuntu-slave (remote-exec):   Checking Host Key: false
aws_instance.ubuntu-slave (remote-exec):   Target Platform: unix
aws_instance.ubuntu-slave (remote-exec): Connected!
aws_instance.ubuntu-slave (remote-exec): Failed to enable unit: File /etc/systemd/system/mylog.service already exists.
aws_instance.ubuntu-slave (remote-exec):
aws_instance.ubuntu-slave (remote-exec): 0% [Working]
aws_instance.ubuntu-slave (remote-exec): Hit:1 http://eu-central-1.ec2.archive.ubuntu.com/ubuntu focal InRelease
aws_instance.ubuntu-slave (remote-exec):
aws_instance.ubuntu-slave (remote-exec): 0% [Connecting to security.ubuntu.com (
aws_instance.ubuntu-slave (remote-exec): Get:2 http://eu-central-1.ec2.archive.ubuntu.com/ubuntu focal-updates InRelease [114 kB]
aws_instance.ubuntu-slave (remote-exec): Get:3 http://eu-central-1.ec2.archive.ubuntu.com/ubuntu focal-backports InRelease [101 kB]
aws_instance.ubuntu-slave (remote-exec):
aws_instance.ubuntu-slave (remote-exec): 0% [Waiting for headers]
aws_instance.ubuntu-slave (remote-exec): Get:4 http://security.ubuntu.com/ubuntu focal-security InRelease [114 kB]
aws_instance.ubuntu-slave (remote-exec):
aws_instance.ubuntu-slave (remote-exec): 0% [4 InRelease 14.2 kB/114 kB 12%]
aws_instance.ubuntu-slave (remote-exec): 0% [Working]
aws_instance.ubuntu-slave (remote-exec):
aws_instance.ubuntu-slave (remote-exec): 0% [Working]
aws_instance.ubuntu-slave (remote-exec): Get:5 http://eu-central-1.ec2.archive.ubuntu.com/ubuntu focal/universe amd64 Packages [8628 kB]
aws_instance.ubuntu-slave (remote-exec):
aws_instance.ubuntu-slave (remote-exec): 0% [5 Packages 393 kB/8628 kB 5%]
aws_instance.ubuntu-slave (remote-exec):
aws_instance.ubuntu-slave (remote-exec): 0% [Working]
aws_instance.ubuntu-slave (remote-exec): 0% [5 Packages store 0 B] [Waiting for
aws_instance.ubuntu-slave (remote-exec): Get:6 http://eu-central-1.ec2.archive.ubuntu.com/ubuntu focal/universe Translation-en [5124 kB]
aws_instance.ubuntu-slave (remote-exec):
aws_instance.ubuntu-slave (remote-exec): 0% [5 Packages store 0 B] [6 Translatio
aws_instance.ubuntu-slave (remote-exec): 0% [5 Packages store 0 B] [6 Translatio
aws_instance.ubuntu-slave (remote-exec):
aws_instance.ubuntu-slave (remote-exec): 0% [5 Packages store 0 B]
aws_instance.ubuntu-slave (remote-exec): Get:7 http://eu-central-1.ec2.archive.ubuntu.com/ubuntu focal/universe amd64 c-n-f Metadata [265 kB]
aws_instance.ubuntu-slave (remote-exec):
aws_instance.ubuntu-slave (remote-exec): 0% [5 Packages store 0 B] [7 Commands-a
aws_instance.ubuntu-slave (remote-exec): 0% [5 Packages store 0 B]
aws_instance.ubuntu-slave (remote-exec): Get:8 http://eu-central-1.ec2.archive.ubuntu.com/ubuntu focal/multiverse amd64 Packages [144 kB]
aws_instance.ubuntu-slave (remote-exec):
aws_instance.ubuntu-slave (remote-exec): 0% [5 Packages store 0 B] [8 Packages 0
aws_instance.ubuntu-slave (remote-exec): 0% [5 Packages store 0 B]
aws_instance.ubuntu-slave (remote-exec): Get:9 http://eu-central-1.ec2.archive.ubuntu.com/ubuntu focal/multiverse Translation-en [104 kB]
aws_instance.ubuntu-slave (remote-exec):
aws_instance.ubuntu-slave (remote-exec): 0% [5 Packages store 0 B] [9 Translatio
aws_instance.ubuntu-slave (remote-exec): 0% [5 Packages store 0 B]
aws_instance.ubuntu-slave (remote-exec): Get:10 http://eu-central-1.ec2.archive.ubuntu.com/ubuntu focal/multiverse amd64 c-n-f Metadata [9136 B]
aws_instance.ubuntu-slave (remote-exec):
aws_instance.ubuntu-slave (remote-exec): 0% [5 Packages store 0 B] [10 Commands-
aws_instance.ubuntu-slave (remote-exec): 0% [5 Packages store 0 B]
aws_instance.ubuntu-slave (remote-exec): Get:11 http://eu-central-1.ec2.archive.ubuntu.com/ubuntu focal-updates/main amd64 Packages [1344 kB]
aws_instance.ubuntu-slave (remote-exec):
aws_instance.ubuntu-slave (remote-exec): 0% [5 Packages store 0 B] [11 Packages
aws_instance.ubuntu-slave (remote-exec): 0% [5 Packages store 0 B]
aws_instance.ubuntu-slave (remote-exec): Get:12 http://eu-central-1.ec2.archive.ubuntu.com/ubuntu focal-updates/main Translation-en [276 kB]
aws_instance.ubuntu-slave (remote-exec):
aws_instance.ubuntu-slave (remote-exec): 0% [5 Packages store 0 B] [12 Translati
aws_instance.ubuntu-slave (remote-exec): 0% [5 Packages store 0 B]
aws_instance.ubuntu-slave (remote-exec): Get:13 http://eu-central-1.ec2.archive.ubuntu.com/ubuntu focal-updates/main amd64 c-n-f Metadata [14.5 kB]
aws_instance.ubuntu-slave (remote-exec):
aws_instance.ubuntu-slave (remote-exec): 0% [5 Packages store 0 B] [13 Commands-
aws_instance.ubuntu-slave (remote-exec): 0% [5 Packages store 0 B]
aws_instance.ubuntu-slave (remote-exec): Get:14 http://eu-central-1.ec2.archive.ubuntu.com/ubuntu focal-updates/restricted amd64 Packages [569 kB]
aws_instance.ubuntu-slave (remote-exec):
aws_instance.ubuntu-slave (remote-exec): 0% [5 Packages store 0 B] [14 Packages
aws_instance.ubuntu-slave (remote-exec): 0% [5 Packages store 0 B]
aws_instance.ubuntu-slave (remote-exec): Get:15 http://eu-central-1.ec2.archive.ubuntu.com/ubuntu focal-updates/restricted Translation-en [81.6 kB]
aws_instance.ubuntu-slave (remote-exec):
aws_instance.ubuntu-slave (remote-exec): 0% [5 Packages store 0 B] [15 Translati
aws_instance.ubuntu-slave (remote-exec): 0% [5 Packages store 0 B]
aws_instance.ubuntu-slave (remote-exec): Get:16 http://eu-central-1.ec2.archive.ubuntu.com/ubuntu focal-updates/restricted amd64 c-n-f Metadata [528 B]
aws_instance.ubuntu-slave (remote-exec):
aws_instance.ubuntu-slave (remote-exec): 0% [5 Packages store 0 B] [16 Commands-
aws_instance.ubuntu-slave (remote-exec): 0% [5 Packages store 0 B]
aws_instance.ubuntu-slave (remote-exec): Get:17 http://eu-central-1.ec2.archive.ubuntu.com/ubuntu focal-updates/universe amd64 Packages [875 kB]
aws_instance.ubuntu-slave (remote-exec):
aws_instance.ubuntu-slave (remote-exec): 0% [5 Packages store 0 B] [17 Packages
aws_instance.ubuntu-slave (remote-exec): 0% [5 Packages store 0 B]
aws_instance.ubuntu-slave (remote-exec): Get:18 http://eu-central-1.ec2.archive.ubuntu.com/ubuntu focal-updates/universe Translation-en [189 kB]
aws_instance.ubuntu-slave (remote-exec):
aws_instance.ubuntu-slave (remote-exec): 0% [5 Packages store 0 B] [18 Translati
aws_instance.ubuntu-slave (remote-exec): 0% [5 Packages store 0 B]
aws_instance.ubuntu-slave (remote-exec): Get:19 http://eu-central-1.ec2.archive.ubuntu.com/ubuntu focal-updates/universe amd64 c-n-f Metadata [19.5 kB]
aws_instance.ubuntu-slave (remote-exec):
aws_instance.ubuntu-slave (remote-exec): 0% [5 Packages store 0 B] [19 Commands-
aws_instance.ubuntu-slave (remote-exec): 0% [5 Packages store 0 B]
aws_instance.ubuntu-slave (remote-exec): Get:20 http://eu-central-1.ec2.archive.ubuntu.com/ubuntu focal-updates/multiverse amd64 Packages [24.5 kB]
aws_instance.ubuntu-slave (remote-exec):
aws_instance.ubuntu-slave (remote-exec): 0% [5 Packages store 0 B] [20 Packages
aws_instance.ubuntu-slave (remote-exec): 0% [5 Packages store 0 B]
aws_instance.ubuntu-slave (remote-exec): Get:21 http://eu-central-1.ec2.archive.ubuntu.com/ubuntu focal-updates/multiverse Translation-en [6856 B]
aws_instance.ubuntu-slave (remote-exec):
aws_instance.ubuntu-slave (remote-exec): 0% [5 Packages store 0 B] [21 Translati
aws_instance.ubuntu-slave (remote-exec): 0% [5 Packages store 0 B]
aws_instance.ubuntu-slave (remote-exec): Get:22 http://eu-central-1.ec2.archive.ubuntu.com/ubuntu focal-updates/multiverse amd64 c-n-f Metadata [616 B]
aws_instance.ubuntu-slave (remote-exec):
aws_instance.ubuntu-slave (remote-exec): 0% [5 Packages store 0 B] [22 Commands-
aws_instance.ubuntu-slave (remote-exec): 0% [5 Packages store 0 B]
aws_instance.ubuntu-slave (remote-exec):
aws_instance.ubuntu-slave (remote-exec): 0% [5 Packages store 0 B]
aws_instance.ubuntu-slave (remote-exec): Get:23 http://eu-central-1.ec2.archive.ubuntu.com/ubuntu focal-backports/main amd64 Packages [2568 B]
aws_instance.ubuntu-slave (remote-exec):
aws_instance.ubuntu-slave (remote-exec): 0% [5 Packages store 0 B]
aws_instance.ubuntu-slave (remote-exec): Get:24 http://eu-central-1.ec2.archive.ubuntu.com/ubuntu focal-backports/main Translation-en [1120 B]
aws_instance.ubuntu-slave (remote-exec):
aws_instance.ubuntu-slave (remote-exec): 0% [5 Packages store 0 B] [Waiting for
aws_instance.ubuntu-slave (remote-exec): Get:25 http://eu-central-1.ec2.archive.ubuntu.com/ubuntu focal-backports/main amd64 c-n-f Metadata [400 B]
aws_instance.ubuntu-slave (remote-exec):
aws_instance.ubuntu-slave (remote-exec): 0% [5 Packages store 0 B] [Waiting for
aws_instance.ubuntu-slave (remote-exec): Get:26 http://eu-central-1.ec2.archive.ubuntu.com/ubuntu focal-backports/restricted amd64 c-n-f Metadata [116 B]
aws_instance.ubuntu-slave (remote-exec):
aws_instance.ubuntu-slave (remote-exec): 0% [5 Packages store 0 B] [Waiting for
aws_instance.ubuntu-slave (remote-exec): Get:27 http://eu-central-1.ec2.archive.ubuntu.com/ubuntu focal-backports/universe amd64 Packages [6592 B]
aws_instance.ubuntu-slave (remote-exec):
aws_instance.ubuntu-slave (remote-exec): 0% [5 Packages store 0 B] [Waiting for
aws_instance.ubuntu-slave (remote-exec): Get:28 http://eu-central-1.ec2.archive.ubuntu.com/ubuntu focal-backports/universe Translation-en [3292 B]
aws_instance.ubuntu-slave (remote-exec):
aws_instance.ubuntu-slave (remote-exec): 0% [5 Packages store 0 B] [Waiting for
aws_instance.ubuntu-slave (remote-exec): Get:29 http://eu-central-1.ec2.archive.ubuntu.com/ubuntu focal-backports/universe amd64 c-n-f Metadata [580 B]
aws_instance.ubuntu-slave (remote-exec):
aws_instance.ubuntu-slave (remote-exec): 0% [5 Packages store 0 B] [Waiting for
aws_instance.ubuntu-slave (remote-exec): Get:30 http://eu-central-1.ec2.archive.ubuntu.com/ubuntu focal-backports/multiverse amd64 c-n-f Metadata [116 B]
aws_instance.ubuntu-slave (remote-exec):
aws_instance.ubuntu-slave (remote-exec): 0% [5 Packages store 0 B]
aws_instance.ubuntu-slave (remote-exec):
aws_instance.ubuntu-slave (remote-exec): 81% [5 Packages store 0 B]
aws_instance.ubuntu-slave (remote-exec): Get:31 http://security.ubuntu.com/ubuntu focal-security/main amd64 Packages [987 kB]
aws_instance.ubuntu-slave (remote-exec):
aws_instance.ubuntu-slave (remote-exec): 81% [5 Packages store 0 B] [31 Packages
aws_instance.ubuntu-slave (remote-exec): 85% [5 Packages store 0 B]
aws_instance.ubuntu-slave (remote-exec): Get:32 http://security.ubuntu.com/ubuntu focal-security/main Translation-en [183 kB]
aws_instance.ubuntu-slave (remote-exec):
aws_instance.ubuntu-slave (remote-exec): 85% [5 Packages store 0 B] [32 Translat
aws_instance.ubuntu-slave (remote-exec): 85% [5 Packages store 0 B]
aws_instance.ubuntu-slave (remote-exec): Get:33 http://security.ubuntu.com/ubuntu focal-security/main amd64 c-n-f Metadata [8880 B]
aws_instance.ubuntu-slave (remote-exec):
aws_instance.ubuntu-slave (remote-exec): 85% [5 Packages store 0 B] [33 Commands
aws_instance.ubuntu-slave (remote-exec): 86% [5 Packages store 0 B]
aws_instance.ubuntu-slave (remote-exec): Get:34 http://security.ubuntu.com/ubuntu focal-security/restricted amd64 Packages [526 kB]
aws_instance.ubuntu-slave (remote-exec):
aws_instance.ubuntu-slave (remote-exec): 86% [5 Packages store 0 B] [34 Packages
aws_instance.ubuntu-slave (remote-exec): 88% [5 Packages store 0 B]
aws_instance.ubuntu-slave (remote-exec): Get:35 http://security.ubuntu.com/ubuntu focal-security/restricted Translation-en [75.4 kB]
aws_instance.ubuntu-slave (remote-exec):
aws_instance.ubuntu-slave (remote-exec): 88% [5 Packages store 0 B] [35 Translat
aws_instance.ubuntu-slave (remote-exec): 88% [5 Packages store 0 B]
aws_instance.ubuntu-slave (remote-exec): Get:36 http://security.ubuntu.com/ubuntu focal-security/restricted amd64 c-n-f Metadata [528 B]
aws_instance.ubuntu-slave (remote-exec):
aws_instance.ubuntu-slave (remote-exec): 88% [5 Packages store 0 B] [36 Commands
aws_instance.ubuntu-slave (remote-exec): 88% [5 Packages store 0 B]
aws_instance.ubuntu-slave (remote-exec): Get:37 http://security.ubuntu.com/ubuntu focal-security/universe amd64 Packages [651 kB]
aws_instance.ubuntu-slave (remote-exec):
aws_instance.ubuntu-slave (remote-exec): 88% [5 Packages store 0 B] [37 Packages
aws_instance.ubuntu-slave (remote-exec): 90% [5 Packages store 0 B]
aws_instance.ubuntu-slave (remote-exec): Get:38 http://security.ubuntu.com/ubuntu focal-security/universe Translation-en [107 kB]
aws_instance.ubuntu-slave (remote-exec):
aws_instance.ubuntu-slave (remote-exec): 90% [5 Packages store 0 B] [38 Translat
aws_instance.ubuntu-slave (remote-exec): 91% [5 Packages store 0 B]
aws_instance.ubuntu-slave (remote-exec): Get:39 http://security.ubuntu.com/ubuntu focal-security/universe amd64 c-n-f Metadata [12.9 kB]
aws_instance.ubuntu-slave (remote-exec):
aws_instance.ubuntu-slave (remote-exec): 91% [5 Packages store 0 B] [39 Commands
aws_instance.ubuntu-slave (remote-exec): 91% [5 Packages store 0 B]
aws_instance.ubuntu-slave (remote-exec): Get:40 http://security.ubuntu.com/ubuntu focal-security/multiverse amd64 Packages [21.9 kB]
aws_instance.ubuntu-slave (remote-exec):
aws_instance.ubuntu-slave (remote-exec): 91% [5 Packages store 0 B] [40 Packages
aws_instance.ubuntu-slave (remote-exec): 91% [5 Packages store 0 B]
aws_instance.ubuntu-slave (remote-exec): Get:41 http://security.ubuntu.com/ubuntu focal-security/multiverse Translation-en [4948 B]
aws_instance.ubuntu-slave (remote-exec):
aws_instance.ubuntu-slave (remote-exec): 91% [5 Packages store 0 B] [41 Translat
aws_instance.ubuntu-slave (remote-exec): 91% [5 Packages store 0 B]
aws_instance.ubuntu-slave (remote-exec): Get:42 http://security.ubuntu.com/ubuntu focal-security/multiverse amd64 c-n-f Metadata [540 B]
aws_instance.ubuntu-slave (remote-exec):
aws_instance.ubuntu-slave (remote-exec): 91% [5 Packages store 0 B] [42 Commands
aws_instance.ubuntu-slave (remote-exec): 91% [5 Packages store 0 B]
aws_instance.ubuntu-slave (remote-exec):
aws_instance.ubuntu-slave (remote-exec): 91% [5 Packages store 0 B]
aws_instance.ubuntu-slave (remote-exec):
aws_instance.ubuntu-slave (remote-exec): 91% [Working]
aws_instance.ubuntu-slave (remote-exec): 91% [6 Translation-en store 0 B]
aws_instance.ubuntu-slave (remote-exec):
aws_instance.ubuntu-slave (remote-exec): 91% [6 Translation-en store 0 B]
aws_instance.ubuntu-slave (remote-exec):
aws_instance.ubuntu-slave (remote-exec): 91% [Working]
aws_instance.ubuntu-slave (remote-exec): 91% [7 Commands-amd64 store 0 B]
aws_instance.ubuntu-slave (remote-exec): 92% [Working]
aws_instance.ubuntu-slave (remote-exec): 92% [8 Packages store 0 B]
aws_instance.ubuntu-slave (remote-exec): 92% [Working]
aws_instance.ubuntu-slave (remote-exec): 92% [9 Translation-en store 0 B]
aws_instance.ubuntu-slave (remote-exec): 92% [Working]
aws_instance.ubuntu-slave (remote-exec): 92% [10 Commands-amd64 store 0 B]
aws_instance.ubuntu-slave (remote-exec): 92% [Working]
aws_instance.ubuntu-slave (remote-exec): 92% [11 Packages store 0 B]
aws_instance.ubuntu-slave: Still creating... [1m10s elapsed]
aws_instance.ubuntu-slave (remote-exec):
aws_instance.ubuntu-slave (remote-exec): 93% [Working]
aws_instance.ubuntu-slave (remote-exec): 93% [12 Translation-en store 0 B]
aws_instance.ubuntu-slave (remote-exec): 93% [Working]
aws_instance.ubuntu-slave (remote-exec): 93% [13 Commands-amd64 store 0 B]
aws_instance.ubuntu-slave (remote-exec): 93% [Working]
aws_instance.ubuntu-slave (remote-exec): 93% [14 Packages store 0 B]
aws_instance.ubuntu-slave (remote-exec): 93% [Working]
aws_instance.ubuntu-slave (remote-exec): 93% [15 Translation-en store 0 B]
aws_instance.ubuntu-slave (remote-exec): 94% [Working]
aws_instance.ubuntu-slave (remote-exec): 94% [16 Commands-amd64 store 0 B]
aws_instance.ubuntu-slave (remote-exec): 94% [Working]
aws_instance.ubuntu-slave (remote-exec): 94% [17 Packages store 0 B]
aws_instance.ubuntu-slave (remote-exec):
aws_instance.ubuntu-slave (remote-exec): 94% [Working]
aws_instance.ubuntu-slave (remote-exec): 94% [18 Translation-en store 0 B]
aws_instance.ubuntu-slave (remote-exec): 94% [Working]
aws_instance.ubuntu-slave (remote-exec): 94% [19 Commands-amd64 store 0 B]
aws_instance.ubuntu-slave (remote-exec): 95% [Working]
aws_instance.ubuntu-slave (remote-exec): 95% [20 Packages store 0 B]
aws_instance.ubuntu-slave (remote-exec): 95% [Working]
aws_instance.ubuntu-slave (remote-exec): 95% [21 Translation-en store 0 B]
aws_instance.ubuntu-slave (remote-exec): 95% [Working]
aws_instance.ubuntu-slave (remote-exec): 95% [22 Commands-amd64 store 0 B]
aws_instance.ubuntu-slave (remote-exec): 95% [Working]
aws_instance.ubuntu-slave (remote-exec): 95% [23 Packages store 0 B]
aws_instance.ubuntu-slave (remote-exec): 95% [Working]
aws_instance.ubuntu-slave (remote-exec): 95% [24 Translation-en store 0 B]
aws_instance.ubuntu-slave (remote-exec): 96% [Working]
aws_instance.ubuntu-slave (remote-exec): 96% [25 Commands-amd64 store 0 B]
aws_instance.ubuntu-slave (remote-exec): 96% [Working]
aws_instance.ubuntu-slave (remote-exec): 96% [26 Commands-amd64 store 0 B]
aws_instance.ubuntu-slave (remote-exec): 96% [Working]
aws_instance.ubuntu-slave (remote-exec): 96% [27 Packages store 0 B]
aws_instance.ubuntu-slave (remote-exec): 96% [Working]
aws_instance.ubuntu-slave (remote-exec): 96% [28 Translation-en store 0 B]
aws_instance.ubuntu-slave (remote-exec): 97% [Working]
aws_instance.ubuntu-slave (remote-exec): 97% [29 Commands-amd64 store 0 B]
aws_instance.ubuntu-slave (remote-exec): 97% [Working]
aws_instance.ubuntu-slave (remote-exec): 97% [30 Commands-amd64 store 0 B]
aws_instance.ubuntu-slave (remote-exec): 97% [Working]
aws_instance.ubuntu-slave (remote-exec): 97% [31 Packages store 0 B]
aws_instance.ubuntu-slave (remote-exec): 97% [Working]
aws_instance.ubuntu-slave (remote-exec): 97% [32 Translation-en store 0 B]
aws_instance.ubuntu-slave (remote-exec): 98% [Working]
aws_instance.ubuntu-slave (remote-exec): 98% [33 Commands-amd64 store 0 B]
aws_instance.ubuntu-slave (remote-exec): 98% [Working]
aws_instance.ubuntu-slave (remote-exec): 98% [34 Packages store 0 B]
aws_instance.ubuntu-slave (remote-exec): 98% [Working]
aws_instance.ubuntu-slave (remote-exec): 98% [35 Translation-en store 0 B]
aws_instance.ubuntu-slave (remote-exec): 98% [Working]
aws_instance.ubuntu-slave (remote-exec): 98% [36 Commands-amd64 store 0 B]
aws_instance.ubuntu-slave (remote-exec): 99% [Working]
aws_instance.ubuntu-slave (remote-exec): 99% [37 Packages store 0 B]
aws_instance.ubuntu-slave (remote-exec):
aws_instance.ubuntu-slave (remote-exec): 99% [Working]
aws_instance.ubuntu-slave (remote-exec): 99% [38 Translation-en store 0 B]
aws_instance.ubuntu-slave (remote-exec): 99% [Working]
aws_instance.ubuntu-slave (remote-exec): 99% [39 Commands-amd64 store 0 B]
aws_instance.ubuntu-slave (remote-exec): 99% [Working]
aws_instance.ubuntu-slave (remote-exec): 99% [40 Packages store 0 B]
aws_instance.ubuntu-slave (remote-exec): 100% [Working]
aws_instance.ubuntu-slave (remote-exec): 100% [41 Translation-en store 0 B]
aws_instance.ubuntu-slave (remote-exec): 100% [Working]
aws_instance.ubuntu-slave (remote-exec): 100% [42 Commands-amd64 store 0 B]
aws_instance.ubuntu-slave (remote-exec): 100% [Working]
aws_instance.ubuntu-slave (remote-exec): Fetched 20.6 MB in 4s (4591 kB/s)
aws_instance.ubuntu-slave (remote-exec): Reading package lists... 0%
aws_instance.ubuntu-slave (remote-exec): Reading package lists... 0%
aws_instance.ubuntu-slave (remote-exec): Reading package lists... 0%
aws_instance.ubuntu-slave (remote-exec): Reading package lists... 4%
aws_instance.ubuntu-slave (remote-exec): Reading package lists... 4%
aws_instance.ubuntu-slave (remote-exec): Reading package lists... 6%
aws_instance.ubuntu-slave (remote-exec): Reading package lists... 6%
aws_instance.ubuntu-slave (remote-exec): Reading package lists... 6%
aws_instance.ubuntu-slave (remote-exec): Reading package lists... 6%
aws_instance.ubuntu-slave (remote-exec): Reading package lists... 6%
aws_instance.ubuntu-slave (remote-exec): Reading package lists... 6%
aws_instance.ubuntu-slave (remote-exec): Reading package lists... 45%
aws_instance.ubuntu-slave (remote-exec): Reading package lists... 45%
aws_instance.ubuntu-slave (remote-exec): Reading package lists... 66%
aws_instance.ubuntu-slave (remote-exec): Reading package lists... 66%
aws_instance.ubuntu-slave (remote-exec): Reading package lists... 66%
aws_instance.ubuntu-slave (remote-exec): Reading package lists... 66%
aws_instance.ubuntu-slave (remote-exec): Reading package lists... 67%
aws_instance.ubuntu-slave (remote-exec): Reading package lists... 67%
aws_instance.ubuntu-slave (remote-exec): Reading package lists... 72%
aws_instance.ubuntu-slave (remote-exec): Reading package lists... 72%
aws_instance.ubuntu-slave (remote-exec): Reading package lists... 75%
aws_instance.ubuntu-slave (remote-exec): Reading package lists... 75%
aws_instance.ubuntu-slave (remote-exec): Reading package lists... 76%
aws_instance.ubuntu-slave (remote-exec): Reading package lists... 78%
aws_instance.ubuntu-slave (remote-exec): Reading package lists... 78%
aws_instance.ubuntu-slave (remote-exec): Reading package lists... 79%
aws_instance.ubuntu-slave (remote-exec): Reading package lists... 79%
aws_instance.ubuntu-slave (remote-exec): Reading package lists... 83%
aws_instance.ubuntu-slave (remote-exec): Reading package lists... 83%
aws_instance.ubuntu-slave (remote-exec): Reading package lists... 84%
aws_instance.ubuntu-slave (remote-exec): Reading package lists... 84%
aws_instance.ubuntu-slave (remote-exec): Reading package lists... 85%
aws_instance.ubuntu-slave (remote-exec): Reading package lists... 85%
aws_instance.ubuntu-slave (remote-exec): Reading package lists... 85%
aws_instance.ubuntu-slave (remote-exec): Reading package lists... 85%
aws_instance.ubuntu-slave (remote-exec): Reading package lists... 85%
aws_instance.ubuntu-slave (remote-exec): Reading package lists... 85%
aws_instance.ubuntu-slave (remote-exec): Reading package lists... 85%
aws_instance.ubuntu-slave (remote-exec): Reading package lists... 85%
aws_instance.ubuntu-slave (remote-exec): Reading package lists... 85%
aws_instance.ubuntu-slave (remote-exec): Reading package lists... 85%
aws_instance.ubuntu-slave (remote-exec): Reading package lists... 85%
aws_instance.ubuntu-slave (remote-exec): Reading package lists... 85%
aws_instance.ubuntu-slave (remote-exec): Reading package lists... 89%
aws_instance.ubuntu-slave (remote-exec): Reading package lists... 89%
aws_instance.ubuntu-slave (remote-exec): Reading package lists... 91%
aws_instance.ubuntu-slave (remote-exec): Reading package lists... 91%
aws_instance.ubuntu-slave (remote-exec): Reading package lists... 94%
aws_instance.ubuntu-slave (remote-exec): Reading package lists... 94%
aws_instance.ubuntu-slave (remote-exec): Reading package lists... 95%
aws_instance.ubuntu-slave (remote-exec): Reading package lists... 95%
aws_instance.ubuntu-slave (remote-exec): Reading package lists... 98%
aws_instance.ubuntu-slave (remote-exec): Reading package lists... 98%
aws_instance.ubuntu-slave (remote-exec): Reading package lists... 99%
aws_instance.ubuntu-slave (remote-exec): Reading package lists... 99%
aws_instance.ubuntu-slave (remote-exec): Reading package lists... 99%
aws_instance.ubuntu-slave (remote-exec): Reading package lists... 99%
aws_instance.ubuntu-slave (remote-exec): Reading package lists... 99%
aws_instance.ubuntu-slave (remote-exec): Reading package lists... 99%
aws_instance.ubuntu-slave (remote-exec): Reading package lists... Done
aws_instance.ubuntu-slave (remote-exec): Building dependency tree... 0%
aws_instance.ubuntu-slave (remote-exec): Building dependency tree... 0%
aws_instance.ubuntu-slave (remote-exec): Building dependency tree... 0%
aws_instance.ubuntu-slave (remote-exec): Building dependency tree... 50%
aws_instance.ubuntu-slave (remote-exec): Building dependency tree... 50%
aws_instance.ubuntu-slave (remote-exec): Building dependency tree
aws_instance.ubuntu-slave (remote-exec): Reading state information... 0%
aws_instance.ubuntu-slave (remote-exec): Reading state information... 0%
aws_instance.ubuntu-slave (remote-exec): Reading state information... Done
aws_instance.ubuntu-slave (remote-exec): 24 packages can be upgraded. Run 'apt list --upgradable' to see them.
aws_instance.ubuntu-slave (remote-exec): Reading package lists... 0%
aws_instance.ubuntu-slave (remote-exec): Reading package lists... 100%
aws_instance.ubuntu-slave (remote-exec): Reading package lists... Done
aws_instance.ubuntu-slave (remote-exec): Building dependency tree... 0%
aws_instance.ubuntu-slave (remote-exec): Building dependency tree... 0%
aws_instance.ubuntu-slave (remote-exec): Building dependency tree... 50%
aws_instance.ubuntu-slave (remote-exec): Building dependency tree... 50%
aws_instance.ubuntu-slave (remote-exec): Building dependency tree
aws_instance.ubuntu-slave (remote-exec): Reading state information... 0%
aws_instance.ubuntu-slave (remote-exec): Reading state information... 0%
aws_instance.ubuntu-slave (remote-exec): Reading state information... Done
aws_instance.ubuntu-slave (remote-exec): rsyslog is already the newest version (8.2001.0-1ubuntu1.1).
aws_instance.ubuntu-slave (remote-exec): rsyslog set to manually installed.
aws_instance.ubuntu-slave (remote-exec): 0 upgraded, 0 newly installed, 0 to remove and 24 not upgraded.
aws_instance.ubuntu-slave: Provisioning with 'local-exec'...
aws_instance.ubuntu-slave (local-exec): Executing: ["/bin/sh" "-c" "scp -o StrictHostKeyChecking=no -i ~/.ssh/key.pem mylog.conf ubuntu@3.67.42.150:~/"]
aws_instance.ubuntu-slave: Provisioning with 'remote-exec'...
aws_instance.ubuntu-slave (remote-exec): Connecting to remote host via SSH...
aws_instance.ubuntu-slave (remote-exec):   Host: 3.67.42.150
aws_instance.ubuntu-slave (remote-exec):   User: ubuntu
aws_instance.ubuntu-slave (remote-exec):   Password: false
aws_instance.ubuntu-slave (remote-exec):   Private key: true
aws_instance.ubuntu-slave (remote-exec):   Certificate: false
aws_instance.ubuntu-slave (remote-exec):   SSH Agent: false
aws_instance.ubuntu-slave (remote-exec):   Checking Host Key: false
aws_instance.ubuntu-slave (remote-exec):   Target Platform: unix
aws_instance.ubuntu-slave (remote-exec): Connected!
aws_instance.ubuntu-slave: Still creating... [1m20s elapsed]
aws_instance.ubuntu-slave (remote-exec): *.* @@18.192.5.196:514
aws_instance.ubuntu-slave: Creation complete after 1m21s [id=i-04198aa8ebbecc602]

Apply complete! Resources: 5 added, 0 changed, 0 destroyed.

```