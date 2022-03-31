//
//  VideoListView.swift
//  SwiftUI-List-Starter
//
//  Created by lole la on 2022/3/31.
//

import SwiftUI

struct VideoListView: View {
    var videos: [Video] = VideoList.topTen
    var body: some View {
        NavigationView{
            List(videos, id: \.id){ Video in
                NavigationLink(destination: VideoDetailView(video: Video),label: {
                    VideoCell(video: Video)
                    })
            }
        .navigationTitle("查看最近更新")
        }
    }
}

struct VideoCell: View {
    var video: Video
    var body: some View{
        HStack{
            Image(video.imageName)
            .resizable()
            .scaledToFit()
            .frame(height: 80)
            .cornerRadius(4.0)
                .padding(.vertical,4)
        VStack(alignment: .leading,spacing :10){
            Text(video.description)
                .fontWeight(.semibold)
                .lineLimit(2)
                .minimumScaleFactor(0.5)
            Text(video.uploadDate)
                .font(.subheadline)
                .foregroundColor(.secondary)
            }
        }
    }
}

struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
