.class Lsun/misc/Launcher$ExtClassLoader$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/misc/Launcher$ExtClassLoader;->getExtClassLoader()Lsun/misc/Launcher$ExtClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final val$dirs:[Ljava/io/File;


# direct methods
.method constructor <init>([Ljava/io/File;)V
    .registers 2

    .line 140
    iput-object p1, p0, Lsun/misc/Launcher$ExtClassLoader$1;->val$dirs:[Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lsun/misc/Launcher$ExtClassLoader$1;->val$dirs:[Ljava/io/File;

    array-length v1, v0

    .line 143
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 144
    iget-object v2, p0, Lsun/misc/Launcher$ExtClassLoader$1;->val$dirs:[Ljava/io/File;

    aget-object v2, v2, v0

    invoke-static {v2}, Lsun/misc/MetaIndex;->registerDirectory(Ljava/io/File;)V

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    :cond_0
    new-instance v0, Lsun/misc/Launcher$ExtClassLoader;

    iget-object v1, p0, Lsun/misc/Launcher$ExtClassLoader$1;->val$dirs:[Ljava/io/File;

    invoke-direct {v0, v1}, Lsun/misc/Launcher$ExtClassLoader;-><init>([Ljava/io/File;)V

    return-object v0
.end method
