systemctl-reload:
  module.wait:
    - name: service.systemctl_reload

{#
  See: https://www.freedesktop.org/software/systemd/man/latest/systemd-tmpfiles-setup.service.html
#}
systemd-tmpfiles:
  cmd.wait:
    - name: systemd-tmpfiles --create
