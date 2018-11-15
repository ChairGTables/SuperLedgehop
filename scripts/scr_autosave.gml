fileId = file_text_open_write(working_directory + "soulOfC.txt");
if (fileId = -1)
{
    show_message("lol the save file got zuccd");
    exit;
}
    
file_text_write_real(fileId, global.highestLevel); //level
file_text_writeln(fileId);
file_text_write_real(fileId, global.language); //language
file_text_writeln(fileId);
file_text_write_real(fileId, global.disableCutscenes); //cutscenes
file_text_writeln(fileId);
file_text_write_real(fileId, global.musicVolume); //music
file_text_writeln(fileId);
file_text_write_real(fileId, global.effectsVolume); //sfx
file_text_writeln(fileId);
file_text_write_real(fileId, global.voiceVolume); //voice
file_text_writeln(fileId);
file_text_write_real(fileId, global.misc1); //misc1
file_text_writeln(fileId);
file_text_write_real(fileId, global.misc2); //misc2
file_text_writeln(fileId);
file_text_write_real(fileId, global.misc3); //misc3
file_text_writeln(fileId);
file_text_write_real(fileId, global.misc4); //misc4
file_text_writeln(fileId);
file_text_write_string(fileId, "This is Chizuru's soul. Be careful, as it is fragile.");
file_text_writeln(fileId);
file_text_write_string(fileId, "0110100001110100011101000111000000111010001011110010111101110111011101110111011100101110011011000110000101101101011001010110010001101001011011010110010101101110011100110110100101101111011011100010111001101101011011110110010100101111011001100111001001101001011001010110111001100100");


file_text_close(fileId);
