.class Lsun/misc/Launcher$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/misc/Launcher;->getBootstrapClassPath()Lsun/misc/URLClassPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 354
    iput-object p1, p0, Lsun/misc/Launcher$1;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 7

    .line 356
    iget-object v0, p0, Lsun/misc/Launcher$1;->val$path:Ljava/lang/String;

    invoke-static {v0}, Lsun/misc/Launcher;->access$200(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v2

    .line 357
    array-length v3, v2

    .line 358
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 359
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    .line 360
    aget-object v0, v2, v1

    .line 363
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_0

    .line 364
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 366
    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 367
    invoke-static {v0}, Lsun/misc/MetaIndex;->registerDirectory(Ljava/io/File;)V

    .line 359
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 370
    :cond_2
    invoke-static {v2}, Lsun/misc/Launcher;->access$300([Ljava/io/File;)[Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method
