#include "fmcgct.hpp"

void fmcgct::promote(name dtid, name status, name entityid, name entitytype) {
	print( "promote status called ", name{dtid});

	_fmcgtbl.emplace(_self, [&](auto& new_status) {
			new_status.dtid = dtid;
			new_status.status = status;
			new_status.entityid = entityid;
			new_status.entitytype = entitytype;
	});
}

EOSIO_DISPATCH(fmcgct, (promote));