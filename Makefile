rtc_demo :
	$(CC) -fPIC -shared -o librtc_demo.so rtc_demo.c

.PHONY : clean
clean :
	rm -f *.o *~ librtc_demo.so

.PHONY : install
install :
	cp -f S100time_syn.sh $(TARGET_DIR)/etc/init.d/
	cp -f librtc_demo.so $(TARGET_DIR)/usr/lib/

.PHONY: uninstall
uninstall :
	rm -f $(TARGET_DIR)/etc/init.d/S100time_syn.sh
	rm -f $(TARGET_DIR)/usr/lib/librtc_demo.so