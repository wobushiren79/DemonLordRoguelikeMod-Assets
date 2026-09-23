# DemonLordRoguelikeMod 资源包

DemonLordRoguelikeMod 的 Spine 大资源，解压后约 25 GB，打包后 17.60 GB。

> 为什么放这里：这些文件体积过大，放进代码仓的 Git LFS 会持续吃掉存储配额（免费额度 10 GiB，且每次推送新版本都按**整个文件**重新计费）。所以代码仓不再跟踪 `Assets/ModResource/`，资源改由本仓库的 Release 附件分发。

## 怎么用

1. 到 [Releases](../../releases) 下载**全部**附件（3 个 release，共 15 个文件 + 下面的脚本）
2. 运行 `restore_all.bat`（Windows）或 `restore_all.sh`（bash），自动合并分卷并解压
3. 默认解压到 `DemonLordRoguelikeMod/Assets/ModResource/Spine/`，也可以传入自定义目标目录作为第一个参数

```bat
restore_all.bat "E:\Unity\DemonLordRoguelikeMod\DemonLordRoguelikeMod\DemonLordRoguelikeMod\Assets\ModResource\Spine"
```

## 包内容

每个 zip 内含 `<游戏>/...` 与 `<游戏>.meta`，**`.meta` 一并打包，GUID 不变**，解压后 Unity 不会重新分配引用。

| 游戏 | 打包后 | 分卷 |
|------|--------|------|
| AeonsEcho | 1.09 GB | 1 |
| ArkRe | 1.18 GB | 1 |
| BrownDust | 1.52 GB | 1 |
| CherryTale | 0.49 GB | 1 |
| CrossCore | 3.59 GB | 2 |
| Echocalypse | 2.25 GB | 2 |
| GirlWars | 0.77 GB | 1 |
| Nikke | 3.53 GB | 2 |
| Other | 0.57 GB | 1 |
| PutGirl | 0.73 GB | 1 |
| Snowbreak | 0.68 GB | 1 |
| StarLusts | 1.20 GB | 1 |

合计 **17.60 GB**。

### 分卷包（超过 GitHub 单附件 2 GiB 上限）

这几个包被按 1.85 GiB 切分，**必须先合并再解压**（`restore_all.bat` 会自动处理）：

- `CrossCore.zip` ← `CrossCore.zip.001` + `CrossCore.zip.002`
- `Echocalypse.zip` ← `Echocalypse.zip.001` + `Echocalypse.zip.002`
- `Nikke.zip` ← `Nikke.zip.001` + `Nikke.zip.002`

```bash
cat Nikke.zip.001 Nikke.zip.002 > Nikke.zip   # 其余同理
```

## 校验

`SHA256SUMS.txt` 是每个分卷/zip 的 SHA-256：

```bash
sha256sum -c SHA256SUMS.txt      # Linux / Git Bash
certutil -hashfile Nikke.zip.001 SHA256   # Windows 单个文件
```

合并出的完整 zip 的 SHA-256 见 `manifest.json` 的 `zip_sha256` 字段。

## 更新流程

资源重导出后：重新打包 → **新建一个 release / tag**（不要覆盖旧附件，否则会丢掉下载统计和历史版本），然后在代码仓更新对应资源。

