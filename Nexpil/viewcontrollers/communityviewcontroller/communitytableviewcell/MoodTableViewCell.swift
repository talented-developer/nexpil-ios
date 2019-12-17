//
//  MoodTableViewCell.swift
//  Nexpil
//
//  Created by Admin on 07/07/2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit
import OnlyPictures
class MoodTableViewCell: UITableViewCell, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var mediaimage: UIImageView!
    
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var createTime: UILabel!
    @IBOutlet weak var content: UILabel!
    @IBOutlet weak var likebtn: UIButton!
    @IBOutlet weak var likecnt: UILabel!
    @IBOutlet weak var commentbtn: UIButton!
    @IBOutlet weak var commentcnt: UILabel!
    @IBOutlet weak var commentImage: UIImageView!
    @IBOutlet weak var commentText: UITextField!
    @IBOutlet weak var onlypictures: OnlyHorizontalPictures!
    @IBOutlet weak var moodImage: UIImageView!
    @IBOutlet weak var moodText: UILabel!
    @IBOutlet weak var moreCommentButton: UIButton!
    @IBOutlet weak var commentView: UIView!
    @IBOutlet weak var commentTableView: UITableView!
    @IBOutlet weak var commentTableViewTopMargin: NSLayoutConstraint!
    @IBOutlet weak var commentViewHeight: NSLayoutConstraint!
    
    var commentList: [NSDictionary] = []
    var m_tag: Int?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        commentTableView.delegate = self
        commentTableView.dataSource = self
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        
        commentTableView.delegate = self
        commentTableView.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return commentList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.commentTableView.dequeueReusableCell(withIdentifier: "myCommentTableViewCell") as! MyCommentTableViewCell
        cell.m_tag = self.m_tag
        cell.commontInit(commentList[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    
}

