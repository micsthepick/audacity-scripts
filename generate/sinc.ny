$nyquist plug-in
$version 4
$type generate
$preview linear
$name (_ "sinc-generator")
$debugbutton true
$author (_ "Michael Pannekoek")
$release 0.1.0
$copyright (_ "GNU General Public License v2.0 or later")

; Define sliders for user inputs
$control padding_spls (_ "Padding in samples") int "" 1000 100 10000
$control ratio (_ "Cutoff ratio") real "" 0.9 0.5 0.99
$control action (_ "Action") choice (
    ("Low" (_ "Low Pass"))
    ("High" (_ "High Pass"))
) 0

; Function to compute sinc values
(defun sinc (x frac)
  (if (zerop x)
      1.0
      (/ (sin (* pi x frac)) (* pi x frac))))

; Function to generate a single spike
(defun generate-one-spike (padding-spls ratio)
  (let* ((total-samples (+ (* 2 (1+ padding-spls)) 1))
         (samples (make-array total-samples))
         (loop-size (* 2 (1+ padding-spls)))
         (inv-ratio (if (eq action 0) (- 1 (/ 1 ratio)) 1))
         (pad-position 0))

    (dotimes (i total-samples)
      (let ((xpos (- pad-position padding-spls)))
        (setf (aref samples i) (sinc xpos ratio))
        (when (zerop xpos)
          (setf (aref samples i) inv-ratio))
        (incf pad-position)))

    (snd-from-array 0 *sound-srate* samples)))

; Generate and return the spike
(generate-one-spike padding_spls ratio)
