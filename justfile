set shell := ["bash", "-uc"]

gb_spec := "geometry_backend_v2.yaml"

release-gb version:
    just _release "{{gb_spec}}" "{{version}}" "gb_v2"

_release spec version name:
    # Stop when repo is dirty
    test -z "$(git diff --shortstat)"

    # Update version in spec (first occurrence only)
    sed -i "0,/version:/s/^\(\s*version\): .*/\1: {{version}}/" "{{spec}}"

    git add -A .
    git commit -m "Release {{name}}@{{version}}"
    git tag -a "{{name}}@{{version}}" -m "Release {{name}}@{{version}}"

    # Pushing branch main and tag v{{version}} to Git
    git push --atomic "origin" "{{name}}@{{version}}" "main"
