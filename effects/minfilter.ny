;nyquist plug-in
;name "minfilter"
;type "process"
;version 4

(defun minfilter (in) 
  (s-min in (s-min (shift-time in (/ -1 *sound-srate*)) (s-min (shift-time in (/ -2 *sound-srate*)) (s-min (shift-time in (/ -3 *sound-srate*)) (s-min (shift-time in (/ -4 *sound-srate*)) (s-min (shift-time in (/ -5 *sound-srate*)) (s-min (shift-time in (/ -6 *sound-srate*)) (s-min (shift-time in (/ -7 *sound-srate*)) (s-min (shift-time in (/ -8 *sound-srate*)) (s-min (shift-time in (/ -9 *sound-srate*)) (s-min (shift-time in (/ -10 *sound-srate*)) (s-min (shift-time in (/ -11 *sound-srate*)) (s-min (shift-time in (/ -12 *sound-srate*)) (s-min (shift-time in (/ -13 *sound-srate*)) (s-min (shift-time in (/ -14 *sound-srate*)) (s-min (shift-time in (/ -15 *sound-srate*)) (s-min (shift-time in (/ -16 *sound-srate*)) (s-min (shift-time in (/ -17 *sound-srate*)) (s-min (shift-time in (/ -18 *sound-srate*)) (s-min (shift-time in (/ -19 *sound-srate*)) (s-min (shift-time in (/ -20 *sound-srate*)) (s-min (shift-time in (/ 1 *sound-srate*)) (s-min (shift-time in (/ 2 *sound-srate*)) (s-min (shift-time in (/ 3 *sound-srate*)) (s-min (shift-time in (/ 4 *sound-srate*)) (s-min (shift-time in (/ 5 *sound-srate*)) (s-min (shift-time in (/ 6 *sound-srate*)) (s-min (shift-time in (/ 7 *sound-srate*)) (s-min (shift-time in (/ 8 *sound-srate*)) (s-min (shift-time in (/ 9 *sound-srate*)) (s-min (shift-time in (/ 10 *sound-srate*)) (s-min (shift-time in (/ 11 *sound-srate*)) (s-min (shift-time in (/ 12 *sound-srate*)) (s-min (shift-time in (/ 13 *sound-srate*)) (s-min (shift-time in (/ 14 *sound-srate*)) (s-min (shift-time in (/ 15 *sound-srate*)) (s-min (shift-time in (/ 16 *sound-srate*)) (s-min (shift-time in (/ 17 *sound-srate*)) (s-min (shift-time in (/ 18 *sound-srate*)) (s-min (shift-time in (/ 19 *sound-srate*)) (shift-time in (/ 20 *sound-srate*))))))))))))))))))))))))))))))))))))))))))

)

(multichan-expand #'minfilter *track*)