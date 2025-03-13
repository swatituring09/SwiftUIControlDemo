import Foundation
import SwiftUI

struct AnimatedButtonView: View {
    @State private var isToggled = false

    var body: some View {
        Button(action: {
            withAnimation(.easeInOut(duration: 0.3)) {
                isToggled.toggle()
            }
        }) {
            Text(isToggled ? "Tapped!" : "Tap Me")
                .font(.title)
                .padding()
                .frame(width: 200, height: 60)
                .background(isToggled ? Color.purple : Color.pink)
                .foregroundColor(.white)
                .cornerRadius(12)
                .shadow(radius: 5)
        }
    }
}

struct AnimatedButtonView_Previews: PreviewProvider {
    static var previews: some View {
        AnimatedButtonView()
    }
}
