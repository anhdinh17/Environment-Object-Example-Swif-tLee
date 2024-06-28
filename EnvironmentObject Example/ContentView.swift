//
//  ContentView.swift
//  EnvironmentObject Example
//
//  Created by Anh Dinh on 4/22/24.
//

import SwiftUI
/**-----NOTE-----*/
// We start injecting to ContentView => all of its child can access to 'Theme'
// Views that don't need to access to it don't have to declare @EnvironmentObject.
// Only ViewC in this case needs to delcare @EnvironmentObject since it wants to access to 'Theme'
// This also works if we inject at ViewB instead of Root View

struct ContentView: View {
    var body: some View {
        VStack {
            ViewB()
        }
        .padding()
    }
}

struct ViewB: View {
    var body: some View {
        
        HStack {
            Circle()
                .frame(width: 75, height: 75)
            
            ViewC()
        }
        .border(.red, width: 1)
        
    }
}

struct ViewC: View {
    @EnvironmentObject var theme: Theme
    
    var body: some View {
        VStack {
            VStack {
                RoundedRectangle(cornerRadius: 3)
                    .foregroundStyle(theme.primaryColor)
                    .frame(width: 200, height: 50)
                
                Text("Some one")
            }
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(Theme())
}
