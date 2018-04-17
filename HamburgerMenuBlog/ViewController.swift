

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var time: UILabel!
    @IBOutlet var leadingC: NSLayoutConstraint!
    @IBOutlet var trailingC: NSLayoutConstraint!
    
    @IBOutlet var ubeView: UIView!
    
    var hamburgerMenuIsVisible = false
    
    @IBAction func hamburgerBtnTapped(_ sender: Any) {
        //if the hamburger menu is NOT visible, then move the ubeView back to where it used to be
        if !hamburgerMenuIsVisible {
            leadingC.constant = 150
            //this constant is NEGATIVE because we are moving it 150 points OUTWARD and that means -150
            trailingC.constant = -150
            
            //1
            hamburgerMenuIsVisible = true
        } else {
        //if the hamburger menu IS visible, then move the ubeView back to its original position
            leadingC.constant = 0
            trailingC.constant = 0
            
            //2
            hamburgerMenuIsVisible = false
        }
        
        UIView.animate(withDuration: 0.2, delay: 0.0, options: .curveEaseIn, animations: {
            self.view.layoutIfNeeded()
        }) { (animationComplete) in
            print("The animation is complete!")
        }
    }
    
    func timeLabel (){
        let currentDatetime = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.timeStyle = .medium
        
        
      //  time.text = "\(dateFormatter.string(from : currentDatetime))"
    }
    func dateLabel(){
       /* let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        
        let date1 = Date(timeIntervalSinceReferenceDate: 118800)
        
        // US English Locale (en_US)
        dateFormatter.locale = Locale(identifier: "en_US")
       // print(dateFormatter.string(from: date1)) // Jan 2, 2001
        
        date.text = (dateFormatter.string(from: date1))
        */
        let date = Date()
        let calendar = Calendar.current
        
        let year = calendar.component(.year, from: date)
        let month = calendar.component(.month, from: date)
        let day = calendar.component(.day, from: date)
     
      //  date.text = year + month + day
    }
    override func viewDidLoad() {
       timeLabel()
        dateLabel()
        super.viewDidLoad()
        
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }


}

