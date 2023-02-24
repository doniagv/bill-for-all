//
//  ContentView.swift
//  Bill For All
//
//  Created by Javier Andoni González Vázquez on 24/02/23.
//

import SwiftUI

let mainColor = Color(red: 0.063, green: 0.165, blue: 0.263) // #102a43
//let acColor = Color(red: 0.667, green: 0, blue: 1) // #aa00ff
let acColor = Color(red: 0.773, green: 0.067, blue: 0.384) // #c51162



struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                mainColor.ignoresSafeArea()
                VStack {
                    Text("Bill For All")
                        .font(.largeTitle)
                        .bold()
                        .multilineTextAlignment(.leading)
                    
                    VStack {
                        Text("Restaurantes recientes")
                            .font(.title)
                            .multilineTextAlignment(.center)
                            .bold()
                            .multilineTextAlignment(.leading)
                            .padding(.vertical, 10)
                        HStack {
                            Button(action: {
                                print("Tapped on Choice 1")
                            }, label: {
                                Text("Tagers")
                                    .font(.body)
                                    .bold()
                                    .multilineTextAlignment(.center)
                                    .padding()
                                    .frame(maxWidth: .infinity)
                                    .background(Color(white: 1))
                                    .cornerRadius(5, antialiased: true)
                                    .padding(.vertical, 10)
                                    .foregroundColor(.black)
                            })
                            Button(action: {
                                print("Tapped on Choice 2")
                            }, label: {
                                Text("Parrillaje")
                                    .font(.body)
                                    .bold()
                                    .multilineTextAlignment(.center)
                                    .padding()
                                    .frame(maxWidth: .infinity)
                                    .background(Color(white: 1))
                                    .cornerRadius(5, antialiased: true)
                                    .padding(.vertical, 10)
                                    .foregroundColor(.black)
                            })
                        }
                        
                        Button(action: {
                            print("Tapped on Choice 3")
                        }, label: {
                            Text("Kampai")
                                .font(.body)
                                .bold()
                                .multilineTextAlignment(.center)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color(white: 1))
                                .cornerRadius(5, antialiased: true)
                                .foregroundColor(.black)
                        })
                        
                    }
                    .padding(.horizontal, 18)
                    .padding(.vertical, 40)
                    Text("¿Qué te gustaría hacer?")
                        .font(.title)
                        .multilineTextAlignment(.center)
                        .bold()
                        .multilineTextAlignment(.leading)
                        .padding(.vertical, 10)
                    
                    VStack {
                        NavigationLink(destination: DividirCuentaView()) {
                            Text("Dividir cuenta")
                                .font(.body)
                                .bold()
                                .multilineTextAlignment(.center)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(acColor)
                                .cornerRadius(5, antialiased: true)
                                .padding(.vertical, 10)
                        }
                        Button(action: {
                            print("Tapped on Choice 2")
                        }, label: {
                            Text("Ver cuentas pasadas")
                                .font(.body)
                                .bold()
                                .multilineTextAlignment(.center)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(acColor)
                                .cornerRadius(5, antialiased: true)
                                .padding(.vertical, 10)
                        })
                        Button(action: {
                            print("Tapped on Choice 3")
                        }, label: {
                            Text("Editar templates")
                                .font(.body)
                                .bold()
                                .multilineTextAlignment(.center)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(acColor)
                                .cornerRadius(5, antialiased: true)
                                .padding(.vertical, 10)
                        })
                        
                    }
                    
                    .padding(.horizontal, 18)
                    
                    
                }
                .foregroundColor(.white)
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
