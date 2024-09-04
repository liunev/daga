(ql:quickload '(hunchentoot))
(hunchentoot:start (make-instance 'hunchentoot:easy-acceptor :port 4242))

(hunchentoot:define-easy-handler (say-hello :uri "/") ()
 (setf (hunchentoot:content-type*) "text/plain")
 (format nil "Hello, ~a! I am Liunev! ~%I build a website with Lisp!!!" "test"))

;;(hunchentoot:define-easy-handler (create-task :uri "/task")
 ;;   (setf (hunchentoot:content-type*) "text/html")
  ;;(let ((request-type (hunchentoot:request-method hunchentoot:*request*)))
   ;; (cond ((eq request-type :get) (format nil "Test my task")));; handle get request
    ;;      ((eq request-type :post)
     ;;      (let* ((data-string (hunchentoot:raw-post-data :force-text t))
      ;;            (json-obj (jsown:parse data-string))) ;; use jsown to parse the string
       ;;        .... ;; play with json-obj
        ;;       data-string)))))
