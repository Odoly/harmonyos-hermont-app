// @ts-nocheck
import { Home } from './Home'
@Entry
@Component
struct Index {
  @State fontColor: string = '#FFFFFF99'
  @State selectedFontColor: string = '#F39800'
  @State currentIndex: number = 0
  private controller: TabsController = new TabsController()

  @Builder TabBuilder(title: string, index: number, selectedImg: Resource,normalImg: Resource) {
    Column() {
      Image(this.currentIndex === index ? selectedImg : normalImg)
        .width(25)
        .height(25)
        .margin({ bottom: 8 })
        .objectFit(ImageFit.Contain)
      Text(title)
        .fontColor(this.currentIndex === index ? this.selectedFontColor : this.fontColor)
        .fontSize(10)
        .fontWeight(500)
        .lineHeight(14)
    }.width('100%')
    .height(50)
    .justifyContent(FlexAlign.Center)
  }

  build() {
    Stack() {
      Tabs({ barPosition:BarPosition.End, controller: this.controller}) {
        TabContent() {
          Home()
        }.tabBar(this.TabBuilder("Home", 0, "/image/select_home.png", "/image/unselect_home.png"))
        .backgroundColor("#F6F6F5")

        TabContent() {
          Column() {
            Text('Tab2')
              .fontSize(36)
              .fontColor('#182431')
              .fontWeight(500)
              .opacity(0.4)
            Divider()
              .strokeWidth(0.5)
              .color('#182431')
              .opacity(0.05)
          }.width('100%')
        }.tabBar(this.TabBuilder("Order", 1, "/image/select_order.png", "/image/unselect_order.png"))
        .backgroundColor("#ffffff")

        TabContent() {
          Column() {
            Text('Tab3')
              .fontSize(36)
              .fontColor('#182431')
              .fontWeight(500)
              .opacity(0.4)
            Divider()
              .strokeWidth(0.5)
              .color('#182431')
              .opacity(0.05)
          }.width('100%')
        }.tabBar(this.TabBuilder("Message", 2, "/image/select_message.png", "/image/unselect_message.png"))
        .backgroundColor("#ffffff")
        // 如果在这里再写样式，就是控制的每一个Tab对应的页面的整体样式，比如这里设置了background: '#000000',tab栏不会被设置为黑色，而是切换到这个tab时这个页面的背景变成了黑色

        TabContent() {
          Column() {
            Text('Tab4')
              .fontSize(36)
              .fontColor('#182431')
              .fontWeight(500)
              .opacity(0.4)
            Divider()
              .strokeWidth(0.5)
              .color('#182431')
              .opacity(0.05)
          }.width('100%')
        }.tabBar(this.TabBuilder("Me", 3, "/image/select_me.png", "/image/unselect_me.png"))
        .backgroundColor("#ffffff")
      }
      .vertical(false)
      .barHeight(80)
      .barMode(BarMode.Fixed)
      .barWidth('100%')
      .backgroundColor('#160E31')
      .onChange((index: number) => {
        this.currentIndex = index
      })
      .scrollable(false)
      .borderRadius(15)
    }
    .padding({
      left: 15,
      right: 15,
      bottom: 15,
    })
    .width('100%')
    .height('100%')
    .backgroundColor("#F6F6F5")
  }
}