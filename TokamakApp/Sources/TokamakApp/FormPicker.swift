import TokamakShim
import Foundation

struct FormPicker: View {
    @State private var timesButtonClicked = 0
    @State private var selectedDate = Date()
    @State private var name = ""
    @State private var numberOfItems = 0

    @Environment(\.colorScheme) var colorScheme

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .center) {
                    Text("You Clicked the Button: \(timesButtonClicked) time(s)")

                    Button("Click Me!") {
                        timesButtonClicked += 1
                    }
                    .navigationTitle("Hello!")

                    Text("Current Color Scheme: \(colorScheme == .light ? "Light" : "Dark")")

                    DatePicker("Start Date", selection: $selectedDate, displayedComponents: [.date])
                }

                TextField("Enter Your Name", text: $name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())

                Text("Your Name is: \(name)")

                Link("View Our Terms of Service", destination: URL(string: "https://www.example.com/TOS.html")!)
                    .foregroundColor(Color.blue)

                // buttonOverflowView
            }
        }
    }
}