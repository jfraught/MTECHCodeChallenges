//  🏔️ MTECH Code Challenge ST14: "SF Symbol Lookup"
//  Concept: Practice modifying SF Symbol images' properties to see the range of options they have for improving your app's visual design.

//  Instructions:
    //  You have an app which displays a variety of SF Symbol icons. Already in place is a picker which chooses which symbol to display.
    //  Add an interface that allows you to change the following properties of SF Symbols:
        //  Scale
        //  Weight (Bold/Not bold)
        //  Rendering mode (Multicolor, Monochromatic, Heirarchical, Palette)
        //  Color/Palette (primary, secondary, and tertiary options)
            //  You can implement this however you like. Some ideas would be: - A ColorPicker, a Picker with hardcoded options, a Switch with 2 color options, etc.
        //  Variable coloring percentage
            //  Notice the variableValue parameter of the Image initalizer below and how it makes half the bars of the rainbow slightly transparent

    //  To see examples of how these options work, download and play with the SF Symbols app: 🔗https://devimages-cdn.apple.com/design/resources/download/SF-Symbols-5.1.dmg

//  ⌺ Black Diamond Challenge:
    //  Add all symbols from the SF Symbols app to your app (you can copy all symbol names by selecting all of them from the "All" category, right click, and copy names)
    //  Replace the Picker to better accommodate the new large list--what would be a better interface to sort through so many choices?
    //  Add an interface that uses the .symbolVariant(_: SymbolVariants) modifier to allow you to switch between available symbol variants

import SwiftUI
import PlaygroundSupport

struct ContentView: View {
    let symbolChoices = ["cloud.rainbow.half.fill", "apple.terminal.on.rectangle.fill", "badge.plus.radiowaves.right", "sun.rain.fill"]
    let scaleChoices: [Image.Scale] = [.large, .medium, .small]
    let fontWeightChoices: [Font.Weight] = [.black, .bold, .light]
    @State private var selectedSymbol: String = "cloud.rainbow.half.fill"
    @State private var selectedScale: Image.Scale = .small
    @State private var selectedFontWeight: Font.Weight = .bold
    @State private var selectedPallete: HierarchicalShapeStyle = .primary
    @State private var colorPercentgae: Double = 0.5
    @State private var symbolVariant: SymbolVariants = .none
    
    var body: some View {
        VStack {
            Picker("Select a Symbol", selection: $selectedSymbol) {
                ForEach(symbolChoices, id: \.self) { symbol in
                    Text(symbol).tag(symbol)
                }
            }
            .pickerStyle(WheelPickerStyle()) // Change this to your preferred style
            .padding()
            
            Picker("Select a scale", selection: $selectedScale) {
                ForEach(scaleChoices, id: \.self) { scale in
                    Text(String(describing: scale))
                }
            }
            .pickerStyle(.segmented) // Change this to your preferred style
            .padding()
            
            Picker("Select a font weight", selection: $selectedFontWeight) {
                ForEach(fontWeightChoices, id: \.self) { fontWeight in
                    Text(String(describing: fontWeight))
                }
            }
            .pickerStyle(.segmented) // Change this to your preferred style
            .padding()
            
            
            Image(systemName: selectedSymbol, variableValue: colorPercentgae)
                .symbolVariant(symbolVariant)
                .imageScale(selectedScale)
                .fontWeight(selectedFontWeight)
                .foregroundStyle(selectedPallete)
                .scaledToFit()
                .frame(width: 100, height: 100)
                .padding()
        }
    }
}

PlaygroundPage.current.setLiveView(ContentView())

