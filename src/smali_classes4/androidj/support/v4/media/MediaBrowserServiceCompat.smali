.class public abstract Landroidj/support/v4/media/MediaBrowserServiceCompat;
.super Landroid/app/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;,
        Landroidj/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;,
        Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;,
        Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;,
        Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23;,
        Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;,
        Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;,
        Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;,
        Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;,
        Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field public static final KEY_MEDIA_ITEM:Ljava/lang/String; = "media_item"
    .annotation build Landroidj/support/annotation/RestrictTo;
        value = {
            .enum Landroidj/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidj/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final KEY_SEARCH_RESULTS:Ljava/lang/String; = "search_results"
    .annotation build Landroidj/support/annotation/RestrictTo;
        value = {
            .enum Landroidj/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidj/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field static final RESULT_ERROR:I = -0x1

.field static final RESULT_FLAG_ON_LOAD_ITEM_NOT_IMPLEMENTED:I = 0x2

.field static final RESULT_FLAG_ON_SEARCH_NOT_IMPLEMENTED:I = 0x4

.field static final RESULT_FLAG_OPTION_NOT_HANDLED:I = 0x1

.field static final RESULT_OK:I = 0x0

.field static final RESULT_PROGRESS_UPDATE:I = 0x1

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.media.browse.MediaBrowserService"

.field static final TAG:Ljava/lang/String; = "MBServiceCompat"


# instance fields
.field final mConnections:Landroidj/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidj/support/v4/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroidj/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;",
            ">;"
        }
    .end annotation
.end field

.field mCurConnection:Landroidj/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;

.field final mHandler:Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;

.field private mImpl:Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;

.field mSession:Landroidj/support/v4/media/session/MediaSessionCompat$Token;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "MBServiceCompat"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroidj/support/v4/media/MediaBrowserServiceCompat;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroidj/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroidj/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat;->mConnections:Landroidj/support/v4/util/ArrayMap;

    new-instance v0, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;

    invoke-direct {v0, p0}, Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;-><init>(Landroidj/support/v4/media/MediaBrowserServiceCompat;)V

    iput-object v0, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat;->mHandler:Landroidj/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;

    return-void
.end method


# virtual methods
.method addSubscription(Ljava/lang/String;Landroidj/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;Landroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 9

    iget-object v0, p2, Landroidj/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->subscriptions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_40

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    :goto_10
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/util/Pair;

    iget-object v3, v0, Landroidj/support/v4/util/Pair;->first:Ljava/lang/Object;

    if-ne p3, v3, :cond_14

    iget-object v0, v0, Landroidj/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-static {p4, v0}, Landroidj/support/v4/media/MediaBrowserCompatUtils;->areSameOptions(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_14

    :goto_2e
    return-void

    :cond_2f
    new-instance v0, Landroidj/support/v4/util/Pair;

    invoke-direct {v0, p3, p4}, Landroidj/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p2, Landroidj/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->subscriptions:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p4}, Landroidj/support/v4/media/MediaBrowserServiceCompat;->performLoadChildren(Ljava/lang/String;Landroidj/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;Landroid/os/Bundle;)V

    goto :goto_2e

    :cond_40
    move-object v1, v0

    goto :goto_10
.end method

.method applyOptions(Ljava/util/List;Landroid/os/Bundle;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroidj/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroidj/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;"
        }
    .end annotation

    const/4 v3, -0x1

    if-nez p1, :cond_5

    const/4 p1, 0x0

    :cond_4
    :goto_4
    return-object p1

    :cond_5
    const-string v0, "android.media.browse.extra.PAGE"

    invoke-virtual {p2, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v0, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p2, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v3, :cond_15

    if-eq v2, v3, :cond_4

    :cond_15
    mul-int v3, v2, v1

    add-int v0, v3, v2

    if-ltz v1, :cond_24

    const/4 v1, 0x1

    if-lt v2, v1, :cond_24

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v3, v1, :cond_27

    :cond_24
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_4

    :cond_27
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_31

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :cond_31
    invoke-interface {p1, v3, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    goto :goto_4
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    return-void
.end method

.method public final getBrowserRootHints()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat;->mImpl:Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;

    invoke-interface {v0}, Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;->getBrowserRootHints()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getSessionToken()Landroidj/support/v4/media/session/MediaSessionCompat$Token;
    .registers 2
    .annotation build Landroidj/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat;->mSession:Landroidj/support/v4/media/session/MediaSessionCompat$Token;

    return-object v0
.end method

.method isValidPackage(Ljava/lang/String;I)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Landroidj/support/v4/media/MediaBrowserServiceCompat;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_e
    if-ge v1, v3, :cond_3

    aget-object v4, v2, v1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    const/4 v0, 0x1

    goto :goto_3

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_e
.end method

.method public notifyChildrenChanged(Ljava/lang/String;)V
    .registers 4
    .param p1  # Ljava/lang/String;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parentId cannot be null in notifyChildrenChanged"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat;->mImpl:Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;->notifyChildrenChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public notifyChildrenChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .param p1  # Ljava/lang/String;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/os/Bundle;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parentId cannot be null in notifyChildrenChanged"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    if-nez p2, :cond_14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "options cannot be null in notifyChildrenChanged"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat;->mImpl:Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;

    invoke-interface {v0, p1, p2}, Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;->notifyChildrenChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat;->mImpl:Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;

    invoke-interface {v0, p1}, Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_16

    new-instance v0, Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23;

    invoke-direct {v0, p0}, Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23;-><init>(Landroidj/support/v4/media/MediaBrowserServiceCompat;)V

    iput-object v0, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat;->mImpl:Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;

    :goto_10
    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat;->mImpl:Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;

    invoke-interface {v0}, Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;->onCreate()V

    return-void

    :cond_16
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_24

    new-instance v0, Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;

    invoke-direct {v0, p0}, Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;-><init>(Landroidj/support/v4/media/MediaBrowserServiceCompat;)V

    iput-object v0, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat;->mImpl:Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;

    goto :goto_10

    :cond_24
    new-instance v0, Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;

    invoke-direct {v0, p0}, Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;-><init>(Landroidj/support/v4/media/MediaBrowserServiceCompat;)V

    iput-object v0, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat;->mImpl:Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;

    goto :goto_10
.end method

.method public onCustomAction(Ljava/lang/String;Landroid/os/Bundle;Landroidj/support/v4/media/MediaBrowserServiceCompat$Result;)V
    .registers 5
    .param p1  # Ljava/lang/String;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroidj/support/v4/media/MediaBrowserServiceCompat$Result;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroidj/support/v4/media/MediaBrowserServiceCompat$Result",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroidj/support/v4/media/MediaBrowserServiceCompat$Result;->sendError(Landroid/os/Bundle;)V

    return-void
.end method

.method public abstract onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroidj/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;
    .param p1  # Ljava/lang/String;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroid/os/Bundle;
        .annotation build Landroidj/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidj/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract onLoadChildren(Ljava/lang/String;Landroidj/support/v4/media/MediaBrowserServiceCompat$Result;)V
    .param p1  # Ljava/lang/String;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroidj/support/v4/media/MediaBrowserServiceCompat$Result;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidj/support/v4/media/MediaBrowserServiceCompat$Result",
            "<",
            "Ljava/util/List",
            "<",
            "Landroidj/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public onLoadChildren(Ljava/lang/String;Landroidj/support/v4/media/MediaBrowserServiceCompat$Result;Landroid/os/Bundle;)V
    .registers 5
    .param p1  # Ljava/lang/String;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroidj/support/v4/media/MediaBrowserServiceCompat$Result;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroid/os/Bundle;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidj/support/v4/media/MediaBrowserServiceCompat$Result",
            "<",
            "Ljava/util/List",
            "<",
            "Landroidj/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroidj/support/v4/media/MediaBrowserServiceCompat$Result;->setFlags(I)V

    invoke-virtual {p0, p1, p2}, Landroidj/support/v4/media/MediaBrowserServiceCompat;->onLoadChildren(Ljava/lang/String;Landroidj/support/v4/media/MediaBrowserServiceCompat$Result;)V

    return-void
.end method

.method public onLoadItem(Ljava/lang/String;Landroidj/support/v4/media/MediaBrowserServiceCompat$Result;)V
    .registers 4
    .param p2  # Landroidj/support/v4/media/MediaBrowserServiceCompat$Result;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidj/support/v4/media/MediaBrowserServiceCompat$Result",
            "<",
            "Landroidj/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroidj/support/v4/media/MediaBrowserServiceCompat$Result;->setFlags(I)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroidj/support/v4/media/MediaBrowserServiceCompat$Result;->sendResult(Ljava/lang/Object;)V

    return-void
.end method

.method public onSearch(Ljava/lang/String;Landroid/os/Bundle;Landroidj/support/v4/media/MediaBrowserServiceCompat$Result;)V
    .registers 5
    .param p1  # Ljava/lang/String;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroidj/support/v4/media/MediaBrowserServiceCompat$Result;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroidj/support/v4/media/MediaBrowserServiceCompat$Result",
            "<",
            "Ljava/util/List",
            "<",
            "Landroidj/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x4

    invoke-virtual {p3, v0}, Landroidj/support/v4/media/MediaBrowserServiceCompat$Result;->setFlags(I)V

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroidj/support/v4/media/MediaBrowserServiceCompat$Result;->sendResult(Ljava/lang/Object;)V

    return-void
.end method

.method performCustomAction(Ljava/lang/String;Landroid/os/Bundle;Landroidj/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;Landroidj/support/v4/os/ResultReceiver;)V
    .registers 8

    new-instance v0, Landroidj/support/v4/media/MediaBrowserServiceCompat$4;

    invoke-direct {v0, p0, p1, p4}, Landroidj/support/v4/media/MediaBrowserServiceCompat$4;-><init>(Landroidj/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/Object;Landroidj/support/v4/os/ResultReceiver;)V

    iput-object p3, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat;->mCurConnection:Landroidj/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;

    invoke-virtual {p0, p1, p2, v0}, Landroidj/support/v4/media/MediaBrowserServiceCompat;->onCustomAction(Ljava/lang/String;Landroid/os/Bundle;Landroidj/support/v4/media/MediaBrowserServiceCompat$Result;)V

    const/4 v1, 0x0

    iput-object v1, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat;->mCurConnection:Landroidj/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;

    invoke-virtual {v0}, Landroidj/support/v4/media/MediaBrowserServiceCompat$Result;->isDone()Z

    move-result v0

    if-nez v0, :cond_36

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCustomAction must call detach() or sendResult() or sendError() before returning for action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " extras="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    return-void
.end method

.method performLoadChildren(Ljava/lang/String;Landroidj/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;Landroid/os/Bundle;)V
    .registers 10

    new-instance v0, Landroidj/support/v4/media/MediaBrowserServiceCompat$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroidj/support/v4/media/MediaBrowserServiceCompat$1;-><init>(Landroidj/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/Object;Landroidj/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;Ljava/lang/String;Landroid/os/Bundle;)V

    iput-object p2, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat;->mCurConnection:Landroidj/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;

    if-nez p3, :cond_3f

    invoke-virtual {p0, p1, v0}, Landroidj/support/v4/media/MediaBrowserServiceCompat;->onLoadChildren(Ljava/lang/String;Landroidj/support/v4/media/MediaBrowserServiceCompat$Result;)V

    :goto_11
    const/4 v1, 0x0

    iput-object v1, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat;->mCurConnection:Landroidj/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;

    invoke-virtual {v0}, Landroidj/support/v4/media/MediaBrowserServiceCompat$Result;->isDone()Z

    move-result v0

    if-nez v0, :cond_43

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadChildren must call detach() or sendResult() before returning for package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Landroidj/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3f
    invoke-virtual {p0, p1, v0, p3}, Landroidj/support/v4/media/MediaBrowserServiceCompat;->onLoadChildren(Ljava/lang/String;Landroidj/support/v4/media/MediaBrowserServiceCompat$Result;Landroid/os/Bundle;)V

    goto :goto_11

    :cond_43
    return-void
.end method

.method performLoadItem(Ljava/lang/String;Landroidj/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;Landroidj/support/v4/os/ResultReceiver;)V
    .registers 7

    new-instance v0, Landroidj/support/v4/media/MediaBrowserServiceCompat$2;

    invoke-direct {v0, p0, p1, p3}, Landroidj/support/v4/media/MediaBrowserServiceCompat$2;-><init>(Landroidj/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/Object;Landroidj/support/v4/os/ResultReceiver;)V

    iput-object p2, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat;->mCurConnection:Landroidj/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;

    invoke-virtual {p0, p1, v0}, Landroidj/support/v4/media/MediaBrowserServiceCompat;->onLoadItem(Ljava/lang/String;Landroidj/support/v4/media/MediaBrowserServiceCompat$Result;)V

    const/4 v1, 0x0

    iput-object v1, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat;->mCurConnection:Landroidj/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;

    invoke-virtual {v0}, Landroidj/support/v4/media/MediaBrowserServiceCompat$Result;->isDone()Z

    move-result v0

    if-nez v0, :cond_2c

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadItem must call detach() or sendResult() before returning for id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    return-void
.end method

.method performSearch(Ljava/lang/String;Landroid/os/Bundle;Landroidj/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;Landroidj/support/v4/os/ResultReceiver;)V
    .registers 8

    new-instance v0, Landroidj/support/v4/media/MediaBrowserServiceCompat$3;

    invoke-direct {v0, p0, p1, p4}, Landroidj/support/v4/media/MediaBrowserServiceCompat$3;-><init>(Landroidj/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/Object;Landroidj/support/v4/os/ResultReceiver;)V

    iput-object p3, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat;->mCurConnection:Landroidj/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;

    invoke-virtual {p0, p1, p2, v0}, Landroidj/support/v4/media/MediaBrowserServiceCompat;->onSearch(Ljava/lang/String;Landroid/os/Bundle;Landroidj/support/v4/media/MediaBrowserServiceCompat$Result;)V

    const/4 v1, 0x0

    iput-object v1, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat;->mCurConnection:Landroidj/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;

    invoke-virtual {v0}, Landroidj/support/v4/media/MediaBrowserServiceCompat$Result;->isDone()Z

    move-result v0

    if-nez v0, :cond_2c

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSearch must call detach() or sendResult() before returning for query="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    return-void
.end method

.method removeSubscription(Ljava/lang/String;Landroidj/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;Landroid/os/IBinder;)Z
    .registers 9

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_10

    iget-object v0, p2, Landroidj/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->subscriptions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    move v0, v2

    :goto_d
    return v0

    :cond_e
    move v0, v1

    goto :goto_d

    :cond_10
    iget-object v0, p2, Landroidj/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->subscriptions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_41

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v1

    :cond_1f
    :goto_1f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidj/support/v4/util/Pair;

    iget-object v1, v1, Landroidj/support/v4/util/Pair;->first:Ljava/lang/Object;

    if-ne p3, v1, :cond_1f

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    move v3, v2

    goto :goto_1f

    :cond_34
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_43

    iget-object v0, p2, Landroidj/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->subscriptions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v3

    goto :goto_d

    :cond_41
    move v0, v1

    goto :goto_d

    :cond_43
    move v0, v3

    goto :goto_d
.end method

.method public setSessionToken(Landroidj/support/v4/media/session/MediaSessionCompat$Token;)V
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Session token may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat;->mSession:Landroidj/support/v4/media/session/MediaSessionCompat$Token;

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The session token has already been set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    iput-object p1, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat;->mSession:Landroidj/support/v4/media/session/MediaSessionCompat$Token;

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserServiceCompat;->mImpl:Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;

    invoke-interface {v0, p1}, Landroidj/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;->setSessionToken(Landroidj/support/v4/media/session/MediaSessionCompat$Token;)V

    return-void
.end method
