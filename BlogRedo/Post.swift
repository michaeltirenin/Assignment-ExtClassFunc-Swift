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
    var timeStamp : String?
    var content : String?
    
    func stringFromDate() -> String {
        
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateStyle = .MediumStyle
        dateFormatter.timeStyle = .ShortStyle
        var date = dateFormatter.stringFromDate(NSDate())

        return date
    }
    
    func setPost(t: String, u: String, time: String, c: String) -> Post {
        
        var post = Post()
        post.title = t
        post.userName = u
        post.timeStamp = time
        post.content = c
        
        return post
    }
    
    func setPosts() -> Post[] {
        var posts = Post[]()
        var post1 = setPost("Title of First Post", u: "Michael Tirenin", time: stringFromDate(), c: "Lorem ipsum dolor sit amet, ut pular vel mattis, ad nec velit etiam felis volutpat, magna orci, tellus aliquet in sed aliquam massa sodales.")
        var post2 = setPost("Title of Second Post", u: "Michael Tirenin", time: stringFromDate(), c: "Lorem ipsum dolor sit amet, ut pular vel mattis, ad nec velit etiam felis volutpat, magna orci, tellus aliquet in sed aliquam massa sodales.")
        var post3 = setPost("Title of Third Post", u: "Michael Tirenin", time: stringFromDate(), c: "Lorem ipsum dolor sit amet, ut pular vel mattis, ad nec velit etiam felis volutpat, magna orci, tellus aliquet in sed aliquam massa sodales.")
        var post4 = setPost("Title of Fourth Post", u: "Michael Tirenin", time: stringFromDate(), c: "Lorem ipsum dolor sit amet, ut pular vel mattis, ad nec velit etiam felis volutpat, magna orci, tellus aliquet in sed aliquam massa sodales.")
        var post5 = setPost("Title of Fifth Post", u: "Michael Tirenin", time: stringFromDate(), c: "Lorem ipsum dolor sit amet, ut pular vel mattis, ad nec velit etiam felis volutpat, magna orci, tellus aliquet in sed aliquam massa sodales.")
        var post6 = setPost("Title of Sixth Post", u: "Michael Tirenin", time: stringFromDate(), c: "Lorem ipsum dolor sit amet, ut pular vel mattis, ad nec velit etiam felis volutpat, magna orci, tellus aliquet in sed aliquam massa sodales.")
        var post7 = setPost("Title of Seventh Post", u: "Michael Tirenin", time: stringFromDate(), c: "Lorem ipsum dolor sit amet, ut pular vel mattis, ad nec velit etiam felis volutpat, magna orci, tellus aliquet in sed aliquam massa sodales.")
        var post8 = setPost("Title of Eighth Post", u: "Michael Tirenin", time: stringFromDate(), c: "Lorem ipsum dolor sit amet, ut pular vel mattis, ad nec velit etiam felis volutpat, magna orci, tellus aliquet in sed aliquam massa sodales.")
        var post9 = setPost("Title of Ninth Post", u: "Michael Tirenin", time: stringFromDate(), c: "Lorem ipsum dolor sit amet, ut pular vel mattis, ad nec velit etiam felis volutpat, magna orci, tellus aliquet in sed aliquam massa sodales.")
        var post10 = setPost("Title of Tenth Post", u: "Michael Tirenin", time: stringFromDate(), c: "Lorem ipcor sit amet, ut pular vel mattis, ad nec velit etiam felis volutpat, magna orci, tellus aliquet in sed aliquam massa sodales.")
        
        posts = [post1, post2, post3, post4, post5, post6, post7, post8, post9, post10]

        return posts
    }
}