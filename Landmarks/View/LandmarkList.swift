//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Ishwor on 07/03/2024.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationSplitView{
            List(landmarks){ landmark in
                NavigationLink{
                    LandmarkDetail()
                }label: {
                    LandmarkRow(landmark: landmark)
                }
               
            }
            .navigationTitle("Landmarks")
            
        } detail: {
            Text("Selecr a Landmark")
        }
    }
}

#Preview {
    LandmarkList()
}
