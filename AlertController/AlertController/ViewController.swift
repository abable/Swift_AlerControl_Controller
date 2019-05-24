//
//  ViewController.swift
//  AlertController
//
//  Created by Seungjun Lim on 23/05/2019.
//  Copyright © 2019 Seungjun Lim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func show(_ sender: Any) {
        // UIAlertController 인스턴스를 만든다.. 첫뻔째는 제목을 전달하고, 두번째는 제목아래 표시될 내용 을 전달한다. 세번째에는 표시할 스타일을 전달한다.
        let controller = UIAlertController(title: "Hello", message: "Have a nice day :)", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default) { (action) in
            print(action.title)
        }
        // 만든액션을 추가하자..
        controller.addAction(okAction)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
            print(action.title)
        }
        controller.addAction(cancelAction)
        
        let destructiveAction = UIAlertAction(title: "Destructive", style: .destructive) { (action) in
            print(action.title)
        }
        controller.addAction(destructiveAction)
        
//        경고창을 화면에 표시할때에는 다음의 메소드를 사용합니다.
        // 첫번째 파라미터에는 UIAlertController 를 전달하고 두번째는 애니메이션 사용여부 세번째에는 실행코드를 클로저 형태로 전달합니다. 우선 닐..
        present(controller, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }


}

