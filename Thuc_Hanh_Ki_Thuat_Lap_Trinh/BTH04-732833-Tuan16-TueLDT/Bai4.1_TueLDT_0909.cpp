/*
Đảo ngược một danh sách liên kết đơn
Hãy hoàn thiện các hàm thao tác trên một danh sách liên kết:
Thêm một phần tử vào đầu danh sách liên kết
In danh sách
Đảo ngược danh sách liên kết (yêu cầu độ phức tạp thời gian O(N) và chi phí bộ nhớ dùng thêm O(1))
*/
#include <iostream> 
using namespace std;
//Le Dinh Tri Tue - 0909 - 732833
struct Node { 
    int data; 
    Node* next;

    Node(int data) {
        this->data = data;
        next = NULL;
    }
};
//Le Dinh Tri Tue - 0909 - 732833
// push a new element to the beginning of the list
Node* prepend(Node* head, int data) {
    /*****************
    # YOUR CODE HERE #
    *****************/
    Node* tue = new Node(data);
    tue->next = head;
    return tue;
}
//Le Dinh Tri Tue - 0909 - 732833
// print the list content on a line
void print(Node* head) {
    /*****************
    # YOUR CODE HERE #
    *****************/
    Node* temp = head;
    while (true){
    	std::cout << temp->data << " ";
    	if (temp->next == NULL) break;
    	temp = temp->next;
	}
}
//Le Dinh Tri Tue - 0909 - 732833
// return the new head of the reversed list
Node* reverse(Node* head) {
    /*****************
    # YOUR CODE HERE #
    *****************/
    Node* prev = NULL;
    Node* current = head;
    Node* next = NULL;

    while (current != NULL) {
        next = current->next; 
        current->next = prev; 
        prev = current; 
        current = next;
    }

    head = prev; 
    return head;
}
//Le Dinh Tri Tue - 0909 - 732833  
int main() {
    int n, u;
    cin >> n;
    Node* head = NULL;
    for (int i = 0; i < n; ++i){
        cin >> u;
        head = prepend(head, u);
    } 
    
    cout << "Original list: ";
    print(head);
    cout << endl;
    head = reverse(head);
    
    cout << "Reversed list: ";
    print(head);

    return 0; 
}