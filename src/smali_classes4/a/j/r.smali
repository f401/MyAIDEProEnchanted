.class public La/j/r;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/io/File;)Ljava/io/PrintWriter;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, La/j/r;->a(Ljava/io/File;Z)Ljava/io/PrintWriter;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/File;Ljava/io/PrintWriter;Z)Ljava/io/PrintWriter;
    .registers 7

    sget-object v0, La/h;->a:Ljava/io/File;

    if-ne p0, v0, :cond_5

    :goto_4
    return-object p1

    :cond_5
    new-instance p1, Ljava/io/PrintWriter;

    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {p1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    goto :goto_4
.end method

.method public static a(Ljava/io/File;Z)Ljava/io/PrintWriter;
    .registers 5

    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    invoke-static {p0, v0, p1}, La/j/r;->a(Ljava/io/File;Ljava/io/PrintWriter;Z)Ljava/io/PrintWriter;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/File;Ljava/io/PrintWriter;)V
    .registers 3

    sget-object v0, La/h;->a:Ljava/io/File;

    if-ne p0, v0, :cond_8

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    :goto_7
    return-void

    :cond_8
    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V

    goto :goto_7
.end method

.method public static b(Ljava/io/File;)Ljava/lang/String;
    .registers 2

    sget-object v0, La/h;->a:Ljava/io/File;

    if-ne p0, v0, :cond_7

    const-string v0, "standard output"

    :goto_6
    return-object v0

    :cond_7
    :try_start_7
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_a} :catch_c

    move-result-object v0

    goto :goto_6

    :catch_c
    move-exception v0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method
