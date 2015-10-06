(ert-deftest test-minitest-buffer-name ()
  (let ((filename nil))
    (should (equal (minitest-buffer-name filename) "*Minitest *")))
  (let ((filename "foo.rb"))
    (should (equal (minitest-buffer-name filename) "*Minitest foo.rb*"))))

(ert-deftest test-minitest-zeus-p ()
  (let ((minitest-use-zeus-when-possible nil))
    (should (equal (minitest-zeus-p) nil)))
  (let ((minitest-use-zeus-when-possible t))
    (should (equal (minitest-zeus-p) nil))))
