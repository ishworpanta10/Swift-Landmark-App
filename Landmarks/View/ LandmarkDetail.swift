//
//   LandmarkDetail.swift
//  Landmarks
//
//  Created by Ishwor on 12/03/2024.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    
    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinates).frame(height: 300)
            
            CircleImage(image: landmark.image).offset(y:-130).padding(.bottom,-130)
            
            VStack(alignment: .leading){
                Text(landmark.name).font(.title)
                
                HStack{
                    Text(landmark.park).font(.subheadline)
                    Spacer()
                    Text(landmark.state).font(.subheadline)
                    
                }
                Spacer().frame(height: 20)
                
                Divider()
                
                Spacer().frame(height: 20)
                
                Text("About \(landmark.name)".uppercased()).font(.title2)
                
                Text(landmark.description)
               
                
            }
            .padding()
//            Spacer()
        }
        .navigationTitle(landmark.name)
            .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    LandmarkDetail(landmark:ModelData().landmarks[0])
}
