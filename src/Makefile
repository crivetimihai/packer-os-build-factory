# Makefile variables
export PACKER=packer
export VAGRANT=vagrant
export SPECS_DIR=specs
export LOG_DIR=../builds/log

# Used in builds
export BUILDS_DIR=../builds
export ISO_DIR=../../iso

# Packer variables
export PACKER_LOG_PATH=$(LOG_DIR)/packer.log
export CHECKPOINT_DISABLE=1
export PACKER_LOG=1
export PACKER_CACHE_DIR=../builds/.packer_cache
export PACKER_KEY_INTERVAL=10ms

# Variable to pass to build command


.DEFAULT_GOAL :=virtualbox-rhel-8-base

all: libvirt virtualbox vmware
libvirt: libvirt-rhel-8-base libvirt-centos-7-base libvirt-fedora-30-base libvirt-alpine-3.10-base libvirt-ubuntu-18.04-base libvirt-debian-9.9-base
virtualbox: virtualbox-rhel-8-base virtualbox-centos-7-base virtualbox-fedora-30-base virtualbox-alpine-3.10-base virtualbox-ubuntu-18.04-base
vmware: vmware-rhel-8-base vmware-centos-7-base vmware-fedora-30-base vmware-alpine-3.10-base vmware-ubuntu-18.04-base

rhel-8: vmware-rhel-8-base virtualbox-rhel-8-base libvirt-rhel-8-base
centos-7: vmware-centos-7-base virtualbox-centos-7-base libvirt-centos-7-base
fedora-30: vmware-fedora-30-base virtualbox-fedora-30-base libvirt-fedora-30-base 



#############################################################################
# Libvirt: make -j 3 libvirt
#############################################################################

# [X] RHEL 8
libvirt-rhel-8-base:
	$(PACKER) inspect $(SPECS_DIR)/$@.json | tee -a $(LOG_DIR)/$@.log
	$(PACKER) build -on-error=ask -var-file=config.json -force $(SPECS_DIR)/$@.json | tee -a $(LOG_DIR)/$@.log
	$(VAGRANT) box remove $@ | tee -a $(LOG_DIR)/$@.log; true 
	$(VAGRANT) box add --name $@ $(BUILDS_DIR)/$@/$@.box | tee -a $(LOG_DIR)/$@.log
	$(VAGRANT) box list | tee -a $(LOG_DIR)/$@.log

# [X] CentOS 7
libvirt-centos-7-base:
	$(PACKER) inspect $(SPECS_DIR)/$@.json | tee -a $(LOG_DIR)/$@.log
	$(PACKER) build -on-error=ask -var-file=config.json -force $(SPECS_DIR)/$@.json | tee -a $(LOG_DIR)/$@.log
	$(VAGRANT) box remove $@ | tee -a $(LOG_DIR)/$@.log; true 
	$(VAGRANT) box add --name $@ $(BUILDS_DIR)/$@/$@.box | tee -a $(LOG_DIR)/$@.log
	$(VAGRANT) box list | tee -a $(LOG_DIR)/$@.log

# [X] Fedora 30 Server
libvirt-fedora-30-base:
	$(PACKER) inspect $(SPECS_DIR)/$@.json | tee -a $(LOG_DIR)/$@.log
	$(PACKER) build -on-error=ask -var-file=config.json -force $(SPECS_DIR)/$@.json | tee -a $(LOG_DIR)/$@.log
	$(VAGRANT) box remove $@ | tee -a $(LOG_DIR)/$@.log; true 
	$(VAGRANT) box add --name $@ $(BUILDS_DIR)/$@/$@.box | tee -a $(LOG_DIR)/$@.log
	$(VAGRANT) box list | tee -a $(LOG_DIR)/$@.log

# [ ] Alpine 3.1 Standard
libvirt-alpine-3.10-base:
	$(PACKER) inspect $(SPECS_DIR)/$@.json | tee -a $(LOG_DIR)/$@.log
	$(PACKER) build -on-error=ask -var-file=config.json -force $(SPECS_DIR)/$@.json | tee -a $(LOG_DIR)/$@.log
	$(VAGRANT) box remove $@ | tee -a $(LOG_DIR)/$@.log; true 
	$(VAGRANT) box add --name $@ $(BUILDS_DIR)/$@/$@.box | tee -a $(LOG_DIR)/$@.log
	$(VAGRANT) box list | tee -a $(LOG_DIR)/$@.log

