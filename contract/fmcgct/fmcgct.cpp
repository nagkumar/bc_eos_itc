#include "fmcgct.hpp"

void fmcgct::promote(name dt_id, name status, name entity_id, name entity_type) {
	_fmcgtbl.emplace(_self, [&](auto& new_status) {
			new_status.dt_id = dt_id;
			new_status.status = status;
			new_status.entity_id = entity_id;
			new_status.entity_type = entity_type;
	});
}

EOSIO_DISPATCH(fmcgct, (promote));