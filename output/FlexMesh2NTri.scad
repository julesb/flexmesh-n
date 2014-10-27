intersection () {
  difference () {
    union () {
      rotate (a=59.99999999999999, v=[0.0, 0.0, 1.0]) {
        translate ([8.082903768654761, 0.0, 0.0]) {
          sphere ($fs=0.9, r=5, center=true);
        }
      }
      rotate (a=180.0, v=[0.0, 0.0, 1.0]) {
        translate ([8.082903768654761, 0.0, 0.0]) {
          sphere ($fs=0.9, r=5, center=true);
        }
      }
      rotate (a=299.99999999999994, v=[0.0, 0.0, 1.0]) {
        translate ([8.082903768654761, 0.0, 0.0]) {
          sphere ($fs=0.9, r=5, center=true);
        }
      }
      cylinder (h=6.751, r=8.082903768654761, center=true);
    }
    rotate (a=0.0, v=[0.0, 0.0, 1.0]) {
      union () {
        translate ([6.0414518843273814, 0.0, 0.0]) {
          cylinder ($fs=0.05, h=6.851, r=5.0, center=true);
          translate ([0.0, 4.5, 0.0]) {
            sphere ($fs=1.2, r=2.0, center=true);
          }
          translate ([0.0, -4.5, 0.0]) {
            sphere ($fs=1.2, r=2.0, center=true);
          }
        }
        translate ([16.04145188432738, 0, 0]) {
          cube ([20.0, 10.0, 6.851], center=true);
        }
      }
    }
    rotate (a=119.99999999999999, v=[0.0, 0.0, 1.0]) {
      union () {
        translate ([6.0414518843273814, 0.0, 0.0]) {
          cylinder ($fs=0.05, h=6.851, r=5.0, center=true);
          translate ([0.0, 4.5, 0.0]) {
            sphere ($fs=1.2, r=2.0, center=true);
          }
          translate ([0.0, -4.5, 0.0]) {
            sphere ($fs=1.2, r=2.0, center=true);
          }
        }
        translate ([16.04145188432738, 0, 0]) {
          cube ([20.0, 10.0, 6.851], center=true);
        }
      }
    }
    rotate (a=239.99999999999997, v=[0.0, 0.0, 1.0]) {
      union () {
        translate ([6.0414518843273814, 0.0, 0.0]) {
          cylinder ($fs=0.05, h=6.851, r=5.0, center=true);
          translate ([0.0, 4.5, 0.0]) {
            sphere ($fs=1.2, r=2.0, center=true);
          }
          translate ([0.0, -4.5, 0.0]) {
            sphere ($fs=1.2, r=2.0, center=true);
          }
        }
        translate ([16.04145188432738, 0, 0]) {
          cube ([20.0, 10.0, 6.851], center=true);
        }
      }
    }
  }
  cylinder (h=6.751, r=16.165807537309522, center=true);
}
