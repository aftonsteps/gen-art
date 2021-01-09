## Exploring the jasmines package

p0 <- 
  jasmines::use_seed(100) %>% # Set the seed of R‘s random number generator, which is useful for creating simulations or random objects that can be reproduced.
  jasmines::scene_discs(rings = 10, 
                        points = 50000, 
                        size = 50) %>%
  dplyr::mutate(ind = 1:dplyr::n()) %>%
  jasmines::unfold_warp(iterations = 10,
                        scale = .5, 
                        output = "layer") %>%
  jasmines::unfold_tempest(iterations = 5,
                           scale = .01) %>%
  jasmines::style_ribbon(color = "#86bceb",
                         colour = "ind",
                         alpha = c(1,1),
                         background = "#3254a8")

ggplot2::ggsave("p0.png", 
                p0, 
                width = 20, 
                height = 20, 
                units = "in")

p1 <- 
  jasmines::use_seed(7) %>%
  jasmines::scene_bubbles(n = 10) %>%
  dplyr::mutate(ind = 1:dplyr::n()) %>%
  jasmines::unfold_warp(iterations = 10,
                        scale = .5, 
                        output = "layer") %>%
  jasmines::unfold_tempest(iterations = 5,
                           scale = .01) %>%
  jasmines::style_ribbon(palette = rainbow,
                         alpha = c(1,1),
                         background = "#3254a8")

ggplot2::ggsave("p1.png", 
                p1, 
                width = 20, 
                height = 20, 
                units = "in")

p2 <- 
  jasmines::use_seed(30) %>%
  jasmines::scene_bubbles(n = 10) %>%
  dplyr::mutate(ind = 1:dplyr::n()) %>%
  jasmines::unfold_warp(iterations = 10,
                        scale = .5,
                        output = "layer") %>%
  jasmines::unfold_tempest(iterations = 5,
                           scale = .01) %>%
  jasmines::style_ribbon(palette = rainbow,
                         alpha = c(1,1),
                         background = "#ff9999")

ggplot2::ggsave("p2.png", 
                p2, 
                width = 20, 
                height = 20, 
                units = "in")

seed <- Sys.time()
print(as.numeric(seed))
p3 <- 
  jasmines::use_seed(1) %>%
  jasmines::entity_heart(grain = 1000) %>%
  jasmines::unfold_slice(iterations = 10) %>%
  jasmines::style_ribbon(palette = "base",
                         colour = "ind",
                         background = "mistyrose") %>%
  jasmines::style_overlay(border = "white")


ggplot2::ggsave("p3.png", 
                p3, 
                width = 20, 
                height = 20, 
                units = "in")
  