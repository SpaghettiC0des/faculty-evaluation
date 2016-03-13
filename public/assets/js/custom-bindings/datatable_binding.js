ko.bindingHandlers.datatable = {
	init: function(el, valAccesor, allBindings) {
		var _defaults = {

			},
			userDefinedOptions = valAccesor(),
			options = userDefinedOptions || _defaults;
			console.log(userDefinedOptions);
			$(el).DataTable(options);
	}
}