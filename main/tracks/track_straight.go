embedded_components {
  id: "track_sprite"
  type: "sprite"
  data: "default_animation: \"straight\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/main/tracks/tracks.tilesource\"\n"
  "}\n"
  ""
}
embedded_components {
  id: "track_collisionobject"
  type: "collisionobject"
  data: "type: COLLISION_OBJECT_TYPE_TRIGGER\n"
  "mass: 0.0\n"
  "friction: 0.1\n"
  "restitution: 0.5\n"
  "group: \"track_trigger\"\n"
  "mask: \"default\"\n"
  "embedded_collision_shape {\n"
  "  shapes {\n"
  "    shape_type: TYPE_BOX\n"
  "    position {\n"
  "    }\n"
  "    rotation {\n"
  "    }\n"
  "    index: 0\n"
  "    count: 3\n"
  "  }\n"
  "  data: 2.933015\n"
  "  data: 20.455927\n"
  "  data: 10.0\n"
  "}\n"
  ""
}
