//
//  EditPostViewController.swift
//  BlogRedo
//
//  Created by Michael Tirenin on 6/15/14.
//  Copyright (c) 2014 Michael Tirenin. All rights reserved.
//

import UIKit

protocol EditPostViewControllerDelegate {
//    func updateTable()
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
        
        navigationController.popToRootViewControllerAnimated(true)
    }
    
//    init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
//        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
//    }

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "Edit & Share Post"

        editUserNameTextField.text = post.userName
        editTitleTextField.text = post.title
        editContentTextField.text = post.content
        editPictureImageView.image = post.picture

//        editUserNameTextField.delegate = self
//        editTitleTextField.delegate = self
//        editContentTextField.delegate = self
        
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
    
//    override func viewWillAppear(animated: Bool) {
//        super.viewWillAppear(animated)
//    }


    /*
    // #pragma mark - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
