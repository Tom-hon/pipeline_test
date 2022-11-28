# pipeline_test
testing_stuff


---
- name: podman_network_check
  containers.podman.podman_network_info:
  register: podman_network_check

# - name: podman_network_check_print
#   ansible.builtin.debug:
#     msg: "{{podman_network_check.network}}"

# - name: create a podman network
#   containers.podman.podman_network:
#     name: podman_network
#     state: absent
#   register: podman_network_check
  # when: podman_network_check|length == 0

- name: Create internal podman network
  containers.podman.podman_network:
    name: podman_network
    internal: false
    # state: absent
    ip_range: 10.89.0.128/32
    subnet: 10.89.0.0/24
    gateway: 10.89.0.1
  # when: podman_network_check.stdout_lines == "podman_network"
