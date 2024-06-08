private let hucreAdi = "hucreAdi"
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
