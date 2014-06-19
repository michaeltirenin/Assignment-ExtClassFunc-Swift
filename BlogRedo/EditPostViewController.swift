//
//  EditPostViewController.swift
//  BlogRedo
//
//  Created by Michael Tirenin on 6/15/14.
//  Copyright (c) 2014 Michael Tirenin. All rights reserved.
//

import UIKit

protocol EditPostViewControllerDelegate {
//    func
}

class EditPostViewController: UIViewController {
    
    var editPostDelegate : EditPostViewControllerDelegate?
    
    var post : Post?
    
    @IBOutlet var editUserNameTextField: UITextField
    @IBOutlet var editTitleTextField: UITextField
    @IBOutlet var editContentTextField: UITextField
    @IBOutlet var editPictureImageView: UIImageView
    
    @IBAction func cancelEditPostButton(sender: UIBarButtonItem) {
        
    }
    
    @IBAction func saveEditPostButton(sender: UIBarButtonItem) {
        
    }
    
//    init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
//        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
//    }

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "Edit & Share Post"
        
        editUserNameTextField.text = self.post?.userName
        editTitleTextField.text = self.post?.title
        editContentTextField.text = self.post?.content
        editPictureImageView.image = self.post?.picture
        
//        editUserNameTextField.delegate =
//        editTitleTextField.delegate =
//        editContentTextField.delegate =
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
//    override func viewWillAppear(animated: Bool) {
//        [super.viewWillAppear(animated)]
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
