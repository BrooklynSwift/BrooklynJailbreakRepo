//
//  Styles.swift
//
//
//  Created by Luki on 27/10/2024.
//

import Brooklyn

struct Styles: Stylesheet {
	var fontFaces: [CSSFontFace] {
		CSSFontFace(family: .init(name: "Barlow"), url: "Fonts/Barlow-Regular.woff")
		CSSFontFace(family: .init(name: "Quicksand"), url: "Fonts/Quicksand-Bold.woff")
	}

	var classes: [CSSClass] {
		RepoButton()
		BrooklynLinkText()
	}

	var keyframes: [CSSKeyframes] {
		CSSKeyframes(name: "wiggle") {
			KeyframePoint(percentage: 0, value: .translate(x: .px(2), y: .px(1)))
			KeyframePoint(percentage: 50, value: .translate(x: .px(-2), y: .px(-1)))
			KeyframePoint(percentage: 100, value: .translate(x: .px(2), y: .px(1.5)))
		}
	}

	var mediaQueries: [CSSMediaQuery] {
		CSSMediaQuery(
			conditions: [.minWidth(.em(62.5)), .prefersReducedMotion("no-preference")],
			classes: [RepoButtonHover(), BrooklynLinkTextAfter(), BrooklynLinkTextHover()]
		)
	}
}
