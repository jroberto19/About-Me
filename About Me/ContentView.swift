import SwiftUI

struct ContentView: View {
    @State private var showDetails = false
    
    var body: some View {
        ZStack {
            
            VStack {
                Text("Julia Roberto")
                    .font(.largeTitle)
                    .foregroundColor(.pink)
                
                Image("aboutMe")
                    .resizable()
                    .frame(width: 350, height: 400)
                    .border(Color.pink, width: 10)
                
                VStack {
                    Text("Do you want to learn more about me?")
                        .font(.headline)
                        .foregroundColor(.blue)
                        .padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.blue, lineWidth: 2)
                        )
                    
                    Button("Yes, please!") {
                        self.showDetails = true
                    }
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding()
                }
            }
        }
        .sheet(isPresented: $showDetails) {
            VStack {
                Text("About Me")
                    .font(.title)
                    .padding()
                
                VStack {
                    HStack {
                        Image("sokkaAndMikasa")
                            .resizable(resizingMode: .stretch)
                            
                            .padding()
                        
                        Text("I love my cats, Sokka and Mikasa")
                            .font(.headline)
                            .padding()
                    }
                    .padding()
                    .background(Color.yellow)
                    .cornerRadius(10)
                    
                    HStack {
                        Image("fangirlFantasy")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding()
                        
                        Text("I love concerts, music festivals, and fangirl nights")
                            .font(.headline)
                            .padding()
                    }
                    .padding()
                    .background(Color.yellow)
                    .cornerRadius(10)
                    
                    HStack {
                        Image("nonna")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding()
                        
                        Text("My Nonna is my best friend")
                            .font(.headline)
                            
                    }
                    .padding()
                    .background(Color.yellow)
                    .cornerRadius(10)
                    
                    HStack {
                        Image("nature")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding()
                        
                        Text("I love being in nature")
                            .font(.headline)
                            .padding()
                    }
                    .padding()
                    .background(Color.yellow)
                    .cornerRadius(10)
                }
                
                Button("Go Back") {
                    self.showDetails = false
                }
                .padding()
                .background(Color.yellow)
                .cornerRadius(10)
                .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
