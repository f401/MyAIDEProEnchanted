.class Ljavax/tools/ToolProvider$Lazy;
.super Ljava/lang/Object;
.source "ToolProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/tools/ToolProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Lazy"
.end annotation


# static fields
.field static final compilerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Ljavax/tools/JavaCompiler;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultJavaCompilerName:Ljava/lang/String; = "com.sun.tools.javac.api.JavacTool"

.field private static final defaultToolsLocation:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 133
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "lib"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "tools.jar"

    aput-object v2, v0, v1

    sput-object v0, Ljavax/tools/ToolProvider$Lazy;->defaultToolsLocation:[Ljava/lang/String;

    .line 137
    const/4 v0, 0x0

    .line 139
    :try_start_0
    invoke-static {}, Ljavax/tools/ToolProvider$Lazy;->findClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljavax/tools/JavaCompiler;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 143
    :goto_0
    sput-object v0, Ljavax/tools/ToolProvider$Lazy;->compilerClass:Ljava/lang/Class;

    .line 144
    return-void

    .line 140
    :catchall_0
    move-exception v1

    .line 141
    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v2, v1}, Ljavax/tools/ToolProvider;->trace(Ljava/util/logging/Level;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method constructor <init>()V
    .registers 1

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static enableAsserts(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .line 168
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_0

    .line 170
    const-string v1, "com.sun.tools.javac"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/ClassLoader;->setPackageAssertionStatus(Ljava/lang/String;Z)V

    .line 176
    :goto_0
    return-object p0

    .line 172
    :cond_0
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v1, "loader == null"

    invoke-static {v0, v1}, Ljavax/tools/ToolProvider;->trace(Ljava/util/logging/Level;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-static {v1, v0}, Ljavax/tools/ToolProvider;->trace(Ljava/util/logging/Level;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static findClass()Ljava/lang/Class;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 149
    :try_start_0
    const-string v0, "com.sun.tools.javac.api.JavacTool"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljavax/tools/ToolProvider$Lazy;->enableAsserts(Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 163
    :goto_0
    return-object v0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-static {v1, v0}, Ljavax/tools/ToolProvider;->trace(Ljava/util/logging/Level;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    new-instance v0, Ljava/io/File;

    const-string v1, "java.home"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "jre"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 157
    :cond_0
    sget-object v4, Ljavax/tools/ToolProvider$Lazy;->defaultToolsLocation:[Ljava/lang/String;

    array-length v5, v4

    move v2, v3

    :goto_1
    if-ge v2, v5, :cond_1

    aget-object v6, v4, v2

    .line 158
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 157
    add-int/lit8 v2, v2, 0x1

    move-object v0, v1

    goto :goto_1

    .line 159
    :cond_1
    new-array v1, v7, [Ljava/net/URL;

    invoke-virtual {v0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    aput-object v0, v1, v3

    .line 160
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    aget-object v2, v1, v3

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljavax/tools/ToolProvider;->trace(Ljava/util/logging/Level;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    invoke-static {v1}, Ljava/net/URLClassLoader;->newInstance([Ljava/net/URL;)Ljava/net/URLClassLoader;

    move-result-object v0

    .line 162
    const-string v1, "com.sun.tools.javac"

    invoke-virtual {v0, v1, v7}, Ljava/lang/ClassLoader;->setPackageAssertionStatus(Ljava/lang/String;Z)V

    .line 163
    const-string v1, "com.sun.tools.javac.api.JavacTool"

    invoke-static {v1, v3, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method
