.class public final Lcom/s1243808733/android/dx/command/grep/Main;
.super Ljava/lang/Object;
.source "Main.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 27
    aget-object v2, p0, v0

    .line 28
    aget-object v3, p0, v1

    .line 30
    new-instance v4, Lcom/s1243808733/android/dex/Dex;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/s1243808733/android/dex/Dex;-><init>(Ljava/io/File;)V

    .line 31
    new-instance v2, Lcom/s1243808733/android/dx/command/grep/Grep;

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    new-instance v5, Ljava/io/PrintWriter;

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v5, v6}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v4, v3, v5}, Lcom/s1243808733/android/dx/command/grep/Grep;-><init>(Lcom/s1243808733/android/dex/Dex;Ljava/util/regex/Pattern;Ljava/io/PrintWriter;)V

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/command/grep/Grep;->grep()I

    move-result v2

    if-lez v2, :cond_0

    .line 32
    :goto_0
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void

    :cond_0
    move v0, v1

    .line 31
    goto :goto_0
.end method
