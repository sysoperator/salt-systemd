systemctl-reload:
  module.wait:
    - name: service.systemctl_reload

{#
  See: https://www.freedesktop.org/software/systemd/man/latest/systemd-tmpfiles-setup.service.html
#}
systemd-tmpfiles:
  cmd.wait:
    - name: systemd-tmpfiles --create

{#
  See: https://www.freedesktop.org/software/systemd/man/latest/systemd-modules-load.service.html
#}
systemd-modules-load:
  module.wait:
    - name: service.restart
    - m_name: systemd-modules-load
