#include <eosiolib/eosio.hpp>
#include <chrono>
#include <ctime>

using namespace eosio;

CONTRACT fmcgct : public contract {

	private:
		TABLE fmcg_tbl {
			name dtid;
			name status;
			name entityid;
			name entitytype;
      	 auto primary_key() const { return dtid.value; }
       };

       typedef multi_index<"fmcg"_n, fmcg_tbl> fmcg_mitbl;

       fmcg_mitbl _fmcgtbl;

	public:
		fmcgct( name receiver, name code, datastream<const char*> ds):contract(receiver,code, ds),_fmcgtbl(code, code.value){}

		ACTION promote(name dtid, name status, name entityid, name entitytype);

};