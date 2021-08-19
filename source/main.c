/*
 * Include some standard vectrex functions first!
 */
#include <vectrex.h>
#include "controller.h"

#define SCALE 127
#define MAX_BRIGHTNESS (0x7f)

#define PADDLE_LENGTH 0x24
#define HALF_PADDLE PADDLE_LENGTH/2
#define PADDLE_Y 100
#define PADDLE_SPEED 3

#define BOUND_X 100
#define BOUND_Y 120

/*
 * A simple setup routine that enables/disables the joystick
 */
void setup(void) {
  disable_controller_1_x();
  disable_controller_1_y();
  disable_controller_2_x();
  disable_controller_2_y();
}

static inline void loop_setup() {
  Wait_Recal();
  check_buttons(); /* update status of buttons */
  Intensity_a(MAX_BRIGHTNESS); /* set some brightness */
  VIA_t1_cnt_lo = SCALE;      /* set scale factor */
}

/*
 * Our main function we start of here...
 * we should make sure that we never return from here, or vectrex will
 * be surely bothered!
 */
int main(void) {
  int player1_x = -HALF_PADDLE;
  int player1_y = PADDLE_Y;
  int player2_x = -HALF_PADDLE;
  int player2_y = -PADDLE_Y;

  int dot_x = 13;
  int dot_y = 0;
  int dot_x_vel = 2;
  int dot_y_vel = 2;

  setup();

  while (1) {
    loop_setup();

    // draw dot and move back to origin
    Dot_d(dot_y, dot_x);
    Moveto_d(-dot_y, -dot_x);

    // move players according to the buttons pressed
    if (button_1_1_held() && player1_x > -BOUND_X) {
      player1_x -= PADDLE_SPEED;
    }
    if (button_1_2_held() && player1_x + PADDLE_LENGTH < BOUND_X) {
      player1_x += PADDLE_SPEED;
    }
    if (button_1_3_held() && player2_x > - BOUND_X) {
      player2_x -= PADDLE_SPEED;
    }
    if (button_1_4_held() && player2_x + PADDLE_LENGTH < BOUND_X) {
      player2_x += PADDLE_SPEED;
    }

    // draw player1 and move back to origin
    Moveto_d(player1_y, player1_x);
    Draw_Line_d(0, PADDLE_LENGTH);
    Moveto_d(-player1_y, -player1_x - PADDLE_LENGTH);

    // draw player2
    Moveto_d(player2_y, player2_x);
    Draw_Line_d(0, PADDLE_LENGTH);

    int new_x = dot_x + dot_x_vel;
    int new_y = dot_y + dot_y_vel;

    // check if dot is in bounds of either paddle, and reflect if so
    if (new_x >= player1_x && new_x <= player1_x + PADDLE_LENGTH && new_y >= player1_y - dot_y_vel && new_y <= player1_y + dot_y_vel) {
      dot_y_vel = -dot_y_vel;
      new_y = dot_y + dot_y_vel;
    } else if (new_x >= player2_x && new_x <= player2_x + PADDLE_LENGTH && new_y >= player2_y + dot_y_vel && new_y <= player2_y - dot_y_vel) {
      dot_y_vel = -dot_y_vel;
      new_y = dot_y + dot_y_vel;
    }

    // update dot position
    dot_x = new_x;
    dot_y = new_y;

    // reflect dot if it hits the side of the screen
    if (dot_x > BOUND_X || dot_x < -BOUND_X) {
      dot_x_vel = -dot_x_vel;
    }
  }
}