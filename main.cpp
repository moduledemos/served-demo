#include <served/served.hpp>

int main() {
	served::multiplexer mux;

	mux.handle("/hello")
		.get([](served::response & res, const served::request & req) {
			res << "Hello world!\n";
		});

	served::net::server server("0.0.0.0", "8080", mux);
	server.run(10);

	return 0;
}