// Copyright (c) 2022 NetEase, Inc. All rights reserved.
// Use of this source code is governed by a MIT license that can be
// found in the LICENSE file.

import NETeamUIKit
import UIKit

class CustomTeamSettingHeaderCell: TeamSettingHeaderCell {
  override func setupUI() {
    if NEStyleManager.instance.isNormalStyle() {
      super.setupUI()
    } else {
      let whiteBgView = UIView()
      whiteBgView.backgroundColor = UIColor.white
      whiteBgView.translatesAutoresizingMaskIntoConstraints = false
      contentView.insertSubview(whiteBgView, belowSubview: dividerLine)
      NSLayoutConstraint.activate([
        whiteBgView.leftAnchor.constraint(equalTo: contentView.leftAnchor),
        whiteBgView.rightAnchor.constraint(equalTo: contentView.rightAnchor),
        whiteBgView.topAnchor.constraint(equalTo: contentView.topAnchor),
        whiteBgView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
      ])

      contentView.addSubview(titleLabel)
      NSLayoutConstraint.activate([
        titleLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20),
        titleLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
        titleLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -68),
      ])

      contentView.addSubview(arrowView)
      NSLayoutConstraint.activate([
        arrowView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
        arrowView.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -20),
      ])

      contentView.addSubview(headerView)
      NSLayoutConstraint.activate([
        headerView.centerYAnchor.constraint(equalTo: arrowView.centerYAnchor),
        headerView.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -48.0),
        headerView.widthAnchor.constraint(equalToConstant: 42.0),
        headerView.heightAnchor.constraint(equalToConstant: 42.0),
      ])
      headerView.layer.cornerRadius = 4.0
      dividerLineLeftMargin?.constant = 20
      dividerLineRightMargin?.constant = 0
    }
  }
}
