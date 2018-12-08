#include "fmcgct.hpp"

void fmcgct::promote(name dt_id, name status, name entityid, name entitytype) {
	print( "promote status called ", name{dt_id});

	_fmcgtbl.emplace(_self, [&](auto& new_status) {
			new_status.dt_id = dt_id;
			new_status.status = status;
			new_status.entityid = entityid;
			new_status.entitytype = entitytype;
	});
}

EOSIO_DISPATCH(fmcgct, (promote));