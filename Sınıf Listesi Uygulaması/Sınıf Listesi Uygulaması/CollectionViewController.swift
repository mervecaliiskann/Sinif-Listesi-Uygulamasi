private let hucreAdi = "hucreAdi"
struct Ogrenci {
    var adi: String
    var ogrenciNumarasi : Int
}
    var ogrenciler : [Ogrenci] = [Ogrenci]()
        if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            let satirElemanSAyisi : CGFloat = 2
            let bosluk : CGFloat = 4
//            let genislik = collectionView.frame.width / satirElemanSAyisi - bosluk
            let toplamBosluk = bosluk*(satirElemanSAyisi-1)
            let itemBsoluk = toplamBosluk / satirElemanSAyisi
            let genislik = collectionView.frame.width / satirElemanSAyisi - itemBsoluk
            let yukselik = genislik
            layout.itemSize = CGSize(width: genislik, height: yukselik)
            // itemler arası boşlupu ayarlar
            layout.minimumInteritemSpacing = bosluk
            //satırlar arası boşluğu ayarlar
            layout.minimumLineSpacing = bosluk
        }
        let o1 = Ogrenci(adi: "Merve", ogrenciNumarasi: 1)
        let o2 = Ogrenci(adi: "Zeynep", ogrenciNumarasi: 2)
        let o3 = Ogrenci(adi: "Hilal", ogrenciNumarasi: 3)
        let o4 = Ogrenci(adi: "Rabia", ogrenciNumarasi: 4)
        let o5 = Ogrenci(adi: "Aslı", ogrenciNumarasi: 5)
        let o6 = Ogrenci(adi: "Kübra", ogrenciNumarasi: 6)
        let o7 = Ogrenci(adi: "Bedirhan", ogrenciNumarasi: 7)
        let o8 = Ogrenci(adi: "Melihcan", ogrenciNumarasi: 8)
        let o9 = Ogrenci(adi: "Enes", ogrenciNumarasi: 9)
        let o10 = Ogrenci(adi: "Emin", ogrenciNumarasi: 10)
        let o11 = Ogrenci(adi: "ZeynepŞ", ogrenciNumarasi: 11)
        let o12 = Ogrenci(adi: "KübraD", ogrenciNumarasi: 12)
        let o13 = Ogrenci(adi: "Özdemir", ogrenciNumarasi: 13)
        let o14 = Ogrenci(adi: "Erhan", ogrenciNumarasi: 14)
        let o15 = Ogrenci(adi: "Buse", ogrenciNumarasi: 15)
        let o16 = Ogrenci(adi: "Bahar", ogrenciNumarasi: 16)
        let o17 = Ogrenci(adi: "Fikriye", ogrenciNumarasi: 17)
        let o18 = Ogrenci(adi: "Adem", ogrenciNumarasi: 18)
        let o19 = Ogrenci(adi: "İsa", ogrenciNumarasi: 19)
        let o20 = Ogrenci(adi: "Nurgül", ogrenciNumarasi: 20)
        ogrenciler.append(o1)
        ogrenciler.append(o2)
        ogrenciler.append(o3)
        ogrenciler.append(o4)
        ogrenciler.append(o5)
        ogrenciler.append(o6)
        ogrenciler.append(o7)
        ogrenciler.append(o8)
        ogrenciler.append(o9)
        ogrenciler.append(o10)
        ogrenciler.append(o11)
        ogrenciler.append(o12)
        ogrenciler.append(o13)
        ogrenciler.append(o14)
        ogrenciler.append(o15)
        ogrenciler.append(o16)
        ogrenciler.append(o17)
        ogrenciler.append(o18)
        ogrenciler.append(o19)
        ogrenciler.append(o20)

    }
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: hucreAdi, for: indexPath)
        if let costumCell = cell as? CollectionViewCell {
            costumCell.lblOgrenciAdi.text = "Ogrenci \(indexPath.row)"
            return costumCell
        }
        return cell
    }
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        seciliIndex = indexPath.row
        performSegue(withIdentifier: "Detaylar", sender: self)
        
    }
