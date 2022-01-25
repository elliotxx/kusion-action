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

### `version`

**Optional** Show version info. Default `"false"`.
### `echo`

**Optional** Show echo info. Default `""`.

## Example usage

```yaml
uses: elliotxx/kusion-action@main
with:
  version: 'true'
```
