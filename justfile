set shell := ["bash", "-uc"]

gb_spec := "geometry_backend_v2.yaml"

release-gb version:
    just _release "{{gb_spec}}" "{{version}}" "gb_v2"

_release spec version name:
    #!/usr/bin/env bash
    # Stop when repo is dirty
    test -z "$(git diff --shortstat)"

    # Update version in spec (first occurrence only)
    case $(uname -s) in
    Linux)
        sed -i "0,/version:/s/^\(\s*version\): .*/\1: {{version}}/" "{{spec}}"
        ;;
    Darwin)
        awk \
            'BEGIN {found=0} {if (!found && $0 ~ /^[[:space:]]*version: .*/) {sub(/version: .*/, "version: {{version}}", $0); found=1} print}' \
            "{{spec}}" > temp.yaml \
            && mv temp.yaml "{{spec}}"
        ;;
    esac

    git add -A .
    git commit -m "Release {{name}}@{{version}}"
    git tag -a "{{name}}@{{version}}" -m "Release {{name}}@{{version}}"

    # Pushing branch main and tag v{{version}} to Git
    git push --atomic "origin" "{{name}}@{{version}}" "main"
