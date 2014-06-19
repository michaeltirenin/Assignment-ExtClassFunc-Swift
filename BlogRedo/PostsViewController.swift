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
//        println(posts.count)
        return posts.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell: PostTableViewCell = tableView.dequeueReusableCellWithIdentifier("PostCell") as PostTableViewCell

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
        
        navigationItem.leftBarButtonItem = editButtonItem()

        return cell
    }
    
//    - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
//    {
//    if ([segue.identifier isEqualToString:@"EditSegue"]) {
//    MTEditPostViewController *editPostVC = segue.destinationViewController;
//    editPostVC.editPostDelegate = self;
//    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
//    MTPost *post = [self.posts objectAtIndex:indexPath.row];
//    editPostVC.post = post;
//    }
//    if ([segue.identifier isEqualToString:@"PublishSegue"]) {
//    MTCreatePostViewController *createPostVC = segue.destinationViewController;
//    createPostVC.createPostDelegate = self;
//    }

//    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
//        let editPostViewController: EditPostViewController = segue.destinationViewController as EditPostViewController
//    }
}