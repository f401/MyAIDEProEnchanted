.class Lsun/misc/ExtensionDependency$2;
.super Ljava/lang/Object;
.source "ExtensionDependency.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/misc/ExtensionDependency;->checkExtensionExists(Ljava/lang/String;)Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lsun/misc/ExtensionDependency;

.field final val$extName:Ljava/lang/String;

.field final val$fileExt:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lsun/misc/ExtensionDependency;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 395
    iput-object p1, p0, Lsun/misc/ExtensionDependency$2;->this$0:Lsun/misc/ExtensionDependency;

    iput-object p2, p0, Lsun/misc/ExtensionDependency$2;->val$fileExt:[Ljava/lang/String;

    iput-object p3, p0, Lsun/misc/ExtensionDependency$2;->val$extName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 9

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 399
    :try_start_0
    invoke-static {}, Lsun/misc/ExtensionDependency;->access$000()[Ljava/io/File;

    move-result-object v5

    move v4, v3

    .line 403
    :goto_0
    array-length v0, v5

    if-ge v4, v0, :cond_3

    move v2, v3

    .line 404
    :goto_1
    iget-object v0, p0, Lsun/misc/ExtensionDependency$2;->val$fileExt:[Ljava/lang/String;

    array-length v0, v0

    if-ge v2, v0, :cond_2

    .line 405
    iget-object v0, p0, Lsun/misc/ExtensionDependency$2;->val$extName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lsun/misc/ExtensionDependency$2;->val$fileExt:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    new-instance v0, Ljava/io/File;

    aget-object v6, v5, v4

    iget-object v7, p0, Lsun/misc/ExtensionDependency$2;->val$extName:Ljava/lang/String;

    invoke-direct {v0, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 410
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkExtensionExists:fileName "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lsun/misc/ExtensionDependency;->access$100(Ljava/lang/String;)V

    .line 411
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_1

    .line 420
    :goto_3
    return-object v0

    .line 408
    :cond_0
    aget-object v6, v5, v4

    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lsun/misc/ExtensionDependency$2;->val$extName:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lsun/misc/ExtensionDependency$2;->val$fileExt:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/io/File;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 418
    :catch_0
    move-exception v0

    .line 419
    iget-object v2, p0, Lsun/misc/ExtensionDependency$2;->this$0:Lsun/misc/ExtensionDependency;

    invoke-static {v2, v0}, Lsun/misc/ExtensionDependency;->access$200(Lsun/misc/ExtensionDependency;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 420
    goto :goto_3

    .line 404
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 403
    :cond_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 416
    goto :goto_3
.end method
