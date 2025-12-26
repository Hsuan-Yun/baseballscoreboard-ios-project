//
//  GameInformationView.swift
//  Baseball Record
//
//  Created by 遠上寒山 on 2024/5/2.
//

import SwiftUI

struct GamesInformationView: View {
    @State var searchText = ""
    var pickerOptions = ["未開始","進行中","已結束"]
    @State var statusText = "進行中"
    @State private var isEditing = false
    var body: some View {
        NavigationStack{
            ZStack{
                BackgroundView()
                VStack{
                    VStack{
                        HStack{
                            Text("比賽資訊")
                                .font(.system(size: 36))
                                .foregroundColor(Color(.systemGray6))
                                .fontWeight(.bold)
                            Spacer()
                            Image(systemName: "plus")
                                .font(.system(size: 24))
                                .foregroundColor(Color(.systemGray6))
                        }
                        .padding(.vertical, 10)
                        HStack {
                            TextField("Search", text: $searchText)
                                .padding(7)
                                .padding(.leading, 25)
                                .background(Color(.systemGray6))
                                .cornerRadius(8)
                                .overlay(
                                    HStack {
                                        Image(systemName: "magnifyingglass")
                                            .foregroundColor(.gray)
                                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                            .padding(.leading, 8)
                                    }
                                )
                                .onTapGesture {
                                    isEditing = true
                                }
                            if isEditing {
                                Button(action: {
                                    self.isEditing = false
                                    self.searchText = ""
                                }) {
                                    Text("Cancel")
                                        .foregroundColor(.white)
                                }
                            }
                        }
                        HStack{
                            Menu{
                                Picker("Options", selection: $statusText) {
                                    ForEach(pickerOptions, id: \.self) { option in
                                        Text(option)
                                    }
                                }
                            } label: {
                                HStack{
                                    Text(statusText)
                                        .font(.system(size: 24))
                                        .foregroundColor(Color(.systemGray6))
                                        .fontWeight(.semibold)
                                    Text("⌄")
                                        .font(.system(size: 24))
                                        .foregroundColor(Color(.systemGray6))
                                        .fontWeight(.semibold)
                                        .padding(.bottom, 12)
                                }
                            }
                            Spacer()
                        }
                    }
                    .padding(.horizontal, 20)
                    VStack{
                        List{
                        Section{
                        NavigationLink{
                            SessionsInformationView()
                        } label: {
                            Text("G01")
                        }
                        }
                        Section{
                            NavigationLink{
                                SessionsInformationView()
                            } label: {
                                Text("G03")
                            }
                        }
                    }
                    .scrollContentBackground(.hidden)
                    .listSectionSpacing(16)
                    .padding(.top, -26)
                    Spacer()
                    }
                }
            }
        }
    }
}

#Preview {
    GamesInformationView()
}
