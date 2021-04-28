#resource "aws_eip" "lb" {
#  instance = aws_instance.lote01[count.index].id
#  vpc      = true
#}


resource "aws_eip" "eip1" {
    count = "2"
    instance = "${element(aws_instance.lote01.*.id,count.index)}"
    vpc = true
    depends_on = ["aws_instance.lote01"]
}

resource "aws_eip" "eip2" {
    count = "2"
    instance = "${element(aws_instance.lote02.*.id,count.index)}"
    vpc = true
    depends_on = ["aws_instance.lote02"]
}
