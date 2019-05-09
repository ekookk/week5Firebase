<child>
		<img src={ url } alt="user image" />
		<p>{ caption }</p>
		<button type="button" onclick={ parent.remove }>Delete</button>
<style>
	:scope {
		display: inline-block;
	}

</style>

	<script>
			console.log(this.parent);
	</script>


</child>
