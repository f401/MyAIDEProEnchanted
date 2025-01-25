.class public Ljavax/tools/ToolProvider;
.super Ljava/lang/Object;
.source "ToolProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/tools/ToolProvider$Lazy;
    }
.end annotation


# static fields
.field private static final loggerName:Ljava/lang/String; = "javax.tools"

.field private static final propertyName:Ljava/lang/String; = "sun.tools.ToolProvider"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public static getSystemJavaCompiler()Ljavax/tools/JavaCompiler;
    .registers 2

    .line 100
    sget-object v0, Ljavax/tools/ToolProvider$Lazy;->compilerClass:Ljava/lang/Class;

    if-nez v0, :cond_f

    .line 101
    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v1, "Lazy.compilerClass == null"

    invoke-static {v0, v1}, Ljavax/tools/ToolProvider;->trace(Ljava/util/logging/Level;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/tools/JavaCompiler;

    .line 105
    :goto_e
    return-object v0

    .line 103
    :cond_f
    :try_start_f
    sget-object v0, Ljavax/tools/ToolProvider$Lazy;->compilerClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/tools/JavaCompiler;
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_18

    goto :goto_e

    .line 104
    :catchall_18
    move-exception v0

    .line 105
    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v1, v0}, Ljavax/tools/ToolProvider;->trace(Ljava/util/logging/Level;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/tools/JavaCompiler;

    goto :goto_e
.end method

.method public static getSystemToolClassLoader()Ljava/lang/ClassLoader;
    .registers 2

    .line 119
    sget-object v0, Ljavax/tools/ToolProvider$Lazy;->compilerClass:Ljava/lang/Class;

    if-nez v0, :cond_f

    .line 120
    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v1, "Lazy.compilerClass == null"

    invoke-static {v0, v1}, Ljavax/tools/ToolProvider;->trace(Ljava/util/logging/Level;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    .line 121
    :goto_e
    return-object v0

    :cond_f
    sget-object v0, Ljavax/tools/ToolProvider$Lazy;->compilerClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_e
.end method

.method static trace(Ljava/util/logging/Level;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/logging/Level;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    const/4 v13, 0x3

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x2

    .line 63
    :try_start_5
    const-string v1, "sun.tools.ToolProvider"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_65

    .line 64
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;
    :try_end_14
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_14} :catch_8d

    move-result-object v1

    .line 65
    const-string v4, "???"

    .line 66
    :try_start_17
    const-class v2, Ljavax/tools/ToolProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 67
    array-length v2, v1
    :try_end_1e
    .catch Ljava/lang/SecurityException; {:try_start_17 .. :try_end_1e} :catch_8d

    if-le v2, v10, :cond_4b

    .line 68
    aget-object v2, v1, v10

    .line 69
    const/4 v1, 0x0

    :try_start_23
    check-cast v1, Ljava/util/Locale;

    .line 70
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    .line 71
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v4

    .line 72
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v5

    .line 69
    const-string v6, "%s(%s:%s)"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    const/4 v3, 0x1

    aput-object v4, v8, v3

    const/4 v3, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v3

    invoke-static {v1, v6, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 73
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 75
    :cond_4b
    const-string v1, "javax.tools"

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    .line 76
    instance-of v2, p1, Ljava/lang/Throwable;

    if-eqz v2, :cond_66

    .line 77
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v0, p1

    check-cast v0, Ljava/lang/Throwable;

    move-object v6, v0

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    :cond_65
    :goto_65
    return-object v7

    .line 80
    :cond_66
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_69
    .catch Ljava/lang/SecurityException; {:try_start_23 .. :try_end_69} :catch_8d

    move-result-object v2

    :try_start_6a
    invoke-virtual {v1, p0, v3, v4, v2}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6d
    .catch Ljava/lang/SecurityException; {:try_start_6a .. :try_end_6d} :catch_6e

    goto :goto_65

    .line 83
    :catch_6e
    move-exception v1

    move-object v2, v1

    .line 84
    :goto_70
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    move-object v1, v7

    check-cast v1, Ljava/util/Locale;

    .line 85
    const-class v4, Ljavax/tools/ToolProvider;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 87
    invoke-virtual {v2}, Ljava/lang/SecurityException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    .line 84
    const-string v5, "%s: %s; %s%n"

    new-array v6, v13, [Ljava/lang/Object;

    aput-object v4, v6, v11

    aput-object p1, v6, v12

    aput-object v2, v6, v10

    invoke-virtual {v3, v1, v5, v6}, Ljava/io/PrintStream;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_65

    .line 83
    :catch_8d
    move-exception v1

    move-object v2, v1

    goto :goto_70
.end method
