class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDPsPxydpB/x6mKrhwe49zIudmQvqB1orQaJe7p2btJ1++VYifv2GIFqX+k9u7gMt80MF7AUIf80BBxrOfBLmjMUrdRx2MrltlA83Pz2WMoceqRDbFFM+fX7AQJMs3t63x8tP68FOsQQXfDoExPdX2bxptyhOqNMs8m24dW72HABggsjxSiYjkZy5hNVfAJqZ6b5Oh8XPaZMEosAAibdczebAhftiUL8hHq8dhVyO01dYaGMtaltrIzfjbnGx5Ja8jnihGc0c34uAdo2MrgZhTBohEGi8ZJsTqWdMixSaz3R0cojo8f0Wy12z/wUZQkgHxuh1YcOIXGzzsCw8KgFMbn',
  }  
}








