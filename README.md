ansible setup scripts
---------------------

Lets see how long I maintain these :)


Install ansible
```
apt install ansible sshpass -y
```

first time running the ssh and sudo playbook, run with -k and -K so we get prompted for the passwords.

```ansible-playbook  upload-sshkey.yaml -k -K```
```ansible-playbook  update-sudo.yaml -K```

Will probably write something flash with DNS and inventory providers.
