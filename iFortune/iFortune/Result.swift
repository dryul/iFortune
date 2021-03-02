//
//  Result.swift
//  iFortune
//
//  Created by MacOS on 01.02.21.
//  Copyright © 2021 MacOS. All rights reserved.
//

import UIKit

class Result: UIViewController {
    var cardNum:Int = 0
    var items = [0,1,2,3,4,5,6,7,8,9,10,11]
    var items_copy = [0,1,2,3,4,5,6,7,8,9,10,11]
    var shuffled_items = [Int]()

    @IBOutlet weak var textLable: UILabel!
    
    @IBOutlet weak var cardImage: UIImageView!
    
    @IBOutlet weak var nameCard: UILabel!
    @IBAction func back(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for  _ in 0..<items.count{
            let rand = Int(arc4random_uniform(UInt32(items.count)))
            shuffled_items.append(items[rand])
            items.remove(at: rand)
        }
        items = items_copy
        if shuffled_items[cardNum] == 0 {
            cardImage.image = UIImage(named:"card0")
            nameCard.text = "Дурак"
            textLable.text = "Вам предстоит много новых и интересных дел. В личной жизни не помешают романтика и комплементы. Доверяйте инстинктам и верьте в мечты."
        }
        if shuffled_items[cardNum] == 1 {
            cardImage.image = UIImage(named:"card1")
            nameCard.text = "Маг"
            textLable.text = "Необходимо проявить свою инициативу, показать логику и благорозумие. Ничего не помешает принять решение. Нужно использовать свои силы и не бояться рисковать."
        }
        if shuffled_items[cardNum] == 2 {
            cardImage.image = UIImage(named:"card2")
            nameCard.text = "Верховная жрица"
            textLable.text = "Прислушайтесь к внутреннему голосу и перестаньте искать оправдания. Обязательно проявляйте доброту к окружающим."
        }
        if shuffled_items[cardNum] == 3 {
            cardImage.image = UIImage(named:"card3")
            nameCard.text = "Императрица"
            textLable.text = "Сегодня вас ждет увлекательный день. Позабытые обстоятельства начнут бурно развиваться. Вас ожидает успех, а все потому что интуиция ведет вас в правильном направлении."
        }
        if shuffled_items[cardNum] == 4 {
            cardImage.image = UIImage(named:"card4")
            nameCard.text = "Император"
            textLable.text = "Сегодня Вам удастся все, за что Вы будете браться. Но стоит дважды подумать, прежде чем давать в долг или одалживаться самому. "
        }
        if shuffled_items[cardNum] == 5 {
            cardImage.image = UIImage(named:"card5")
            nameCard.text = "Иерофант"
            textLable.text = "Сегодня вы получите разумный совет или подсказку для решения всех проблем. Также не стоит самоутверждаться за счет кого-либо. Взгляните на все с новой стороны."
        }
        if shuffled_items[cardNum] == 6 {
            cardImage.image = UIImage(named:"card6")
            nameCard.text = "Влюбленные"
            textLable.text = "Необходимо принять окончательное решение. Пусть внутренний голос, сердце и ум подскажут Вам правильное решение. Если Вы хотели сделать предложение девушке, то сегодня тот самый день."
        }
        if shuffled_items[cardNum] == 7 {
            cardImage.image = UIImage(named:"card7")
            nameCard.text = "Колесница"
            textLable.text = "Сегодня самое время достигать своих целей, главное сосредоточиться. Очень важно быть бдительным в любых ситуациях, проявляя свою изобретательность и самообладание."
        }
        if shuffled_items[cardNum] == 8 {
            cardImage.image = UIImage(named:"card8")
            nameCard.text = "Правосудие"
            textLable.text = "Хорошо и трезво размышляйте над текущими делами. Ваш партнер или друг вешает Вам на уши лапшу. Сегодня есть риск что-то потерять, понести незаслуженную обиду или пустить деньги по ветру."
        }
        if shuffled_items[cardNum] == 9 {
            cardImage.image = UIImage(named:"card9")
            nameCard.text = "Отшельник"
            textLable.text = "Сегодня следует полагаться лишь на себя самого. День отлично подходит для ухода за собой,  духовной практики и оценки собственной личности. Растите над собой, но не пренебрегая духовным совершенствованием."
        }
        if shuffled_items[cardNum] == 10 {
            cardImage.image = UIImage(named:"card10")
            nameCard.text = "Колесо Фортуны"
            textLable.text = "Сегодня ожидаются положительные события в жизни, к которым надо отнестись с благодарностью. Каким-то образом могут произойти события из прошлой жизни."
        }
        if shuffled_items[cardNum] == 11 {
            cardImage.image = UIImage(named:"card11")
            nameCard.text = "Сила"
            textLable.text = "Проблемы будут преодолимы, главное действовать без агрессии. Сегодня сил хватит на все. Рекомендуется активизироваться в личном плане."
        }
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
