ko.bindingHandlers.datatable = {
	init: function(el, valAccesor, allBindings) {
		var _defaults = {

			},
			options = allBindings || _defaults;

			$(el).DataTable(options);
	}
}