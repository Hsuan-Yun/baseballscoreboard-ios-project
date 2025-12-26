//
//  BackgroundView.swift
//  Baseball Record
//
//  Created by 遠上寒山 on 2024/5/2.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [ColorConstants.backgroundTopLight, ColorConstants.backgroundBottomLight]),
                       startPoint: .top,
                       endPoint: .bottom)
        .edgesIgnoringSafeArea(.top)
    }
}

#Preview {
    BackgroundView()
}
