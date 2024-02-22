@Entry
@Component
export struct Home {
  @State message: string = 'Hello World'
  scroller: Scroller = new Scroller()
  private arr: number[] = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

  private imageArr = [
    '/image/swiper_image.png',
    '/image/swiper_image.png',
    '/image/swiper_image.png',
    '/image/swiper_image.png',
  ];

  private serviceType = [
    {
      image: '/image/car_wash.png',
      name: 'Wash car',
      color: '#249FDA'
    },
    {
      image: '/image/tire_change.png',
      name: 'TireChange',
      color: '#F59F40'
    },
    {
      image: '/image/sos1.png',
      name: 'SOS',
      color: '#EC3125'
    },
  ]

  build() {
    //Scroll只允许一个子组件
    Flex({ direction: FlexDirection.Column }) {
      Column() {
        Image('/image/home_top.png').width('40%')
      }.width('100%').alignItems(HorizontalAlign.Center).margin({top: 25})
      Scroll(this.scroller) {
        Flex({ direction: FlexDirection.Column }) {
          Swiper() {
            ForEach(this.imageArr, (item: string) => {
              Image(item).width('100%')
            })
          }
          .autoPlay(true)
          .index(0)
          .onClick(() => {
            console.info('123');
          })
          .indicatorStyle({
            size: 20,
            color: '#CECECE',
            bottom: -15,
            selectedColor: '#F39800',
          })
          .margin({
            top: 15,
          })

          Column() {
            Row() {
              Text('Please choose your service')
                .fontSize(16)
                .fontColor('#000000')
              Image('/image/arrow-right.svg').width(10).height(20).autoResize(true)
            }
            .width('100%')
            .justifyContent(FlexAlign.SpaceBetween)
          }
          .onClick(() => {
            console.log("123")
          })
          .margin({ top: 5 })
          .padding({ top: 15, bottom: 15, left: 15, right: 15 })
          .backgroundColor("#ffffff")
          .borderRadius(12)

          Text('Our Service')
            .fontColor("#595757")
            .fontSize(20)
            .margin({ top: 20, left: 3 })

          //space: 横向布局元素间距
          Row({ space: 15 }) {
            ForEach(this.serviceType, (item, index) => {
              Column() {
                Image(item.image).width(86).height(86)
                Text(item.name)
                  .fontSize(16)
                  .fontColor('#FFFFFF')
                  .margin({
                    top: 10
                  })
              }
              .onClick(() => {
                console.log(item.name)
              })
              .alignItems(HorizontalAlign.Center)
              .justifyContent(FlexAlign.Center)
              .width('30%')
              .height(150)
              .backgroundColor(item.color)
              .borderRadius(15)
            })
          }.margin({
            top: 15
          })
          .width('100%')
        }
      }
    }
  }
}