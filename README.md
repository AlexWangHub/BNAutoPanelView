# AutoPanelView 架构

## 前言

需要复用机制的，我们日常开发中会使用 tableView/collectionView ；

但日常中我们经常会遇到不需要 复用机制 ，但又要将一系列子view排序展示的情况，

比如下面这些面板：

![](https://tva1.sinaimg.cn/large/008i3skNgy1gt2id2yyq3j30hg0eemxe.jpg)

我最初是在 消息面板 中最先采用了 AutoPanelView ，开发的效率非常高，基本也没出什么问题，

后续将这套 AutoPanelView 又用在了其它N个需求上，结果都是又好又快。

AutoPanelView 这套架构理念不难，通用信比较强，遂总结处理如下。

## 架构实现

Github代码链接：[AutoPanelView](https://github.com/BNineCoding/BNAutoPanelViewDemo)

架构逻辑如下：

![](https://tva1.sinaimg.cn/large/008i3skNgy1gt2p6mnnyyj30xn0l1juu.jpg)
