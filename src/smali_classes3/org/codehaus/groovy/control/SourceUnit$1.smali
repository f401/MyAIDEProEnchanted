.class Lorg/codehaus/groovy/control/SourceUnit$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/PrivilegedAction;


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 2

    const-string v0, "groovy.ast"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
