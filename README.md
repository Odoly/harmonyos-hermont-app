
### Harmony App

#### Scroll
```
1.Scroll中默认是Alignment是Center,一些情况下需要手动设置成.align(Alignment.Top)
2.height在只有一个Scroll组件里(同级没有其他元素)最好设置成height('100%')
3.Scroll中必须只能有：一！个！元！素！
```

#### Tabs
```
1.TabContent(){}放置你需要的展示的页面即可
2.TabContent(){}.background()设置的是你页面的背景色
3.Tabs是设置整体背景色,如果第二点不设置背景色,则会展示这里设置的背景色
4.一定要指定barPosition,App中大多数是使用barPosition:BarPosition.End
5.一定要.scrollable(false),不然可能会产生和华为手机的手势冲突的情况
6.这里设置的margin会作用在全部的tabs的页面里
```

#### Flex
```
1.无法使用我们常用的alignItems和justifyContent
```

#### Column和Row
```
1.有些时候需要在外面再套一个布局才能让margin生效
2.space: 横向布局元素间距
```
