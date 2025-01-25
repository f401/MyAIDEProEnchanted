.class Lsun/misc/Launcher$AppClassLoader$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/misc/Launcher$AppClassLoader;->getAppClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final val$extcl:Ljava/lang/ClassLoader;

.field final val$path:[Ljava/io/File;

.field final val$s:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;[Ljava/io/File;Ljava/lang/ClassLoader;)V
    .registers 4

    .line 266
    iput-object p1, p0, Lsun/misc/Launcher$AppClassLoader$1;->val$s:Ljava/lang/String;

    iput-object p2, p0, Lsun/misc/Launcher$AppClassLoader$1;->val$path:[Ljava/io/File;

    iput-object p3, p0, Lsun/misc/Launcher$AppClassLoader$1;->val$extcl:Ljava/lang/ClassLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 4

    .line 269
    iget-object v0, p0, Lsun/misc/Launcher$AppClassLoader$1;->val$s:Ljava/lang/String;

    if-nez v0, :cond_f

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/net/URL;

    .line 270
    :goto_7
    new-instance v1, Lsun/misc/Launcher$AppClassLoader;

    iget-object v2, p0, Lsun/misc/Launcher$AppClassLoader$1;->val$extcl:Ljava/lang/ClassLoader;

    invoke-direct {v1, v0, v2}, Lsun/misc/Launcher$AppClassLoader;-><init>([Ljava/net/URL;Ljava/lang/ClassLoader;)V

    return-object v1

    .line 269
    :cond_f
    iget-object v0, p0, Lsun/misc/Launcher$AppClassLoader$1;->val$path:[Ljava/io/File;

    invoke-static {v0}, Lsun/misc/Launcher;->access$300([Ljava/io/File;)[Ljava/net/URL;

    move-result-object v0

    goto :goto_7
.end method
