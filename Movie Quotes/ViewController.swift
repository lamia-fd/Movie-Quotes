//
//  ViewController.swift
//  Movie Quotes
//
//  Created by لمياء فالح الدوسري on 17/05/1443 AH.
//

import UIKit
import Kingfisher

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()


    }


}

extension ViewController : UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return movie.movies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.nameLable.text=movie.movies[indexPath.row].name
        cell.imgView.kf.setImage(with: URL(string:movie.movies[indexPath.row].img))
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {


        let page2=self.storyboard?.instantiateViewController(withIdentifier: "secondPage") as! quotesView
        page2.qText = movie.movies[indexPath.row].q

        self.navigationController?.pushViewController(page2, animated: true)

       // self.navigationController?.pushViewController(page2, animated: true)
        //self.presentedViewController(page2,animated:true,completion:nil)

        //self.presentedViewController?.present(page2, animated: true, completion: nil)
//        let newCard =
//        self.storyboard!.instantiateViewControllerWithIdentifier("Main") as? DestViewController
//        newCard.Content = Notetitle.text!
//        self.presentViewController(newCard!, animated: true, completion:nil)
    }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//
//
//
//                let nc=segue.destination as! UINavigationController
//                let addtext = nc.topViewController as! quotesView
//
//                let indexPath = sender as! NSIndexPath
//        let item = movie.movies[indexPath.row].q
//        addtext.qText = item
//
//
//    }
    
    
}
struct movie{
    
   static var movies=[(name:"Star Wars",img:"https://lumiere-a.akamaihd.net/v1/images/avco_payoff_1-sht_v7_lg_32e68793.jpeg?region=0%2C0%2C1620%2C2400&width=960",q:"May the Force be with you")
                ,(name:"The Help",img:"https://m.media-amazon.com/images/M/MV5BMTM5OTMyMjIxOV5BMl5BanBnXkFtZTcwNzU4MjIwNQ@@._V1_.jpg",q:"You is kind. You is smart. You is important"),(name:"The Lord of the Rings",img:"https://m.media-amazon.com/images/M/MV5BN2EyZjM3NzUtNWUzMi00MTgxLWI0NTctMzY4M2VlOTdjZWRiXkEyXkFqcGdeQXVyNDUzOTQ5MjY@._V1_.jpg",q:"My precious")
                ,(name:"Finding Nemo",img:"https://s1.gaming-cdn.com/images/products/4059/orig/game-steam-disney-pixar-finding-nemo-cover.jpg",q:"Just keep swimming")
               ,(name:"Star Wars",img:"https://lumiere-a.akamaihd.net/v1/images/avco_payoff_1-sht_v7_lg_32e68793.jpeg?region=0%2C0%2C1620%2C2400&width=960",q:"Star Wars")
                ,(name:"The Help",img:"https://m.media-amazon.com/images/M/MV5BMTM5OTMyMjIxOV5BMl5BanBnXkFtZTcwNzU4MjIwNQ@@._V1_.jpg",q:"You is kind. You is smart. You is important"),(name:"The Lord of the Rings",img:"https://m.media-amazon.com/images/M/MV5BN2EyZjM3NzUtNWUzMi00MTgxLWI0NTctMzY4M2VlOTdjZWRiXkEyXkFqcGdeQXVyNDUzOTQ5MjY@._V1_.jpg",q:"My precious")
                ,(name:"Finding Nemo",img:"https://s1.gaming-cdn.com/images/products/4059/orig/game-steam-disney-pixar-finding-nemo-cover.jpg",q:"Just keep swimming"),(name:"Star Wars",img:"https://lumiere-a.akamaihd.net/v1/images/avco_payoff_1-sht_v7_lg_32e68793.jpeg?region=0%2C0%2C1620%2C2400&width=960",q:"Star Wars")
                ,(name:"The Help",img:"https://m.media-amazon.com/images/M/MV5BMTM5OTMyMjIxOV5BMl5BanBnXkFtZTcwNzU4MjIwNQ@@._V1_.jpg",q:"You is kind. You is smart. You is important"),(name:"The Lord of the Rings",img:"https://m.media-amazon.com/images/M/MV5BN2EyZjM3NzUtNWUzMi00MTgxLWI0NTctMzY4M2VlOTdjZWRiXkEyXkFqcGdeQXVyNDUzOTQ5MjY@._V1_.jpg",q:"My precious")
                ,(name:"Finding Nemo",img:"https://s1.gaming-cdn.com/images/products/4059/orig/game-steam-disney-pixar-finding-nemo-cover.jpg",q:"Just keep swimming"),(name:"Star Wars",img:"https://lumiere-a.akamaihd.net/v1/images/avco_payoff_1-sht_v7_lg_32e68793.jpeg?region=0%2C0%2C1620%2C2400&width=960",q:"Star Wars")
                ,(name:"The Help",img:"https://m.media-amazon.com/images/M/MV5BMTM5OTMyMjIxOV5BMl5BanBnXkFtZTcwNzU4MjIwNQ@@._V1_.jpg",q:"You is kind. You is smart. You is important"),(name:"The Lord of the Rings",img:"https://m.media-amazon.com/images/M/MV5BN2EyZjM3NzUtNWUzMi00MTgxLWI0NTctMzY4M2VlOTdjZWRiXkEyXkFqcGdeQXVyNDUzOTQ5MjY@._V1_.jpg",q:"My precious")
                ,(name:"Finding Nemo",img:"https://s1.gaming-cdn.com/images/products/4059/orig/game-steam-disney-pixar-finding-nemo-cover.jpg",q:"Just keep swimming") ]
    
}
