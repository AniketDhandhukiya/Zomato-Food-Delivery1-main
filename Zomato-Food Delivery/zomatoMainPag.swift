
import UIKit

struct MyItem {
    var image = ""
    var name = ""
    var time = ""
}

class zomatoMainPag: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout,UISearchBarDelegate {
   
    
    
    
    @IBOutlet weak var cv3: UICollectionView!
    @IBOutlet weak var searchbar: UISearchBar!
    @IBOutlet weak var cv2: UICollectionView!
    @IBOutlet weak var cv: UICollectionView!
    var imgarray = [11,12,13,14,15,16,17,18,19,20,21,22]
    var restauArray = [4,32,33,6,35,36,37,38,39,40,5,1,2,3,7,8,9,10]
    var selectedCell = 0
    var labelArray = ["J D Restaurants","Shree Sai Restaurants","McDoonald's","Mahadev Dalbaati","Taste Of Bhagwati","Chandan Bhojnalaya","Sarvottam Restaurants","Jay Jalaram Thali","Center Point","Tulsi Restaurant","Punjabi Dhaba","La Pino'z Pizza","Jeevandhara Restaurant","MK Sandwich","Octant Pizza","Anand Dhosa","Sasuma Gujarati Thali","Gita's Burger"]
    var showArr : [MyItem] = []
    let backupArr : [MyItem] = [
        MyItem(image: "1", name: "La Pino'z Pizza", time: "25-30 Min"),
        MyItem(image: "2", name: "Jeevandhara Restaurant", time: "30-35 Min"),
        MyItem(image: "3", name: "MK Sandwich", time: "40-45 Min"),
        MyItem(image: "4", name: "JD Restaurant", time: "25-30 Min"),
        MyItem(image: "5", name: "Punjabi Dhaba", time: "30-40 Min"),
        MyItem(image: "6", name: "Mahadev Dalbati", time: "30-40 Min"),
        MyItem(image: "7", name: "Octant Pizza", time: "25-30 Min"),
        MyItem(image: "8", name: "Anand Dhosa", time: "35-40 Min"),
        MyItem(image: "9", name: "Sasuma Gujarati Thali", time: "40-50 Min"),
        MyItem(image: "10", name: "Gita's Burger", time: "25-30 Min"),
        MyItem(image: "32", name: "Shree Sai Restaurants", time: "35-40 Min"),
        MyItem(image: "33", name: "McDoonald's", time: "25-30 Min"),
        //MyItem(image: "34", name: "Mahadev Dalbaati", time: "25-30 Min"),
        MyItem(image: "35", name: "Taste Of Bhagwati", time: "35-45 Min"),
        MyItem(image: "36", name: "Chandan Bhojnalaya", time: "30-45 Min"),
        MyItem(image: "37", name: "Sarvottam Restaurants", time: "30-45 Min"),
        MyItem(image: "38", name: "Jay Jalaram Thali", time: "30-45 Min"),
        MyItem(image: "39", name: "Center Point", time: "30-45 Min"),
        MyItem(image: "40", name: "Tulsi Restaurant", time: "30-45 Min"),

    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        showArr = backupArr
        cv.reloadData()
        //cv3.reloadData()        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.cv{
            return showArr.count
        }
       else if collectionView == self.cv3{
            return showArr.count
        }
        else {
            return imgarray.count
        }
       
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    
        if collectionView == self.cv{
            let item = showArr[indexPath.row]
            let cell = cv.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell1
            cell.backgroundColor = UIColor.systemGray6
            cell.layer.cornerRadius = 15
            cell.layer.masksToBounds = true
            cell.imageview.image = UIImage(named: item.image.description)
            cell.label1.text = item.name
            cell.label2.text = item.time
            return cell

        }
        
