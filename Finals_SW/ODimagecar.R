# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~DEVTOOLS PACKAGES FOR YOLO~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# library (devtools)
# install.packages("devtools")
# install.packages("dlib")
# devtools::install_github("bnosac/image", subdir = "image.CornerDetectionF9", build_vignettes = TRUE)
# devtools::install_github("bnosac/image", subdir = "image.LineSegmentDetector", build_vignettes = TRUE)
# devtools::install_github("bnosac/image", subdir = "image.ContourDetector", build_vignettes = TRUE)
# devtools::install_github("bnosac/image", subdir = "image.CannyEdges", build_vignettes = TRUE)
# devtools::install_github("bnosac/image", subdir = "image.dlib", build_vignettes = TRUE)
# devtools::install_github("bnosac/image", subdir = "image.darknet", build_vignettes = TRUE)

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ STARTT OF CODES~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
library (image.darknet)

yolo_tiny_voc <- image_darknet_model(type = "detect", model = "tiny-yolo-voc.cfg", weights = system.file(package="image.darknet", "models", "tiny-yolo-voc.weights"), labels = system.file(package="image.darknet", "include", "darknet", "data", "voc.names"))

x <- image_darknet_detect(file = "C:/Users/Charles/Documents/Finals_SW", 
                          object = yolo_tiny_voc,
                          threshold = 0.19)
