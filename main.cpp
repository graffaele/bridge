#include "AliCDBManager.h"
#include "CCDB/Manager.h"

int main() {
    AliCDBManager *cdb = AliCDBManager::Instance();
    o2::CDB::Manager *o2cdb = o2::CDB::Manager::Instance();
    return 0;
}
