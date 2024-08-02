import UIKit

class TweetTableViewCell: UITableViewCell {
    let userImageView = UIImageView()
    let userNameLabel = UILabel()
    let tweetContentLabel = UILabel()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        // セルのコンポーネントをセットアップ
        setupViews()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupViews() {
        userImageView.translatesAutoresizingMaskIntoConstraints = false
        userNameLabel.translatesAutoresizingMaskIntoConstraints = false
        tweetContentLabel.translatesAutoresizingMaskIntoConstraints = false

        addSubview(userImageView)
        addSubview(userNameLabel)
        addSubview(tweetContentLabel)

        // レイアウトの設定
        NSLayoutConstraint.activate([
            userImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            userImageView.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            userImageView.widthAnchor.constraint(equalToConstant: 40),
            userImageView.heightAnchor.constraint(equalToConstant: 40),

            userNameLabel.leadingAnchor.constraint(equalTo: userImageView.trailingAnchor, constant: 10),
            userNameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10),

            tweetContentLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            tweetContentLabel.topAnchor.constraint(equalTo: userImageView.bottomAnchor, constant: 10),
            tweetContentLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            tweetContentLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10)
        ])
    }
}
