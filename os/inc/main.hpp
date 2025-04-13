#pragma once

/// @defgroup main main
/// @{
#ifdef LINUX
extern int main(int argc, char *argv[]);
#else
extern int main();
#endif  // LINUX
extern void arg(char argc, char *argv);

extern void setup();  ///< hardware setup
extern void loop();   ///< infinite event loop (in background if @ref cli used)
/// @}
