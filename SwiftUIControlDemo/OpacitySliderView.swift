import SwiftUI

class OpacityViewModel: ObservableObject {
    @Published var opacity: Double = 1.0   // Default opacity value
}

struct OpacitySliderView: View {
    @StateObject private var viewModel = OpacityViewModel()

    var body: some View {
        VStack {
            Image(systemName: "photo")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .opacity(viewModel.opacity)  // Apply opacity from slider value

            Text("Opacity: \(String(format: "%.2f", viewModel.opacity))")  // Display opacity value
                .font(.headline)
                .padding()

            Slider(value: $viewModel.opacity, in: 0...1, step: 0.01)
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
