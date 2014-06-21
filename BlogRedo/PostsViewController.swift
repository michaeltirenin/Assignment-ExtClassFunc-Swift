//
//  PostsViewController.swift
//  BlogRedo
//
//  Created by Michael Tirenin on 6/15/14.
//  Copyright (c) 2014 Michael Tirenin. All rights reserved.
//

import UIKit

class PostsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, EditPostViewControllerDelegate, CreatePostViewControllerDelegate {
    
    @IBOutlet var postsTableView : UITableView
    
    @IBAction func createNewPostButton(sender: UIBarButtonItem) {
        
    }

    var posts = Post().setPosts()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        navigationItem.title = "Blog"
     }
    
    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
    }
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        
        return posts.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell: PostTableViewCell = tableView.dequeueReusableCellWithIdentifier("PostCell", forIndexPath: indexPath) as PostTableViewCell

        var post = posts[indexPath.row]
                
        cell.titleLabel.text = post.title
        cell.userNameLabel.text = post.userName
        cell.timeStampLabel.text =  post.timeStamp
        cell.contentLabel.text = post.content
        cell.pictureImageView.image = post.picture
        
        cell.titleLabel.font = UIFont(name: "TrebuchetMS", size: 15)

        cell.userNameLabel.font = UIFont(name: "TrebuchetMS-Italic", size: 11)
        cell.userNameLabel.textColor = UIColor(red: 80.0/255.0, green: 80.0/255.0, blue: 80.0/255.0, alpha: 1.0)

        cell.timeStampLabel.font = UIFont(name: "TrebuchetMS-Italic", size: 11)
        cell.timeStampLabel.textColor = UIColor(red: 150.0/255.0, green: 150.0/255.0, blue: 150.0/255.0, alpha: 1.0)

        cell.contentLabel.font = UIFont(name: "TrebuchetMS", size: 12.5)
        
        cell.pictureImageView.layer.cornerRadius = cell.pictureImageView.frame.size.width / 2.0
        cell.pictureImageView.clipsToBounds = true
  
// implement later ...
//        navigationItem.leftBarButtonItem = editButtonItem()

        return cell
    }
    
    override func viewWillAppear(animated: Bool) {
        
        super.viewWillAppear(true)
        postsTableView.reloadData()
    }
        
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        
        if segue.identifier == "CreatePostSegue" {
            let createPostVC : CreatePostViewController = segue.destinationViewController as CreatePostViewController
            createPostVC.createPostDelegate = self
            
        } else if segue.identifier == "EditPostSegue" {
            let editPostVC : EditPostViewController = segue.destinationViewController as EditPostViewController
            editPostVC.editPostDelegate = self
            var indexPath : NSIndexPath = postsTableView.indexPathForSelectedRow()
            var editPost : Post = posts[indexPath.row]
            editPostVC.post = editPost
        }
    }
    
//    func updateTable() {
//
//    }
    
    func addObject(createPost: Post) {
        
        posts.append(createPost)
        postsTableView.reloadData()
        dismissModalViewControllerAnimated(true)
    }
    
    func tableView(tableView: UITableView, willDisplayCell cell:UITableViewCell, forRowAtIndexPath indexPath:NSIndexPath) {
        cell.backgroundColor = UIColor(red:(CGFloat(arc4random() % 256) / 256.0), green:(CGFloat(arc4random() % 256) / 256.0), blue:(CGFloat(arc4random() % 256) / 256.0), alpha:0.25)
    }
    
// implement later ...
////    [_posts removeObjectAtIndex:indexPath.row];
////    [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
//    
////    func tableView(tableView: UITableView!, canEditRowAtIndexPath indexPath: NSIndexPath!) -> Bool
////    {
////        return true
////    }
//    
//    // editing the table view in main view (deleting entire post)
//    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
//
//        if editingStyle == UITableViewCellEditingStyle.Delete {
//            // delete the row from the data source
////            posts.removeAtIndex(indexPath.row)
////            posts.removeObjectAtIndex(indexPath.row)
//            
//            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Fade)
//            
////            if (posts.count == 0)
////            {
////                self.leftBtn!.userInteractionEnabled = false
////            }
//        } else if editingStyle == UITableViewCellEditingStyle.Insert {
//            // create a new instance ... haven't gotten this far
//        }
//    }

}