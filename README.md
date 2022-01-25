<div  align="center">
<img src="https://www.gstatic.com/android/keyboard/emojikitchen/20201001/u1f971/u1f971_u1f32d.png" width="30%" align="center" />
</div>

# go cli action prototype

[![.github/workflows/main.yml](https://github.com/elliotxx/kusion-action/actions/workflows/main.yml/badge.svg?branch=main)](https://github.com/elliotxx/kusion-action/actions/workflows/main.yml)
[![GitHub release](https://img.shields.io/github/release/elliotxx/kusion-action.svg)](https://github.com/elliotxx/kusion-action/releases)
[![Github All Releases](https://img.shields.io/github/downloads/elliotxx/kusion-action/total.svg)](https://github.com/elliotxx/kusion-action/releases)
[![license](https://img.shields.io/github/license/elliotxx/kusion-action.svg)](https://github.com/elliotxx/kusion-action/blob/master/LICENSE)

To learn how this action was built, see "[Creating a Docker container action](https://help.github.com/en/articles/creating-a-docker-container-action)" in the GitHub Help documentation.

## Inputs

### `subcommand`

**Required** Kusion subcommand. Default `"apply"`.
### `settings`

**Optional** KCL setting files. Default `""`.

### `arguments`

**Optional** KCL arguments. Default `""`.

### `filenames`

**Optional** KCL files. Default `""`.

## Example usage

kusion version:
```yaml
uses: elliotxx/kusion-action@main
with:
  subcommand: 'version'
```

kusion apply:
```yaml
uses: elliotxx/kusion-action@main
with:
  subcommand: 'apply'
  settings: 'ci-test/settings.yaml,kcl.yaml'
```

kusion apply #2
```yaml
uses: elliotxx/kusion-action@main
with:
  subcommand: 'apply'
  arguments: '-D cluster=default -D env=prod'
  filenames: 'main.k'
```