INCLUDES=-I/home/rgrosso/alice/sw/ubuntu1604_x86-64/ROOT/latest/include/ -I/home/rgrosso/alice/sw/ubuntu1604_x86-64/AliRoot/latest/include/ -I/home/rgrosso/alice/sw/ubuntu1604_x86-64/FairRoot/latest/include/ -I/home/rgrosso/alice/sw/ubuntu1604_x86-64/O2/latest/include/
LIBRARIESINC=-L/home/rgrosso/alice/sw/ubuntu1604_x86-64/ROOT/latest/lib/ -L/home/rgrosso/alice/sw/ubuntu1604_x86-64/AliRoot/latest/lib/ -L/home/rgrosso/alice/sw/ubuntu1604_x86-64/DDS/latest/lib/ -L/home/rgrosso/alice/sw/ubuntu1604_x86-64/boost/latest/lib/ -L/home/rgrosso/alice/sw/ubuntu1604_x86-64/protobuf/latest/lib/ -L/home/rgrosso/alice/sw/ubuntu1604_x86-64/FairRoot/latest/lib/ -L/home/rgrosso/alice/sw/ubuntu1604_x86-64/nanomsg/latest/lib/ -L/home/rgrosso/alice/sw/ubuntu1604_x86-64/O2/latest/lib/
LIBRARIES=-lCDB -lpthread -lCore -lCCDB -lBase -lBaseMQ -lFairMQ -lParMQ -lprotobuf -lParMQ -lBase -lEventDisplay -lFairDataMatch -lFairMQDDSConfigPlugin -lFairMQDDSControlPlugin -lFairMQ -lFairTools -lGeane -lGen -lTrkBase -lGeoBase -lMbsAPI -lParBase -ldds_intercom_lib -ldds_protocol_lib -ldds-user-defaults -lboost_atomic -lboost_chrono -lboost_context -lboost_date_time -lboost_filesystem -lboost_iostreams -lboost_log_setup -lboost_log -lboost_prg_exec_monitor -lboost_program_options -lboost_random -lboost_regex -lboost_signals -lboost_system -lboost_thread -lboost_timer -lboost_unit_test_framework -lboost_wserialization -lboost_serialization -lnanomsg
default:
	g++ -std=c++1y -c $(INCLUDES) main.cpp
	g++ -o test.exe main.o $(LIBRARIESINC) $(LIBRARIES)
clean:
	rm *.o *.exe

