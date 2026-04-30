FROM ghcr.io/9seconds/mtg:latest
# В новой версии mtg аргументы указываются без флагов bind
CMD ["run", "0.0.0.0:10000", "30a0360ee7f4b2fb3de3761b76534aed"]
