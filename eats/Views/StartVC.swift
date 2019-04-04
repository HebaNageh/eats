//
//  StartVC.swift
//  eats
//
//  Created by mac on 20/07/1440 AH.
//  Copyright © 1440 mac. All rights reserved.
//

import UIKit

class StartVC: UIViewController , UICollectionViewDelegate, UICollectionViewDataSource , UIScrollViewDelegate {

    @IBOutlet weak var signInBtn: CustomUIButton!
    @IBOutlet weak var adCV: UICollectionView!
    @IBOutlet weak var signUpBtn: UIButton!
    @IBOutlet weak var skipBtn: UIButton!
    @IBOutlet weak var adsPC: UIPageControl!
    
    var banner = [UIImage]()
    var adTitles = [String]()
    var adDetails = [String]()
    var adsCVCells = [AdCVCell]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        signUpBtn.layer.cornerRadius = 15
        banner = [
            UIImage(named: "banner0.png")!,
            UIImage(named: "banner1.png")!,
            UIImage(named: "banner2.png")!
        ]
        
        adTitles = ["Find food you love","Fast Delivery","Real time Tracking"]
        adDetails = ["Discover the best menus from over 100 cuisins and resturants","Fast delivery to your home & office we dekiver it wherever you are","Enjoy the experience of real time tracking of your food"]
        
        adsPC.numberOfPages = banner.count
        adsPC.currentPage = 0
        startTimer()
        // Do any additional setup after loading the view.
    }
    

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3;
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "adCVCell", for: indexPath as IndexPath) as! AdCVCell
        cell.adImg.image = banner[indexPath.row]
        cell.adTitleLbl.text = adTitles[indexPath.row]
        cell.adDetailsLbl.text = adDetails[indexPath.row]
        cell.blueLbl.layer.cornerRadius = 1.5
        self.adsPC.currentPage = indexPath.row
        adsCVCells.append(cell)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.adsPC.currentPage = indexPath.row
    }

    private func startTimer() {
        
        let timer =  Timer.scheduledTimer(timeInterval: 5.0, target: self, selector: #selector(self.scrollAutomatically), userInfo: nil, repeats: true)
    }
    
    
    @objc func scrollAutomatically(_ timer1: Timer) {
        
        if let coll  = adCV {
            for cell in coll.visibleCells {
                let indexPath: IndexPath? = coll.indexPath(for: cell)
                if ((indexPath?.row)!  < banner.count - 1 ){
                    let indexPath1: IndexPath?
                    indexPath1 = IndexPath.init(row: (indexPath?.row)! + 1, section: (indexPath?.section)!)
                    
                    coll.scrollToItem(at: indexPath1!, at: .right, animated: true)
                    self.adsPC.currentPage = (indexPath1?.row)!
                }
                else{
                    let indexPath1: IndexPath?
                    indexPath1 = IndexPath.init(row: 0, section: (indexPath?.section)!)
                    coll.scrollToItem(at: indexPath1!, at: .left, animated: true)
                    self.adsPC.currentPage = (indexPath1?.row)!
                }
                
            }
        }
    }

    private func ScaleImage() {
    
        let maximumHorizontalOffset: CGFloat = adCV.contentSize.width - adCV.frame.width
        let currentHorizontalOffset: CGFloat = adCV.contentOffset.x
        
        // vertical
        let maximumVerticalOffset: CGFloat = adCV.contentSize.height - adCV.frame.height
        let currentVerticalOffset: CGFloat = adCV.contentOffset.y
        
        let percentageHorizontalOffset: CGFloat = currentHorizontalOffset / maximumHorizontalOffset
        let percentageVerticalOffset: CGFloat = currentVerticalOffset / maximumVerticalOffset
        /*
         * below code scales the imageview on paging the collectionview
         */
        let percentOffset: CGPoint = CGPoint(x: percentageHorizontalOffset, y: percentageVerticalOffset)
       
        if (adsCVCells.count == 3) {
            if(percentOffset.x > 0 && percentOffset.x <= 0.25) {
            
            adsCVCells[0].adImg.transform = CGAffineTransform(scaleX: (0.25-percentOffset.x)/0.25, y: (0.25-percentOffset.x)/0.25)
            adsCVCells[1].adImg.transform = CGAffineTransform(scaleX: percentOffset.x/0.25, y: percentOffset.x/0.25)
            
            } else if(percentOffset.x > 0.25 && percentOffset.x <= 0.50) {
            adsCVCells[1].adImg.transform = CGAffineTransform(scaleX: (0.50-percentOffset.x)/0.25, y: (0.50-percentOffset.x)/0.25)
            adsCVCells[2].adImg.transform = CGAffineTransform(scaleX: percentOffset.x/0.50, y: percentOffset.x/0.50)
            
            } 
        }
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView)
    {
        //ScaleImage()
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
