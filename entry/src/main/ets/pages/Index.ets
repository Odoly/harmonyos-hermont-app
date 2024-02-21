// @ts-nocheck
import { Home } from './Home'
@Entry
@Component
struct Index {
  public tabsController : object = new TabsController()
  @State currentIndex:number = 0

  @Builder TabBuilder(title: string, targetIndex: number,selectedImg: Resource,normalImg: Resource) {
    Column() {
      Image(this.currentIndex === targetIndex ? selectedImg : normalImg)
        .size({ width: 25, height: 25 })
      Text(title)
        .fontColor(this.currentIndex === targetIndex ? '#F39800' : '#CECECE')
        .margin({top: 8})
    }
    .onClick(() => {
      this.currentIndex = targetIndex;
      this.tabsController.changeIndex(this.currentIndex);
    })
    .justifyContent(FlexAlign.Center)
  }

  build() {
    Tabs({barPosition:BarPosition.End}) {
      TabContent() {
        Home();
      }.tabBar(this.TabBuilder("Home", 0, "/image/select_home.png", "/image/unselect_home.png"))
      TabContent() {
        Text('123123'){

        }
      }.tabBar(this.TabBuilder("Order", 1, "/image/select_order.png", "/image/unselect_order.png"))
      TabContent() {
      }.tabBar(this.TabBuilder("Message", 2, "/image/select_message.png", "/image/unselect_message.png"))
      TabContent() {

      }.tabBar(this.TabBuilder("Me", 3, "/image/select_me.png", "/image/unselect_me.png"))
    }.barHeight(100).margin({bottom: 20})
    .onChange((index:number) => {
      this.currentIndex = index
    })
  }
}