#include "../hengine/src/hengine/Engine.hpp"
#include <cstdio>

Engine *e;

void load(void);
void update(float delta);
void draw(void);

int main(void) {
	EngineConfig e_config;

	e_config.window_config.size.x = 640;
	e_config.window_config.size.y = 480;
	e_config.window_config.title = "hengine test 2";

	e = new Engine(e_config, &load, &update, &draw);

	e->start();

	free(e);
}

void load(void) {
	printf("Engine loaded\n");
}

void update(float delta) {}

void draw(void) {}
