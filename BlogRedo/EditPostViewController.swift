//
//  EditPostViewController.swift
//  BlogRedo
//
//  Created by Michael Tirenin on 6/15/14.
//  Copyright (c) 2014 Michael Tirenin. All rights reserved.
//

import UIKit

protocol EditPostViewControllerDelegate {
//    func updateTable() // not necessary
}

class EditPostViewController: UIViewController, UITextFieldDelegate {
    
    var editPostDelegate : EditPostViewControllerDelegate? = nil

//    init(delegate: EditPostViewControllerDelegate?) {
//        self.editPostDelegate = delegate
//    }

    var post = Post()
    var newTimeStamp = Post().stringFromDate()
    
    @IBOutlet var editUserNameTextField : UITextField
    @IBOutlet var editTitleTextField : UITextField
    @IBOutlet var editContentTextField : UITextField
    @IBOutlet var editPictureImageView : UIImageView
    
    @IBAction func cancelEditPostButton(sender: UIBarButtonItem) {
        navigationController.popToRootViewControllerAnimated(true)
    }
    
    @IBAction func saveEditPostButton(sender: UIBarButtonItem) {
        post.userName = editUserNameTextField.text
        post.title = editTitleTextField.text
        post.content = editContentTextField.text
        post.picture = editPictureImageView.image
        post.timeStamp = newTimeStamp // sets new time/date for post

        // need to save image
        
        navigationController.popToRootViewControllerAnimated(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "Edit & Share Post"

        editUserNameTextField.text = post.userName
        editTitleTextField.text = post.title
        editContentTextField.text = post.content
        editPictureImageView.image = post.picture
        
        editPictureImageView.layer.cornerRadius = editPictureImageView.frame.size.width / 2.0
        editPictureImageView.clipsToBounds = true
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
