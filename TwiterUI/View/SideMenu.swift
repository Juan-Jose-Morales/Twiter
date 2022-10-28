//
//  SideMenu.swift
//  TwiterUI
//
//  Created by Juan jose Morales on 28/10/22.
//

import SwiftUI

struct SideMenu: View {
    
    @Binding var showMenu: Bool
    var body: some View {
        
        VStack(alignment: .leading,spacing: 0 ){
            
            VStack(alignment: .leading,spacing: 14 ){
                
                Image("pic")
                    .resizable()
                    .aspectRatio( contentMode: .fill)
                    .frame(width: 65, height: 65)
                    .clipShape(Circle())
                
                Text("Juan Jose Morales")
                    .font(.title2.bold())
                
                Text("@Juan_JoseMorales")
                    .font(.callout)
                
                HStack(spacing: 12){
                    
                    Button {
                        
                    }
                    label: {
                        Label{
                            Text("Followers")
                        } icon: {
                            Text("1.2M")
                                .fontWeight(.bold)
                        }
                        
                    }
                    Button {
                        
                    }
                    label: {
                        Label{
                            Text("Following")
                        } icon: {
                            Text("120")
                                .fontWeight(.bold)
                        }
                        
                    }
                }
            }
            .foregroundColor(.primary)
            .padding(.horizontal)
            .padding(.leading)
            
            ScrollView(.vertical, showsIndicators: false ){
                
                VStack(alignment: .leading, spacing: 45 ){
                    
                    TapButton(title: "Profile",image: "Profile")
                    
                    TapButton(title: "List",image: "List")
                    
                    TapButton(title: "Topics",image: "Topics")
                    
                    TapButton(title: "Bookmarks",image: "Booksmarks")
                    
                    TapButton(title: "Moments",image: "Moments")
                    
                    TapButton(title: "Purchases",image: "Purchases")
                    
                    TapButton(title: "Monetizacion",image: "Monetizacion")
                    
                }
                .padding()
                .padding(.leading)
                .padding(.top,35)
                
                Divider()
                
                TapButton(title: "Twiter ads", image: "Ads")
                
                    .padding()
                    .padding(.leading)
                
                Divider()
                
                VStack(alignment: .leading, spacing: 15){
                    
                    Button("Settings And Privacy"){
                        
                    }
                    Button("Help  Center"){
                        
                    }
                }
            }
        }
        .padding(.vertical)
        .frame(maxWidth: .infinity,alignment: .leading)
        .frame(width: getRect().width - 90)
        .frame(maxHeight: .infinity)
        .background(
        
            Color.primary.opacity(0.04)
                .ignoresSafeArea(.container,edges: .vertical)
        )
        .frame(maxWidth: .infinity, alignment: .leading)
    }
    
    @ViewBuilder
    func TapButton(title: String,image: String)->some View{
        
        
        Button{
            
        } label: {
            HStack(spacing: 13){
                Image(image)
                    .resizable()
                    .renderingMode(.template)
                    .aspectRatio( contentMode: .fill)
                    .frame(width: 22,height:22)
                                  
                     Text(title)
                                  
            }
            .foregroundColor(.primary)
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        
    }
}

struct SideMenu_Previews: PreviewProvider {
    static var previews: some View {
       ContentView()
    }
}

extension View{
    
    func getRect()-> CGRect{
        
        return UIScreen.main.bounds
    }
}
