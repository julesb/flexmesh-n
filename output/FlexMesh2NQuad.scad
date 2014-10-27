intersection () {
  difference () {
    union () {
      rotate (a=45.0, v=[0.0, 0.0, 1.0]) {
        translate ([9.899494936611665, 0.0, 0.0]) {
          sphere ($fs=0.9, r=5, center=true);
        }
      }
      rotate (a=135.0, v=[0.0, 0.0, 1.0]) {
        translate ([9.899494936611665, 0.0, 0.0]) {
          sphere ($fs=0.9, r=5, center=true);
        }
      }
      rotate (a=225.0, v=[0.0, 0.0, 1.0]) {
        translate ([9.899494936611665, 0.0, 0.0]) {
          sphere ($fs=0.9, r=5, center=true);
        }
      }
      rotate (a=315.0, v=[0.0, 0.0, 1.0]) {
        translate ([9.899494936611665, 0.0, 0.0]) {
          sphere ($fs=0.9, r=5, center=true);
        }
      }
      cylinder (h=6.751, r=9.899494936611665, center=true);
    }
    rotate (a=0.0, v=[0.0, 0.0, 1.0]) {
      union () {
        translate ([9.0, 0.0, 0.0]) {
          cylinder ($fs=0.05, h=6.851, r=5.0, center=true);
          translate ([0.0, 4.5, 0.0]) {
            sphere ($fs=1.2, r=2.0, center=true);
          }
          translate ([0.0, -4.5, 0.0]) {
            sphere ($fs=1.2, r=2.0, center=true);
          }
        }
        translate ([19.0, 0, 0]) {
          cube ([20.0, 10.0, 6.851], center=true);
        }
      }
    }
    rotate (a=90.0, v=[0.0, 0.0, 1.0]) {
      union () {
        translate ([9.0, 0.0, 0.0]) {
          cylinder ($fs=0.05, h=6.851, r=5.0, center=true);
          translate ([0.0, 4.5, 0.0]) {
            sphere ($fs=1.2, r=2.0, center=true);
          }
          translate ([0.0, -4.5, 0.0]) {
            sphere ($fs=1.2, r=2.0, center=true);
          }
        }
        translate ([19.0, 0, 0]) {
          cube ([20.0, 10.0, 6.851], center=true);
        }
      }
    }
    rotate (a=180.0, v=[0.0, 0.0, 1.0]) {
      union () {
        translate ([9.0, 0.0, 0.0]) {
          cylinder ($fs=0.05, h=6.851, r=5.0, center=true);
          translate ([0.0, 4.5, 0.0]) {
            sphere ($fs=1.2, r=2.0, center=true);
          }
          translate ([0.0, -4.5, 0.0]) {
            sphere ($fs=1.2, r=2.0, center=true);
          }
        }
        translate ([19.0, 0, 0]) {
          cube ([20.0, 10.0, 6.851], center=true);
        }
      }
    }
    rotate (a=270.0, v=[0.0, 0.0, 1.0]) {
      union () {
        translate ([9.0, 0.0, 0.0]) {
          cylinder ($fs=0.05, h=6.851, r=5.0, center=true);
          translate ([0.0, 4.5, 0.0]) {
            sphere ($fs=1.2, r=2.0, center=true);
          }
          translate ([0.0, -4.5, 0.0]) {
            sphere ($fs=1.2, r=2.0, center=true);
          }
        }
        translate ([19.0, 0, 0]) {
          cube ([20.0, 10.0, 6.851], center=true);
        }
      }
    }
  }
  cylinder (h=6.751, r=19.79898987322333, center=true);
}
