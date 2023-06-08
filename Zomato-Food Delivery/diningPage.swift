
import UIKit

struct items{
    var img = ""
    var name = ""
    var location = ""
}

class diningPage: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout,UISearchBarDelegate {
    
    @IBOutlet weak var searchBar: UISearchBar!
    
    
    @IBOutlet weak var cv1: UICollectionView!
    
    var showArr : [items] = []
    var backupArr : [items] = [
        items(img: "71", name: "Banana Patra", location: "Varachha, Surat"),
        items(img: "72", name: "Harikrushna Restaurant", location: "Varachha, Surat"),
        items(img: "73", name: "Hotel Tulsi", location: "Varachha, Surat"),
        items(img: "74", name: "La pino'z Pizza", location: "Varachha, Surat"),
        items(img: "75", name: "Sonal Bhel & Fast Food", location: "Varachha, Surat"),
        items(img: "76", name: "Veggie House", location: "Varachha, Surat"),
        items(img: "77", name: "Falafel Lovers", location: "Varachha, Surat"),
        items(img: "78", name: "Bhavnagar Ice Dish Gola - Doctor House", location: "Varachha, Surat"),
        items(img: "79", name: "Jay Ambe Ma Chole Bhature", location: "Varachha, Surat"),
        items(img: "80", name: "Laxmi Food Inn", location: "Varachha, Surat"),
//        items(img: <#T##String#>, name: <#T##String#>, location: <#T##String#>),
//        items(img: <#T##String#>, name: <#T##String#>, location: <#T##String#>),
//        items(img: <#T##String#>, name: <#T##String#>, location: <#T##String#>),
//        items(img: <#T##String#>, name: <#T##String#>, location: <#T##String#>),
//        items(img: <#T##String#>, name: <#T##String#>, location: <#T##String#>),
    ]
    
    @IBOutlet weak var iv1: UIImageView!
    @IBOutlet weak var iv2: UIImageView!
    @IBOutlet weak var iv3: UIImageView!
    @IBOutlet weak var iv4: UIImageView!
    @IBOutlet weak var iv5: UIImageView!
    @IBOutlet weak var iv6: UIImageView!
    @IBOutlet weak var iv7: UIImageView!

    


    override func viewDidLoad() {
        super.viewDidLoad()
        iv1.layer.cornerRadius = 10
        iv1.layer.masksToBounds = true
        iv2.layer.cornerRadius = 10
        iv2.layer.masksToBounds = true
        iv3.layer.cornerRadius = 10
        iv3.layer.masksToBounds = true
        iv4.layer.cornerRadius = 10
        iv4.layer.masksToBounds = true
        iv5.layer.cornerRadius = 10
        iv5.layer.masksToBounds = true
        iv6.layer.cornerRadius = 10
        iv6.layer.masksToBounds = true
        iv7.layer.cornerRadius = 10
        iv7.layer.masksToBounds = true
        showArr = backupArr
        cv1.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return showArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var item = showArr[indexPath.row]
        let cell = cv1.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell222
        cell.view.layer.cornerRadius = 20
        cell.view.layer.masksToBounds = true
        cell.imageview.layer.cornerRadius = 10
        cell.imageview.layer.masksToBounds = true
        cell.imageview.image = UIImage(named: item.img.description)
        cell.label11.text = item.name
        cell.label22.text = item.location
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 398.5, height: 304)
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchBar.text == ""{
            showArr = backupArr
        }
        else{
            showArr = []
            for i in backupArr{
                if i.name.contains(searchBar.text!){
                    showArr.append(i)
                }
            }
        }
        cv1.reloadData()                       
    }
}
