# Data Input

* list of PDF papers, via [fatcat](https://fatcat.wiki)

```
$ for ident in $(fatcat-cli search release --entity-json "urban gardening in_ia:true" | \
    jq -r .ident); do fatcat-cli download "release_$ident"; done
```
