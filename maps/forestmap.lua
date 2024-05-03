return {
  version = "1.10",
  luaversion = "5.1",
  tiledversion = "1.10.2",
  class = "",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 30,
  height = 30,
  tilewidth = 32,
  tileheight = 32,
  nextlayerid = 9,
  nextobjectid = 1,
  properties = {},
  tilesets = {
    {
      name = "forestmap",
      firstgid = 1,
      class = "",
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      columns = 20,
      image = "RPG Nature Tileset.png",
      imagewidth = 641,
      imageheight = 288,
      objectalignment = "unspecified",
      tilerendersize = "tile",
      fillmode = "stretch",
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 32,
        height = 32
      },
      properties = {},
      wangsets = {},
      tilecount = 180,
      tiles = {}
    }
  },
  layers = {
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 30,
      height = 30,
      id = 5,
      name = "grass",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        82, 82, 82, 82, 92, 92, 92, 92, 82, 82, 82, 82, 82, 92, 92, 92, 82, 82, 82, 82, 92, 92, 92, 92, 82, 82, 82, 82, 82, 82,
        82, 82, 82, 82, 92, 92, 92, 92, 82, 82, 82, 82, 82, 92, 92, 92, 82, 82, 82, 92, 92, 92, 92, 92, 82, 82, 82, 82, 82, 82,
        82, 82, 82, 82, 92, 92, 92, 92, 92, 92, 92, 82, 82, 92, 92, 92, 82, 82, 92, 92, 92, 92, 92, 92, 92, 82, 82, 82, 82, 82,
        82, 82, 82, 82, 82, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 82, 92, 92, 92, 92, 92, 92, 92, 92, 92, 82, 82, 82, 82,
        82, 82, 82, 82, 82, 82, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 82, 82, 92, 92, 92, 82, 82, 82, 82,
        82, 82, 82, 82, 82, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 82, 82, 92, 92, 92, 82, 82, 82, 82,
        82, 82, 82, 82, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 82, 82, 92, 92, 92, 82, 82, 82, 82,
        82, 82, 82, 92, 92, 92, 92, 92, 92, 82, 82, 82, 82, 92, 92, 92, 92, 82, 92, 92, 92, 92, 82, 92, 92, 92, 82, 82, 82, 82,
        82, 82, 82, 92, 92, 92, 92, 92, 82, 82, 82, 82, 82, 92, 92, 92, 82, 82, 82, 92, 92, 92, 82, 92, 92, 92, 82, 82, 82, 82,
        82, 82, 92, 92, 92, 92, 92, 92, 92, 82, 82, 82, 82, 92, 92, 92, 82, 82, 82, 92, 92, 92, 82, 92, 92, 92, 82, 82, 82, 82,
        82, 82, 92, 92, 92, 82, 92, 92, 92, 82, 82, 82, 82, 92, 92, 92, 82, 82, 82, 82, 92, 92, 92, 92, 92, 92, 82, 82, 82, 82,
        82, 82, 92, 92, 82, 82, 92, 92, 92, 92, 82, 82, 82, 92, 92, 92, 82, 82, 82, 82, 82, 43, 43, 92, 92, 82, 82, 82, 82, 82,
        82, 82, 92, 92, 82, 82, 82, 92, 92, 92, 82, 82, 82, 92, 92, 92, 82, 82, 82, 82, 82, 82, 43, 92, 92, 82, 82, 82, 82, 82,
        82, 82, 92, 92, 82, 82, 82, 82, 92, 92, 92, 82, 92, 92, 92, 92, 82, 82, 82, 82, 82, 92, 92, 92, 92, 92, 82, 82, 82, 82,
        82, 82, 92, 92, 82, 82, 82, 82, 92, 92, 92, 92, 92, 92, 92, 92, 82, 82, 82, 82, 82, 92, 92, 92, 92, 92, 92, 82, 82, 82,
        82, 82, 92, 92, 92, 82, 82, 82, 82, 92, 92, 92, 92, 92, 92, 92, 92, 82, 82, 92, 92, 92, 82, 82, 92, 92, 92, 82, 82, 82,
        82, 82, 92, 92, 92, 82, 82, 82, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 82, 82, 92, 92, 92, 92, 82, 82,
        82, 82, 92, 92, 92, 82, 82, 92, 92, 92, 92, 82, 82, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 82, 82, 92, 92, 92, 82, 82,
        82, 82, 92, 92, 92, 92, 92, 92, 92, 92, 82, 82, 82, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 82, 82, 92, 92, 92, 82, 82,
        82, 82, 92, 92, 92, 92, 92, 92, 82, 82, 82, 82, 82, 92, 92, 92, 82, 82, 82, 92, 92, 92, 92, 82, 82, 92, 92, 92, 82, 82,
        82, 82, 92, 92, 92, 92, 92, 82, 82, 82, 82, 82, 82, 92, 92, 43, 82, 82, 82, 92, 92, 92, 92, 82, 82, 92, 92, 92, 82, 82,
        82, 82, 82, 92, 92, 92, 92, 82, 82, 82, 82, 82, 82, 92, 92, 43, 82, 82, 82, 92, 92, 92, 82, 82, 82, 92, 92, 92, 82, 82,
        82, 82, 82, 92, 92, 92, 92, 92, 82, 82, 82, 82, 82, 92, 92, 43, 82, 82, 92, 92, 92, 92, 82, 82, 82, 92, 92, 92, 82, 82,
        82, 82, 82, 82, 92, 92, 92, 92, 92, 82, 82, 82, 82, 92, 92, 92, 82, 92, 92, 92, 92, 82, 82, 82, 82, 92, 92, 92, 82, 82,
        82, 82, 82, 82, 82, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 82, 82, 82, 92, 92, 92, 92, 82, 82,
        82, 82, 82, 82, 82, 82, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 82, 82, 82,
        82, 82, 82, 82, 82, 82, 82, 82, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 82, 82, 82,
        82, 82, 82, 82, 82, 82, 82, 82, 82, 82, 82, 82, 82, 92, 92, 92, 92, 82, 82, 82, 92, 92, 92, 92, 92, 92, 82, 82, 82, 82,
        82, 82, 82, 82, 82, 82, 82, 82, 82, 82, 82, 82, 82, 92, 92, 92, 82, 82, 82, 82, 82, 82, 82, 82, 82, 82, 82, 82, 82, 82,
        82, 82, 82, 82, 82, 82, 82, 82, 82, 82, 82, 82, 82, 92, 92, 92, 82, 82, 82, 82, 82, 82, 82, 82, 82, 82, 82, 82, 82, 82
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 30,
      height = 30,
      id = 6,
      name = "dirt",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 98, 0, 0, 0, 0, 96, 0, 0, 0, 98, 0, 0, 0, 96, 0, 79, 118, 0, 0, 0, 0, 96, 0, 0, 0, 0, 0,
        0, 0, 0, 98, 0, 0, 0, 0, 116, 117, 117, 80, 98, 0, 0, 0, 96, 0, 98, 0, 0, 0, 0, 0, 116, 80, 0, 0, 0, 0,
        0, 0, 0, 99, 78, 0, 0, 0, 0, 0, 0, 116, 118, 0, 0, 0, 96, 79, 118, 0, 0, 0, 0, 0, 0, 116, 80, 0, 0, 0,
        0, 0, 0, 0, 99, 78, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 116, 118, 0, 0, 74, 112, 112, 75, 0, 0, 96, 0, 0, 0,
        0, 0, 0, 0, 79, 118, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 93, 37, 37, 91, 0, 0, 96, 0, 0, 0,
        0, 0, 0, 79, 118, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 93, 37, 37, 91, 0, 0, 96, 0, 0, 0,
        0, 0, 79, 118, 0, 0, 0, 0, 74, 112, 112, 112, 112, 75, 0, 0, 0, 0, 0, 0, 93, 37, 37, 91, 0, 0, 96, 0, 0, 0,
        0, 0, 98, 0, 0, 0, 0, 74, 113, 37, 37, 37, 37, 91, 0, 0, 74, 112, 75, 0, 94, 73, 37, 91, 0, 0, 96, 0, 0, 0,
        0, 79, 118, 0, 0, 0, 0, 93, 37, 37, 37, 37, 37, 91, 0, 0, 93, 37, 91, 0, 0, 93, 37, 91, 0, 0, 96, 0, 0, 0,
        0, 98, 0, 0, 0, 0, 0, 93, 37, 37, 37, 37, 37, 91, 0, 0, 93, 37, 91, 0, 0, 93, 37, 91, 0, 0, 96, 0, 0, 0,
        0, 98, 0, 0, 0, 43, 0, 0, 73, 37, 37, 37, 37, 91, 0, 74, 113, 37, 111, 75, 0, 94, 72, 95, 0, 0, 96, 0, 0, 0,
        0, 98, 0, 0, 43, 74, 75, 0, 0, 73, 37, 37, 37, 91, 0, 93, 37, 37, 37, 91, 43, 0, 0, 0, 0, 76, 100, 0, 0, 0,
        0, 98, 0, 0, 74, 113, 111, 75, 0, 93, 37, 37, 37, 91, 0, 93, 37, 37, 37, 111, 75, 43, 0, 0, 0, 116, 80, 0, 0, 0,
        0, 98, 0, 0, 93, 37, 37, 91, 0, 94, 73, 37, 71, 95, 0, 94, 73, 37, 37, 71, 95, 0, 0, 0, 0, 0, 116, 80, 0, 0,
        0, 98, 0, 0, 93, 37, 37, 111, 75, 0, 94, 72, 95, 0, 0, 0, 93, 37, 37, 91, 43, 74, 112, 112, 75, 0, 0, 96, 0, 0,
        0, 98, 0, 0, 93, 37, 37, 37, 91, 0, 0, 0, 0, 0, 0, 0, 94, 72, 72, 95, 0, 93, 37, 37, 91, 0, 0, 116, 80, 0,
        0, 98, 0, 0, 93, 37, 37, 71, 95, 0, 74, 112, 112, 75, 0, 0, 0, 0, 0, 0, 0, 93, 37, 37, 111, 75, 0, 0, 96, 0,
        0, 98, 0, 0, 94, 72, 72, 95, 0, 92, 93, 37, 37, 91, 0, 0, 74, 112, 75, 0, 0, 94, 73, 37, 37, 91, 0, 0, 96, 0,
        0, 98, 0, 0, 0, 0, 0, 92, 92, 74, 113, 37, 37, 91, 0, 74, 113, 37, 111, 75, 0, 0, 93, 37, 37, 91, 0, 0, 96, 0,
        0, 98, 0, 0, 0, 0, 92, 92, 74, 113, 37, 37, 37, 91, 0, 93, 37, 37, 37, 91, 0, 0, 93, 37, 37, 91, 0, 0, 96, 0,
        0, 98, 0, 0, 0, 0, 74, 112, 113, 37, 37, 37, 37, 91, 0, 93, 37, 37, 37, 91, 0, 74, 113, 37, 37, 91, 0, 0, 96, 0,
        0, 0, 78, 0, 0, 0, 93, 37, 37, 37, 37, 37, 37, 91, 0, 93, 37, 37, 71, 95, 0, 93, 37, 37, 37, 91, 0, 0, 96, 0,
        0, 0, 98, 0, 0, 0, 94, 73, 37, 37, 37, 37, 37, 91, 0, 93, 37, 71, 95, 0, 74, 113, 37, 37, 37, 91, 0, 0, 96, 0,
        0, 0, 99, 78, 0, 0, 0, 94, 73, 37, 37, 37, 37, 91, 0, 93, 71, 95, 0, 0, 93, 37, 37, 37, 37, 91, 0, 0, 96, 0,
        0, 0, 0, 99, 78, 0, 0, 0, 94, 72, 72, 72, 72, 95, 0, 94, 95, 0, 0, 0, 93, 37, 37, 37, 71, 95, 0, 0, 96, 0,
        0, 0, 0, 0, 99, 78, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 94, 72, 72, 72, 95, 0, 0, 76, 100, 0,
        0, 0, 0, 0, 0, 99, 77, 78, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 96, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 99, 77, 77, 77, 77, 78, 0, 0, 0, 0, 76, 77, 78, 0, 0, 0, 0, 0, 0, 76, 100, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 98, 0, 0, 0, 76, 100, 0, 99, 77, 77, 77, 77, 77, 77, 100, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 98, 0, 0, 0, 96, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 30,
      height = 30,
      id = 8,
      name = "bonus",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        2, 2, 2, 0, 0, 0, 0, 0, 0, 23, 22, 3, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 4, 23, 2, 2, 2, 2,
        2, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 24, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 4, 2, 2, 2,
        2, 2, 2, 24, 0, 0, 0, 0, 0, 0, 0, 0, 24, 0, 0, 0, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 2, 2,
        2, 2, 2, 1, 24, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22, 2, 2,
        2, 2, 2, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 2, 2,
        2, 2, 21, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22, 2, 2,
        2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 2, 2,
        2, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 2, 2,
        2, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 4, 2, 2,
        2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 2, 2,
        2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 21, 2,
        2, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 22, 22, 2,
        2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22, 22, 2,
        2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 22, 2,
        2, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22, 2,
        2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2,
        2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 2,
        2, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2,
        2, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2,
        2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2,
        2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2,
        2, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 2,
        2, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2,
        2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 2,
        2, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2,
        2, 2, 2, 2, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2,
        2, 2, 2, 2, 2, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 2,
        2, 2, 2, 2, 2, 2, 2, 2, 4, 0, 4, 0, 0, 0, 0, 0, 3, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 4, 2, 2,
        2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 22, 5, 0, 0, 0, 0, 0, 4, 1, 4, 0, 0, 0, 0, 0, 0, 0, 2, 2, 2,
        21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 23, 3, 0, 0, 0, 0, 0, 23, 21, 4, 24, 22, 23, 22, 4, 5, 4, 21, 21, 21
      }
    }
  }
}