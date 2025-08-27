//
//  Home.swift
//
//
//  Created by Luki on 08/10/2024.
//

import Brooklyn
import Foundation

struct Home: PageContent {
	let configuration: PageConfiguration = .init(title: "Luki120's Repo", stylesheet: Styles())
	private let barlow: CSSFontFace.FontFamily = .init(name: "Barlow")

	var body: [HTMLRenderable] {
		VStack {
			Title {
				Text("Luki120's Repo")
			}
			.marginTop(.rem(1.875))

			VStack {
				Buttons()
			}
			.flexGrow(1)
			.fontFamily(barlow)
			.gap(.px(10))

			Footer {
				BrooklynFooter()
				StylableText {
					Text("­© 2021-\(Date.now.formatted(.dateTime.year())) Luki120")
				}
				.fontSize(.rem(0.75))
			}
			.alignItems(.center)
			.display(.flex)
			.flexDirection(.column)
			.fontFamily(barlow)
			.foregroundStyle(.gray)
			.gap(.px(10))
			.padding(.rem(1.5625))
		}
		.alignItems(.center)
		.fontFamily(.init(name: "Quicksand"))
		.frame(minHeight: .webkitFillAvailable)
		.frame(minHeight: .dvh(100))
	}

	@HTMLWidgetBuilder
	private func Buttons() -> HTMLComponent {
		Button(title: "Add to Cydia", link: "cydia://url/https://cydia.saurik.com/api/share#?source=https://luki120.github.io/")
		Button(title: "Add to Installer", link: "installer://add/https://luki120.github.io/")
		Button(title: "Add to Saily", link: "apt-repo://https://luki120.github.io/")
		Button(title: "Add to Sileo", link: "sileo://source/https://luki120.github.io/")
		Button(title: "Add to Zebra", link: "zbra://sources/add/https://luki120.github.io/")
	}

	private func Button(title: String, link: String) -> HTMLRenderable {
		Link(title, target: link)
			.class(RepoButton())
	}
}
