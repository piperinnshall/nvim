-- Gradle Make
-- vim.opt_local.makeprg = "./gradlew run"

-- Module Make
vim.opt_local.makeprg = "cd %:p:h:h && javac -d out $(find src -name '*.java') && java --module-path out -m com.piperinnshall.fluentguijava/com.piperinnshall.fluentguijava.main.Main"
