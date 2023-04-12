//
//  ContentView.swift
//  testSwiftUI
//
//  Created by Piotr Kowalski on 08/04/2023.
//

import SwiftUI

struct ContentView: View {
    let dishes = Dish.all()
    
    var body: some View {
        
        NavigationView {
            
            
            List(self.dishes, id: \.name) { dish in
                //                NavigationLink(destination: DishDetails(dish: dish)){
                DishCell(dish: dish)
                //                }
            }
            
            .navigationBarTitle("Dishes")
        }
        
        //        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct DishCell: View {
    let dish: Dish
    
    func priceColor(price: Double) -> Color {
        return price >= 15 ?  Color.green : Color.red
    }
    
    var body: some View {
        
        HStack{
            NavigationLink(destination: kowal()){
                Image(dish.imageUrl)
                    .resizable()
                    .frame(width: 100, height: 100)
                    .cornerRadius(16)
            }
        }
            
            NavigationLink(destination: DishDetails(dish: dish)){            VStack{
                
                Text(dish.name).foregroundColor(dish.price >= 15 ? Color.green : Color.red)
                    .font(.title2)
                
                Text(String(format: "%.2f", dish.price))
                    .foregroundColor(priceColor(price: dish.price))
                    .font(.title2)
            }
            }
            
        }
    }


