// Generated by CoffeeScript 1.6.3

  var ah, av, dt, human, humanPos, t, velociPos, velociraptor, vh, vhmax, vv, vvmax, xh, xv;

  xv = -40;

  xh = 0;

  av = 4;

  ah = 3;

  vvmax = 25;

  vhmax = 6;

  vh = 0;

  vv = 0;

  t = 0;

  dt = 0.1;

  velociraptor = [{distance: -40, time: 0}];

  human = [{distance: 0, time: 0}];

  while (xv <= xh) {
    if (vh >= vhmax) {
      ah = 0;
    }
    if (vv >= vvmax) {
      av = 0;
    }
    vh = vh + ah * dt;
    vv = vv + av * dt;
    xh = xh + vh * dt;
    xv = xv + vv * dt;
    t = t + dt;
    humanPos = {
      distance: xh.toFixed(2),
      time: t.toFixed(1)
    };
    velociPos = {
      distance: xv.toFixed(2),
      time: t.toFixed(1)
    };
    velociraptor.push(velociPos);
    human.push(humanPos);
  }

  console.log(xh, t);
  console.log(human);
  console.log(velociraptor);
