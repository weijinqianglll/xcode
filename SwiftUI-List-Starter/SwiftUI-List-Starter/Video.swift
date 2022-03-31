//
//  Video.swift
//  SwiftUI-List-Starter
//
//  Created by lole la on 2022/3/31.
//

import SwiftUI

struct Video: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
    let description: String
    let viewCount: Int
    let uploadDate: String
    let url: URL
}

struct VideoList {
    static let topTen = [
        Video(imageName: "a1", title: "[独家中字]五分钟告诉你：MODO能做什么", description: "综合来自各位教师在Youtube上的公开演示教程重拓扑是三维网格面建模中常用的基础技术，也是非常重要的技术。MODO拥有完整的一系列工具，可对模型整体或是局部进行自动重拓扑，全程一个命令完成手动重拓扑，配合整体/局部减面工具让模型简洁，且保持细节丰富——这些建模思路运用得非常广泛而灵活，尤其是在三维扫描、游戏行业建模领域属于必备技能。", viewCount: 898, uploadDate: "2022-03-23 18:11:42", url: URL(string: "https://www.bilibili.com/video/BV1yF411x7mn?t=4.5")!),
        Video(imageName: "a2", title: "重拓扑技术综合提高 Retopo Tips", description: "综合来自各位教师在Youtube上的公开演示教程重拓扑是三维网格面建模中常用的基础技术，也是非常重要的技术。MODO拥有完整的一系列工具，可对模型整体或是局部进行自动重拓扑，全程一个命令完成手动重拓扑，配合整体/局部减面工具让模型简洁，且保持细节丰富——这些建模思路运用得非常广泛而灵活，尤其是在三维扫描、游戏行业建模领域属于必备技能。", viewCount: 813 , uploadDate: " 2019-09-03 10:16:33", url: URL(string: "https://www.bilibili.com/video/BV19441117mA?t=3.1")!),
        Video(imageName: "a3", title: "MODO 15多边形布尔工作流 Boolean Workflow", description: "综合来自各位教师在Youtube上的公开演示教程重拓扑是三维网格面建模中常用的基础技术，也是非常重要的技术。MODO拥有完整的一系列工具，可对模型整体或是局部进行自动重拓扑，全程一个命令完成手动重拓扑，配合整体/局部减面工具让模型简洁，且保持细节丰富——这些建模思路运用得非常广泛而灵活，尤其是在三维扫描、游戏行业建模领域属于必备技能。", viewCount: 252, uploadDate: "2021-07-30 03:54:02", url: URL(string: "https://www.bilibili.com/video/BV13w411R7A6?t=3.8")!),
        Video(imageName: "a4", title: "RMC大师系列 预备课 - 约束面板", description: "综合来自各位教师在Youtube上的公开演示教程重拓扑是三维网格面建模中常用的基础技术，也是非常重要的技术。MODO拥有完整的一系列工具，可对模型整体或是局部进行自动重拓扑，全程一个命令完成手动重拓扑，配合整体/局部减面工具让模型简洁，且保持细节丰富——这些建模思路运用得非常广泛而灵活，尤其是在三维扫描、游戏行业建模领域属于必备技能。", viewCount: 165, uploadDate: "2019-08-17 19:56:23", url: URL(string: "https://www.bilibili.com/video/BV1K4411f76N?t=3.4")!),
        Video(imageName: "a5", title: "RMC大师系列 预备课 - IK反向动力学面板", description: "综合来自各位教师在Youtube上的公开演示教程重拓扑是三维网格面建模中常用的基础技术，也是非常重要的技术。MODO拥有完整的一系列工具，可对模型整体或是局部进行自动重拓扑，全程一个命令完成手动重拓扑，配合整体/局部减面工具让模型简洁，且保持细节丰富——这些建模思路运用得非常广泛而灵活，尤其是在三维扫描、游戏行业建模领域属于必备技能。", viewCount: 162, uploadDate: "2019-08-17 20:30:43", url: URL(string: "https://www.bilibili.com/video/BV1yF411x7mn?t=4.5")!),
        Video(imageName: "a6", title: "使用MODO探索经典动画原则", description: "综合来自各位教师在Youtube上的公开演示教程重拓扑是三维网格面建模中常用的基础技术，也是非常重要的技术。MODO拥有完整的一系列工具，可对模型整体或是局部进行自动重拓扑，全程一个命令完成手动重拓扑，配合整体/局部减面工具让模型简洁，且保持细节丰富——这些建模思路运用得非常广泛而灵活，尤其是在三维扫描、游戏行业建模领域属于必备技能。", viewCount: 431, uploadDate: "2019-05-23 16:56:00", url: URL(string: "https://www.bilibili.com/video/BV1N4411L72W?t=4.2")!)

    ]
}
