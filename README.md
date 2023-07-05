ubi-radarr
=========
[![Radarr CI/CD](https://github.com/CastawayEGR/ubi-radarr/actions/workflows/build.yml/badge.svg)](https://github.com/CastawayEGR/ubi-radarr/actions/workflows/build.yml)
[![Docker Repository on Quay](https://quay.io/repository/castawayegr/radarr/status "Docker Repository on Quay")](https://quay.io/repository/castawayegr/radarr)
[![License: MIT](https://img.shields.io/badge/License-MIT-brightgreen.svg)](https://opensource.org/licenses/MIT)
[![GitHub repo size in bytes](https://img.shields.io/github/repo-size/CastawayEGR/ubi-radarr.svg?logoColor=brightgreen)](https://github.com/CastawayEGR/ubi-radarr)
[![GitHub last commit](https://img.shields.io/github/last-commit/CastawayEGR/ubi-radarr.svg?logoColor=brightgreen)](https://github.com/CastawayEGR/ubi-radarr)

A RHEL UBI based image for Radarr built to run rootless on OpenShift.

## Usage

```bash
podman run -d --name radarr \
    -e TZ=America/New_York \
    -p 7878:7878 \
    -v $(pwd)/config:/config:Z \
    quay.io/castawayegr/radarr:latest 
```

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## License
[MIT](https://choosealicense.com/licenses/mit/)
