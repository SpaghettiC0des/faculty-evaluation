;
(function() {
	function checkCceCode(el, observable) {
		if ('push' in observable) {
			var scoreArr = observable(),
				elDataset = el.dataset;

			var existing = scoreArr.findIndex(function(element) {
				return element.CCECode == elDataset.cceCode;
			});
			if (el.value) {
				if (existing > -1) {
					var score1 = scoreArr[existing].ScoreeEval1,
						score2 = scoreArr[existing].ScoreeEval2;

					if (elDataset.scoreeName === 'ScoreeEval1') {
						scoreArr[existing].ScoreeEval1 = el.value
					} else {
						scoreArr[existing].ScoreeEval2 = el.value
					}

					return observable.valueHasMutated();
				}

				observable.push({
					UserNum: elDataset.userNum,
					FacultyNo: elDataset.facultyNo,
					SUCNo: elDataset.sucNo,
					CycleNo: elDataset.cycleNo,
					ScoreeEval1: elDataset.scoreeName === 'ScoreeEval1' ? el.value : 0,
					ScoreeEval2: elDataset.scoreeName === 'ScoreeEval2' ? el.value : 0,
					CCECode: elDataset.cceCode
				});
			}
		}

	}
	ko.bindingHandlers.facultyScore = {
		init: function(el, valAccesor, allBindings) {
			var observable = valAccesor();

			checkCceCode(el, observable);
		},
		update: function(el, valAccesor, allBindings) {
			var observable = valAccesor();
			el.onchange = function() {
				checkCceCode(el, observable);
			};
		}
	}
}());