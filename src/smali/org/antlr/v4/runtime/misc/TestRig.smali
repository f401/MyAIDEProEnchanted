.class public Lorg/antlr/v4/runtime/misc/TestRig;
.super Ljava/lang/Object;
.source "TestRig.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 7

    .line 20
    :try_start_0
    const-string v0, "org.antlr.v4.gui.TestRig"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 21
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Warning: TestRig moved to org.antlr.v4.gui.TestRig; calling automatically"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_d} :catch_2d

    .line 23
    :try_start_d
    const-string v1, "main"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 24
    new-array v1, v2, [Ljava/lang/Object;

    aput-object p0, v1, v5

    const/4 p0, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_23} :catch_24
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d .. :try_end_23} :catch_2d

    goto :goto_3c

    .line 27
    :catch_24
    move-exception p0

    :try_start_25
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v0, "Problems calling org.antlr.v4.gui.TestRig.main(args)"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_25 .. :try_end_2c} :catch_2d

    goto :goto_3c

    .line 31
    :catch_2d
    move-exception p0

    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v0, "Use of TestRig now requires the use of the tool jar, antlr-4.X-complete.jar"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 32
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v0, "Maven users need group ID org.antlr and artifact ID antlr4"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_3c
    return-void
.end method
