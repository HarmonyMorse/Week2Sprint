//
//  Comments.swift
//  Movie List
//
//  Created by Harm on 7/11/22.
//  Copyright © 2022 Lambda School. All rights reserved.
//

import Foundation

/*
 TO DO NOW:
 
 
 
 FINISHED:
 A Movie model object that has properties for:
 The movie's name as a String
 Whether it has been seen or not as a Bool. You can set a default value for this property to false if you want.
 
 A view controller that shows a list of movies that the user has created. This should be a subclass of UIViewController that has a UITableView in it.
 
 The table view should use a custom UITableViewCell subclass with a "Seen"/"Not Seen" button.
 + Added label for movie name
 
 A bar button item that segues to a new view controller. This new view controller allows the user to add new movies.
 
 The view controller should have a text field to put in the movie's name, and a button to save the movie.
 + Cancel button
 
 Create class files for ViewController and DetailViewController
 
 Assign each view to the classes created

 Make segues for buttons/text-fields/labels on AddMovieViewController
 Make methods for each button/text-field/label that requires and action on AddMovieViewController
 Make delegate
 
 Make segue (IBOutlet) for text-field on MoviesListViewController
 Array for movies in ListView
 in viewDidLoad: make MoviesListTableView.delegate and .datasource = self
 Extended MoviesListViewController to conform to UITableViewDataSource protocol. Methods: tableView(NumberOfRowsInSection), and tableView(cellForRowAt)
 extended MoviesListViewController to conform to addMovieDelegate protocol (as was created in AddMovieViewController). Method: movieWasAdded
 
 
 */


/*
 Your finished project must include all of the following requirements:
 Tapping the button toggles whether the user has seen the movie or not. (This should change the Movie's Bool property that represents if it has been seen or not)
 
 
 To do:
 
 
 Stretch Problems:

 Users can swipe to delete movies in the table view.
 Introduce a way to edit the name of a movie.
 The list of movies is preserved between subsequent runs of your application

 */
