//
//  ViewController.swift
//  Sınıf Listesi Uygulaması
//
//  Created by Merve Çalışkan on 8.06.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblOgrencininAdi: UILabel!
    @IBOutlet weak var lblOgrenciNumarasi: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let adi = ogrenci?.adi ?? "Bilinmiyor"
        let ogrenciNumarasi = ogrenci?.ogrenciNumarasi ?? -1
        lblOgrencininAdi.text = adi
        lblOgrenciNumarasi.text = "\(ogrenciNumarasi)"
    }


}

