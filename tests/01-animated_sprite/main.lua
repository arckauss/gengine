function init()
    application.setName("[gengine-tests] 01-animated_sprite")
    application.setExtent(320,200)
end

local logoEntity

function start()
    graphics.setClearColor(0,0.1,0.1,1)

    local texture = graphics.texture.load("logo.png")

    local atlas = graphics.atlas.create("test", texture, 5, 1)

    graphics.animation.create("testa",
        {
            atlas = atlas,
            frames = { 0, 1, 2, 3 }
        }
        )

    logoEntity = entity.create()

    logoEntity:addComponent(
        ComponentAnimatedSprite(),
        {
            atlas = graphics.atlas.get("test"),
            atlasItem = 4,
            extent = { x=256, y=128 },
            layer = 0
        }
        )

    logoEntity:insert()
end

function update(dt)
end
