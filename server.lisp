(ql:quickload '(cl-who hunchentoot parenscript elephant fiveam css-lite))
(hunchentoot:start (make-instance 'hunchentoot:easy-acceptor :port 4242))

(hunchentoot:define-easy-handler (say-hello :uri "/hello") (name)
 (setf (hunchentoot:content-type*) "text/plain")
  (format nil "Hello, ~a! I am Liunev! ~%I build a website with Lisp!!!" name))
