//
//  DishDetails.swift
//  testSwiftUI
//
//  Created by Piotr Kowalski on 08/04/2023.
//

import SwiftUI

struct DishDetails: View {
    
    @State private var zoomed: Bool = false
    
    let dish: Dish
    
    var body: some View {
        
        VStack {
            Image(dish.imageUrl)
                .resizable()
                .aspectRatio(contentMode: self.zoomed ? .fill : .fit) // jesli true to fill w przeciwnym wypadku fit
                .onTapGesture {
                    withAnimation {
                        self.zoomed.toggle()
                    }
                }
                
            Text(dish.name)
                .foregroundColor(.red)
            Text(String(format: "%.2f", dish.price))
//                .background(.yellow)
  
        }
        .navigationBarTitle(Text(dish.name), displayMode: .inline)
        
        
    }
}

struct DishDetails_Previews: PreviewProvider {
    static var previews: some View {
        DishDetails(dish: Dish(name: "some dish", imageUrl: "pasta", price: 3.23))
    }
}
