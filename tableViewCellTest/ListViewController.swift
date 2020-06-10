//
//  ListViewController.swift
//  tableViewCellTest
//
//  Created by Yuki Shinohara on 2020/06/05.
//  Copyright © 2020 Yuki Shinohara. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {
    
    
    @IBOutlet var tableView: UITableView!
    
    var videos : [Video] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        videos = createArray()
    }
    
    func createArray() -> [Video]{
        var tempArray = [Video]()
        
        let video1 = Video(image: #imageLiteral(resourceName: "image_carousel_1"), title: "video1")
        let video2 = Video(image: #imageLiteral(resourceName: "image_carousel_2"), title: "video2")
        let video3 = Video(image: #imageLiteral(resourceName: "image_carousel_3"), title: "video3")
        
        tempArray.append(video1)
        tempArray.append(video2)
        tempArray.append(video3)
        
        return tempArray
    }


}

extension ListViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return videos.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let video = videos[indexPath.row]
            let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! TableViewCell
            cell.setVideo(video: video)
    //        cell.videoTitleLabel.text = video.title
    //        cell.videoImageView.image = video.image
            return cell
        }
}
