import pyautogui
import time

# Obtener las coordenadas iniciales del ratón
x, y = pyautogui.position()

while True:
    # Mover el ratón a la izquierda
    pyautogui.moveTo(x - 10, y, duration=1)
    
    # Esperar 3 segundos
    time.sleep(3)
    
    # Mover el ratón a la derecha
    pyautogui.moveTo(x + 10, y, duration=1)
