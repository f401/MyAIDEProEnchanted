.class public abstract Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/media/MediaBrowserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SubscriptionCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi21;
    }
.end annotation


# instance fields
.field private final mSubscriptionCallbackObj:Ljava/lang/Object;

.field mSubscriptionRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroidj/support/v4/media/MediaBrowserCompat$Subscription;",
            ">;"
        }
    .end annotation
.end field

.field private final mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1c

    new-instance v0, Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi21;

    invoke-direct {v0, p0}, Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi21;-><init>(Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)V

    invoke-static {v0}, Landroidj/support/v4/media/MediaBrowserCompatApi21;->createSubscriptionCallback(Landroidj/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallback;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->mSubscriptionCallbackObj:Ljava/lang/Object;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->mToken:Landroid/os/IBinder;

    :goto_1b
    return-void

    :cond_1c
    const/4 v0, 0x0

    iput-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->mSubscriptionCallbackObj:Ljava/lang/Object;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->mToken:Landroid/os/IBinder;

    goto :goto_1b
.end method

.method static synthetic access$000(Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$100(Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback;Landroidj/support/v4/media/MediaBrowserCompat$Subscription;)V
    .registers 2

    invoke-direct {p0, p1}, Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->setSubscription(Landroidj/support/v4/media/MediaBrowserCompat$Subscription;)V

    return-void
.end method

.method static synthetic access$200(Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->mSubscriptionCallbackObj:Ljava/lang/Object;

    return-object v0
.end method

.method private setSubscription(Landroidj/support/v4/media/MediaBrowserCompat$Subscription;)V
    .registers 3

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->mSubscriptionRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onChildrenLoaded(Ljava/lang/String;Ljava/util/List;)V
    .registers 3
    .param p1  # Ljava/lang/String;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/util/List;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroidj/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onChildrenLoaded(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V
    .registers 4
    .param p1  # Ljava/lang/String;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/util/List;
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
            "Ljava/util/List",
            "<",
            "Landroidj/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .registers 2
    .param p1  # Ljava/lang/String;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onError(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3
    .param p1  # Ljava/lang/String;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/os/Bundle;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
