# AGENTS.md

Ansible role that installs and configures the Dovecot IMAP server on Debian (bookworm, trixie per `meta/main.yml`).

## Layout

- `defaults/main.yml`: role variables with defaults
- `tasks/`: `main.yml`, plus `sieve.yml`, `systemd.yml` and the backup tasks `dovecot_backup_lead.yml` / `dovecot_backup_follower.yml`
- `templates/`: Dovecot `conf.d` files (`10-*.conf.j2`, `90-*.conf.j2`, ...) and Sieve scripts under `sieve/`
- `files/systemd/`: systemd drop-ins for `dovecot.service`
- `handlers/main.yml`, `meta/main.yml`, `requirements.yml` (collection `ansible.posix`)
- `molecule/default/`: local integration scenario (Docker driver)

## Checks

- `ansible-lint .` must pass; it creates `.ansible/`, which is git ignored and must never be committed
- `yamllint .` uses the repo's `.yamllint`
- `molecule test` runs the role in a Docker container. CI (`systemli/github-ansible-workflow`) runs lint and Molecule on the distros listed in `.github/workflows/main.yml`

## Conventions

- Use fully qualified module names, quoted octal `mode` values and `true`/`false` booleans
- Give every task a `name`
- New or changed role variables need an entry in `defaults/main.yml` and, if documented, the README

## Commits and PRs

- Write in English, use conventional commit titles (`feat:`, `fix:`, `chore:`, `ci:`; `!` for breaking changes)
- The PR title sets the release-drafter label (`enhancement`, `bug`, `chore`, `breaking`); a breaking change bumps the major version
- Open PRs as draft and fill in `.github/pull_request_template.md`: what changed and why, plus a breaking changes section if needed
- Do not list changed files or claim test results in the description; CI covers that
