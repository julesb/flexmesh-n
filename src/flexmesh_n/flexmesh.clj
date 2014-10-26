(ns flexmesh-n.flexmesh
  (:use [scad-clj.scad]
        [scad-clj.model]
        [flexmesh-n.vector]))


(def TWOPI (* Math/PI 2.0))
(def height 6.751)
(def cutout-width 10.0)
(def side-length 14.0)


(defn circumrad [side-len n]
  (/ side-len (* 2.0 (Math/sin (/ Math/PI n))  )))


(defn polygon-verts [n]
  (let [step (/ TWOPI n)]
    (vec (map #(rotate-point[(circumrad side-length n) 0.0 0.0] [0.0 0.0 1.0] (* step %))
         (range n)))))


(defn inner-rad [side-len n]
  (if (< n 2)
    (vec3-length ((polygon-verts n) 0))
    (vec3-length (vec3-bisect ((polygon-verts n) 0)
                              ((polygon-verts n) 1)))))


(defn cutout [n]
  (union
    (translate [(+ (inner-rad side-length n) 2.0) 0.0 0.0]
               (cylinder (/ cutout-width 2.0) (+ height 0.1))
               (translate [0.0 (/ cutout-width 2.0) 0.0] (with-fs 1.2 (sphere 2.0)))
               (translate [0.0 (/ cutout-width -2.0) 0.0] (with-fs 1.2 (sphere 2.0))))
    (translate [(+ (inner-rad side-length n) 2.0 cutout-width) 0 0]
               (cube (* cutout-width 2.0)
                     (* cutout-width 1.0)
                     (+ height 0.1)))))


(defn cutouts [n]
  (let [step (/ TWOPI n)]
    (map #(rotate (* step %) [0.0 0.0 1.0] (cutout n))
         (range n))))


(defn corners [n]
  (let [step (/ TWOPI n)
        halfstep (/ step 2.0)]
    (union
      (map #(rotate (+ (* step %) halfstep) [0.0 0.0 1.0]
              (union
                (translate [(circumrad side-length n) 0.0 0.0] (with-fs 0.9 (sphere 5)))))
           (range n))
      (cylinder (circumrad side-length n) height))))


(defn piece [n]
  (intersection
    (difference
      (corners n)
      (cutouts n))
    (cylinder (* (circumrad side-length n) 2.0) (* height 0.99))))


(spit "output/FlexMesh2NPent.scad" (write-scad (piece 5)))
(spit "output/FlexMesh2NHex.scad" (write-scad (piece 6)))
(spit "output/FlexMesh2NSept.scad" (write-scad (piece 7)))
(spit "output/FlexMesh2NOct.scad" (write-scad (piece 8)))
(spit "output/FlexMesh2NEnnea.scad" (write-scad (piece 9)))
(spit "output/FlexMesh2NDeca.scad" (write-scad (piece 10)))
