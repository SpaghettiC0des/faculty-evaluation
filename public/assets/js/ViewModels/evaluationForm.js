viewModel.evaluationForm = function() {
	var that = this;

	this.score = ko.observableArray([]);

	this.formSubmit = function() {
		if (!that.score().length) return;
		$.ajax({
			type: 'POST',
			url: baseUrl + 'save-evaluation',
			data: {
				score: that.score()
			}
		}).done(function() {
			swal("Evaluation Saved!", "", "success");
		}).fail(function() {
			swal("Something went wrong!", "Try again", "error");
		});
	};
};