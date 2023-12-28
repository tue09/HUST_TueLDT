/*Một vector trong không gian 3 chiều được biểu diễn bằng tuple<double, double, double>. 
Hãy viết hàm tính tích có hướng của 2 vector.*/
Vector cross_product(Vector a, Vector b) {
    /*****************
    # YOUR CODE HERE #
    *****************/
    //Le Dinh Tri Tue - 0909 - 732833
    double x = std::get<1>(a)*std::get<2>(b)
				- std::get<1>(b)*std::get<2>(a);
	double y = - std::get<0>(a)*std::get<2>(b)
				+ std::get<0>(b)*std::get<2>(a);
	double z = - std::get<1>(a)*std::get<0>(b)
				+ std::get<1>(b)*std::get<0>(a);
	return {x, y, z};
}