        else if collectionView == self.cv3{
            //let item2 = showArr[indexPath.row]
            let cell3 = cv3.dequeueReusableCell(withReuseIdentifier: "cell3", for: indexPath) as! CollectionViewCell3
            cell3.layer.cornerRadius = 30
            cell3.layer.masksToBounds = true
            cell3.view22.layer.cornerRadius = 15
            cell3.view22.layer.masksToBounds = true
//            cell3.layer.borderColor = UIColor.red.cgColor
//            cell3.layer.borderWidth = 1
            cell3.rateStar.layer.cornerRadius = 5
            cell3.rateStar.layer.masksToBounds = true
            cell3.labelOnImage.text = labelArray[indexPath.row]
            cell3.imageViewres.image = UIImage(named: restauArray[indexPath.row].description)

            return cell3
        }
        let cell2 = cv2.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath) as! CollectionViewCell2
            cell2.imageview2.image = UIImage(named: imgarray[indexPath.row].description)
        cell2.layer.cornerRadius = 45
        cell2.layer.masksToBounds = true
        return cell2
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == self.cv{
            return CGSize(width: 235, height: 91)
        }
        else if collectionView == self.cv3{
            return CGSize(width: 405, height: 235)
        }
        return CGSize(width: 96, height: 89)
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print("abc")
        if searchBar.text == ""{
            showArr = backupArr
        }
        else{
            showArr = []
            for i in backupArr {
                if i.name.contains(searchbar.text!) {
                    showArr.append(i)
                }
            }
        }
        cv.reloadData()
        //cv3.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == self.cv{

        if indexPath.row == 0 {
        let nv = storyboard?.instantiateViewController(withIdentifier: "controller5ViewController") as! controller5ViewController
            navigationController?.pushViewController(nv, animated: true)
            nv.array3 = ["A classic cheesy Margherita Cant go wrong Fat14.3 per 100 g Protein-12.6 per 100 g Carbohydrate-39.2 per 100 g Sugar-0 per 100 g Calories-336 k.calNutritional information per 100g","A classic cheesy Margherita Cant go wrong Fat14.3 per 100 g Protein-12.6 per 100 g Carbohydrate-39.2 per 100 g Sugar-0 per 100 g Calories-336 k.calNutritional information per 100g","A classic cheesy Margherita Cant go wrong Fat14.3 per 100 g Protein-12.6 per 100 g Carbohydrate-39.2 per 100 g Sugar-0 per 100 g Calories-336 k.calNutritional information per 100g","A classic cheesy Margherita Cant go wrong Fat14.3 per 100 g Protein-12.6 per 100 g Carbohydrate-39.2 per 100 g Sugar-0 per 100 g Calories-336 k.calNutritional information per 100g","A classic cheesy Margherita Cant go wrong Fat14.3 per 100 g Protein-12.6 per 100 g Carbohydrate-39.2 per 100 g Sugar-0 per 100 g Calories-336 k.calNutritional information per 100g","A classic cheesy Margherita Cant go wrong Fat14.3 per 100 g Protein-12.6 per 100 g Carbohydrate-39.2 per 100 g Sugar-0 per 100 g Calories-336 k.calNutritional information per 100g","A classic cheesy Margherita Cant go wrong Fat14.3 per 100 g Protein-12.6 per 100 g Carbohydrate-39.2 per 100 g Sugar-0 per 100 g Calories-336 k.calNutritional information per 100g"]
            nv.array2 = ["₹145","₹275","₹195","₹139","₹195","₹79","₹295"]
            nv.array1 = ["Margherita Pizza","7 Cheesy Pizza","Spicy Cheesy","Capsicum & Paneer Pizza","Farm Villa Pizza","Capsicum Pizza","Perry Perry Pizza"]
            nv.imgArray = [101,102,103,104,105,106,107]
            nv.a = "La Pino'z Pizza"
            nv.b = "Pizza, Pasta, Italian"
            nv.c = "Varachha, Surat"
        }
        else if indexPath.row == 1 {
        let nv = storyboard?.instantiateViewController(withIdentifier: "controller5ViewController") as! controller5ViewController
            navigationController?.pushViewController(nv, animated: true)
            nv.array3 = ["Chief's Special","Paneer Special","Sweet Tasty","Spicy Taste, Paneer, Capsicum with Gravy","Jeevandhar Sp.","Rice with Tadka","dal Jeera rice"]
            nv.array2 = ["₹200","₹190","₹280","₹140","₹200","₹150","₹120"]
            nv.array1 = ["Punjabi Thali","Jeevandhara Thali","Paneer Handi","Gujarati Thali","Jeevandhara Special Dal Khichdi","Dal Fry","Masala Dosa"]
            nv.imgArray = [33333,33333,333333,33333,33333,33333,33333]
            nv.a = "Jeevandhara Restaurant"
            nv.b = "Punjabi, South Indian, Chinese"
            nv.c = "Varachha, Surat"
        }
        else if indexPath.row == 2 {
        let nv = storyboard?.instantiateViewController(withIdentifier: "controller5ViewController") as! controller5ViewController
            navigationController?.pushViewController(nv, animated: true)
            nv.array3 = ["[Spicy]House special schezwan sauce with veggies and cheese.","vegetables and cheese loaded with house special dressing.","","Open sub with tandoori and spicy touch with paneer and capsicum.","paneer cubes marianted with tandoori veg.","Our house special Russian salad between twop layers.","An italian classic in a asandwich twist."]
            nv.array2 = ["₹231","₹258","₹280","₹131","₹220","₹73","₹240"]
            nv.array1 = ["Schezwan Mayo Sandwich","Boss(Best Of Shakti Sandwich)","Mexican","Paneer Tandoori","Russian Mayo Sandwich","Bread Butter","Pizza Sandwich"]
            nv.imgArray = [501,502,503,504,505,506,507]
            nv.a = "M.K Sandwich"
            nv.b = "Sandwich, Fast Food, Beverages"
            nv.c = "Mota Varachha, Surat"
        }
        else if indexPath.row == 3 {
        let nv = storyboard?.instantiateViewController(withIdentifier: "controller5ViewController") as! controller5ViewController
            navigationController?.pushViewController(nv, animated: true)
            nv.array3 = ["Chunks of cheese simmered in a delicious tomato gravy finished in loads of butter.","Roasted Cashew Nuts (Kaju) Cooked In A Tomato, Onion And Spices Based Rich And Creamy Gravy.","Roasted Cashew Nuts (Kaju) Cooked In A Tomato, Onion And Spices Based Rich And Creamy Gravy.","Roasted Cashew Nuts (Kaju) Cooked In A Tomato, Onion And Spices Based Rich And Creamy Gravy.","","Our house special Paneer tadka.",""]
            nv.array2 = ["₹150","₹145","₹310","₹350","₹270","₹250","₹50"]
            nv.array1 = ["Gujarati Thali","Mysore Masala Dosa","Kaju Curry","Paneer Tikka Masala","Kaju Masala","Veg Paneer Handi","Naan"]
            nv.imgArray = [601,602,603,604,605,606,607]
            nv.a = "J D Restaurant"
            nv.b = "Punjabi, Fast Food, South indian"
            nv.c = "Varachha, Surat"
        }
        else if indexPath.row == 4 {
        let nv = storyboard?.instantiateViewController(withIdentifier: "controller5ViewController") as! controller5ViewController
            navigationController?.pushViewController(nv, animated: true)
            nv.array3 = ["Chunks of cheese simmered in a delicious tomato gravy finished in loads of butter.","Roasted Cashew Nuts (Kaju) Cooked In A Tomato, Onion And Spices Based Rich And Creamy Gravy.","Roasted Cashew Nuts (Kaju) Cooked In A Tomato, Onion And Spices Based Rich And Creamy Gravy.","Roasted Cashew Nuts (Kaju) Cooked In A Tomato, Onion And Spices Based Rich And Creamy Gravy.","","Our house special Paneer tadka.",""]
            nv.array2 = ["₹150","₹145","₹310","₹350","₹270","₹250","₹50"]
            nv.array1 = ["Gujarati Thali","Mysore Masala Dosa","Kaju Curry","Paneer Tikka Masala","Kaju Masala","Veg Paneer Handi","Naan"]
            nv.imgArray = [701,702,703,704,705,706,707]
            nv.a = "Punjabi Dhaba"
            nv.b = "Punjabi"
            nv.c = "Katargam, Surat"
        }
        else if indexPath.row == 5 {
        let nv = storyboard?.instantiateViewController(withIdentifier: "controller5ViewController") as! controller5ViewController
            navigationController?.pushViewController(nv, animated: true)
            nv.array3 = ["Chunks of cheese simmered in a delicious tomato gravy finished in loads of butter.","Roasted Cashew Nuts (Kaju) Cooked In A Tomato, Onion And Spices Based Rich And Creamy Gravy.","Roasted Cashew Nuts (Kaju) Cooked In A Tomato, Onion And Spices Based Rich And Creamy Gravy.","Roasted Cashew Nuts (Kaju) Cooked In A Tomato, Onion And Spices Based Rich And Creamy Gravy.","","Our house special Paneer tadka.",""]
            nv.array2 = ["₹220","₹240","₹280","₹30","₹180","₹210","₹20"]
            nv.array1 = ["Dal Bati Jumbo","Dal Bati and Churma Combo","Special Dal Bati","Buttermilk","Dry Fruit Churma","Dal churma","Bati"]
            nv.imgArray = [751,752,753,754,755,756,757]
            nv.a = "Mahadev Dal Bati"
            nv.b = "Rajasthani"
            nv.c = "Magob, Surat"
        }
        else if indexPath.row == 6 {
        let nv = storyboard?.instantiateViewController(withIdentifier: "controller5ViewController") as! controller5ViewController
            navigationController?.pushViewController(nv, animated: true)
            nv.array3 = ["Chunks of cheese simmered in a delicious tomato gravy finished in loads of butter.","Roasted Cashew Nuts (Kaju) Cooked In A Tomato, Onion And Spices Based Rich And Creamy Gravy.","Roasted Cashew Nuts (Kaju) Cooked In A Tomato, Onion And Spices Based Rich And Creamy Gravy.","Roasted Cashew Nuts (Kaju) Cooked In A Tomato, Onion And Spices Based Rich And Creamy Gravy.","","Our house special Paneer tadka.",""]
            
            nv.array2 = ["₹220","₹2540","₹280","₹370","₹280","₹310","₹340"]
            nv.array1 = ["Margherita Pizza","Cheese Burst","Special Octant Pizza","Buttermilk","Real Peprico Pizza","Giant Slice","Paneer Makhhani"]
            nv.imgArray = [101,102,103,104,105,106,107]
            nv.a = "Octant pizza"
            nv.b = "Pizaa"
            nv.c = "Vesu, Surat"
            }
            else if indexPath.row == 7 {
            let nv = storyboard?.instantiateViewController(withIdentifier: "controller5ViewController") as! controller5ViewController
                navigationController?.pushViewController(nv, animated: true)
                nv.array3 = ["Chunks of cheese simmered in a delicious tomato gravy finished in loads of butter.","Roasted Cashew Nuts (Kaju) Cooked In A Tomato, Onion And Spices Based Rich And Creamy Gravy.","Roasted Cashew Nuts (Kaju) Cooked In A Tomato, Onion And Spices Based Rich And Creamy Gravy.","Roasted Cashew Nuts (Kaju) Cooked In A Tomato, Onion And Spices Based Rich And Creamy Gravy.","","Our house special Paneer tadka.",""]
                nv.array2 = ["₹220","₹2540","₹280","₹370","₹280","₹310","₹340"]
                nv.array1 = ["Paper","Masala Dhosa","Maisur Dhosa","Buttermilk","Pizza Paper Dhosa","Cheese Paper","Jinnie Roll Dhosa"]
                nv.imgArray = [101,102,103,104,105,106,107]
                nv.a = "Anand Dhosa"
                nv.b = "South Indian"
                nv.c = "Katargam, Surat"
                }
        }
        if collectionView == self.cv2{
            if indexPath.row == 0{
                let nv = storyboard?.instantiateViewController(withIdentifier: "controller5ViewController") as! controller5ViewController
                    navigationController?.pushViewController(nv, animated: true)
                    nv.array3 = ["Chunks of cheese simmered in a delicious tomato gravy finished in loads of butter.","Roasted Cashew Nuts (Kaju) Cooked In A Tomato, Onion And Spices Based Rich And Creamy Gravy.","Roasted Cashew Nuts (Kaju) Cooked In A Tomato, Onion And Spices Based Rich And Creamy Gravy.","Roasted Cashew Nuts (Kaju) Cooked In A Tomato, Onion And Spices Based Rich And Creamy Gravy.","","Our house special Paneer tadka.",""]
                    nv.array2 = ["₹220","₹240","₹280","₹30","₹180","₹210","₹20"]
                    nv.array1 = ["Dal Bati Jumbo","Dal Bati and Churma Combo","Special Dal Bati","Buttermilk","Dry Fruit Churma","Dal churma","Bati"]
                    nv.imgArray = [751,752,753,754,755,756,757]
                    nv.a = "Mahadev Dal Bati"
                    nv.b = "Rajasthani"
                    nv.c = "Magob, Surat"
            }
            else if indexPath.row == 1{
                let nv = storyboard?.instantiateViewController(withIdentifier: "controller5ViewController") as! controller5ViewController
                    navigationController?.pushViewController(nv, animated: true)
                    nv.array3 = ["[Spicy]House special schezwan sauce with veggies and cheese.","vegetables and cheese loaded with house special dressing.","","Open sub with tandoori and spicy touch with paneer and capsicum.","paneer cubes marianted with tandoori veg.","Our house special Russian salad between twop layers.","An italian classic in a asandwich twist."]
                    nv.array2 = ["₹231","₹258","₹280","₹131","₹220","₹73","₹240"]
                    nv.array1 = ["Schezwan Mayo Sandwich","Boss(Best Of Shakti Sandwich)","Mexican","Paneer Tandoori","Russian Mayo Sandwich","Bread Butter","Pizza Sandwich"]
                    nv.imgArray = [501,502,503,504,505,506,507]
                    nv.a = "M.K Sandwich"
                    nv.b = "Sandwich, Fast Food, Beverages"
                    nv.c = "Mota Varachha, Surat"
                }
                else if indexPath.row == 2 {
                    let nv = storyboard?.instantiateViewController(withIdentifier: "controller5ViewController") as! controller5ViewController
                        navigationController?.pushViewController(nv, animated: true)
                        nv.array3 = ["A classic cheesy Margherita Cant go wrong Fat14.3 per 100 g Protein-12.6 per 100 g Carbohydrate-39.2 per 100 g Sugar-0 per 100 g Calories-336 k.calNutritional information per 100g","A classic cheesy Margherita Cant go wrong Fat14.3 per 100 g Protein-12.6 per 100 g Carbohydrate-39.2 per 100 g Sugar-0 per 100 g Calories-336 k.calNutritional information per 100g","A classic cheesy Margherita Cant go wrong Fat14.3 per 100 g Protein-12.6 per 100 g Carbohydrate-39.2 per 100 g Sugar-0 per 100 g Calories-336 k.calNutritional information per 100g","A classic cheesy Margherita Cant go wrong Fat14.3 per 100 g Protein-12.6 per 100 g Carbohydrate-39.2 per 100 g Sugar-0 per 100 g Calories-336 k.calNutritional information per 100g","A classic cheesy Margherita Cant go wrong Fat14.3 per 100 g Protein-12.6 per 100 g Carbohydrate-39.2 per 100 g Sugar-0 per 100 g Calories-336 k.calNutritional information per 100g","A classic cheesy Margherita Cant go wrong Fat14.3 per 100 g Protein-12.6 per 100 g Carbohydrate-39.2 per 100 g Sugar-0 per 100 g Calories-336 k.calNutritional information per 100g","A classic cheesy Margherita Cant go wrong Fat14.3 per 100 g Protein-12.6 per 100 g Carbohydrate-39.2 per 100 g Sugar-0 per 100 g Calories-336 k.calNutritional information per 100g"]
                        nv.array2 = ["₹145","₹275","₹195","₹139","₹195","₹79","₹295"]
                        nv.array1 = ["Margherita Pizza","7 Cheesy Pizza","Spicy Cheesy","Capsicum & Paneer Pizza","Farm Villa Pizza","Capsicum Pizza","Perry Perry Pizza"]
                        nv.imgArray = [101,102,103,104,105,106,107]
                        nv.a = "La Pino'z Pizza"
                        nv.b = "Pizza, Pasta, Italian"
                        nv.c = "Varachha, Surat"
            }
        }
        if collectionView == self.cv3{
            if indexPath.row == 0{
                let nv = storyboard?.instantiateViewController(withIdentifier: "controller5ViewController") as! controller5ViewController
                    navigationController?.pushViewController(nv, animated: true)
                    nv.array3 = ["Chunks of cheese simmered in a delicious tomato gravy finished in loads of butter.","Roasted Cashew Nuts (Kaju) Cooked In A Tomato, Onion And Spices Based Rich And Creamy Gravy.","Roasted Cashew Nuts (Kaju) Cooked In A Tomato, Onion And Spices Based Rich And Creamy Gravy.","Roasted Cashew Nuts (Kaju) Cooked In A Tomato, Onion And Spices Based Rich And Creamy Gravy.","","Our house special Paneer tadka.",""]
                    nv.array2 = ["₹150","₹145","₹310","₹350","₹270","₹250","₹50"]
                    nv.array1 = ["Gujarati Thali","Mysore Masala Dosa","Kaju Curry","Paneer Tikka Masala","Kaju Masala","Veg Paneer Handi","Naan"]
                    nv.imgArray = [601,602,603,604,605,606,607]
                    nv.a = "J D Restaurant"
                    nv.b = "Punjabi, Fast Food, South indian"
                    nv.c = "Varachha, Surat"
            }
           else if indexPath.row == 1{
                let nv = storyboard?.instantiateViewController(withIdentifier: "controller5ViewController") as! controller5ViewController
                    navigationController?.pushViewController(nv, animated: true)
                    nv.array3 = ["Chunks of cheese simmered in a delicious tomato gravy finished in loads of butter.","Roasted Cashew Nuts (Kaju) Cooked In A Tomato, Onion And Spices Based Rich And Creamy Gravy.","Roasted Cashew Nuts (Kaju) Cooked In A Tomato, Onion And Spices Based Rich And Creamy Gravy.","Roasted Cashew Nuts (Kaju) Cooked In A Tomato, Onion And Spices Based Rich And Creamy Gravy.","","Our house special Paneer tadka.",""]
                    nv.array2 = ["₹150","₹145","₹310","₹350","₹270","₹250","₹50"]
                    nv.array1 = ["Gujarati Thali","Mysore Masala Dosa","Kaju Curry","Paneer Tikka Masala","Kaju Masala","Veg Paneer Handi","Naan"]
                    nv.imgArray = [601,602,603,604,605,606,607]
                    nv.a = "Shree Sai Restaurants"
                    nv.b = "Punjabi, South indian"
                    nv.c = "Varachha, Surat"
            }
            else if indexPath.row == 2{
                let nv = storyboard?.instantiateViewController(withIdentifier: "controller5ViewController") as! controller5ViewController
                    navigationController?.pushViewController(nv, animated: true)
                    nv.array3 = ["Chunks of cheese simmered in a delicious tomato gravy finished in loads of butter.","Roasted Cashew Nuts (Kaju) Cooked In A Tomato, Onion And Spices Based Rich And Creamy Gravy.","Roasted Cashew Nuts (Kaju) Cooked In A Tomato, Onion And Spices Based Rich And Creamy Gravy.","Roasted Cashew Nuts (Kaju) Cooked In A Tomato, Onion And Spices Based Rich And Creamy Gravy.","","Our house special Paneer tadka.",""]
                    nv.array2 = ["₹90","₹280","₹110","₹350","₹49","₹160","₹269"]
                    nv.array1 = ["French Fries","Burger + Coke + French Fries","Aloo Tikki Burger","Double Cheese Burger","Coffe","Mac Puff","Shezwan Burger"]
                    nv.imgArray = [555,555,555,555,555,555,555]
                    nv.a = "Mac'D"
                    nv.b = "Burger, Cold Drinks, Coffee"
                    nv.c = "Sarthana, Surat"
            }
            if indexPath.row == 3{
                let nv = storyboard?.instantiateViewController(withIdentifier: "controller5ViewController") as! controller5ViewController
                    navigationController?.pushViewController(nv, animated: true)
                    nv.array3 = ["Chunks of cheese simmered in a delicious tomato gravy finished in loads of butter.","Roasted Cashew Nuts (Kaju) Cooked In A Tomato, Onion And Spices Based Rich And Creamy Gravy.","Roasted Cashew Nuts (Kaju) Cooked In A Tomato, Onion And Spices Based Rich And Creamy Gravy.","Roasted Cashew Nuts (Kaju) Cooked In A Tomato, Onion And Spices Based Rich And Creamy Gravy.","","Our house special Paneer tadka.",""]
                    nv.array2 = ["₹220","₹240","₹280","₹30","₹180","₹210","₹20"]
                    nv.array1 = ["Dal Bati Jumbo","Dal Bati and Churma Combo","Special Dal Bati","Buttermilk","Dry Fruit Churma","Dal churma","Bati"]
                    nv.imgArray = [751,752,753,754,755,756,757]
                    nv.a = "Mahadev Dal Bati"
                    nv.b = "Rajasthani"
                    nv.c = "Magob, Surat"
            }
            else if indexPath.row == 4 {
            let nv = storyboard?.instantiateViewController(withIdentifier: "controller5ViewController") as! controller5ViewController
                navigationController?.pushViewController(nv, animated: true)
                nv.array3 = ["Chunks of cheese simmered in a delicious tomato gravy finished in loads of butter.","Roasted Cashew Nuts (Kaju) Cooked In A Tomato, Onion And Spices Based Rich And Creamy Gravy.","Roasted Cashew Nuts (Kaju) Cooked In A Tomato, Onion And Spices Based Rich And Creamy Gravy.","Roasted Cashew Nuts (Kaju) Cooked In A Tomato, Onion And Spices Based Rich And Creamy Gravy.","","Our house special Paneer tadka.",""]
                
                nv.array2 = ["₹220","₹2540","₹280","₹370","₹280","₹310","₹340"]
                nv.array1 = ["Margherita Pizza","Cheese Burst","Special Octant Pizza","Buttermilk","Real Peprico Pizza","Giant Slice","Paneer Makhhani"]
                nv.imgArray = [101,102,103,104,105,106,107]
                nv.a = "Taste Of Bhagvati"
                nv.b = "Pizaa"
                nv.c = "Katargam, Surat"
                }
        }
    }
    
}
