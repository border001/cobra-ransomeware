#include <Windows.h>

#define SCREEN_WIDTH 1920
#define SCREEN_HEIGHT 1080

HICON icoons[] = {
    LoadIconA(NULL, IDI_INFORMATION),
    LoadIconA(NULL, IDI_ERROR),
    LoadIconA(NULL, IDI_QUESTION),
    LoadIconA(NULL, IDI_WARNING)

};

sive_t s_icons = sizeof(icoons)

void DrawIcons() {
    HWND hwnd = GetDesktopWindow();
    HDC hdc = GetDC(hwnd);

    DrawIcon(hdc, rand() % SCREEN_WIDTH, rand() % SCREEN_HEIGHT, icoons[rand() % size_of(icoons)]);

    ReleaseDC(hwnd, hdc);

}

int main() {
    while (1) {
        DrawIcons();
    }
    return 0;
}

