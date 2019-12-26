# Button 按钮

### 引入

```javascript
import "package:fant/fant.dart";
```

## 代码演示

### 按钮类型

支持`default`、`primary`、`info`、`warning`、`danger`五种类型，默认为`default`

```dart
FantButton(
    text: "默认按钮",
    click: () {}
)
FantButton(
    text: "主要按钮",
    type: FantButtonTypes.primary,
    click: () {},
)
```

### 朴素按钮

通过`plain`属性将按钮设置为朴素按钮，朴素按钮的文字为按钮颜色，背景为白色。

```dart
FantButton(
    text: "朴素按钮",
    plain: true,
    click: () {}
)
```

### 细边框

设置`hairline`属性可以开启 0.5px 边框，基于伪类实现

```dart
FantButton(
    text: "朴素按钮",
    plain: true,
    hairline: true,
    click: () {}
)
```

### 加载状态

通过`loading`属性设置按钮为加载状态，加载状态下默认会隐藏按钮文字，可以通过`loadingText`设置加载状态下的文字

```dart
FantButton(
    text: "加载状态",
    loading: true,
    loadingText: "加载中...",
    click: () {}
)
```

### 按钮尺寸

支持`large`、`normal`、`small`、`mini`四种尺寸，默认为`normal`

```dart
FantButton(
    text: "大号按钮",
    size: FantButtonSize.large,
    type: FantButtonTypes.primary,
    click: () {},
)
FantButton(
    text: "小号按钮",
    size: FantButtonSize.small,
    type: FantButtonTypes.primary,
    click: () {},
) 
FantButton(
    text: "迷你按钮",
    size: FantButtonSize.mini,
    type: FantButtonTypes.primary,
    click: () {},
) 
```

### 自定义颜色

通过`color`属性可以自定义按钮的颜色
```dart
FantButton(
    text: "单色按钮",
    color: Color(0xff7232dd),
    type: FantButtonTypes.primary,
    click: () {},
),
```

## API

### Props

| 参数 | 说明 | 类型 | 默认值 | 版本 |
|------|------|------|------|------|
| type | 类型，可选值为 `primary` `info` `warning` `danger` | *FantButtonTypes* | `default` | - |
| size | 尺寸，可选值为 `large` `small` `mini` | *FantButtonSize* | `normal` | - |
| text | 按钮文字 | *string* | - | - |
| color | 按钮颜色 | *Color* | - | - |
| block | 是否为块级元素 | *bool* | `false` | - |
| plain | 是否为朴素按钮 | *bool* | `false` | - |
| square | 是否为方形按钮 | *bool* | `false` | - |
| round | 是否为圆形按钮 | *bool* | `false` | - |
| disabled | 是否禁用按钮 | *bool* | `false` | - |
| hairline | 是否使用 1px 边框 | *bool* | `false` | - |
| loading | 是否显示为加载状态 | *bool* | `false` | - |
| loadingText | 加载状态提示文字 | *string* | - | - |

### Events

| 事件名 | 说明 | 回调参数 |
|------|------|------|
| click | 点击按钮，且按钮状态不为加载或禁用时触发 | event: Event |