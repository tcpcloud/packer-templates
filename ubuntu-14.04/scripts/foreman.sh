# One-time key for Foreman provisioning

[ ! -d ~/.ssh ] && mkdir -m 700 ~/.ssh
cat << EOF >> ~/.ssh/authorized_keys
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDWc8adBL8rzHwG3k+OMxSa/7aQzKY2Mw1JtYfK3xgj7yigSw8kfPg1UV8ZOe2HPTArQnaqkinKO7c7Uq3OH6lsygousjTDkHWpsB607P0AQYcB9m+oo7UwJYEDRfrwyGLgR0yMy9aC2sUAgOsiylZLfCy7jF6lXChNkv6td6Co+EzVN5RyVc8tgB25wXPn1DSp33stzy/hBWgMuWRDObpzQvZlr2i0Ed87CdBLCCP3DGDGHv9jYCxPpT0Sobr/FZApbeDWwsxVJC3GTkgFTcfrPO1LXI72NlhRlCvaoehrjilePHk6+5Ap1/hXg0Vmqq0KsCQ3MlaLO4XOjJ7F/UGYJKczztdqvqPXwQ1+q7ZqDW/uCKXrI9H0XmuaI61xiTbC1Tvjws4HZrq5mp23RPfT29ETcHm3cxFNchzkGlvod3rH1hUWqufuEGnBIhQTfcZbDS34cxACKYfiP61rqVdoHu27d81gwyN7RcjoNuOm2qo3JwW8FyQEBVw0H5HjQxtRk042ghME11CLTA4G8OTQ1BMbrxfz9QPXEc8y71ZT9YyZ9AjgUY487+Rw6KBgEvK4xrdDCt7HhxwGeU3s8+4eETcCicBr+58ykhcyjm3EuH/t/lMggCnuPWejfYbJae4Gh3lLZW1ZHLR7adsAw89Ju1OF5XTcS+O69p5vi8X6yw== foreman@provisioner
EOF
