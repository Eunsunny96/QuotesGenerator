//
//  ViewController.swift
//  QuotesGenerator
//
//  Created by sunny h on 2021/09/06.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var quoteLable: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    let quote = [
        Quote(contents: "죽음을 두려워 하는 나머지 삶을 시작조차 못하는 사람이 많다", name: "벤다이크"),
        Quote(contents: "삶이 있는 한 희망은 있다", name: "키케로"),
        Quote(contents: "산다는것 그것은 치열한 전투이다.", name: "로망로랑"),
        Quote(contents: "언제나 현재에 집중할수 있다면 행복할것이다", name: "파울로 코엘료"),
        Quote(contents: "피할수 없으면 즐겨라", name: "로버트 엘리엇"),
        Quote(contents: "행복은 습관이다,그것을 몸에 지니라", name: "하버드"),
        Quote(contents: "고통이 남기고 간 뒤를 보라! 고난이 지나면 반드시 기쁨이 스며든다", name: "괴테"),
        Quote(contents: "꿈을 계속 간직하고 있으면 반드시 실현할 때가 온다.", name: "괴테")
        
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tapQuoteGeneratorButton(_ sender: Any) {
        // 랜덤 난수를 발생
        let random = Int(arc4random_uniform(8)) // 0 ~ 8 사이의 난수를 랜덤
        let quote = quote[random]
        self.quoteLable.text = quote.contents
        self.nameLabel.text = quote.name
        
    }
    
}

