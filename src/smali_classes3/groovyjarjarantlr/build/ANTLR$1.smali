.class Lgroovyjarjarantlr/build/ANTLR$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/FilenameFilter;


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_10

    const-string p1, "antlr"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method
