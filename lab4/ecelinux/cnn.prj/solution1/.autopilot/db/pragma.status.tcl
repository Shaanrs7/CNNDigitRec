lappend pragmaStatus0 {pragma "ARRAY_PARTITION" source "/home/srs383/ECE5775/Labs/CNNDigitRec/lab4/ecelinux/layer.cpp" location "cnn_xcel" found 0 funcFound 0 applied 0 ambiguous 0 reason "Directive 'ARRAY_PARTITION' cannot be applied: Function 'cnn_xcel' does not exist in any synthesis source file." variable "mem_conv1"}
lappend pragmaStatus1 {pragma "ARRAY_PARTITION" source "/home/srs383/ECE5775/Labs/CNNDigitRec/lab4/ecelinux/layer.cpp" location "cnn_xcel" found 0 funcFound 0 applied 0 ambiguous 0 reason "Directive 'ARRAY_PARTITION' cannot be applied: Function 'cnn_xcel' does not exist in any synthesis source file." variable "b_conv1"}
lappend pragmaStatus2 {pragma "PIPELINE" source "/home/srs383/ECE5775/Labs/CNNDigitRec/lab4/ecelinux/layer.cpp" location "perform_conv/LOOP1" found 1 funcFound 1 applied 1 ambiguous 0 reason "null"}
lappend pragmaStatus0 {pragma "ARRAY_PARTITION" source "/home/srs383/ECE5775/Labs/CNNDigitRec/lab4/ecelinux/cnn.cpp" location "cnn_xcel" found 1 funcFound 1 applied 1 ambiguous 0 reason "null" variable "mem_conv1"}
lappend pragmaStatus1 {pragma "ARRAY_PARTITION" source "/home/srs383/ECE5775/Labs/CNNDigitRec/lab4/ecelinux/cnn.cpp" location "cnn_xcel" found 1 funcFound 1 applied 1 ambiguous 0 reason "null" variable "b_conv1"}
lappend pragmaStatus2 {pragma "PIPELINE" source "/home/srs383/ECE5775/Labs/CNNDigitRec/lab4/ecelinux/cnn.cpp" location "perform_conv/LOOP1" found 0 funcFound 0 applied 0 ambiguous 0 reason "Directive 'PIPELINE' cannot be applied: Function 'perform_conv' does not exist in any synthesis source file."}
