//
//  ContentView.swift
//  InvestoPal
//
//  Created by April Yang on 4/20/23.
//

import SwiftUI


struct ContentView: View {
   
    var body: some View {
        WelcomeScreenView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct PrimaryButton: View {
    var title: String
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.bold)
            .foregroundColor(.white)
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color("ButtonColor1"))
            .cornerRadius(50)
    }
}

struct SecondaryButton: View {
    var title: String
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.bold)
            .foregroundColor(.white)
            .frame(maxWidth: .infinity)
            .padding()
            .background(.black)
            .cornerRadius(10)
    }
}

struct Logo: View{
    var body: some View{
        VStack{
            HStack{
                Text("Investo")
                    .font(.custom("appleligothic", size: 38))
                    .foregroundColor(Color.white)
                    .padding(.horizontal, -6)
                //                        .fontWeight(.bold)
                Text("Pal").bold()
                    .font(.custom("appleligothic", size: 38))
                    .foregroundColor(fontColor1)
                //                        .fontWeight(.bold)
            }.padding(.bottom, 5)
            Text("Your Loyal Investment Financial Analysis Tool 🫡")
                .font(.custom("appleligothic", size: 14))
        }
    }
}

struct LogoLight: View{
    var body: some View{
        VStack{
            HStack{
                Text("Investo")
                    .font(.custom("appleligothic", size: 38))
                    .foregroundColor(Color.black)
                    .padding(.horizontal, -6)
                //                        .fontWeight(.bold)
                Text("Pal").bold()
                    .font(.custom("appleligothic", size: 38))
                    .foregroundColor(fontColor1)
                //                        .fontWeight(.bold)
            }.padding(.bottom, 5)
            Text("Your Loyal Investment Financial Analysis Tool 🫡")
                .font(.custom("appleligothic", size: 14))
        }
    }
}


struct SegmentedPicker: View {
    var options: [String]
    @Binding var selection: Int
    
    var body: some View {
        HStack {
            ForEach(0..<options.count) { index in
                Button(action: {
                    selection = index
                }) {
                    Text(options[index])
                        .font(.headline)
                        .foregroundColor(index == selection ? .white : .black)
                        .padding(.horizontal)
                        .padding(.vertical, 8)
                        .background(index == selection ? Color("PrimaryColor") : Color.gray.opacity(0.2))
                        .clipShape(Capsule())
                }
            }
        }
    }
}

struct SocalLoginButton: View {
    var image: Image
    var text: Text
    
    var body: some View {
        HStack {
            image
                .padding(.horizontal)
            Spacer()
            text
                .font(.title2)
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .cornerRadius(50.0)
        .shadow(color: Color.black.opacity(0.08), radius: 60, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 16)
    }
}
