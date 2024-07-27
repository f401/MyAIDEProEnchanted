.class public Lcom/sun/tools/javac/Main;
.super Ljava/lang/Object;
.source "Main.java"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 50
    const-class v0, Lcom/sun/tools/javac/Main;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    const-string v1, "com.sun.tools.javac"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/ClassLoader;->setPackageAssertionStatus(Ljava/lang/String;Z)V

    .line 53
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compile([Ljava/lang/String;)I
    .registers 3

    .line 86
    new-instance v0, Lcom/sun/tools/javac/main/Main;

    const-string v1, "javac"

    invoke-direct {v0, v1}, Lcom/sun/tools/javac/main/Main;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0, p0}, Lcom/sun/tools/javac/main/Main;->compile([Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static compile([Ljava/lang/String;Ljava/io/PrintStream;Ljavax/tools/DiagnosticListener;)I
    .registers 6

    .line 120
    new-instance v0, Lcom/sun/tools/javac/main/Main;

    const-string v1, "javac"

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/main/Main;-><init>(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 121
    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/main/Main;->setDiagnosticListener(Ljavax/tools/DiagnosticListener;)V

    .line 122
    invoke-virtual {v0, p0}, Lcom/sun/tools/javac/main/Main;->compile([Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static compile([Ljava/lang/String;Ljava/io/PrintWriter;)I
    .registers 4

    .line 103
    new-instance v0, Lcom/sun/tools/javac/main/Main;

    const-string v1, "javac"

    invoke-direct {v0, v1, p1}, Lcom/sun/tools/javac/main/Main;-><init>(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 105
    invoke-virtual {v0, p0}, Lcom/sun/tools/javac/main/Main;->compile([Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static compile([Ljava/lang/String;Ljavax/tools/DiagnosticListener;)I
    .registers 4

    .line 135
    new-instance v0, Lcom/sun/tools/javac/main/Main;

    const-string v1, "javac"

    invoke-direct {v0, v1}, Lcom/sun/tools/javac/main/Main;-><init>(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/main/Main;->setDiagnosticListener(Ljavax/tools/DiagnosticListener;)V

    .line 137
    invoke-virtual {v0, p0}, Lcom/sun/tools/javac/main/Main;->compile([Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static main([Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 61
    array-length v0, p0

    if-lez v0, :cond_0

    aget-object v0, p0, v6

    const-string v1, "-Xjdb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    array-length v0, p0

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 63
    const-string v1, "com.sun.tools.example.debug.tty.TTY"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 64
    const-string v2, "main"

    new-array v3, v5, [Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 65
    invoke-virtual {v1, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 66
    const/4 v2, 0x3

    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    invoke-static {p0, v5, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    const-string v2, "-connect"

    aput-object v2, v0, v6

    .line 68
    const-string v2, "com.sun.jdi.CommandLineLaunch:options=-esa -ea:com.sun.tools..."

    aput-object v2, v0, v5

    .line 69
    const/4 v2, 0x2

    const-string v3, "com.sun.tools.javac.Main"

    aput-object v3, v0, v2

    .line 70
    const/4 v2, 0x0

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_0
    return-void
.end method
