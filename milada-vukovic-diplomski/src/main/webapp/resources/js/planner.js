/**
 * 
 */

function addRow() {
	var $table = $('#tablePlan');
	var tr = $table.find('#tableRow');
	var clone = tr.clone(true);
	clone.id = tr.id + "1";
	$($table).find('tbody').append(clone);
}
