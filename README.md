systemd
=======

Salt systemd helper states.

## Available states

| Name          | Description                   |
| ------------- | ----------------------------- |
| `systemd.cmd` | Defines systemd helper states |

## Usage

The module is not intended for stand-alone use. Add state `systemd/cmd` to your state file using `include` statement:

```yaml
include:
  - systemd/cmd
```

Then use `systemctl-reload` or `systemd-tmpfiles` as `watch_in` requisite to create relationships between states, e.g.:

```yaml
foo.service:
  file.managed:
    - name: /etc/systemd/system/foo.service
    - source: salt://foo/files/systemd/foo.service
    - watch_in:
      - module: systemctl-reload
```

## Read more

 * https://docs.saltproject.io/en/latest/ref/states/include.html
 * https://docs.saltproject.io/en/latest/ref/states/all/salt.states.module.html#salt.states.module.wait
 * https://docs.saltproject.io/en/latest/ref/states/all/salt.states.cmd.html#salt.states.cmd.wait
 * https://docs.saltproject.io/en/latest/ref/states/requisites.html
