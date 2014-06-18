//
//  Post.swift
//  BlogRedo
//
//  Created by Michael Tirenin on 6/15/14.
//  Copyright (c) 2014 Michael Tirenin. All rights reserved.
//

import UIKit

class Post: NSObject {
    
    var title : String?
    var userName : String?
    var timeStamp : String?
    var content : String?
    var picture : UIImage?
    
    func stringFromDate() -> String {
        
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateStyle = .ShortStyle
        dateFormatter.timeStyle = .ShortStyle
        var date = dateFormatter.stringFromDate(NSDate())

        return date
    }
    
    func setPost(t: String, u: String, time: String, c: String, p: UIImage) -> Post {
        
        var post = Post()
        post.title = t
        post.userName = u
        post.timeStamp = time
        post.content = c
        post.picture = p
        
        return post
    }
    
    func setPosts() -> Post[] {
        var posts = Post[]()
        var post1 = setPost("Title of First Post", u: "Mike Tirenin", time: stringFromDate(), c: "Lorem ipsum dolor sit amet. Duis erat ut nunc ultrices.", p: UIImage(named: "dougherty1.png"))
        var post2 = setPost("Title of Second Post", u: "Mike Tirenin", time: stringFromDate(), c: "Lorem ipsum elit. Fusce vitae digni ossim nisi, nec fermen tum ... Tunc a hendrerit. :)", p: UIImage(named: "dougherty2.png"))
        var post3 = setPost("Title of Third Post", u: "Mike Tirenin", time: stringFromDate(), c: "Lorem ipsum dolor sit amet, adip soit elit. Ligula id euis mod.", p: UIImage(named: "dougherty3.png"))
        var post4 = setPost("Title of Fourth Post", u: "Mike Tirenin", time: stringFromDate(), c: "Lorem ipsum dolor sit amet, con sec tetur adipiscing elit. Donec ligula quam. Ha, ha!", p: UIImage(named: "dougherty4.png"))
        var post5 = setPost("Title of Fifth Post", u: "Mike Tirenin", time: stringFromDate(), c: "Lorem ipsum dolor velit vitae luct us.", p: UIImage(named: "dougherty5.png"))
        var post6 = setPost("Title of Sixth Post", u: "Mike Tirenin", time: stringFromDate(), c: "Lorem ipsum dolor sit amet, consect et ur adipiscing elit. Fusce sed sagittis orci. Morbi congue sodales eleifend.", p: UIImage(named: "dougherty6.png"))
        var post7 = setPost("Title of Seventh Post", u: "Mike Tirenin", time: stringFromDate(), c: "Lorem ipsum dolor sit amet, tu sec consectetur adipiscing elit. Later.", p: UIImage(named: "dougherty7.png"))
        var post8 = setPost("Title of Eighth Post", u: "Mike Tirenin", time: stringFromDate(), c: "Lorem ipsum dolor sit amet ... etiam ernt?", p: UIImage(named: "dougherty8.png"))
        var post9 = setPost("Title of Ninth Post", u: "Mike Tirenin", time: stringFromDate(), c: "Lorem ipsum dolor sit amet, consect etur adipiscing elit. Duis cursus. #lovin'greekedtext", p: UIImage(named: "dougherty9.png"))
        var post10 = setPost("Title of Tenth Post", u: "Mike Tirenin", time: stringFromDate(), c: "Lorem ipsum dolor sit amet. Cursus sit amet elementum vitae!!!", p: UIImage(named: "dougherty10.png"))
        
        posts = [post1, post2, post3, post4, post5, post6, post7, post8, post9, post10]

        return posts
    }
}