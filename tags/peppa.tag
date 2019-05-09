<Peppa>
  <img src="img/{ PeppaPig }.gif">

  <div>
    <div class="Feedtime">
      <div style="width:{ Feedtime }%;">&nbsp;</div>
    </div>
    <p>Feeding for: { Feedtime } min</p>
  </div>

  <button onclick={ Feed }>Feed</button>
  <button onclick={ Discard }>Discard</button>

  <script>
    //make a copy of my egg and call it that
    var that = this;

    //initial state
    this.Feedtime = 0;
    this.PeppaPig = "monster";

    startFeeding() {
      console.log(this.Feedtime);
      this.Feedtime = this.Feedtime + 1 > 12
        ? 12
        : this.Feedtime + 1;
    }

    restartFeeding() {
      console.log(this.Feedtime);
      this.Feedtime = 0;
    }

    checkStatus() {
      if (this.Feedtime >= 8 && this.Feedtime <= 12) {
        this.PeppaPig = "peppahappy";
      } else if (this.Feedtime > 4 && this.Feedtime < 8) {
        this.PeppaPig = "peppaok";
      } else if (this.Feedtime >= 3 && this.Feedtime <= 4) {
        this.PeppaPig = "peppasad";
      } else
      {
          this.PeppaPig = "monster";
        }
      }

    // functions that respond to events
    Feed(e) {
      this.startFeeding();
      this.checkStatus();
    }
    Discard(e) {
      this.restartFeeding();
      this.checkStatus();
    }

  </script>

  <style>
    :scope {
      margin: auto;
    }

    img {
      weight: auto;
      height: 200px;
    }
  </style>
</Peppa>
