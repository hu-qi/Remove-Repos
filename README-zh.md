> 归零，十八年后，我们又在这里相遇了！

# 快速删除仓库

[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](https://makeapullrequest.com)
![GitHub](https://img.shields.io/github/license/hu-qi/remove-repos)
![GitHub Repo stars](https://img.shields.io/github/stars/hu-qi/remove-repos?style=social)
[![GitHub issues](https://img.shields.io/github/issues/hu-qi/remove-repos)](https://github.com/hu-qi/remove-repos/issues)
[![GitHub forks](https://img.shields.io/github/forks/hu-qi/remove-repos)](https://github.com/hu-qi/remove-repos/network)
![GitHub last commit](https://img.shields.io/github/last-commit/hu-qi/remove-repos)


您是否不小心创建了太多仓库？

您是否复刻了一大堆从未打开过的仓库？

您是否觉得您的仓库不再有价值？

......

来吧，快速删除这些无用的仓库 !

## 安装

```shell
git clone https://github.com/hu-qi/remove-repos.git
cd remove-repos
```

## 获取令牌

[文档：创建个人访问令牌](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token)

1. 初始化token: github.com -> 点击头像 -> Settings -> Developer settings -> Personal access tokens [点击创建token](https://github.com/settings/tokens)。
2. 点击Generate new token，可能还需要输入密码。
3. 在 Note 处输入标记令牌用途的名称，例如：DELETE_TOKEN。
4. 向下滑动以找到并选中 `delete_repo`。
5. 单击生成令牌并复制。

![获取token.png](https://s2.loli.net/2022/02/17/EgrCim8v7SVxTUO.png)

## 设置令牌和用户名

将 `.env.template` 复制到 `.env` 并将 `token` 和 `username` 修改为您自己的。

## 获取仓库

```bash
$ ./get-github-repos.sh 
```

执行以上命令获取repos.txt，最多100条数据（TODO分页）。

repos.txt：

```txt
https://github.com/hu-qi/1zai.git
https://github.com/hu-qi/30-days-of-react-native.git
...
```
## 删除

> Waring: 此命令将删除 repos.txt 中列出的所有存储库！
> Waring: 此命令将无法撤消！

```shell
$ ./remove-github-repos.sh
```

## 关于我
、
![胡琦](https://s2.loli.net/2022/02/17/KEigLGShHPtYDon.png)