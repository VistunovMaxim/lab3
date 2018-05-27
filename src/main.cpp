#include "board_start.hpp"
#include "board_print_plain.hpp"
#include "board.hpp"
int main() {
    char deck[8][8];
    board_start(deck);
    while(1) {
        board_print_plain(deck);
        board(deck);
    }
}
