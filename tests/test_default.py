import testinfra.utils.ansible_runner

testinfra_hosts = testinfra.utils.ansible_runner.AnsibleRunner(
    '.molecule/ansible_inventory').get_hosts('all')


def test_ntp_is_installed(host):
    p = host.package("ntp")
    assert p.is_installed


def test_ntp_conf(host):
    f = host.file('/etc/ntp.conf')

    assert f.exists
    assert f.user == 'root'
    assert f.group == 'root'
    assert f.mode == 0o644


def test_ntp_is_installed_and_enabled(host):
    s = host.service('ntpd')

    assert s.is_running
    assert s.is_enabled
