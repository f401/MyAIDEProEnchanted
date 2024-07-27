.class public Lorg/codehaus/groovy/tools/javac/JavaStubCompilationUnit;
.super Lorg/codehaus/groovy/control/CompilationUnit;


# virtual methods
.method public j6(Lorg/codehaus/groovy/control/CompilerConfiguration;)V
    .registers 4

    invoke-super {p0, p1}, Lorg/codehaus/groovy/control/CompilationUnit;->j6(Lorg/codehaus/groovy/control/CompilerConfiguration;)V

    invoke-virtual {p1}, Lorg/codehaus/groovy/control/CompilerConfiguration;->Hw()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/codehaus/groovy/control/ProcessingUnit;->j6()Lgroovy/lang/GroovyClassLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lgroovy/lang/GroovyClassLoader;->addClasspath(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
