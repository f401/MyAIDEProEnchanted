.class public abstract Landroidj/support/v4/app/LoaderManager;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableDebugLogging(Z)V
    .registers 1

    sput-boolean p0, Landroidj/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    return-void
.end method


# virtual methods
.method public abstract destroyLoader(I)V
.end method

.method public abstract dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract getLoader(I)Landroidj/support/v4/content/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I)",
            "Landroidj/support/v4/content/Loader",
            "<TD;>;"
        }
    .end annotation
.end method

.method public hasRunningLoaders()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public abstract initLoader(ILandroid/os/Bundle;Landroidj/support/v4/app/LoaderManager$LoaderCallbacks;)Landroidj/support/v4/content/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Landroidj/support/v4/app/LoaderManager$LoaderCallbacks",
            "<TD;>;)",
            "Landroidj/support/v4/content/Loader",
            "<TD;>;"
        }
    .end annotation
.end method

.method public abstract restartLoader(ILandroid/os/Bundle;Landroidj/support/v4/app/LoaderManager$LoaderCallbacks;)Landroidj/support/v4/content/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Landroidj/support/v4/app/LoaderManager$LoaderCallbacks",
            "<TD;>;)",
            "Landroidj/support/v4/content/Loader",
            "<TD;>;"
        }
    .end annotation
.end method
