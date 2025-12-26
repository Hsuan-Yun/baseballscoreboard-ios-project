//
//  Model.swift
//  Baseball Record
//
//  Created by 遠上寒山 on 2024/5/2.
//

import Foundation
import SwiftUI

struct ColorConstants {
    static let backgroundTopLight:Color = Color(red: 33/255, green: 146/255, blue: 255/255)
    static let backgroundBottomLight: Color = Color(red: 202/255, green: 237/255, blue: 255/255)
    static let backgroundTopDark: Color = Color(red: 56/255, green: 65/255, blue: 157/255)
    static let backgroundBottomDark: Color = Color(red: 120/255, green: 122/255, blue: 145/255)
}

extension View {
    func navigationBarColor(_ color: UIColor) -> some View {
        self.modifier(NavigationBarColorModifier(color: color))
    }
}

struct NavigationBarColorModifier: ViewModifier {
    var color: UIColor

    func body(content: Content) -> some View {
        content
            .onAppear {
                let coloredAppearance = UINavigationBarAppearance()
                coloredAppearance.configureWithOpaqueBackground()
                coloredAppearance.titleTextAttributes = [.foregroundColor: color]
                coloredAppearance.largeTitleTextAttributes = [.foregroundColor: color]

                UINavigationBar.appearance().standardAppearance = coloredAppearance
                UINavigationBar.appearance().compactAppearance = coloredAppearance
                UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance
            }
    }
}
