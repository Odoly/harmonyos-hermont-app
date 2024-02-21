@Entry
@Component
export struct Home {
  @State message: string = 'Hello World'

  private imageArr = [
    '/image/swiper_image.png',
    '/image/swiper_image.png',
    '/image/swiper_image.png',
    '/image/swiper_image.png',
  ];

  build() {

    Flex({direction: FlexDirection.Column}){
      Column(){
        Image('/image/home_top.png').width('40%')
      }.width('100%').alignItems(HorizontalAlign.Center).margin({top: 25})
      Flex({direction: FlexDirection.Column, alignItems: ItemAlign.Center}){
        Swiper(){
          ForEach(this.imageArr, (item: string) => {
            Image(item).width('100%').margin({left:15, right: 15})
          })
        }.autoPlay(true).index(0).onClick(() => {
          console.info('123');
        }).indicatorStyle({
          size: 20,
          color: '#CECECE',
          bottom: -15,
          selectedColor: '#F39800',
        })
        Row(){

        }
      }.margin({top: 15})
    }
  }
}