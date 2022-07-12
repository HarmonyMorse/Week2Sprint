//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Harm on 7/11/22.
//  Copyright © 2022 Lambda School. All rights reserved.
//

import UIKit

protocol addMovieDelegate {
    func movieWasAdded(_ movie: Movie)
}

class AddMovieViewController: UIViewController {
    
    @IBOutlet weak var movieNameTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        movieNameTextField.delegate = self

        // Do any additional setup after loading the view.
    }
    
    var delegate: addMovieDelegate?
    
    
    @IBAction func saveTapped(_ sender: UIBarButtonItem) {
        guard let movieName = movieNameTextField.text else { return }
        let newMovie = Movie(movieName: movieName)
        
        delegate?.movieWasAdded(newMovie)
    }
    
    @IBAction func cancelTapped(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension AddMovieViewController: UITextFieldDelegate {
    /*func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        guard let text = textField.text, !text.isEmpty else { return false }
        return true
        
    }*/
}
