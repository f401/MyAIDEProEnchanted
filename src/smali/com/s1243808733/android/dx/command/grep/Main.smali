.class public final Lcom/s1243808733/android/dx/command/grep/Main;
.super Ljava/lang/Object;
.source "Main.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    const/4 v0, 0x0

    aget-object v1, p0, v0

    .line 28
    const/4 v2, 0x1

    aget-object p0, p0, v2

    .line 30
    new-instance v3, Lcom/s1243808733/android/dex/Dex;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/s1243808733/android/dex/Dex;-><init>(Ljava/io/File;)V

    .line 31
    new-instance v1, Lcom/s1243808733/android/dx/command/grep/Grep;

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    new-instance v4, Ljava/io/PrintWriter;

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v4, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v3, p0, v4}, Lcom/s1243808733/android/dx/command/grep/Grep;-><init>(Lcom/s1243808733/android/dex/Dex;Ljava/util/regex/Pattern;Ljava/io/PrintWriter;)V

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/command/grep/Grep;->grep()I

    move-result p0

    if-lez p0, :cond_27

    goto :goto_28

    :cond_27
    const/4 v0, 0x1

    .line 32
    :goto_28
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method
