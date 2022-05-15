import SwiftUI

struct CustomMessagesBar: View {
    // properties
    @State var title: String
    @State var image: String

    var body: some View {
        VStack{
            Spacer()
            HStack(){
                CircleImage(image: image, size: 50) // image property
                Text(title) // title property
                    .font(.system(size: 24))
                    .fontWeight(.medium)
                    .foregroundColor(.grayColor6)
                Spacer()
            }
            .padding(EdgeInsets(top: 0, leading: 50, bottom: 10, trailing: 20))
        }
        .frame(height: 100)
        .background(Color.white)
    }
}

struct CustomMessagesBar_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.gray
                .ignoresSafeArea()
            CustomMessagesBar(title: "Title", image: "")
                .previewDevice("iPhone 12")
        }
        .previewInterfaceOrientation(.portrait)
    }
}
