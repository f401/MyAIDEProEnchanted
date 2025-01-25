.class Lsun/misc/ExtensionDependency$3;
.super Ljava/lang/Object;
.source "ExtensionDependency.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/misc/ExtensionDependency;->getInstalledExtensions()[Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lsun/misc/ExtensionDependency;


# direct methods
.method constructor <init>(Lsun/misc/ExtensionDependency;)V
    .registers 2

    .line 489
    iput-object p1, p0, Lsun/misc/ExtensionDependency$3;->this$0:Lsun/misc/ExtensionDependency;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 3

    .line 492
    :try_start_0
    invoke-static {}, Lsun/misc/ExtensionDependency;->access$000()[Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lsun/misc/ExtensionDependency;->access$300([Ljava/io/File;)[Ljava/io/File;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    .line 496
    :goto_8
    return-object v0

    .line 493
    :catch_9
    move-exception v0

    .line 494
    const-string v1, "Cannot get list of installed extensions"

    invoke-static {v1}, Lsun/misc/ExtensionDependency;->access$100(Ljava/lang/String;)V

    .line 495
    iget-object v1, p0, Lsun/misc/ExtensionDependency$3;->this$0:Lsun/misc/ExtensionDependency;

    invoke-static {v1, v0}, Lsun/misc/ExtensionDependency;->access$200(Lsun/misc/ExtensionDependency;Ljava/lang/Throwable;)V

    .line 496
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/net/URL;

    goto :goto_8
.end method
