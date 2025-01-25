.class Lsun/misc/ExtensionDependency$1;
.super Ljava/lang/Object;
.source "ExtensionDependency.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/misc/ExtensionDependency;->checkExtensionAgainst(Ljava/lang/String;Ljava/util/jar/Attributes;Ljava/io/File;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lsun/misc/ExtensionDependency;

.field final val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lsun/misc/ExtensionDependency;Ljava/io/File;)V
    .registers 3

    .line 289
    iput-object p1, p0, Lsun/misc/ExtensionDependency$1;->this$0:Lsun/misc/ExtensionDependency;

    iput-object p2, p0, Lsun/misc/ExtensionDependency$1;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 292
    iget-object v0, p0, Lsun/misc/ExtensionDependency$1;->val$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 294
    new-instance v0, Ljava/util/jar/JarFile;

    iget-object v1, p0, Lsun/misc/ExtensionDependency$1;->val$file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V

    .line 295
    invoke-virtual {v0}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v0

    return-object v0

    .line 293
    :cond_14
    new-instance v0, Ljava/io/FileNotFoundException;

    iget-object v1, p0, Lsun/misc/ExtensionDependency$1;->val$file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
