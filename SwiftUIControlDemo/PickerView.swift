import SwiftUI

struct DifficultyPickerView: View {
    @State private var selectedDifficulty = "Easy"  // Default selection
    let difficultyLevels = ["Easy", "Medium", "Hard"]

    var body: some View {
        VStack(spacing: 20) {
            Text("Selected Difficulty")
                .font(.title)
                .bold()
            
            Picker("Select Difficulty", selection: $selectedDifficulty) {
                ForEach(difficultyLevels, id: \.self) { level in
                    Text(level)
                }
            }
            .pickerStyle(SegmentedPickerStyle())  // Makes it look modern
            .padding()
            Text("\(selectedDifficulty)")
                .font(.title2)
                .fontWeight(.bold)
        }
        .padding()
    }
}

struct DifficultyPickerView_Previews: PreviewProvider {
    static var previews: some View {
        DifficultyPickerView()
    }
}
