.class Lsun/misc/ExtensionDependency$4;
.super Ljava/lang/Object;
.source "ExtensionDependency.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/misc/ExtensionDependency;->addNewExtensionsToClassLoader(Lsun/misc/Launcher$ExtClassLoader;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/net/URL;",
        ">;"
    }
.end annotation


# instance fields
.field final this$0:Lsun/misc/ExtensionDependency;

.field final val$instFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lsun/misc/ExtensionDependency;Ljava/io/File;)V
    .registers 3

    .line 517
    iput-object p1, p0, Lsun/misc/ExtensionDependency$4;->this$0:Lsun/misc/ExtensionDependency;

    iput-object p2, p0, Lsun/misc/ExtensionDependency$4;->val$instFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .line 517
    invoke-virtual {p0}, Lsun/misc/ExtensionDependency$4;->run()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/net/URL;
    .registers 3

    .line 520
    :try_start_0
    iget-object v0, p0, Lsun/misc/ExtensionDependency$4;->val$instFile:Ljava/io/File;

    invoke-static {v0}, Lcom/spartacusrex/spartacuside/helper/ParseUtil;->fileToEncodedURL(Ljava/io/File;)Ljava/net/URL;
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    .line 523
    :goto_6
    return-object v0

    .line 521
    :catch_7
    move-exception v0

    .line 522
    iget-object v1, p0, Lsun/misc/ExtensionDependency$4;->this$0:Lsun/misc/ExtensionDependency;

    invoke-static {v1, v0}, Lsun/misc/ExtensionDependency;->access$200(Lsun/misc/ExtensionDependency;Ljava/lang/Throwable;)V

    .line 523
    const/4 v0, 0x0

    goto :goto_6
.end method
