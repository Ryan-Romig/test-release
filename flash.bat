set /p "id=Enter COM port: "
pip install esptool
esptool.py --chip esp32 --port %id% --baud 921600 --before default_reset --after hard_reset write_flash -z --flash_mode dio --flash_freq 40m --flash_size detect 0x1000 build/bootloader/bootloader.bin 0x8000 build/partition_table/partition-table.bin 0x10000 build/underwater-audio-test.bin 0x110000 build/audio_tone.bin
pause
