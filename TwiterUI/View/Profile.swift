//
//  Profile.swift
//  TwiterUI
//
//  Created by Juan jose Morales on 3/11/22.
//

import SwiftUI

//struct Profile: View {
//
//    @State var offset: CGFloat = 0
//    @State var currentTab = "Tweets"
//
//    @Namespace var animation
//
//
//    var body: some View {
//
//        ScrollView(.vertical , showsIndicators: false, content: {
//
//            VStack(spacing: 15){
//
//
//                GeometryReader{proxy -> AnyView in
//
//                    let minY = proxy.frame(in: .global).minY
//
//                    DispatchQueue.main.async{
//
//                        self.offset = minY
//
//                    }
//
//
//
//                    return AnyView(
//
//                        ZStack{
//                            Image("banner")
//                                .resizable()
//                                .aspectRatio(contentMode: .fill)
//                                .frame(width: getRect().width,height: minY > 0 ? 180 + minY: 180 ,alignment: .center)
//                                .cornerRadius(0)
//                                BlurView()
//                                .opacity(blurViewOpacity())
//
//
//
//                        }
//                            .frame(height: minY > 0 ? 180 + minY : nil)
//                            .offset(y: -minY > 0 ? -minY : minY < 80 ? 0 : -minY  - 80)
//                    )
//
//
//                }
//                .frame(height: 180)
//                .zIndex(1)
//                VStack{
//
//
//                    HStack{
//
//                        Image("person.crop.circle.fil")
//                            .resizable()
//                            .aspectRatio( contentMode: .fill)
//                            .frame(width: 75 ,height: 75)
//                            .clipShape(Circle())
//                            .offset(y: offset < 0 ? getOffset() - 20 : -20 )
//                            .scaleEffect(getScale())
//                        Spacer()
//
//                        Button(action: {}, label: {
//
//                            Text("Edit Profile")
//                                .foregroundColor(.blue)
//                                .padding(.vertical , 10)
//                                .background(
//
//                                Capsule()
//                                    .stroke(Color.blue,lineWidth: 1.5)
//                                )
//
//                        })
//                    }
//                    .padding(.top,-25)
//                    .padding(.bottom, -10)
//
//                    VStack(alignment: .leading,spacing: 8, content: {
//
//                        Text("@Juan")
//                            .font(.title2)
//                            .fontWeight(.bold)
//                            .foregroundColor(.gray)
//
//
//                        Text("Juan_ ")
//                            .foregroundColor(.gray)
//
//                        Text("Hola soy yo que pasa todo bien ?")
//
//                        HStack(spacing: 5){
//
//
//                            Text("13")
//                                .foregroundColor(.primary)
//                                .fontWeight(.semibold)
//
//                            Text("Followers")
//
//                                .foregroundColor(.gray)
//
//
//
//                            Text("680")
//                                .foregroundColor(.primary)
//                                .fontWeight(.semibold)
//                                .padding(.leading,10)
//
//
//                   	         Text("Following")
//                                .foregroundColor(.gray)
//
//                        }
//                        .padding(.top,8)
//                    })
//
//
//                    VStack(spacing: 0){
//
//                        ScrollView(.horizontal,showsIndicators: false, content: {
//
//                            HStack(spacing: 0)  {
//
//                                TabButton(title: "Tweets", CurrentTab: $currentTab, animation: animation)
//                                TabButton(title: "Tweets & likes ", CurrentTab: $currentTab, animation: animation)
//                                TabButton(title: "Media", CurrentTab: $currentTab, animation: animation)
//                                TabButton(title: "Likes", CurrentTab: $currentTab, animation: animation)
//
//                            }
//                        })
//
//                            Divider()
//                    }
//                    .padding(.top,30)
//                }
//
//                .padding(.horizontal)
//
//                .zIndex(-offset > 80 ? 0 : 1)
//
//
//
//            }
//
//
//        })
//
//        .ignoresSafeArea(.all , edges: .top)
//    }
//
//
//    func getOffset()->CGFloat{
//
//        let progress = (-offset / 80) * 20
//
//        return progress <= 20 ? progress: 20
//
//    }
//
//    func getScale()->CGFloat{
//
//
//        let progress = -offset / 80
//
//        let scale = 1.8 - (progress < 1.0 ? progress : 1)
//
//
//        return scale < 1 ? scale : 1
//
//    }
//
//    func blurViewOpacity()->Double{
//
//        let progress = -(offset + 80) / 150
//
//        return Double(-offset > 80 ? progress : 0)
//
//    }
//}
//
//struct Profile_Previews: PreviewProvider {
//    static var previews: some View {
//        Profile()
//    }
//}
//
//
//extension View{
//
//
//    func getRect2()-> CGRect{
//
//       return UIScreen.main.bounds
//
//
//    }
//
//}
//
//
//struct TabButton {
//
//
//    var title : String
//    @Binding var CurrentTab: String
//
//    var animation: Namespace.ID
//
//    var body : some View {
//
//        Button(action: {withAnimation{
//
//            CurrentTab = title
//
//        }},  label: {
//
//
//
//
//            LazyVStack(spacing: 12){
//
//                Text(title)
//                    .fontWeight(.semibold)
//                    .foregroundColor(CurrentTab == title ? .blue : .gray)
//                    .padding(.horizontal)
//
//                if CurrentTab == title {
//
//                    Capsule()
//                        .fill(Color.blue)
//                        .frame( height: 1.2)
//                        .matchedGeometryEffect(id: "TAB", in: animation)
//
//                }
//                else {
//
//                    Capsule()
//                        .fill(Color.clear)
//                        .frame(height: 1.2)
//
//                }
//
//                }
//
//
//        })
//    }
//
//}
//