# [X] Ubuntu 18.04 Server
libvirt-ubuntu-18.04-base:
	$(PACKER) inspect $(SPECS_DIR)/$@.json | tee -a $(LOG_DIR)/$@.log
	$(PACKER) build -on-error=ask -var-file=config.json -force $(SPECS_DIR)/$@.json | tee -a $(LOG_DIR)/$@.log
	$(VAGRANT) box remove $@ | tee -a $(LOG_DIR)/$@.log; true 
	$(VAGRANT) box add --name $@ $(BUILDS_DIR)/$@/$@.box | tee -a $(LOG_DIR)/$@.log
	$(VAGRANT) box list | tee -a $(LOG_DIR)/$@.log


# [X] Debian
libvirt-debian-9.9-base:
	$(PACKER) inspect $(SPECS_DIR)/$@.json | tee -a $(LOG_DIR)/$@.log
	$(PACKER) build -on-error=ask -var-file=config.json -force $(SPECS_DIR)/$@.json | tee -a $(LOG_DIR)/$@.log
	$(VAGRANT) box remove $@ | tee -a $(LOG_DIR)/$@.log; true 
	$(VAGRANT) box add --name $@ $(BUILDS_DIR)/$@/$@.box | tee -a $(LOG_DIR)/$@.log
	$(VAGRANT) box list | tee -a $(LOG_DIR)/$@.log



# [ ] OpenBSD


# [ ] FreeBSD

#############################################################################
# VirtualBox
#############################################################################
# [X] RHEL 8
virtualbox-rhel-8-base:
	$(PACKER) inspect $(SPECS_DIR)/$@.json | tee -a $(LOG_DIR)/$@.log
	$(PACKER) build -on-error=ask -var-file=config.json -force $(SPECS_DIR)/$@.json | tee -a $(LOG_DIR)/$@.log
	$(VAGRANT) box remove $@ | tee -a $(LOG_DIR)/$@.log; true 
	$(VAGRANT) box add --name $@ $(BUILDS_DIR)/$@/$@.box | tee -a $(LOG_DIR)/$@.log
	$(VAGRANT) box list | tee -a $(LOG_DIR)/$@.log

# [X] CentOS 7
virtualbox-centos-7-base:
	$(PACKER) inspect $(SPECS_DIR)/$@.json | tee -a $(LOG_DIR)/$@.log
	$(PACKER) build -on-error=ask -var-file=config.json -force $(SPECS_DIR)/$@.json | tee -a $(LOG_DIR)/$@.log
	$(VAGRANT) box remove $@ | tee -a $(LOG_DIR)/$@.log; true 
	$(VAGRANT) box add --name $@ $(BUILDS_DIR)/$@/$@.box | tee -a $(LOG_DIR)/$@.log
	$(VAGRANT) box list | tee -a $(LOG_DIR)/$@.log

# [X] Fedora 30 Server
virtualbox-fedora-30-base:
	$(PACKER) inspect $(SPECS_DIR)/$@.json | tee -a $(LOG_DIR)/$@.log
	$(PACKER) build -on-error=ask -var-file=config.json -force $(SPECS_DIR)/$@.json | tee -a $(LOG_DIR)/$@.log
	$(VAGRANT) box remove $@ | tee -a $(LOG_DIR)/$@.log; true 
	$(VAGRANT) box add --name $@ $(BUILDS_DIR)/$@/$@.box | tee -a $(LOG_DIR)/$@.log
	$(VAGRANT) box list | tee -a $(LOG_DIR)/$@.log

# [X] Alpine 3.1 Standard
virtualbox-alpine-3.10-base:
	$(PACKER) inspect $(SPECS_DIR)/$@.json | tee -a $(LOG_DIR)/$@.log
	$(PACKER) build -on-error=ask -var-file=config.json -force $(SPECS_DIR)/$@.json | tee -a $(LOG_DIR)/$@.log
	$(VAGRANT) box remove $@ | tee -a $(LOG_DIR)/$@.log; true 
	$(VAGRANT) box add --name $@ $(BUILDS_DIR)/$@/$@.box | tee -a $(LOG_DIR)/$@.log
	$(VAGRANT) box list | tee -a $(LOG_DIR)/$@.log

# [X] Ubuntu 18.04 Server
virtualbox-ubuntu-18.04-base:
	$(PACKER) inspect $(SPECS_DIR)/$@.json | tee -a $(LOG_DIR)/$@.log
	$(PACKER) build -on-error=ask -var-file=config.json -force $(SPECS_DIR)/$@.json | tee -a $(LOG_DIR)/$@.log
	$(VAGRANT) box remove $@ | tee -a $(LOG_DIR)/$@.log; true 
	$(VAGRANT) box add --name $@ $(BUILDS_DIR)/$@/$@.box | tee -a $(LOG_DIR)/$@.log
	$(VAGRANT) box list | tee -a $(LOG_DIR)/$@.log


