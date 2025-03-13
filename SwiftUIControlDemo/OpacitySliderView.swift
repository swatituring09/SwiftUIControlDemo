import Foundation
import SwiftUI

struct OpacitySliderView: View {
    @State private var opacity: Double = 1.0   // Default opacity value

    var body: some View {
        VStack {
            Image(systemName: "photo")
                .resizable()
                .scaledToFit()
                .frame(width: 250, height: 250)
                .opacity(opacity)  // Apply opacity from slider value
            
            Text("Opacity: \(String(format: "%.2f", opacity))")  // Display opacity value
                .font(.headline)
                .padding()

            Slider(value: $opacity, in: 0...1, step: 0.01)
                .padding()
        }
        .padding()
    }
}

struct OpacitySliderView_Previews: PreviewProvider {
    static var previews: some View {
        OpacitySliderView()
    }
}
