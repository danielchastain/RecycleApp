import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("EcoBot")
                    .font(.largeTitle)
                    .padding()
                
                NavigationLink(destination: MenuPage()) {
                    Text("Enter")
                        .font(.title)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
        }
    }
}

struct MenuPage: View {
    var body: some View {
        VStack {
            NavigationLink(destination: SendTrashPage()) {
                Text("Send Trash")
                    .font(.title)
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()

            NavigationLink(destination: ServicePage()) {
                Text("Service")
                    .font(.title)
                    .padding()
                    .background(Color.orange)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()
        }
    }
}

struct SendTrashPage: View {
    var body: some View {
        Text("Send Trash Page")
            .font(.title)
            .padding()
    }
}

struct ServicePage: View {
    var body: some View {
        Text("Service Page")
            .font(.title)
            .padding()
    }
}

struct SignUpPage: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        VStack {
            Text("Sign Up")
                .font(.largeTitle)
                .padding()

            TextField("Email", text: $email)
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(5)
                .padding(.horizontal)

            SecureField("Password", text: $password)
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(5)
                .padding(.horizontal)

            Button(action: {
                // Sign up action
            }) {
                Text("Sign Up")
                    .font(.title)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
