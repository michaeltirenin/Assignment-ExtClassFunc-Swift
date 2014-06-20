//
//  CreatePostViewController.swift
//  BlogRedo
//
//  Created by Michael Tirenin on 6/16/14.
//  Copyright (c) 2014 Michael Tirenin. All rights reserved.
//

import UIKit

protocol CreatePostViewControllerDelegate {
    func addObject(createPost: Post)
}

class CreatePostViewController: UIViewController, UITextFieldDelegate {
    
    var createPostDelegate : CreatePostViewControllerDelegate? = nil

//    init(delegate: CreatePostViewControllerDelegate?) {
//        self.createPostDelegate = delegate
//    }

    var post = Post()
    var createTimeStamp = Post().stringFromDate()

    @IBOutlet var createUserNameTextField : UITextField
    @IBOutlet var createTitleTextField : UITextField
    @IBOutlet var createContentTextField : UITextField
    @IBOutlet var createPictureImageView : UIImageView
    @IBOutlet var createPostNavigationBar: UINavigationBar
    
    @IBAction func cancelNewPostButton(sender: UIBarButtonItem) {
        dismissModalViewControllerAnimated(true)
    }
    
    @IBAction func saveNewPostButton(sender: UIBarButtonItem) {
        post.userName = createUserNameTextField.text
        post.title = createTitleTextField.text
        post.content = createContentTextField.text
        post.picture = createPictureImageView.image
        post.timeStamp = createTimeStamp
        
        // add save image to library
        
        createUserNameTextField.resignFirstResponder() // resigns keyboard before VC
        createTitleTextField.resignFirstResponder()  // resigns keyboard before VC
        createContentTextField.resignFirstResponder()  // resigns keyboard before VC
        
        createPostDelegate!.addObject(post)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        createPostNavigationBar.topItem.title = "Create New Post"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // UITextFieldDelegate; also, note: link delegate for each textfield in storyboard
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
