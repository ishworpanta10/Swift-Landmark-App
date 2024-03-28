//
//   LandmarkDetail.swift
//  Landmarks
//
//  Created by Ishwor on 12/03/2024.
//

import SwiftUI

struct LandmarkDetail: View {
    @Environment(ModelData.self) var modelData
    
    var landmark: Landmark
    
    var landMarkIndex : Int{
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id})!
    }
    
    var body: some View {
        @Bindable var modelData = modelData
        
        ScrollView {
            MapView(coordinate: landmark.locationCoordinates).frame(height: 300)
            
            CircleImage(image: landmark.image).offset(y:-130).padding(.bottom,-130)
            
            VStack(alignment: .leading){
//                Text(landmark.name).font(.title)
                HStack {
                                    Text(landmark.name)
                                        .font(.title)
                                    FavoriteButton(isSet: $modelData.landmarks[landMarkIndex].isFavorite)
                                }
                
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
    let modelData = ModelData()
 
    return LandmarkDetail(landmark:ModelData().landmarks[0]).environment(modelData)
}
