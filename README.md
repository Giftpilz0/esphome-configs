# esphome-configs

[![ci](https://github.com/Giftpilz0/esphome-configs/actions/workflows/ci.yml/badge.svg)](https://github.com/Giftpilz0/esphome-configs/actions/workflows/ci.yml)
[![license](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)

[ESPHome](https://esphome.io) configurations for my devices.

## Usage

```sh
cp secrets.example.yaml secrets.yaml   # then fill it in
just build <device>                    # compile <device>.yaml
just deploy <device>                   # compile and flash
```

Needs [uv](https://docs.astral.sh/uv/) and [just](https://just.systems); ESPHome is pinned in `uv.lock`.

## Development

Run `just` for all recipes and `just check` before committing. Conventions: [Giftpilz0/shared](https://github.com/Giftpilz0/shared).

## License

[MIT](LICENSE)
