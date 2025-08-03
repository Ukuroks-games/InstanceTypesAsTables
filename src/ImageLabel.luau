local GuiImage = require(script.Parent.GuiImage)
local GuiObject = require(script.Parent.GuiObject)

--[[
	An `ImageLabel` renders a rectangle, like a Frame does, with an image asset. The display of the image can be manipulated through the `ImageColor3` and `ImageTransparency` properties. To display only the image and hide the rectangle, set `GuiObject.BackgroundTransparency` to 1.

	Advanced `ImageLabel` usage includes:

    Tiled images can be created by setting ScaleType to `Enum.ScaleType.Tile`, then `TileSize` to the size of rendered tiles.

    9-slice images can be created by setting ScaleType to `Enum.ScaleType.Slice`, then `SliceCenter` to the center area of the 9‑slice image.

    Sprite sheets can be implemented through the use of `ImageRectOffset` and `ImageRectSize`. Packing multiple images into one and using this property can make your experience's image assets load much quicker, especially if you use many small icons in your GUIs.

]]
export type ImageLabel = GuiImage.GuiImage & GuiObject.GuiObject

return {}
