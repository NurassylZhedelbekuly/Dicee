import UIKit

class ViewController: UIViewController {
    
    // Массив с названиями изображений кубиков
    let diceImages = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Задаем изображения кубиков при загрузке приложения
        imageView1.image = UIImage(named: "dice1")
        ImageView2.image = UIImage(named: "dice4")
        
    }

    // Связываем UIImageView с кодом через @IBOutlet
    @IBOutlet weak var imageView1: UIImageView!
    
    @IBOutlet weak var ImageView2: UIImageView!
    
    // Логика для случайного изменения изображений при нажатии на кнопку
    @IBAction func rolldice(_ sender: UIButton) {
        imageView1.image = UIImage(named: diceImages[Int(arc4random_uniform(6))])
        ImageView2.image = UIImage(named: diceImages[Int(arc4random_uniform(6))])
        
    }
}

