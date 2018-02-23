function slicer(id) {
	var text = document.getElementById(id).innerHTML;

	var slicerLength = 70;
	if (text.length > slicerLength) {
		document.getElementById(id).innerHTML = text.slice(0, slicerLength) + "...";
	}
}