#include "color.h"
#include "material.h"
#include "texture.h"

void material_init(struct material_t* material)
{
  material->texture = NULL;
  material->color = _COLOR_WHITE;
  material->emissive = _COLOR_BLACK;
  material->specular = _COLOR_WHITE;
  material->shininess = 0;
  material->blend = 0;
  material->flags = _FLAG_ALL;
}

void material_deinit(struct material_t* material)
{
  if (material->texture) texture_release(material->texture);
}
