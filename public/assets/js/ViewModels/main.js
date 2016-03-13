;(function(){

	viewModel.instances = viewModel.instances || {};

	for(var prop in viewModel) {
		if(viewModel.hasOwnProperty(prop)) {
			if(prop !== 'instances') {
				viewModel.instances[prop] = new viewModel[prop];
			}
		}
	}
	ko.applyBindings(viewModel.instances);
}());