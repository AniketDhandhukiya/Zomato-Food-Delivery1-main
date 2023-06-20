
import UIKit

class controller5ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    
    @IBOutlet weak var o3: UILabel!
    @IBOutlet weak var o2: UILabel!
    @IBOutlet weak var o1: UILabel!
    var array1 = [""]
    var array2 = [""]
    var array3 = [""]
    var a = ""
    var b = ""
    var c = ""
   
    var imgArray : [Int] = []
    @IBOutlet weak var cv1: UICollectionView!
    
    @IBOutlet weak var view1: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        o1.text = a
        o2.text = b
        o3.text = c
        
    }
   
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return array1.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cv1.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! menuCell
        cell.imgview1.layer.cornerRadius = 11
        cell.imgview1.layer.masksToBounds = true
        cell.addButton.layer.cornerRadius = 11
        cell.addButton.layer.masksToBounds = true
        cell.lb1.text = array1[indexPath.row]
        cell.lb2.text = array2[indexPath.row]
        cell.lb3.text = array3[indexPath.row]
        cell.imgview1.image = UIImage(named: imgArray[indexPath.row].description)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 398, height: 224)
    }


    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.row == 0{
            let nv = storyboard?.instantiateViewController(withIdentifier: "popup") as! popup
            nv.a = array2[indexPath.row]
            nv.b = array1[indexPath.row]
            present(nv, animated: false)
            
        }
        else if indexPath.row == 1{
            let nv = storyboard?.instantiateViewController(withIdentifier: "popup") as! popup
            nv.a = array2[indexPath.row]
            nv.b = array1[indexPath.row]
            present(nv, animated: false)
        }
        else if indexPath.row == 2{
            let nv = storyboard?.instantiateViewController(withIdentifier: "popup") as! popup
            nv.a = array2[indexPath.row]
            nv.b = array1[indexPath.row]
            present(nv, animated: false)
        }
        else if indexPath.row == 3{
            let nv = storyboard?.instantiateViewController(withIdentifier: "popup") as! popup
            nv.a = array2[indexPath.row]
            nv.b = array1[indexPath.row]
            present(nv, animated: false)
        }
        else if indexPath.row == 4{
            let nv = storyboard?.instantiateViewController(withIdentifier: "popup") as! popup
            nv.a = array2[indexPath.row]
            nv.b = array1[indexPath.row]
            present(nv, animated: false)
        }
        else if indexPath.row == 5{
            let nv = storyboard?.instantiateViewController(withIdentifier: "popup") as! popup
            nv.a = array2[indexPath.row]
            nv.b = array1[indexPath.row]
            present(nv, animated: false)
        }
        else if indexPath.row == 6{
            let nv = storyboard?.instantiateViewController(withIdentifier: "popup") as! popup
            nv.a = array2[indexPath.row]
            nv.b = array1[indexPath.row]
            present(nv, animated: false)
        }
    }
}
