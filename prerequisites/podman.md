```shell
# ubuntu install podman
apt install podman

# edit config and use mirror (optional)
cat <<EOF | sudo tee /etc/containers/registries.conf
unqualified-search-registries = ["docker.io"]

[[registry]]
location = "docker.io"

[[registry.mirror]]
location = "mirror.ccs.tencentyun.com"
EOF
```

