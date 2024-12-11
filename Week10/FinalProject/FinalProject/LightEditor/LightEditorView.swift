import SwiftUI

struct LightEditorView: View {
    @State private var speed: String = "2x"
    @State private var pattern: String = "Bouncy"
    @State private var selectedColor: Color = .white

    var body: some View {
        ZStack {
            Color(red: 14/255, green: 17/255, blue: 38/255)
                .ignoresSafeArea()
            VStack(spacing: 0) {
                
                Text("Light Editor")
                    .font(.custom("K2D", size: 24))
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 0.96, green: 0.96, blue: 0.96))
                    .kerning(0.72)
                    .padding(.top, 80)
                
                Divider()
                    .background(Color(red: 0.10, green: 0.19, blue: 0.41, opacity: 0.96))
                    .padding(.top, 28)
                
                HStack(spacing:11) {
                    ControlView(title: "Brightness", value: speed, imageName: "lightbulb")
                    ControlView(title: "Brightness", value: speed, imageName: "lightbulb")
                }
                .padding(.top, 20)
                HStack(spacing: 11) {
                    ControlView(title: "Speed", value: speed, imageName: "speedometer")
                    ControlView(title: "Pattern", value: pattern, imageName: "waveform.path.ecg")
                    
                }
                .padding(.top, 20)
                .padding(.horizontal, 20)
                
                Divider()
                    .background(Color(red: 0.10, green: 0.19, blue: 0.41, opacity: 0.96))
                    .padding(.top, 22)
                
                ColorPickerView(selectedColor: $selectedColor)
                
                HStack(spacing: 14) {
                    ForEach([Color.white, Color.yellow, Color.red, Color.green, Color.blue], id: \.self) { color in
                        ColorCircleView(color: color, isSelected: color == selectedColor)
                            .onTapGesture {
                                selectedColor = color
                            }
                    }
                }
                .padding(.top, 28)
                
                    .padding(.top, 16)
            }
            .padding(.horizontal)
        }
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
        LightEditorView()
}
