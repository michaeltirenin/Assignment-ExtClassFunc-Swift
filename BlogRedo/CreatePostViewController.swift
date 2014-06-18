//
//  CreatePostViewController.swift
//  BlogRedo
//
//  Created by Michael Tirenin on 6/16/14.
//  Copyright (c) 2014 Michael Tirenin. All rights reserved.
//

import UIKit

class CreatePostViewController: UIViewController {

    @IBOutlet var userNameTextField : UITextField
    @IBOutlet var titleTextField : UITextField
    @IBOutlet var contentTextField : UITextField
    
    @IBOutlet var saveNewPostButton : UIBarButtonItem
    @IBOutlet var cancelNewPostButton : UIBarButtonItem
    
    init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        // Custom initialization
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Create New Post"

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // #pragma mark - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
