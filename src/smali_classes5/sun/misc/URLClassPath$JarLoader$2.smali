.class Lsun/misc/URLClassPath$JarLoader$2;
.super Lsun/misc/Resource;
.source "URLClassPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/misc/URLClassPath$JarLoader;->checkResource(Ljava/lang/String;ZLjava/util/jar/JarEntry;)Lsun/misc/Resource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lsun/misc/URLClassPath$JarLoader;

.field final val$entry:Ljava/util/jar/JarEntry;

.field final val$name:Ljava/lang/String;

.field final val$url:Ljava/net/URL;


# direct methods
.method constructor <init>(Lsun/misc/URLClassPath$JarLoader;Ljava/lang/String;Ljava/net/URL;Ljava/util/jar/JarEntry;)V
    .registers 5

    .line 698
    iput-object p1, p0, Lsun/misc/URLClassPath$JarLoader$2;->this$0:Lsun/misc/URLClassPath$JarLoader;

    iput-object p2, p0, Lsun/misc/URLClassPath$JarLoader$2;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lsun/misc/URLClassPath$JarLoader$2;->val$url:Ljava/net/URL;

    iput-object p4, p0, Lsun/misc/URLClassPath$JarLoader$2;->val$entry:Ljava/util/jar/JarEntry;

    invoke-direct {p0}, Lsun/misc/Resource;-><init>()V

    return-void
.end method


# virtual methods
.method public getCertificates()[Ljava/security/cert/Certificate;
    .registers 2

    .line 709
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader$2;->val$entry:Ljava/util/jar/JarEntry;

    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getCodeSigners()[Ljava/security/CodeSigner;
    .registers 2

    .line 711
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader$2;->val$entry:Ljava/util/jar/JarEntry;

    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->getCodeSigners()[Ljava/security/CodeSigner;

    move-result-object v0

    return-object v0
.end method

.method public getCodeSourceURL()Ljava/net/URL;
    .registers 2

    .line 701
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader$2;->this$0:Lsun/misc/URLClassPath$JarLoader;

    invoke-static {v0}, Lsun/misc/URLClassPath$JarLoader;->access$400(Lsun/misc/URLClassPath$JarLoader;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()I
    .registers 3

    .line 705
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader$2;->val$entry:Ljava/util/jar/JarEntry;

    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->getSize()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 703
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader$2;->this$0:Lsun/misc/URLClassPath$JarLoader;

    invoke-static {v0}, Lsun/misc/URLClassPath$JarLoader;->access$500(Lsun/misc/URLClassPath$JarLoader;)Ljava/util/jar/JarFile;

    move-result-object v0

    iget-object v1, p0, Lsun/misc/URLClassPath$JarLoader$2;->val$entry:Ljava/util/jar/JarEntry;

    invoke-virtual {v0, v1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getManifest()Ljava/util/jar/Manifest;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 707
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader$2;->this$0:Lsun/misc/URLClassPath$JarLoader;

    invoke-static {v0}, Lsun/misc/URLClassPath$JarLoader;->access$500(Lsun/misc/URLClassPath$JarLoader;)Ljava/util/jar/JarFile;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 699
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader$2;->val$name:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .registers 2

    .line 700
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader$2;->val$url:Ljava/net/URL;

    return-object v0
.end method
