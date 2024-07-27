.class public final Lcom/s1243808733/android/dx/command/findusages/Main;
.super Ljava/lang/Object;
.source "Main.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    const/4 v0, 0x0

    aget-object v0, p0, v0

    .line 27
    const/4 v1, 0x1

    aget-object v1, p0, v1

    .line 28
    const/4 v2, 0x2

    aget-object v2, p0, v2

    .line 30
    new-instance v3, Lcom/s1243808733/android/dex/Dex;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/s1243808733/android/dex/Dex;-><init>(Ljava/io/File;)V

    .line 31
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v0, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 32
    new-instance v4, Lcom/s1243808733/android/dx/command/findusages/FindUsages;

    invoke-direct {v4, v3, v1, v2, v0}, Lcom/s1243808733/android/dx/command/findusages/FindUsages;-><init>(Lcom/s1243808733/android/dex/Dex;Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    invoke-virtual {v4}, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->findUsages()V

    .line 33
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method
