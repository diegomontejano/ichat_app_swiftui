import SwiftUI

struct GradientBackground: View {
    // property
    @State var opacityMode: Bool = false
    
    var body: some View {
        LinearGradient(
            gradient: Gradient(
                colors: [
                    Color.primaryColor3!,
                    Color.primaryColor2!,
                    Color.primaryColor1!
                    ]),
                startPoint: .topTrailing,
                endPoint: .bottomLeading)
        .opacity(opacityMode ? 1 : 0.6) // opacityMode property
        .ignoresSafeArea()
    }
}

struct GradientBackground_Previews: PreviewProvider {
    static var previews: some View {
        GradientBackground()
            .previewDevice("iPhone 12")
    }
}
