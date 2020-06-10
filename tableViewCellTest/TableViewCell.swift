//
//  TableViewCell.swift
//  tableViewCellTest
//
//  Created by Yuki Shinohara on 2020/06/06.
//  Copyright © 2020 Yuki Shinohara. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet var videoImageView: UIImageView!
    @IBOutlet var videoTitleLabel: UILabel!
    
    func setVideo(video: Video){
        videoImageView.image = video.image
        videoTitleLabel.text = video.title
    }
}
