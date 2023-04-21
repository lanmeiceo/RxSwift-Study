//
//  ViewController.swift
//  Rx
//
//  Created by caowei on 2023/3/19.
//  https://beeth0ven.github.io/RxSwift-Chinese-Documentation/

import UIKit
import RxSwift

class ViewController: UIViewController {
    fileprivate lazy var bag: DisposeBag = DisposeBag()
    override func viewDidLoad() {
        super.viewDidLoad()
        let btn = UIButton(frame: CGRect(x: 20, y: 30, width: 30, height: 30))
        btn.backgroundColor = UIColor.red
        self.view.addSubview(btn)
        
//        btn.rx.tap.
        let tx = UITextField()
//        tx.rx.text.bindto
        let never0 = Observable<String>.never()
        never0.subscribe { (event : Event<String>) in
            print(event)
        }.disposed(by: bag)

    }


}

