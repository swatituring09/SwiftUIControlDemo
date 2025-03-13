import SwiftUI

struct DarkModeToggleView: View {
    @AppStorage("isDarkMode") private var isDarkMode = false
    
    var body: some View {
        VStack {
            Text("This is an example of Dark Mode")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(isDarkMode ? .white : .black)
                .padding()
                .padding()
            Toggle(isOn: $isDarkMode) {
                Text("Dark Mode")
                    .font(.headline)
                    .foregroundColor(isDarkMode ? .white : .black)
            }
            .padding()
            .toggleStyle(SwitchToggleStyle(tint: .blue))
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(isDarkMode ? Color.black : Color.white)
        .edgesIgnoringSafeArea(.all)
        .preferredColorScheme(isDarkMode ? .dark : .light)
    }
}

struct DarkModeToggleView_Previews: PreviewProvider {
    static var previews: some View {
        DarkModeToggleView()
    }
}
