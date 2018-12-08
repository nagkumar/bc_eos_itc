#include <eosiolib/eosio.hpp>
#include <chrono>
#include <ctime>

using namespace eosio;

CONTRACT fmcgct : public contract {

	private:
		TABLE fmcg_tbl {
			name dt_id;
			name status;
			name entity_id;
			name entity_type;
      	 auto primary_key() const { return dt_id.value; }
       };

       typedef multi_index<"fmcg"_n, fmcg_tbl> fmcg_mitbl;

       fmcg_mitbl _fmcgtbl;

	public:
		fmcgct( name receiver, name code, datastream<const char*> ds):contract(receiver,code, ds),_fmcgtbl(code, code.value){}

		ACTION promote(name dt_id, name status, name entity_id, name entity_type);

};