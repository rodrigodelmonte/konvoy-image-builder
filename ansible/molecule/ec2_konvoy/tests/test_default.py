import os

import testinfra.utils.ansible_runner

testinfra_hosts = testinfra.utils.ansible_runner.AnsibleRunner(
    os.environ["MOLECULE_INVENTORY_FILE"]
).get_hosts("all")


def test_containerd_running_and_enabled(host):
    containerd = host.service("containerd")
    assert containerd.is_enabled


def test_kubelet_running_and_enabled(host):
    kubelet = host.service("kubelet")
    assert kubelet.is_enabled


def test_kubectl_avail(host):
    cmd = host.run("type kubectl")
    assert cmd.succeeded is True


def test_kubeadm_avail(host):
    cmd = host.run("type kubeadm")
    assert cmd.succeeded is True
