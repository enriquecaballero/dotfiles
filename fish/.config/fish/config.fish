if status is-interactive
    # Commands to run in interactive sessions can go here
end

function jenv
  set JAVA_HOME (/usr/libexec/java_home -v $argv[1])
  export JAVA_HOME=$JAVA_HOME
  java -version
end
