#!/bin/bash
sudo apt-get install tiptop sysstat bpfcc-tools linux-headers-$(uname -r) linux-tools-common linux-tools-$(uname -r) iproute2 msr-tools
sudo snap install bpftrace
git clone https://github.com/brendangregg/msr-cloud-tools
git clone https://github.com/brendangregg/bpf-perf-tools-book
git clone https://github.com/iovisor/bcc
