//
//  Home.swift
//  TwiterUI
//
//  Created by Juan jose Morales on 28/10/22.
//

import SwiftUI

extension Color {

    static var twiterBlue: Color = Color(red: 29/255, green: 161/255, blue: 241/255)

    

}
private let tweets: [Tweet] = [

    

    Tweet(autorName: "Martin", authorUserName: "martinss007", timeStampText: "4h", text: "Viva cr7", numberOfReplies: 589, numberOfRetweets: 99, numberOfLikes: 12),

    Tweet(autorName: "Mario", authorUserName: "Mrmario_bros", timeStampText: "7h", text: "Estoy enamorado", numberOfReplies: 59, numberOfRetweets: 99, numberOfLikes: 12),

    Tweet(autorName: "Pedro", authorUserName: "martinspedro89007", timeStampText: "9h", text: "Viva messi", numberOfReplies: 589, numberOfRetweets: 99, numberOfLikes: 122),

    Tweet(autorName: "Jaime", authorUserName: "jaime004", timeStampText: "10h", text: "Viva cr7", numberOfReplies: 589, numberOfRetweets: 99, numberOfLikes: 120),

    Tweet(autorName: "Anthon", authorUserName: "anthon_34", timeStampText: "11h", text: " el fornite es el mejor juego", numberOfReplies: 589, numberOfRetweets: 99, numberOfLikes: 12),

    Tweet(autorName: "Stiven", authorUserName: "stiven67", timeStampText: "11h", text: "hoy se bebe , hoy se gasta", numberOfReplies: 589, numberOfRetweets: 99, numberOfLikes: 12),

    Tweet(autorName: "Jorge", authorUserName: "jorge56", timeStampText: "12h", text: "hoy se fuma como un rasta", numberOfReplies: 589, numberOfRetweets: 99, numberOfLikes: 12),

    Tweet(autorName: "Benito", authorUserName: "bad_bunny", timeStampText: "13h", text: "si dios lo permite", numberOfReplies: 589, numberOfRetweets: 99, numberOfLikes: 12),

    Tweet(autorName: "Sara", authorUserName: "Sara_bl", timeStampText: "14h", text: "si dios lo permite", numberOfReplies: 589, numberOfRetweets: 99, numberOfLikes: 12),

    Tweet(autorName: "Nacho", authorUserName: "nacho_vidal", timeStampText: "14h", text: "aqui llego tu tiburon", numberOfReplies: 589, numberOfRetweets: 99, numberOfLikes: 12),

    Tweet(autorName: "Juan", authorUserName: "juan_nu", timeStampText: "14h", text: "yo quiero fumar y prender un blunt", numberOfReplies: 589, numberOfRetweets: 99, numberOfLikes: 12)

    

    ]

struct TweetView: View {

    

    let tweet: Tweet

    

    var body: some View{

        

        HStack(alignment: .top){

            

            Image(systemName: "person.crop.circle.fil")

                .font(.system(size: 55))

                .padding(.top)

                .padding(.trailing , 5)

                foregroundColor(.twiterBlue)

            

            VStack(alignment: .leading  ){

                

                HStack{

                    

                    Text(tweet.autorName)

                        .bold()

                        .lineLimit(1)

                    Text("@\(tweet.authorUserName) \(tweet.timeStampText)")

                        .lineLimit(1)

                        .truncationMode(.middle)

                        .foregroundColor(.gray)

                }

                .padding(.top, 5)

                Text(tweet.text)

                    .lineLimit(nil)

                    .multilineTextAlignment(.leading)

                

                TweetActionsView(tweet: tweet)

                foregroundColor(.gray)

                    .padding([.bottom, .top],10)

                    .padding(.trailing, 30)

                

            }

                

                

            }

        }

        

    }

    

    





struct TweetActionsView: View {

    

    let tweet: Tweet

    

    var body: some View{

        HStack {

            

            Button(action: {}){

                

                Image(systemName: "message")

                

            }

            Text(tweet.numberOfLikes > 0 ? "\(tweet.numberOfReplies)" : "" )

            

            Spacer()

            

            

            Button(action: {}){

                

                Image(systemName: "arrow.2.squarepath")

                

            }

            Text(tweet.numberOfRetweets > 0 ? "\(tweet.numberOfRetweets)": "")

            

            

            Spacer()

            

            

            Button(action: {}){

                

                Image(systemName: "heart")

                

            }

            Text(tweet.numberOfLikes > 0 ? "\(tweet.numberOfLikes)": "")

            

            

            Spacer()

            

            Button(action: {}){

                

                Image(systemName: "square.and.arrow.up")

                

            }

        }

        

    }

}
struct Home: View {
    @Binding var showMenu: Bool
    
    var body: some View {
        
        VStack{
            
            VStack(spacing: 0){
                HStack{
                    
                    
                    Button {
                        withAnimation{showMenu.toggle()}
                    } label: {
                        
                        Image("pic")
                            .resizable()
                            .aspectRatio( contentMode: .fill)
                            .frame(width: 35, height: 35 )
                            .clipShape(Circle())
                
                    }
                    
                    Spacer()
                    
                    NavigationLink{
                        
                        Text("TimeLine View")
                            .navigationTitle("Timeline")
                    } label: {
                        Image("Sparkles")
                            .resizable()
                            .renderingMode(.template)
                            .aspectRatio( contentMode: .fit)
                            .frame(width: 22, height: 22)
                            .foregroundColor(.primary)
                    }
                    
                    
                  
                }
                .padding(.horizontal)
                .padding(.vertical,10)
                
                .overlay(
                Image("Logo")
                    .resizable()
                    .aspectRatio( contentMode: .fit)
                    .frame(width: 25, height: 25 )
                )
                
                Divider()
                
            }
            Spacer()
        }
    }
        
        struct Home_Previews: PreviewProvider {
            static var previews: some View {
                ContentView()
            }
        }
    }

