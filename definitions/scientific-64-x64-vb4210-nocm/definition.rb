Veewee::Session.declare({
  :cpu_count => '1',
  :memory_size=> '480',
  :disk_size => '10140',
  :disk_format => 'VDI',
  :hostiocache => 'off',
  :os_type_id => 'RedHat_64',
  :iso_file => "SL-64-x86_64-2013-03-18-boot.iso",
  :iso_src => "http://www.mirrorservice.org/sites/ftp.scientificlinux.org/linux/scientific/6.4/x86_64/iso/SL-64-x86_64-2013-03-18-boot.iso",
  :iso_md5 => "e9625e2c3b4b02d94ffa478773d5d58f",
  :iso_download_timeout => 1000,
  :boot_wait => "15",
  :boot_cmd_sequence => [
    '<Tab> text ks=http://%IP%:%PORT%/ks.cfg<Enter>'
  ],
  :kickstart_port => "7122",
  :kickstart_timeout => 10000,
  :kickstart_file => "ks.cfg",
  :ssh_login_timeout => "10000",
  :ssh_user => "veewee",
  :ssh_password => "veewee",
  :ssh_key => "",
  :ssh_host_port => "7222",
  :ssh_guest_port => "22",
  :sudo_cmd => "echo '%p'|sudo -S sh '%f'",
  :shutdown_cmd => "/sbin/halt -h -p",
  :postinstall_files => [
    "base.sh",
    "vagrant.sh",
    "virtualbox.sh",
    #"kvm.sh",
    #"vmfusion.sh",
    "cleanup.sh",
    "zerodisk.sh"
  ],
  :postinstall_timeout => 10000
})
