(defpackage :operators
  (:use :cl)
  (:shadow :eq))

(in-package :operators)

(defun mul (x y)
  (* x y))

(defun id (x) x)

(defun eq (x y)
  (if (= x y) 1.0 0.0))

(defun neg (x)
  (- x))

(defun add (x y)
  (+ x y))

(defun max (x y)
  (if (> x y) x y))

(defun lt (x y)
  (if (< x y) 1.0 0.0))

(defun sigmoid (x)
  (if (>= x 0)
      (/ 1.0 (+ 1.0 (exp (neg x))))
      (/ (exp x) (+ 1.0 (exp x)))))

(defun relu (x)
  (if (> x 0)
      x
      0))

(defun inv (x)
  (/ 1 x))

(defun inv-back (x d)
  (* d (- (/ 1 (expt x 2)))))
