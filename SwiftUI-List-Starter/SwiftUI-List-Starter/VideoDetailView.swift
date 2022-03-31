//
//  VideoDetailView.swift
//  SwiftUI-List-Starter
//
//  Created by lole la on 2022/3/31.
//

import SwiftUI

struct VideoDetailView: View {
    
    var video: Video
    
    var body: some View {
        VStack(spacing:20){
            Spacer()
            Image(video.imageName)
                .resizable()
                .scaledToFit()
                .frame(height:170)
                .cornerRadius(15)
            Text(video.title)
                .font(.title2)
                .fontWeight(.semibold)
                .lineLimit(2)
                .multilineTextAlignment(.leading)
                .padding(.horizontal)
            HStack(spacing: 40){
                Label("\(video.viewCount)", systemImage: "eye.fill")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                Text(video.uploadDate)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            Text(video.description)
                .font(.body)
                .padding()
            Spacer()
            //Link("点击观看",destination: video.url)
            Link(destination: video.url, label: {
                StandarButton(title: "点击观看")
            })
        }
    }
}

struct VideoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        VideoDetailView(video: VideoList.topTen.first!)
    }
}

struct StandarButton: View {
    var title: String
    var body: some View {
        Text(title)
            .bold()
            .font(.title2)
            .frame(width: 300, height: 60)
            .background(Color(.systemRed))
            .foregroundColor(.white)
            .cornerRadius(15.0)
    }
}
