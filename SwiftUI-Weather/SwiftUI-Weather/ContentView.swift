//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by EddieZhan on 2023/11/26.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    ZStack {
      LinearGradient(gradient: Gradient(colors: [.blue, Color("lightBlue")]),
                     startPoint: .topLeading,
                     endPoint: .bottomTrailing)
        .edgesIgnoringSafeArea(.all)
      VStack {
        Text("无锡，江苏")
          .font(.title).foregroundColor(.white)
          .padding()

        VStack(spacing: 10) {
          Image(systemName: "cloud.sun.fill")
            .renderingMode(.original)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 180, height: 180)

          Text("21℃")
            .font(.largeTitle)
            .foregroundColor(.white)
        }.padding(.bottom, 40)

        HStack(spacing: 20) {
          WeatherDayView(dayOfWeek: "周一", imageName: "cloud.sun.fill", temperature: 26)
          WeatherDayView(dayOfWeek: "周一", imageName: "cloud.sun.fill", temperature: 26)
          WeatherDayView(dayOfWeek: "周一", imageName: "cloud.sun.fill", temperature: 26)
          WeatherDayView(dayOfWeek: "周一", imageName: "cloud.sun.fill", temperature: 26)
          WeatherDayView(dayOfWeek: "周一", imageName: "cloud.sun.fill", temperature: 26)
        }
        Spacer()
      }
    }
  }
}

#Preview {
  ContentView()
}

struct WeatherDayView: View {
  var dayOfWeek: String
  var imageName: String
  var temperature: Int

  var body: some View {
    VStack(spacing: 8) {
      Text(dayOfWeek)
        .font(.title2).foregroundColor(.white)
      Image(systemName: imageName)
        .renderingMode(.original)
        .resizable()
        .aspectRatio(contentMode: .fit)
        .frame(width: 40, height: 40)
      Text("\(temperature)")
        .font(.title2)
        .foregroundColor(.white)
    }
  }
}
