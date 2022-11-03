//
//  BlurView.swift
//  TwiterUI
//
//  Created by Juan jose Morales on 3/11/22.
//

import SwiftUI

struct BlurView: UIViewRepresentable {
    
    
    func makeUIView(context: Context) ->  UIVisualEffectView {
        
        let view  = UIVisualEffectView(effect: UIBlurEffect(style: .systemMaterialDark))
        
        return view
        
    }
    
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        
    }
}



