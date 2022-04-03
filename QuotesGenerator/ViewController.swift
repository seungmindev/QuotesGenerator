//
//  ViewController.swift
//  QuotesGenerator
//
//  Created by seungminlee on 2022/04/03.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    let quotes = [
        Quote(contents: "죽음을 두려워하는 나머지 삶을 시작 조차 못하는 사람이 많다.", name: "벤다이크"),
        Quote(contents: "나는 집에 틀어박혀 가을 햇살만큼 소중한 것을 낭비하는 일을 견딜 수 없다. 그래서 나는 대부분의 낮 시간을 밖에서 보낸다.", name: "너쌔니얼호손"),
        Quote(contents: "배우고 때로 익히면 또한 기쁘지 아니한가 (學而時習之 不亦說乎 / 학이시습지 불역열호)", name: "공자"),
        Quote(contents: "젊었을 때 배움을 게을리 한 사람은 과거를 상실하며 미래도 없다.", name: "에우리피데스"),
        Quote(contents: "연은 순풍이 아니라 역풍에 가장 높이 난다.", name: "윈스턴 처칠"),
        Quote(contents: "명확히 설정된 목표가 없으면, 우리는 사소한 일상을 충실히 살다 결국 그 일상의 노예가 되고 만다.", name: "로버트 하인라인"),
        Quote(contents: "많이 읽어라. 그러나 많은 책을 읽지는 마라.", name: "벤자민 프랭클린"),
        Quote(contents: "우리가 진정으로 소유하는 것은 시간 뿐이다. 가진 것이 달리 아무 것도 없는 이에게도 시간은 있다.", name: "발타사르 그라시안"),
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tapQuoteGeneratorButton(_ sender: Any) {
        let random = Int(arc4random_uniform(8)) // 0 ~ 7 사이의 난수
        let quote = quotes[random]
        self.quoteLabel.text = quote.contents
        self.nameLabel.text = quote.name
    }
    
}

