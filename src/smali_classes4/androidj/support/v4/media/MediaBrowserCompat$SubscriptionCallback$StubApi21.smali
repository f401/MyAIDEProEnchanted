.class Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi21;
.super Ljava/lang/Object;

# interfaces
.implements Landroidj/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/media/MediaBrowserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StubApi21"
.end annotation


# instance fields
.field final this$0:Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback;


# direct methods
.method constructor <init>(Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)V
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi21;->this$0:Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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

.method public onChildrenLoaded(Ljava/lang/String;Ljava/util/List;)V
    .registers 10
    .param p1  # Ljava/lang/String;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi21;->this$0:Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback;

    iget-object v0, v0, Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->mSubscriptionRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_13

    const/4 v0, 0x0

    :goto_7
    if-nez v0, :cond_1e

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi21;->this$0:Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback;

    invoke-static {p2}, Landroidj/support/v4/media/MediaBrowserCompat$MediaItem;->fromMediaItemList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;)V

    :cond_12
    return-void

    :cond_13
    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi21;->this$0:Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback;

    iget-object v0, v0, Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->mSubscriptionRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/media/MediaBrowserCompat$Subscription;

    goto :goto_7

    :cond_1e
    invoke-static {p2}, Landroidj/support/v4/media/MediaBrowserCompat$MediaItem;->fromMediaItemList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Landroidj/support/v4/media/MediaBrowserCompat$Subscription;->getCallbacks()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0}, Landroidj/support/v4/media/MediaBrowserCompat$Subscription;->getOptionsList()Ljava/util/List;

    move-result-object v4

    const/4 v0, 0x0

    move v1, v0

    :goto_2c
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_12

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-nez v0, :cond_43

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi21;->this$0:Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback;

    invoke-virtual {v0, p1, v2}, Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;)V

    :goto_3f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2c

    :cond_43
    iget-object v5, p0, Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi21;->this$0:Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback;

    invoke-virtual {p0, v2, v0}, Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi21;->applyOptions(Ljava/util/List;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, p1, v6, v0}, Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V

    goto :goto_3f
.end method

.method public onError(Ljava/lang/String;)V
    .registers 3
    .param p1  # Ljava/lang/String;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi21;->this$0:Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback;

    invoke-virtual {v0, p1}, Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->onError(Ljava/lang/String;)V

    return-void
.end method
