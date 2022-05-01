import SwiftUI

struct CustomAppBar: View {
    // property
    @State var title: String
    
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                Text(title) // title property
                    .font(.system(size: 28))
                    .fontWeight(.medium)
                    .foregroundColor(.grayColor6)
                Spacer()
            }
            .padding(.bottom, 10)
        }
        .frame(height: 100)
        .background(Color.white)
    }
}

struct CustomAppBar_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.gray
                .ignoresSafeArea()
            CustomAppBar(title: "Title")
                .previewDevice("iPhone 12")
        }
    }
}
