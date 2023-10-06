//
//  ViewController.swift
//  BasicMovieApp
//
//  Created by Zülal Sarıoğlu on 6.10.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
 
    
    @IBOutlet weak var tableView: UITableView!
    var moviewName = [String]()
    var movieImage = [String]()
    var tiklananIsım = ""
    var tiklananResim = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        moviewName.append("Akıl Oyunları")
        moviewName.append("Avatar")
        moviewName.append("Başlangıç")
        moviewName.append("Prestij")
        moviewName.append("Titanik")
        
        movieImage.append("akiloyunlari")
        movieImage.append("avatar")
        movieImage.append("baslangic")
        movieImage.append("prestij")
        movieImage.append("titanik")
        
        
        
        
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return moviewName.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = moviewName[indexPath.row]
        return cell
        
    }
 
    func tableView(_ tableView: UITableView, commit editingStyle : UITableViewCell.EditingStyle,forRowAt indexPath: IndexPath){
       if editingStyle == .delete{
           moviewName.remove(at: indexPath.row)
           movieImage.remove(at: indexPath.row)
           tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade) // animasyon tarafı
            
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tiklananIsım = moviewName[indexPath.row]
        tiklananResim = movieImage[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil) //Navigate App

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC"{
            let destination = segue.destination as! DetailsViewController
            destination.gelenName = tiklananIsım
            destination.gelenImage = tiklananResim
            
        }
    }


}

