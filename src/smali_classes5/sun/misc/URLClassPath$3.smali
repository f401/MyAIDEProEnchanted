.class Lsun/misc/URLClassPath$3;
.super Ljava/lang/Object;
.source "URLClassPath.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/misc/URLClassPath;->getLoader(Ljava/net/URL;)Lsun/misc/URLClassPath$Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lsun/misc/URLClassPath;

.field final val$url:Ljava/net/URL;


# direct methods
.method constructor <init>(Lsun/misc/URLClassPath;Ljava/net/URL;)V
    .registers 3

    .line 332
    iput-object p1, p0, Lsun/misc/URLClassPath$3;->this$0:Lsun/misc/URLClassPath;

    iput-object p2, p0, Lsun/misc/URLClassPath$3;->val$url:Ljava/net/URL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 334
    iget-object v0, p0, Lsun/misc/URLClassPath$3;->val$url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    .line 335
    if-eqz v0, :cond_2e

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 336
    const-string v0, "file"

    iget-object v1, p0, Lsun/misc/URLClassPath$3;->val$url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 337
    new-instance v0, Lsun/misc/URLClassPath$FileLoader;

    iget-object v1, p0, Lsun/misc/URLClassPath$3;->val$url:Ljava/net/URL;

    invoke-direct {v0, v1}, Lsun/misc/URLClassPath$FileLoader;-><init>(Ljava/net/URL;)V

    .line 342
    :goto_25
    return-object v0

    .line 339
    :cond_26
    new-instance v0, Lsun/misc/URLClassPath$Loader;

    iget-object v1, p0, Lsun/misc/URLClassPath$3;->val$url:Ljava/net/URL;

    invoke-direct {v0, v1}, Lsun/misc/URLClassPath$Loader;-><init>(Ljava/net/URL;)V

    goto :goto_25

    .line 342
    :cond_2e
    new-instance v0, Lsun/misc/URLClassPath$JarLoader;

    iget-object v1, p0, Lsun/misc/URLClassPath$3;->val$url:Ljava/net/URL;

    iget-object v2, p0, Lsun/misc/URLClassPath$3;->this$0:Lsun/misc/URLClassPath;

    invoke-static {v2}, Lsun/misc/URLClassPath;->access$100(Lsun/misc/URLClassPath;)Ljava/net/URLStreamHandler;

    move-result-object v2

    iget-object v3, p0, Lsun/misc/URLClassPath$3;->this$0:Lsun/misc/URLClassPath;

    iget-object v3, v3, Lsun/misc/URLClassPath;->lmap:Ljava/util/HashMap;

    invoke-direct {v0, v1, v2, v3}, Lsun/misc/URLClassPath$JarLoader;-><init>(Ljava/net/URL;Ljava/net/URLStreamHandler;Ljava/util/HashMap;)V

    goto :goto_25
.end method