# [X] Debian
libvirt-debian-9.9-base:
	$(PACKER) inspect $(SPECS_DIR)/$@.json | tee -a $(LOG_DIR)/$@.log
	$(PACKER) build -on-error=ask -var-file=config.json -force $(SPECS_DIR)/$@.json | tee -a $(LOG_DIR)/$@.log
	$(VAGRANT) box remove $@ | tee -a $(LOG_DIR)/$@.log; true 
	$(VAGRANT) box add --name $@ $(BUILDS_DIR)/$@/$@.box | tee -a $(LOG_DIR)/$@.log
	$(VAGRANT) box list | tee -a $(LOG_DIR)/$@.log


#############################################################################
# VMware
#############################################################################
# [X] RHEL 8
vmware-rhel-8-base:
	$(PACKER) inspect $(SPECS_DIR)/$@.json | tee -a $(LOG_DIR)/$@.log
	$(PACKER) build -on-error=ask -var-file=config.json -force $(SPECS_DIR)/$@.json | tee -a $(LOG_DIR)/$@.log
	$(VAGRANT) box remove $@ | tee -a $(LOG_DIR)/$@.log; true 
	$(VAGRANT) box add --name $@ $(BUILDS_DIR)/$@/$@.box | tee -a $(LOG_DIR)/$@.log
	$(VAGRANT) box list | tee -a $(LOG_DIR)/$@.log

# [X] CentOS 7
vmware-centos-7-base:
	$(PACKER) inspect $(SPECS_DIR)/$@.json | tee -a $(LOG_DIR)/$@.log
	$(PACKER) build -on-error=ask -var-file=config.json -force $(SPECS_DIR)/$@.json | tee -a $(LOG_DIR)/$@.log
	$(VAGRANT) box remove $@ | tee -a $(LOG_DIR)/$@.log; true 
	$(VAGRANT) box add --name $@ $(BUILDS_DIR)/$@/$@.box | tee -a $(LOG_DIR)/$@.log
	$(VAGRANT) box list | tee -a $(LOG_DIR)/$@.log

# [X] Fedora 30 Server
vmware-fedora-30-base:
	$(PACKER) inspect $(SPECS_DIR)/$@.json | tee -a $(LOG_DIR)/$@.log
	$(PACKER) build -on-error=ask -var-file=config.json -force $(SPECS_DIR)/$@.json | tee -a $(LOG_DIR)/$@.log
	$(VAGRANT) box remove $@ | tee -a $(LOG_DIR)/$@.log; true 
	$(VAGRANT) box add --name $@ $(BUILDS_DIR)/$@/$@.box | tee -a $(LOG_DIR)/$@.log
	$(VAGRANT) box list | tee -a $(LOG_DIR)/$@.log

# [X] Alpine 3.1 Standard
vmware-alpine-3.10-base:
	$(PACKER) inspect $(SPECS_DIR)/$@.json | tee -a $(LOG_DIR)/$@.log
	$(PACKER) build -on-error=ask -var-file=config.json -force $(SPECS_DIR)/$@.json | tee -a $(LOG_DIR)/$@.log
	$(VAGRANT) box remove $@ | tee -a $(LOG_DIR)/$@.log; true 
	$(VAGRANT) box add --name $@ $(BUILDS_DIR)/$@/$@.box | tee -a $(LOG_DIR)/$@.log
	$(VAGRANT) box list | tee -a $(LOG_DIR)/$@.log

# [X] Ubuntu 18.04 Server
vmware-ubuntu-18.04-base:
	$(PACKER) inspect $(SPECS_DIR)/$@.json | tee -a $(LOG_DIR)/$@.log
	$(PACKER) build -on-error=ask -var-file=config.json -force $(SPECS_DIR)/$@.json | tee -a $(LOG_DIR)/$@.log
	$(VAGRANT) box remove $@ | tee -a $(LOG_DIR)/$@.log; true 
	$(VAGRANT) box add --name $@ $(BUILDS_DIR)/$@/$@.box | tee -a $(LOG_DIR)/$@.log
	$(VAGRANT) box list | tee -a $(LOG_DIR)/$@.log



#############################################################################
# Clean
#############################################################################
clean:
	rm -rf $(BUILDS_DIR)/*
	rm -rf $(LOG_DIR)/*