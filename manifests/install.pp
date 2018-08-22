# Install Agent dripstat-infra
#
# @example
#   include dripstatinfra::install
class dripstatinfra::install {

      apt::source { 'Dripstat':
        comment  => 'Dripstat',
        location => 'https://apt.dripstat.com/',
        release  => 'dripstat',
        repos    => 'non-free',
        include  => {
          'src' => false,
          'deb' => true,
        },
      }

      apt::key { 'dripstat':
        id     => 'C2E7578984FBAD5B03AB80AD3F698E056133DE23',
        source => 'https://apt.dripstat.com/key/public.gpg',
      }

      package {
        [ 'dripstat-infra' ]:
          ensure  => 'latest',
          require => Class['apt::update'],
      }

      file { '/etc/dripstat-infra/config.toml':
        ensure => 'file',
        source => 'puppet:///modules/dripstatinfra/config.toml',
        owner  => 'root',
        group  => 'root',
        mode   => '0770',
      }

      file { '/etc/logrotate.d/dripstat-infra':
        ensure => 'file',
        source => 'puppet:///modules/dripstatinfra/dripstat-infra',
        owner  => 'root',
        group  => 'root',
        mode   => '0644',
      }

      service { 'dripstat-infra' :
        ensure     => running,
        name       => 'dripstat-infra',
        enable     => true,
        hasrestart => true,
        hasstatus  => true,
      }
}
