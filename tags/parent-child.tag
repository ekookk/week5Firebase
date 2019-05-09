<parent-child>
	<div class="piggyshare">
		<!-- ref or reference attribute is a quick way to "bookmark" an element so we can quickly access it in javascript later. -->
		<!-- E.g. HTML <img ref="xxx"/> -->
		<!-- E.g. JS this.refs.xxx points to the img tag prior -->
<h3>Piggy Home</h3>
  	<input type="text" ref="url" placeholder="Enter URL">
		<input type="text" ref="caption" placeholder="Enter Caption">
		<button type="button" onclick={ addpiggy }>Find your piggy!!</button>
	</div>
<br></br>
	<child each={ piggyshare }>
	</child>

	<script>
		console.log(this);

		this.piggyshare = [
		{
			url: "https://s2.reutersmedia.net/resources/r/?m=02&d=20190418&t=2&i=1378071698&r=LYNXNPEF3H02D",
			caption: "MY PIGGY" },

		];

		var that  =  this;

		this.remove = function(event) {
			console.log('EVENT:', event);
			var userpiggy = event.item;
			var index = that.piggyshare.indexOf(userpiggy);
			that.piggyshare.splice(index, 1);

			that.update();
		};

		this.addpiggy = function(event) {
			console.log(event);
			var url = this.refs.urlEl.value;
			var caption = this.refs.captionEl.value;
			var piggy = { url: url, caption: caption };
			this.piggyshare.push(piggy);
			this.refs.captionEl.value = "";
		};
	</script>

	<style>
		:scope {
			display: block;
			background: #f9e4c5 ;
			padding: 15px;
		}
		img {
			width: 60%;
		}
	</style>

</parent-child>
