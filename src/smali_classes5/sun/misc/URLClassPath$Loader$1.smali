.class Lsun/misc/URLClassPath$Loader$1;
.super Lsun/misc/Resource;
.source "URLClassPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/misc/URLClassPath$Loader;->getResource(Ljava/lang/String;Z)Lsun/misc/Resource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lsun/misc/URLClassPath$Loader;

.field final val$name:Ljava/lang/String;

.field final val$uc:Ljava/net/URLConnection;

.field final val$url:Ljava/net/URL;


# direct methods
.method constructor <init>(Lsun/misc/URLClassPath$Loader;Ljava/lang/String;Ljava/net/URL;Ljava/net/URLConnection;)V
    .registers 5

    .line 516
    iput-object p1, p0, Lsun/misc/URLClassPath$Loader$1;->this$0:Lsun/misc/URLClassPath$Loader;

    iput-object p2, p0, Lsun/misc/URLClassPath$Loader$1;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lsun/misc/URLClassPath$Loader$1;->val$url:Ljava/net/URL;

    iput-object p4, p0, Lsun/misc/URLClassPath$Loader$1;->val$uc:Ljava/net/URLConnection;

    invoke-direct {p0}, Lsun/misc/Resource;-><init>()V

    return-void
.end method


# virtual methods
.method public getCodeSourceURL()Ljava/net/URL;
    .registers 2

    .line 519
    iget-object v0, p0, Lsun/misc/URLClassPath$Loader$1;->this$0:Lsun/misc/URLClassPath$Loader;

    invoke-static {v0}, Lsun/misc/URLClassPath$Loader;->access$200(Lsun/misc/URLClassPath$Loader;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 524
    iget-object v0, p0, Lsun/misc/URLClassPath$Loader$1;->val$uc:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentLength()I

    move-result v0

    return v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 521
    iget-object v0, p0, Lsun/misc/URLClassPath$Loader$1;->val$uc:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 517
    iget-object v0, p0, Lsun/misc/URLClassPath$Loader$1;->val$name:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .registers 2

    .line 518
    iget-object v0, p0, Lsun/misc/URLClassPath$Loader$1;->val$url:Ljava/net/URL;

    return-object v0
.end method
