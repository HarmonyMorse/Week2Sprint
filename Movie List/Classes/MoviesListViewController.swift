//
//  MoviesListViewController.swift
//  Movie List
//
//  Created by Harm on 7/11/22.
//  Copyright © 2022 Lambda School. All rights reserved.
//

import UIKit

class MoviesListViewController: UIViewController, UITableViewDelegate {
    
//    var testingMovie = Movie(movieName: "Testing", seen: true)
    var movies: [Movie] = []
    
    @IBOutlet weak var moviesListTableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        moviesListTableView.delegate = self
        moviesListTableView.dataSource = self
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "ModalNewMovie" {
            let newMovieVC = segue.destination as? AddMovieViewController
            
        //  Tell the delegator (NewFriendViewController) that the table view controller will be its delegate
            newMovieVC?.delegate = self
        }
    }
}

extension MoviesListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = moviesListTableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else { fatalError("Cell identifier is wrong or the cell is not of type MovieTableViewCell")}
        cell.movie = movies[indexPath.row]
        cell.delegate = self
        return cell
    }
}

extension MoviesListViewController: addMovieDelegate {
    func movieWasAdded(_ movie: Movie) {
        movies.append(movie)
        dismiss(animated: true, completion: nil)
        moviesListTableView.reloadData()
    }
}

extension MoviesListViewController: MovieListViewDelegate {
    func seenIsChanged(_ senderThing: Movie?) {
        print(movies)
        guard var senderThing = senderThing, let index = movies.firstIndex(of: senderThing) else {
                return
        }
        
        senderThing.seen = !senderThing.seen
        movies[index] = senderThing


        print(movies)
        moviesListTableView.reloadData()
        //change array here
    }
}
