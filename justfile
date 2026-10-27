set shell := ["bash", "-euo", "pipefail", "-c"]

# List recipes
default:
    @just --list --unsorted

# Run all linters and formatters (pre-commit); CI runs this too
lint *args:
    pre-commit run --all-files {{args}}

# Definition of done
check: lint

# Compile a device config, e.g. `just build esp0`
build device:
    uv run esphome compile {{device}}.yaml

# Compile and flash a device (OTA or USB), e.g. `just deploy esp0`
deploy device:
    uv run esphome run {{device}}.yaml
