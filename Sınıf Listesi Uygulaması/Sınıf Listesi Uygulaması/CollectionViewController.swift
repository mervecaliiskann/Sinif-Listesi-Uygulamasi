private let hucreAdi = "hucreAdi"
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
