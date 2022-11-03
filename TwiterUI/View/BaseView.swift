//
//  BaseView.swift
//  TwiterUI
//
//  Created by Juan jose Morales on 28/10/22.
//

import SwiftUI



struct BaseView: View {
    
    
    @State var showMenu: Bool = false
    
    init(){
        
        UITabBar.appearance().isHidden = true
    }
    @State var currentTab = "Home"
    
    @State var offSet: CGFloat = 0
    @State var lastStoredOffset: CGFloat = 0
    @GestureState var gestureOffset: CGFloat = 0
    var body: some View {
        
        
        let  sideBarWidth = getRect().width - 90
        NavigationView {
            
            HStack(spacing: 0) {
                
                
                SideMenu (showMenu: $showMenu)
                
                
                
                VStack(spacing: 0){
                    
                    TabView(selection: $currentTab){
                        
                        Home(showMenu: $showMenu)
                            .navigationBarTitleDisplayMode(.inline)
                            .navigationBarHidden(true)
                            .tag("Home")
                        
                        Text("Search")
                            .navigationBarTitleDisplayMode(.inline)
                            .navigationBarHidden(true)
                            .tag("Search")
                        
                        Text("Notifications")
                            .navigationBarTitleDisplayMode(.inline)
                            .navigationBarHidden(true)
                            .tag("Notifications")
                        
                        Text("Messages")
                            .navigationBarTitleDisplayMode(.inline)
                            .navigationBarHidden(true)
                            .tag("Messages")
                    }
                    
                    VStack(spacing: 0){
                        Divider()
                        
                        HStack(spacing: 0){
                            
                            TabButton(image: "Home")
                            TabButton(image: "Search")
                            TabButton(image: "Notifications")
                            TabButton(image: "Message")
                        }
                        .padding([.top],15)
                    }
                }
                .frame(width: getRect().width)
                .overlay(
                
                Rectangle()
                    .fill(
                        
                        Color.primary
                            .opacity(Double((offSet / sideBarWidth) / 5))
                            )
                    .ignoresSafeArea(.container, edges: .vertical)
                    .onTapGesture {
                        withAnimation{
                            showMenu.toggle()
                                }
                            }
                        
                )
                
            }
            
            .frame(width: getRect().width + sideBarWidth)
            .offset(x: -sideBarWidth / 2)
            .offset(x: offSet > 0 ? offSet : 0)
             
            .gesture(
            DragGesture()
                .updating($gestureOffset, body: { value,out, _ in
                    
                    out = value.translation.width
                })
                .onEnded(onEnd(value:))
            )
            
            .navigationBarTitleDisplayMode(.inline)
            
            .navigationBarHidden(true)
            
        }
        .animation(.easeOut, value: offSet == 0)
        .onChange(of: showMenu) { newValue in
        
            
            if showMenu && offSet == 0{
                
                offSet = sideBarWidth
                lastStoredOffset = offSet
            }
            
            if !showMenu && offSet == sideBarWidth{
                
                offSet = 0
                lastStoredOffset = 0
                
                    
            }
                
        }
        .onChange(of: gestureOffset) { newValue in onChange()
            
            
        }
    }
    

    
    func onChange(){
        
        let  sideBarWidth = getRect().width - 90
        
        offSet = (gestureOffset != 0) ? (gestureOffset + lastStoredOffset < sideBarWidth ? gestureOffset + lastStoredOffset: offSet) : offSet
    }
    
    func onEnd(value: DragGesture.Value){
        
        let  sideBarWidth = getRect().width - 90
        
        let translation = value.translation.width
        
        withAnimation{
            
            if translation > 0 {
                
                if translation > (sideBarWidth / 2){
                    
                    offSet = sideBarWidth
                    showMenu = true
                }
                else {
                    
                    if offSet == sideBarWidth{
                        
                        return
                    }
                    
                    offSet = 0
                    showMenu = false
                }
                
            } else {
                
                if -translation > (sideBarWidth / 2){
                    
                    offSet = 0
                    showMenu = false
                }
                else {
                    
                    if offSet == 0 || !showMenu {
                        return
                    }
                    offSet = sideBarWidth
                    showMenu = true
                }
                
            }
            
        }
        
        lastStoredOffset = offSet
        
    }
    
    @ViewBuilder
    func TabButton(image: String)->some View{
        
        Button {
            withAnimation{currentTab = image}
        } label: {
            Image(image)
                .resizable()
                .renderingMode(.template)
                .aspectRatio( contentMode: .fit)
                .frame(width: 23, height: 22)
                .foregroundColor(currentTab == image ? .primary : .gray)
                .frame(maxWidth: .infinity)
        }
        
    }
}

struct BaseView_Previews: PreviewProvider {
    static var previews: some View {
        BaseView()
    }
}
