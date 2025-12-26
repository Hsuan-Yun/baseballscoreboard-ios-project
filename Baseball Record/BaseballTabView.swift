//
//  BaseballToolView.swift
//  Baseball Record
//
//  Created by 遠上寒山 on 2024/5/2.
//

import SwiftUI

struct BaseballTabView: View {
    var body: some View {
        TabView{
            GamesInformationView()
                .tabItem {
                    Text("比賽資訊")
                    Image(systemName: "info.circle")
                }
                .padding(.bottom, 10)
            Text("")
                .tabItem {
                    Text("排行榜")
                    Image(systemName: "bookmark")
                }
            Text("")
                .tabItem {
                    Text("個人資料")
                    Image(systemName: "person")
                }
        }
    }
}

#Preview {
    BaseballTabView()
}
