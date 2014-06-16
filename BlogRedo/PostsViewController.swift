//
//  PostsViewController.swift
//  BlogRedo
//
//  Created by Michael Tirenin on 6/15/14.
//  Copyright (c) 2014 Michael Tirenin. All rights reserved.
//

import UIKit

class PostsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var postsTableView : UITableView

    @IBOutlet var createNewPostButton : UIBarButtonItem
    
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
//        cell.timeStampLabel.text = post.timeStamp
        cell.contentLabel.text = post.content
        
//        println(cell.titleLabel.text)
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

    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        let editPostViewController: EditPostViewController = segue.destinationViewController as EditPostViewController
    }
}