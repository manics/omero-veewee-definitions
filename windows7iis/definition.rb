# -*- coding: utf-8 -*-
#video memory size should be at least 32meg for windows 7 to do full screen on my desktop
# I'm not sure how to set that with veewee::session yet
Veewee::Session.declare({
    :os_type_id => 'Windows7_64',
    # Windows 7 Enterprise
    :iso_file => "windows7enterprise64bitdvd.iso",
    :iso_src => "windows7enterprise64bitdvd.iso",
    :iso_md5 => "8db2fa2c64160f582bd099e86dbe219f",
    :iso_download_timeout => "100000",
    :cpu_count => '1',
    :memory_size=> '512', 
    :disk_size => '20280', :disk_format => 'VDI', :hostiocache => 'off',
    :floppy_files => [
      "Autounattend.xml",
      "oracle-cert.cer"
    ],
    :winrm_user => "vagrant", :winrm_password => "vagrant",
    :postinstall_timeout => "10000",
    :postinstall_files => [
      "install-chef.bat",
      "install-puppet.bat",
      "install-vbox.bat"
    ],
    :shutdown_cmd => "shutdown /s /t 10 /c \"Vagrant Shutdown\" /f /d p:4:1",
  })
