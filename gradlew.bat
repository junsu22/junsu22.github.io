@echo off
@rem -----------------------------------------------------------------------------
@rem Gradle startup script for Windows
@rem -----------------------------------------------------------------------------

setlocal

set DIR=%~dp0
set APP_BASE_NAME=%~n0
set APP_HOME=%DIR%

set DEFAULT_JVM_OPTS=

set CLASSPATH=%APP_HOME%\gradle\wrapper\gradle-wrapper.jar

if exist "%JAVA_HOME%\bin\java.exe" (
  set JAVA_EXE="%JAVA_HOME%\bin\java.exe"
) else (
  set JAVA_EXE=java
)

%JAVA_EXE% %DEFAULT_JVM_OPTS% -cp "%CLASSPATH%" org.gradle.wrapper.GradleWrapperMain %*

endlocal
