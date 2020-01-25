---
layout: talk
title: "Zero Trust SSH"
conference: /conferences/2020/01/13/LCA2020/
speaker: Jeremy Stott
begin: 2020-01-17 10:45
talk_url: https://lca2020.linux.org.au/schedule/presentation/54/
---
SSH certificates.

Host certificates.

Certificates can expire. No need to worry about dangling certificates
when employees leave.

Onboarding/offboarding. Added new user's is a pain. puppet. LDAP. ansible.

Embedded systems.

AWS accounts.

Hosts in different clouds.

pam-ussh by Uber.

Automate certificate signing/revocation.

* Bless. Certificate expiry in 2 minutes.
* python-bless-client.
* step.
* vault.

sshrimp. Shrimp have shells, lightweight. SSH Really Not My Problem.

sshrimp-agent -> OIDC -> JWT

The user must exist on the host. ssh as root or shared user. NSSCache
lightweight ldapless directory. Puppet.

Create user's on the fly. Use two accounts, one to create account, one
to use account.

Slides written inside a ssh certificate.
