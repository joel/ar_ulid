# Build Gem

> gem build

> mv *.gem gems/

# Publish Gem

> gem push gems/ar_ulid-0.1.0.gem

# Tag

> git add . && git commit -m "Version 0.1.0"

> git tag -a v0.1.0 main -m "Version 0.1.0"

> git push --tags

# Optional

> git add . && git stash save "Clean before tagging"