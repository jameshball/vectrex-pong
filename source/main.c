/*
 * Include some standard vectrex functions first!
 */
#include <vectrex.h>
#include "controller.h"

#define SCALE 127
#define MAX_BRIGHTNESS (0x7f)

#define PADDLE_LENGTH 0x24
#define HALF_PADDLE (PADDLE_LENGTH/2)
#define PADDLE_Y 100
#define PADDLE_SPEED 3

#define BOUND_X 120
#define EDGE_BOUND (BOUND_X + 4)
#define BOUND_Y 122

#define NUM_FLASHES 5
#define ARROW_LENGTH 0x12
#define HALF_ARROW ARROW_LENGTH/2

unsigned char *current_song;

int player1_x, player1_y;
int player2_x, player2_y;

char player1_score_str[7];
char player2_score_str[7];

int dot_x, dot_y;
int dot_x_vel, dot_y_vel;
int default_velocity = 2;
unsigned int dot_brightness;
int brightness_fade_in;

int dot_ticks;
int flashes;

/*
 * This function sets up a piece of music to be played from the start
 * of the next round on onward...
 */
static inline void play_song(void* song)
{
  Vec_Music_Flag = 1;       /* A makro to write to a specific memory */
  current_song = song;                /* address */
}

static inline void loop_setup(void) {
  DP_to_C8();
  Init_Music_chk(current_song);
  Wait_Recal();
  Do_Sound();
  check_buttons(); /* update status of buttons */
  Intensity_a(MAX_BRIGHTNESS); /* set some brightness */
  VIA_t1_cnt_lo = SCALE;      /* set scale factor */
}

void reset_round(void) {
  dot_x = 0;
  dot_y = 0;
  default_velocity = -default_velocity;
  dot_x_vel = default_velocity;
  dot_y_vel = default_velocity;
  dot_ticks = 0;
  flashes = 0;
  dot_brightness = 0;
  brightness_fade_in = 1;
}

// draw dot and move back to origin
static inline void draw_dot(void) {
  Dot_d(dot_y, dot_x);
}

// draw arrow pointing in the direction of the dot. Code is intentionally verbose to reduce computation.
static inline void draw_arrow(void) {
  if (dot_y_vel > 0) {
    Moveto_d(ARROW_LENGTH, 0);
    Draw_Line_d(ARROW_LENGTH, 0);
    Draw_Line_d(-HALF_ARROW, -HALF_ARROW);
    Moveto_d(HALF_ARROW, HALF_ARROW);
    Draw_Line_d(-HALF_ARROW, HALF_ARROW);
  } else {
    Moveto_d(-ARROW_LENGTH, 0);
    Draw_Line_d(-ARROW_LENGTH, 0);
    Draw_Line_d(HALF_ARROW, -HALF_ARROW);
    Moveto_d(-HALF_ARROW, HALF_ARROW);
    Draw_Line_d(HALF_ARROW, HALF_ARROW);
  }
}

static void move_paddles(void) {
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
}

static inline void draw_paddles(void) {
  // draw player1 and move back to origin
  Moveto_d(player1_y, player1_x);
  Draw_Line_d(0, PADDLE_LENGTH);
  Moveto_d(-player1_y, -player1_x - PADDLE_LENGTH);

  // draw player2
  Moveto_d(player2_y, player2_x);
  Draw_Line_d(0, PADDLE_LENGTH);
}

static void move_dot(void) {
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
  } else if (dot_x >= player1_x - dot_x_vel && dot_x <= player1_x + PADDLE_LENGTH + dot_x_vel && dot_y >= player1_y - dot_y_vel && dot_y <= player1_y + dot_y_vel) {
    dot_y_vel = -dot_y_vel;
    dot_y = dot_y + 2 * dot_y_vel;
  } else if (dot_x >= player2_x - dot_x_vel && dot_x <= player2_x + PADDLE_LENGTH + dot_x_vel && dot_y >= player2_y + dot_y_vel && dot_y <= player2_y - dot_y_vel) {
    dot_y_vel = -dot_y_vel;
    dot_y = dot_y + 2 * dot_y_vel;
  }

  // reflect dot if it hits the side of the screen
  if (dot_x > BOUND_X || dot_x < -BOUND_X) {
    dot_x_vel = -dot_x_vel;
  }
}

static inline void draw_edges(void) {
  Moveto_d(126, -EDGE_BOUND);
  Draw_Line_d(-127, 0);
  Draw_Line_d(-127, 0);
  Moveto_d(0, EDGE_BOUND);
  Moveto_d(0, EDGE_BOUND);
  Draw_Line_d(127, 0);
  Draw_Line_d(127, 0);
  Moveto_d(-126, -EDGE_BOUND);
}

/*
 * A simple setup routine that enables/disables the joystick
 */
void setup(void) {
  disable_controller_1_x();
  disable_controller_1_y();
  disable_controller_2_x();
  disable_controller_2_y();

  play_song((void*)&Vec_Music_9);

  Clear_Score(player1_score_str);
  Clear_Score(player2_score_str);
  player1_score_str[6] = '\x80';
  player2_score_str[6] = '\x80';

  player1_x = -HALF_PADDLE;
  player1_y = PADDLE_Y;
  player2_x = -HALF_PADDLE;
  player2_y = -PADDLE_Y;
  
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
    Print_Str_d(127, -66, player1_score_str);
    Print_Str_d(-128, -66, player2_score_str);

    Intensity_a(dot_brightness);
    draw_dot();

    // if the dot has finished flashing, start the round
    if (flashes >= NUM_FLASHES) {
      dot_brightness = 0x7f;
      move_dot();
    } else {
      draw_arrow();
      dot_ticks++;
      if (dot_ticks >= 10) {
        if (dot_brightness) {
          dot_brightness = 0x00;
        } else {
          dot_brightness = 0x7f;
          flashes++;
        }
        dot_ticks = 0;
      }
    }

    Reset0Ref();
    Intensity_a(MAX_BRIGHTNESS);
    draw_edges();
    move_paddles();
    draw_paddles();
  }
}