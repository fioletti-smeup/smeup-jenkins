# Smeup Jenkins

This project produces an ova file.
You can use this file as a template to generate a vmware virtual machine.

From the root directory:

```bash
packer build --force --var-file vars.json packer.json
```

This virtual machine contains a basic salt minion installation and docker jenkins container.

To complete jenkins setup follow this link:

<https://jenkins.io/doc/book/installing/#setup-wizard>