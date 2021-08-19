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

int player1_x, player1_y;
int player2_x, player2_y;

char player1_score_str[7];
char player2_score_str[7];

int dot_x, dot_y;
int dot_x_vel, dot_y_vel;

static inline void loop_setup(void) {
  Wait_Recal();
  check_buttons(); /* update status of buttons */
  Intensity_a(MAX_BRIGHTNESS); /* set some brightness */
  VIA_t1_cnt_lo = SCALE;      /* set scale factor */
}

void reset_round(void) {
  dot_x = 0;
  dot_y = 0;
  dot_x_vel = 2;
  dot_y_vel = 2;

  player1_x = -HALF_PADDLE;
  player1_y = PADDLE_Y;
  player2_x = -HALF_PADDLE;
  player2_y = -PADDLE_Y;
}

/*
 * A simple setup routine that enables/disables the joystick
 */
void setup(void) {
  disable_controller_1_x();
  disable_controller_1_y();
  disable_controller_2_x();
  disable_controller_2_y();
  Clear_Score(player1_score_str);
  Clear_Score(player2_score_str);
  player1_score_str[6] = '\x80';
  player2_score_str[6] = '\x80';
  reset_round();
}

/*
 * Our main function we start of here...
 * we should make sure that we never return from here, or vectrex will
 * be surely bothered!
 */
int main(void) {
  setup();

  while (1) {
    loop_setup();

    // print scores
    Print_Str_d(127, -128, player1_score_str);
    Print_Str_d(-128, -128, player2_score_str);

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

    // update dot position
    dot_x = dot_x + dot_x_vel;
    dot_y = dot_y + dot_y_vel;

    // check if dot is in bounds of either paddle, and reflect if so
    if (dot_y > BOUND_Y) {
      Add_Score_a(1, player2_score_str);
      reset_round();
    } else if (dot_y < -BOUND_Y) {
      Add_Score_a(1, player1_score_str);
      reset_round();
    } else if (dot_x >= player1_x && dot_x <= player1_x + PADDLE_LENGTH && dot_y >= player1_y - dot_y_vel && dot_y <= player1_y + dot_y_vel) {
      dot_y_vel = -dot_y_vel;
      dot_y = dot_y + 2 * dot_y_vel;
    } else if (dot_x >= player2_x && dot_x <= player2_x + PADDLE_LENGTH && dot_y >= player2_y + dot_y_vel && dot_y <= player2_y - dot_y_vel) {
      dot_y_vel = -dot_y_vel;
      dot_y = dot_y + 2 * dot_y_vel;
    }

    // reflect dot if it hits the side of the screen
    if (dot_x > BOUND_X || dot_x < -BOUND_X) {
      dot_x_vel = -dot_x_vel;
    }
  }
}