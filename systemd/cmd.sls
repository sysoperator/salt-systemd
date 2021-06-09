systemctl-reload:
  module.wait:
    - name: service.systemctl_reload

systemd-tmpfiles:
  cmd.wait:
    - name: systemd-tmpfiles --create
