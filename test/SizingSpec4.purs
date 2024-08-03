-- https://www.w3.org/TR/css-sizing-4/#ratios

module Test.SizingSpec4 where

import Prelude

import Tecton (aspectRatio, auto, (:/), (:=))
import Test.Spec (Spec, describe)
import Test.Util (isRenderedFromInline)

spec :: Spec Unit
spec = do
  let isRenderedFrom = isRenderedFromInline

  describe "Box Sizing 4 Module" do

    describe "aspect-ratio property" do

      "aspect-ratio:auto" `isRenderedFrom` (aspectRatio := auto)
      "aspect-ratio:1/1" `isRenderedFrom` (aspectRatio := 1 :/ 1)
      "aspect-ratio:2/1" `isRenderedFrom` (aspectRatio := 2 :/ 1)
      "aspect-ratio:2" `isRenderedFrom` (aspectRatio := 2)
      "aspect-ratio:0.5" `isRenderedFrom` (aspectRatio := 0.5)

