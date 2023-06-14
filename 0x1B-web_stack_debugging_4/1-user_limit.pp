# Enable the user school to login and open files without error.

# Increase hard file limit for school user.
exec { 'increase-hard-file-limit-for-school-user':
  command => 'sed -i "/school hard/s/5/50000/" /etc/security/limits.conf',
  path    => '/usr/local/bin/:/bin/'
}

# Increase soft file limit for school user.
exec { 'increase-soft-file-limit-school-user':
  command => 'sed -i "school  soft/s/4/50000/" /etc/security/limits.conf',
  path    => '/usr/local/bin/:/bin/'
}
