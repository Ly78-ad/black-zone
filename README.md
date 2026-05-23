# BLACK ZONE // 黑域系统 v8.0

**电影级赛博朋克 AI 终端系统**

> "这个系统是活着的。"

---

## 预览

打开即进入一个被禁止访问的未来 AI 系统。无需后端，纯前端实现。

**在线体验：** [GitHub Pages](https://ly78-ad.github.io/black-zone/)

---

## 功能

### 视觉特效层（7 层实时渲染）

| 层 | 效果 |
|---|------|
| Three.js 全息核心 | 旋转线框球 + 内层球 + 核心球 + 双环旋转 + 300 粒子 + 脉冲波 |
| 透视网格 | 持续滚动的赛博朋克网格线 |
| Matrix 数字雨 | 日文/中文/十六进制字符瀑布 |
| 粒子系统 | 60 个脉冲光晕浮动粒子 |
| 体积雾效 | 缓慢漂浮的雾团，营造空间纵深 |
| CRT 后处理 | 动态扫描亮带 + 随机水平条纹干扰 |
| Glitch 引擎 | 水平撕裂条 + 色彩通道偏移 + 像素块 + CSS 色差闪烁 + 撕裂线 |

### 终端命令（13 个）

| 命令 | 功能 |
|------|------|
| `help` | 显示命令菜单 |
| `scan` | 网络漏洞扫描 |
| `trace` | 追踪 IP 地址，显示代理路由和地理位置 |
| `decrypt` | 解密数据流，带进度条动画 |
| `breach` | 系统突破，加载模块 → 获取 Shell → 窃取数据 |
| `status` | 系统状态报告 |
| `intel` | 显示 3 个机密行动详情 |
| `inject` | 注入载荷，建立回调 |
| `shadow` | 激活影子模式 |
| `matrix` | ASCII 大字 + 黑客帝国台词 |
| `whoami` | 用户身份信息 |
| `clear` | 清空终端 |
| `exit` | 终止会话并重启 |

### 3 个标签页

- **root@黑域** — 主终端，输入命令交互
- **监控** — 实时系统监控，自动输出 CPU/内存/GPU/进程指标
- **网络扫描** — 输入 IP 或域名，扫描端口、服务、漏洞

### 自动运行系统

系统不需要操作就会自动：
- 输出 30 条 AI 系统日志（逐字打印）
- 自动触发 Glitch 故障特效
- 自动触发入侵警告
- 自动更新 HUD 数据
- 自动弹出全息情报卡

### 音频系统

点击页面任意位置激活环境音：
- 55Hz 低频 drone
- 120Hz 锯齿波嗡鸣
- 间歇脉冲
- UI 点击/故障/警报音效

---

## 快速开始

### 方式一：双击启动（推荐）

```
双击 start.bat
```

自动启动本地服务器并打开浏览器。

### 方式二：手动启动

```bash
cd 黑域系统
npx http-server -p 8080 -c-1
```

浏览器访问 `http://localhost:8080`

---

## 技术栈

- **Three.js** — 3D 全息核心渲染
- **Canvas 2D** — 网格/粒子/雾效/CRT/Glitch/雷达
- **Web Audio API** — 环境音和 UI 音效
- **原生 JavaScript** — 零依赖，模块化架构

---

## 项目结构

```
black-zone/
├── index.html          # 主系统（全部代码）
├── three.min.js        # Three.js 本地库
├── start.bat           # 一键启动
├── .gitignore
└── README.md
```

---

## 自定义

### 修改颜色

编辑 `index.html` 中的 CSS 变量：

```css
:root{
  --cyan:#00e5ff;    /* 主色：青蓝 */
  --red:#c41030;     /* 危险：暗红 */
  --green:#00e676;   /* AI：荧光绿 */
  --amber:#ff9100;   /* 网络：橙黄 */
  --purple:#d500f9;  /* 故障：紫红 */
}
```

### 添加 AI 自动日志

在 `AILogEngine` 的 `logs` 数组中添加：

```javascript
{ text: '> 你的日志内容', cls: 'auto' },
{ text: '> 故障日志', cls: 'auto', glitch: true },
{ text: '> 警报日志', cls: 'auto', alert: true },
```

---

## 浏览器兼容

- Chrome / Edge（推荐）
- Firefox
- Safari

需要支持 WebGL 和 ES6+。

---

## 许可

MIT License
