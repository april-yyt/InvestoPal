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
                    .font(.custom("applegothic", size: 38))
                    .foregroundColor(Color.white)
                    .padding(.horizontal, -6)
                //                        .fontWeight(.bold)
                Text("Pal").bold()
                    .font(.custom("applegothic", size: 38))
                    .foregroundColor(fontColor1)
                //                        .fontWeight(.bold)
            }.padding(.bottom, 5)
            Text("Your Loyal Investment Financial Analysis Tool 🫡")
                .font(.custom("applegothic", size: 14))
        }
    }
}
