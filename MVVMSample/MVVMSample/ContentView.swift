//
//  ContentView.swift
//  MVVMSample
//
//  Created by k4keye on 2022/03/08.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = WeatherViewModel()
    
    var body: some View {
        NavigationView{
            VStack{
                Text(viewModel.title)
                    .font(.system(size: 32))
                Text(viewModel.descriptionText)
                    .font(.system(size: 44))
                Text(viewModel.temp)
                    .font(.system(size: 22))
                Text(viewModel.timezone)
                    .font(.system(size: 22))
            }
            .navigationTitle("MVVM App")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
