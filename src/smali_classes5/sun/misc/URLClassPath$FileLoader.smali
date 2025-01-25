.class Lsun/misc/URLClassPath$FileLoader;
.super Lsun/misc/URLClassPath$Loader;
.source "URLClassPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/misc/URLClassPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileLoader"
.end annotation


# instance fields
.field private dir:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/net/URL;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 961
    invoke-direct {p0, p1}, Lsun/misc/URLClassPath$Loader;-><init>(Ljava/net/URL;)V

    .line 962
    const-string v0, "file"

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 965
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 966
    invoke-static {v0}, Lcom/spartacusrex/spartacuside/helper/ParseUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 967
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lsun/misc/URLClassPath$FileLoader;->dir:Ljava/io/File;

    .line 968
    return-void

    .line 963
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "url"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method findResource(Ljava/lang/String;Z)Ljava/net/URL;
    .registers 4

    .line 974
    invoke-virtual {p0, p1, p2}, Lsun/misc/URLClassPath$FileLoader;->getResource(Ljava/lang/String;Z)Lsun/misc/Resource;

    move-result-object v0

    .line 975
    if-eqz v0, :cond_b

    .line 976
    invoke-virtual {v0}, Lsun/misc/Resource;->getURL()Ljava/net/URL;

    move-result-object v0

    .line 978
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method getResource(Ljava/lang/String;Z)Lsun/misc/Resource;
    .registers 9

    const/4 v0, 0x0

    .line 984
    :try_start_1
    new-instance v1, Ljava/net/URL;

    invoke-virtual {p0}, Lsun/misc/URLClassPath$FileLoader;->getBaseURL()Ljava/net/URL;

    move-result-object v2

    const-string v3, "."

    invoke-direct {v1, v2, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 985
    new-instance v2, Ljava/net/URL;

    invoke-virtual {p0}, Lsun/misc/URLClassPath$FileLoader;->getBaseURL()Ljava/net/URL;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p1, v4}, Lcom/spartacusrex/spartacuside/helper/ParseUtil;->encodePath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 987
    invoke-virtual {v2}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 1009
    :cond_28
    :goto_28
    return-object v0

    .line 992
    :cond_29
    if-eqz p2, :cond_2e

    .line 993
    invoke-static {v2}, Lsun/misc/URLClassPath;->check(Ljava/net/URL;)V

    .line 994
    :cond_2e
    new-instance v3, Ljava/io/File;

    iget-object v1, p0, Lsun/misc/URLClassPath$FileLoader;->dir:Ljava/io/File;

    sget-char v4, Ljava/io/File;->separatorChar:C

    .line 995
    const/16 v5, 0x2f

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 996
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 997
    new-instance v1, Lsun/misc/URLClassPath$FileLoader$1;

    invoke-direct {v1, p0, p1, v2, v3}, Lsun/misc/URLClassPath$FileLoader$1;-><init>(Lsun/misc/URLClassPath$FileLoader;Ljava/lang/String;Ljava/net/URL;Ljava/io/File;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_48} :catch_4a

    move-object v0, v1

    goto :goto_28

    .line 1007
    :catch_4a
    move-exception v1

    goto :goto_28
.end method
