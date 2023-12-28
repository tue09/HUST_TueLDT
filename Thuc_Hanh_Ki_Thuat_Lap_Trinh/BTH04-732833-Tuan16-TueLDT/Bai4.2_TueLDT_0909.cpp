/*Một điểm trong không gian 2 chiều được biểu diễn bằng pair. 
Hãy viết hàm tính diện tích tam giác theo tọa độ 3 đỉnh*/
double area(Point a, Point b, Point c) {
    /*****************
    # YOUR CODE HERE #
    *****************/
    //Le Dinh Tri Tue - 0909 - 732833
    double res = 0.5*abs((b.first - a.first)*(c.second - a.second) 
				- (c.first - a.first)*(b.second - a.second));
	return res;
}