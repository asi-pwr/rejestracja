# Rejestracja

![GitHub tag (latest SemVer)](https://img.shields.io/github/v/tag/asi-pwr/rejestracja) ![GitHub Workflow Status](https://img.shields.io/github/workflow/status/asi-pwr/rejestracja/Create%20and%20publish%20a%20Docker%20image)

Simple web application we use to collect email addresses during recruitment.

All emails are collected in `data/emails.txt`.

## How to run

0. Install Docker (or Podman preferably)
1. `git clone https://github.com/asi-pwr/rejestracja.git`
2. `./run.sh`
3. Go to `http://localhost:9292`
4. Emails are saved in `data/emails.txt`

## Under the hood

This uses Ruby 3.1.2 and [Roda](https://github.com/jeremyevans/roda) for the backend parts and [Pico.css](https://picocss.com) because importing Bootstrap for this would be an overkill

## How to release new version

1. Commit all changes
2. `git tag vX.Y`
3. `git push --all`