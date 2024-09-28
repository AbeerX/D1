
import SwiftUI
struct ContentView: View {
    
    
    //Toggle
    @State private var T = true
    
    //Stepper
    @State private var V = 0
    
    
    var body: some View {
        VStack {
            Text("Water tracker 💦")
            
                .padding(.bottom, 30)
            
            VStack {
                
                
                Toggle("Apple health",
                       //here $ mean the the value is virable
                       isOn: $T)
                .toggleStyle(SwitchToggleStyle())
                .padding()
                
                Stepper("Cups to drink per day \(V)" ,
                        //here $ mean the the value is virable
                        value: $V,
                        //Range
                        in: 0...10,
                        //step mean +1 every step
                        step: 1
                )
                .padding()
            }
            .padding(.bottom, 30)
            Button("Continue") {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            }
        }
        .padding()
        
    }}
    
//print steatment
#Preview {
    ContentView()
}
