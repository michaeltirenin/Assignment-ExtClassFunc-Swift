//
//  Post.swift
//  BlogRedo
//
//  Created by Michael Tirenin on 6/15/14.
//  Copyright (c) 2014 Michael Tirenin. All rights reserved.
//

import Foundation

class Post: NSObject {
    
    var title : String?
    var userName : String?
    var timeStamp : NSDate?
    var content : String?
    
//    let timeStamp = NSDate()
//    let dateFormatter = NSDateFormatter()
//    dateFormatter.timeStyle = .ShortStyle
//    formatter.stringFromDate(date)
//    
//    println(timestamp)
    
//    var post = Post()
        
    func setPost(title: String, userName: String, timeStamp: NSDate, content: String) -> Post {
        var post = Post()
        post.title = title
        post.userName = userName
        post.timeStamp = timeStamp
        post.content = content
        
        return post
    }
    
    func setPosts() -> Post[] {
        var posts = Post[]()
        var post1 = setPost("Title of First Post", userName: "Michael Tirenin", timeStamp: NSDate(), content: "Lorem ipsum dolor sit amet, ut pular vel mattis, ad nec velit etiam felis volutpat, magna orci, tellus aliquet in sed aliquam massa sodales.")
        var post2 = setPost("Title of Second Post", userName: "Michael Tirenin", timeStamp: NSDate(), content: "Lorem ipsum dolor sit amet, ut pular vel mattis, ad nec velit etiam felis volutpat, magna orci, tellus aliquet in sed aliquam massa sodales.")
        var post3 = setPost("Title of Third Post", userName: "Michael Tirenin", timeStamp: NSDate(), content: "Lorem ipsum dolor sit amet, ut pular vel mattis, ad nec velit etiam felis volutpat, magna orci, tellus aliquet in sed aliquam massa sodales.")
        var post4 = setPost("Title of Fourth Post", userName: "Michael Tirenin", timeStamp: NSDate(), content: "Lorem ipsum dolor sit amet, ut pular vel mattis, ad nec velit etiam felis volutpat, magna orci, tellus aliquet in sed aliquam massa sodales.")
        var post5 = setPost("Title of Fifth Post", userName: "Michael Tirenin", timeStamp: NSDate(), content: "Lorem ipsum dolor sit amet, ut pular vel mattis, ad nec velit etiam felis volutpat, magna orci, tellus aliquet in sed aliquam massa sodales.")
        var post6 = setPost("Title of Sixth Post", userName: "Michael Tirenin", timeStamp: NSDate(), content: "Lorem ipsum dolor sit amet, ut pular vel mattis, ad nec velit etiam felis volutpat, magna orci, tellus aliquet in sed aliquam massa sodales.")
        var post7 = setPost("Title of Seventh Post", userName: "Michael Tirenin", timeStamp: NSDate(), content: "Lorem ipsum dolor sit amet, ut pular vel mattis, ad nec velit etiam felis volutpat, magna orci, tellus aliquet in sed aliquam massa sodales.")
        var post8 = setPost("Title of Eighth Post", userName: "Michael Tirenin", timeStamp: NSDate(), content: "Lorem ipsum dolor sit amet, ut pular vel mattis, ad nec velit etiam felis volutpat, magna orci, tellus aliquet in sed aliquam massa sodales.")
        var post9 = setPost("Title of Ninth Post", userName: "Michael Tirenin", timeStamp: NSDate(), content: "Lorem ipsum dolor sit amet, ut pular vel mattis, ad nec velit etiam felis volutpat, magna orci, tellus aliquet in sed aliquam massa sodales.")
        var post10 = setPost("Title of Tenth Post", userName: "Michael Tirenin", timeStamp: NSDate(), content: "Lorem ipsum dolor sit amet, ut pular vel mattis, ad nec velit etiam felis volutpat, magna orci, tellus aliquet in sed aliquam massa sodales.")
        
        posts = [post1, post2, post3, post4, post5, post6, post7, post8, post9, post10]
        
//        println(posts)
        return posts
    }
}