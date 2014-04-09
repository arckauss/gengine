#pragma once

#include "entity_component_sprite.h"
#include "script.h"
#include "graphics_sprite.h"
#include "graphics_atlas.h"

namespace gengine
{
namespace entity
{

class ComponentAnimatedSprite : public ComponentSprite
{
public:
    ComponentAnimatedSprite();

    static SCRIPT_REGISTERER();

    static SCRIPT_FUNCTION(create);
    static SCRIPT_FUNCTION(newIndex);
    static SCRIPT_FUNCTION(update);

    static uint
        metaTableRef;

protected:

};

}
}
