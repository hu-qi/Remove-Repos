# Remove Repos

[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](https://makeapullrequest.com)
![GitHub](https://img.shields.io/github/license/hu-qi/remove-repos)
![GitHub Repo stars](https://img.shields.io/github/stars/hu-qi/remove-repos?style=social)
[![GitHub issues](https://img.shields.io/github/issues/hu-qi/remove-repos)](https://github.com/hu-qi/remove-repos/issues)
[![GitHub forks](https://img.shields.io/github/forks/hu-qi/remove-repos)](https://github.com/hu-qi/remove-repos/network)
![GitHub last commit](https://img.shields.io/github/last-commit/hu-qi/remove-repos)


[English](./README.md) | [简体中文](./README-zh.md)

Did you accidentally created too many repositories ?

Did you fork a whole bunch of repositories that were never opened ?

Did you feel that your warehouse is no longer valuable ?

......

Let's go, time for a cup of coffee to delete them !

## Install

```shell
git clone https://github.com/hu-qi/remove-repos.git
cd remove-repos
```

## Get token

[Docs: Creating a personal access token](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token)

1. Init token: github.com -> Click the avatar -> Settings -> Developer settings -> Personal access tokens [Click to create the token](https://github.com/settings/tokens).
2. Click Generate new token, maybe also need to enter your password.
3. Enter the name that marks what the token is for at Note, for example: DELETE_TOKEN.
4. Swipe down to find `delete_repo` checked.
5. Click Generate token to create and copy.

![Get token.png](https://s2.loli.net/2022/02/17/EgrCim8v7SVxTUO.png)

## Set token and username

Copy `.env.template` to `.env` and modify `token` and `username` to your own.

## Get repos

```bash
$ ./get-github-repos.sh 
```

Execute the above command to get repos.txt, up to 100 pieces of data (TODO pagination).
repos.txt：

```txt
https://github.com/hu-qi/1zai.git
https://github.com/hu-qi/30-days-of-react-native.git
...
```
## Do Remove

> Waring: This command will delete all repositories listed in repos.txt！
> Waring: This command will cannot be undone！

```shell
$ ./remove-github-repos.sh
```

## Contact me

<huqi1024@gmail.com>