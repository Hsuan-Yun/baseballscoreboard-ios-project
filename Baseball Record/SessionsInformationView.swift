//
//  SessionsInformationView.swift
//  Baseball Record
//
//  Created by 遠上寒山 on 2024/5/3.
//

import SwiftUI

struct SessionsInformationView: View {
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        ZStack{
            BackgroundView()
            VStack{
                List{
                    Section(header: Text("場次資訊").foregroundColor(Color(.systemGray6))) {
                        HStack{
                            Text("日期")
                            Spacer()
                            Text("2023-05-25")
                                .foregroundColor(Color(.systemGray))
                        }
                        HStack{
                            Text("時間")
                            Spacer()
                            Text("9 : 00")
                                .foregroundColor(Color(.systemGray))
                        }
                        HStack{
                            Text("球場")
                            Spacer()
                            Text("三重棒球場")
                                .foregroundColor(Color(.systemGray))
                        }
                    }
                    .headerProminence(.increased)
                    Section(header: Text("場次資訊").foregroundColor(Color(.systemGray6))) {
                        HStack{
                            Text("主隊")
                            Spacer()
                            Text("台南市")
                                .foregroundColor(Color(.systemGray))
                        }
                        HStack{
                            Text("客隊")
                            Spacer()
                            Text("新竹市")
                                .foregroundColor(Color(.systemGray))
                        }
                        NavigationLink{
                            
                        } label: {
                            Text("球員名單")
                        }
                        NavigationLink{
                        
                        } label: {
                           Text("先發名單")
                        }
                    }
                    .headerProminence(.increased)
                }
                .scrollContentBackground(.hidden)
                .scrollDisabled(true)
            }
            Spacer()
        }
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button{
                    dismiss()
                } label: {
                    HStack{
                        Image(systemName: "chevron.backward")
                            .foregroundColor(Color(.systemGray6))
                        Text("返回")
                            .font(.system(size: 20))
                            .foregroundColor(Color(.systemGray6))
                    }
                }
            }
            ToolbarItem(placement: .principal) {
                Text("G01")
                    .font(.system(size: 24))
                    .foregroundColor(Color(.systemGray6))
                    .fontWeight(.semibold)
            }
        }
    }
}

#Preview {
    SessionsInformationView()
}
