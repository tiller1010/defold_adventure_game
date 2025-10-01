components {
  id: "sounds"
  component: "/main/sounds.script"
}
embedded_components {
  id: "music"
  type: "sound"
  data: "sound: \"/assets/trouble_tracks.wav\"\n"
  "looping: 1\n"
  "gain: 0.5\n"
  ""
}
embedded_components {
  id: "explosion"
  type: "sound"
  data: "sound: \"/assets/sounds/explosion.wav\"\n"
  ""
}
embedded_components {
  id: "game_over"
  type: "sound"
  data: "sound: \"/assets/sounds/game_over.wav\"\n"
  ""
}
embedded_components {
  id: "level_completed"
  type: "sound"
  data: "sound: \"/assets/sounds/level_completed.wav\"\n"
  ""
}
embedded_components {
  id: "fireball"
  type: "sound"
  data: "sound: \"/assets/sounds/fireball.wav\"\n"
  ""
}
embedded_components {
  id: "iceball"
  type: "sound"
  data: "sound: \"/assets/sounds/iceball.wav\"\n"
  ""
}
embedded_components {
  id: "powerup_pickup"
  type: "sound"
  data: "sound: \"/assets/sounds/powerup_pickup.wav\"\n"
  "gain: 2.0\n"
  ""
}
