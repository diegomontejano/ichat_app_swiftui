import SwiftUI

struct CircleImage: View {
        // properties
        @State var image: String
        @State var size: CGFloat = 60
        @State var iconMode: Bool = false
        
        var body: some View {
            if iconMode == false { // iconMode property
             Image(image == "" ? "default-profile-photo" : image) // image property
                    .resizable()
                    .scaledToFill()
                    .frame(width: size, height: size) // size property
                    .clipShape(Circle())
            }else {
              Image(systemName: image) // image property
                    .font(.system(size: 30))
                    .frame(width: size, height: size) // size property
                    .background(Color.white)
                    .foregroundColor(Color.primaryColor1)
                    .clipShape(Circle())
                    .shadow(color: .grayColor3!, radius: 5)
        }
    }
}
    
struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: "")
            .previewDevice("iPhone 12")
    }
}
