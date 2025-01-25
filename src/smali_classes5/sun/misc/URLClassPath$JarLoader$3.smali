.class Lsun/misc/URLClassPath$JarLoader$3;
.super Ljava/lang/Object;
.source "URLClassPath.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/misc/URLClassPath$JarLoader;->getResource(Ljava/lang/String;ZLjava/util/Set;)Lsun/misc/Resource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lsun/misc/URLClassPath$JarLoader;

.field final val$url:Ljava/net/URL;


# direct methods
.method constructor <init>(Lsun/misc/URLClassPath$JarLoader;Ljava/net/URL;)V
    .registers 3

    .line 818
    iput-object p1, p0, Lsun/misc/URLClassPath$JarLoader$3;->this$0:Lsun/misc/URLClassPath$JarLoader;

    iput-object p2, p0, Lsun/misc/URLClassPath$JarLoader$3;->val$url:Ljava/net/URL;

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

    .line 820
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader$3;->val$url:Ljava/net/URL;

    iget-object v1, p0, Lsun/misc/URLClassPath$JarLoader$3;->this$0:Lsun/misc/URLClassPath$JarLoader;

    invoke-static {v1}, Lsun/misc/URLClassPath$JarLoader;->access$1000(Lsun/misc/URLClassPath$JarLoader;)Ljava/net/URLStreamHandler;

    move-result-object v1

    iget-object v2, p0, Lsun/misc/URLClassPath$JarLoader$3;->this$0:Lsun/misc/URLClassPath$JarLoader;

    .line 821
    new-instance v3, Lsun/misc/URLClassPath$JarLoader;

    invoke-static {v2}, Lsun/misc/URLClassPath$JarLoader;->access$900(Lsun/misc/URLClassPath$JarLoader;)Ljava/util/HashMap;

    move-result-object v2

    invoke-direct {v3, v0, v1, v2}, Lsun/misc/URLClassPath$JarLoader;-><init>(Ljava/net/URL;Ljava/net/URLStreamHandler;Ljava/util/HashMap;)V

    .line 820
    return-object v3
.end method
