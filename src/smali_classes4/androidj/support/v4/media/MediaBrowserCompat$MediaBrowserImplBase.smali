.class Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;
.super Ljava/lang/Object;

# interfaces
.implements Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;
.implements Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/media/MediaBrowserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaBrowserImplBase"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;
    }
.end annotation


# static fields
.field static final CONNECT_STATE_CONNECTED:I = 0x3

.field static final CONNECT_STATE_CONNECTING:I = 0x2

.field static final CONNECT_STATE_DISCONNECTED:I = 0x1

.field static final CONNECT_STATE_DISCONNECTING:I = 0x0

.field static final CONNECT_STATE_SUSPENDED:I = 0x4


# instance fields
.field final mCallback:Landroidj/support/v4/media/MediaBrowserCompat$ConnectionCallback;

.field mCallbacksMessenger:Landroid/os/Messenger;

.field final mContext:Landroid/content/Context;

.field private mExtras:Landroid/os/Bundle;

.field final mHandler:Landroidj/support/v4/media/MediaBrowserCompat$CallbackHandler;

.field private mMediaSessionToken:Landroidj/support/v4/media/session/MediaSessionCompat$Token;

.field final mRootHints:Landroid/os/Bundle;

.field private mRootId:Ljava/lang/String;

.field mServiceBinderWrapper:Landroidj/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

.field final mServiceComponent:Landroid/content/ComponentName;

.field mServiceConnection:Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

.field mState:I

.field private final mSubscriptions:Landroidj/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidj/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroidj/support/v4/media/MediaBrowserCompat$Subscription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Landroidj/support/v4/media/MediaBrowserCompat$ConnectionCallback;Landroid/os/Bundle;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidj/support/v4/media/MediaBrowserCompat$CallbackHandler;

    invoke-direct {v0, p0}, Landroidj/support/v4/media/MediaBrowserCompat$CallbackHandler;-><init>(Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;)V

    iput-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mHandler:Landroidj/support/v4/media/MediaBrowserCompat$CallbackHandler;

    new-instance v0, Landroidj/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroidj/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mSubscriptions:Landroidj/support/v4/util/ArrayMap;

    const/4 v0, 0x1

    iput v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    if-nez p1, :cond_1e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    if-nez p2, :cond_28

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "service component must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    if-nez p3, :cond_32

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "connection callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_32
    iput-object p1, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceComponent:Landroid/content/ComponentName;

    iput-object p3, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mCallback:Landroidj/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    if-nez p4, :cond_3e

    const/4 v0, 0x0

    :goto_3b
    iput-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mRootHints:Landroid/os/Bundle;

    return-void

    :cond_3e
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_3b
.end method

.method private static getStateLabel(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_16
    return-object v0

    :pswitch_17  #0x0
    const-string v0, "CONNECT_STATE_DISCONNECTING"

    goto :goto_16

    :pswitch_1a  #0x1
    const-string v0, "CONNECT_STATE_DISCONNECTED"

    goto :goto_16

    :pswitch_1d  #0x2
    const-string v0, "CONNECT_STATE_CONNECTING"

    goto :goto_16

    :pswitch_20  #0x3
    const-string v0, "CONNECT_STATE_CONNECTED"

    goto :goto_16

    :pswitch_23  #0x4
    const-string v0, "CONNECT_STATE_SUSPENDED"

    goto :goto_16

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_17  #00000000
        :pswitch_1a  #00000001
        :pswitch_1d  #00000002
        :pswitch_20  #00000003
        :pswitch_23  #00000004
    .end packed-switch
.end method

.method private isCurrent(Landroid/os/Messenger;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x1

    iget-object v1, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mCallbacksMessenger:Landroid/os/Messenger;

    if-eq v1, p1, :cond_3e

    iget v1, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    if-eq v1, v0, :cond_3d

    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with mCallbacksMessenger="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mCallbacksMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    const/4 v0, 0x0

    :cond_3e
    return v0
.end method


# virtual methods
.method public connect()V
    .registers 7

    const/4 v1, 0x1

    iget v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    if-eq v0, v1, :cond_2a

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect() called while not disconnected (state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    invoke-static {v2}, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->getStateLabel(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    sget-boolean v0, Landroidj/support/v4/media/MediaBrowserCompat;->DEBUG:Z

    if-eqz v0, :cond_4d

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceConnection:Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    if-eqz v0, :cond_4d

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mServiceConnection should be null. Instead it is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceConnection:Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4d
    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceBinderWrapper:Landroidj/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v0, :cond_6c

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mServiceBinderWrapper should be null. Instead it is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceBinderWrapper:Landroidj/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6c
    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mCallbacksMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_8b

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCallbacksMessenger should be null. Instead it is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mCallbacksMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8b
    const/4 v0, 0x2

    iput v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.media.browse.MediaBrowserService"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v2, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    invoke-direct {v2, p0}, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;-><init>(Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)V

    iput-object v2, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceConnection:Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    const/4 v0, 0x0

    :try_start_a2
    iget-object v3, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceConnection:Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_aa} :catch_c6

    move-result v0

    :goto_ab
    if-nez v0, :cond_b7

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mHandler:Landroidj/support/v4/media/MediaBrowserCompat$CallbackHandler;

    new-instance v1, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$1;

    invoke-direct {v1, p0, v2}, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$1;-><init>(Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/content/ServiceConnection;)V

    invoke-virtual {v0, v1}, Landroidj/support/v4/media/MediaBrowserCompat$CallbackHandler;->post(Ljava/lang/Runnable;)Z

    :cond_b7
    sget-boolean v0, Landroidj/support/v4/media/MediaBrowserCompat;->DEBUG:Z

    if-eqz v0, :cond_c5

    const-string v0, "MediaBrowserCompat"

    const-string v1, "connect..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->dump()V

    :cond_c5
    return-void

    :catch_c6
    move-exception v1

    const-string v1, "MediaBrowserCompat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed binding to service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceComponent:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ab
.end method

.method public disconnect()V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mHandler:Landroidj/support/v4/media/MediaBrowserCompat$CallbackHandler;

    new-instance v1, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$2;

    invoke-direct {v1, p0}, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$2;-><init>(Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)V

    invoke-virtual {v0, v1}, Landroidj/support/v4/media/MediaBrowserCompat$CallbackHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method dump()V
    .registers 4

    const-string v0, "MediaBrowserCompat"

    const-string v1, "MediaBrowserCompat..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mServiceComponent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCallback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mCallback:Landroidj/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mRootHints="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mRootHints:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    invoke-static {v2}, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->getStateLabel(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mServiceConnection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceConnection:Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mServiceBinderWrapper="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceBinderWrapper:Landroidj/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCallbacksMessenger="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mCallbacksMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mRootId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mRootId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mMediaSessionToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mMediaSessionToken:Landroidj/support/v4/media/session/MediaSessionCompat$Token;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method forceCloseConnection()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceConnection:Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceConnection:Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_c
    const/4 v0, 0x1

    iput v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    iput-object v2, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceConnection:Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    iput-object v2, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceBinderWrapper:Landroidj/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    iput-object v2, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mCallbacksMessenger:Landroid/os/Messenger;

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mHandler:Landroidj/support/v4/media/MediaBrowserCompat$CallbackHandler;

    invoke-virtual {v0, v2}, Landroidj/support/v4/media/MediaBrowserCompat$CallbackHandler;->setCallbacksMessenger(Landroid/os/Messenger;)V

    iput-object v2, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mRootId:Ljava/lang/String;

    iput-object v2, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mMediaSessionToken:Landroidj/support/v4/media/session/MediaSessionCompat$Token;

    return-void
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 4
    .annotation build Landroidj/support/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2b

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getExtras() called while not connected (state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    invoke-static {v2}, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->getStateLabel(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getItem(Ljava/lang/String;Landroidj/support/v4/media/MediaBrowserCompat$ItemCallback;)V
    .registers 6
    .param p1  # Ljava/lang/String;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroidj/support/v4/media/MediaBrowserCompat$ItemCallback;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mediaId is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    if-nez p2, :cond_18

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cb is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    invoke-virtual {p0}, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->isConnected()Z

    move-result v0

    if-nez v0, :cond_30

    const-string v0, "MediaBrowserCompat"

    const-string v1, "Not connected, unable to retrieve the MediaItem."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mHandler:Landroidj/support/v4/media/MediaBrowserCompat$CallbackHandler;

    new-instance v1, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$3;

    invoke-direct {v1, p0, p2, p1}, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$3;-><init>(Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroidj/support/v4/media/MediaBrowserCompat$ItemCallback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidj/support/v4/media/MediaBrowserCompat$CallbackHandler;->post(Ljava/lang/Runnable;)Z

    :goto_2f
    return-void

    :cond_30
    new-instance v0, Landroidj/support/v4/media/MediaBrowserCompat$ItemReceiver;

    iget-object v1, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mHandler:Landroidj/support/v4/media/MediaBrowserCompat$CallbackHandler;

    invoke-direct {v0, p1, p2, v1}, Landroidj/support/v4/media/MediaBrowserCompat$ItemReceiver;-><init>(Ljava/lang/String;Landroidj/support/v4/media/MediaBrowserCompat$ItemCallback;Landroid/os/Handler;)V

    :try_start_37
    iget-object v1, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceBinderWrapper:Landroidj/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v2, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mCallbacksMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, p1, v0, v2}, Landroidj/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->getMediaItem(Ljava/lang/String;Landroidj/support/v4/os/ResultReceiver;Landroid/os/Messenger;)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3e} :catch_3f

    goto :goto_2f

    :catch_3f
    move-exception v0

    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote error getting media item: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mHandler:Landroidj/support/v4/media/MediaBrowserCompat$CallbackHandler;

    new-instance v1, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$4;

    invoke-direct {v1, p0, p2, p1}, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$4;-><init>(Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroidj/support/v4/media/MediaBrowserCompat$ItemCallback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidj/support/v4/media/MediaBrowserCompat$CallbackHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2f
.end method

.method public getRoot()Ljava/lang/String;
    .registers 4
    .annotation build Landroidj/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2b

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRoot() called while not connected(state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    invoke-static {v2}, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->getStateLabel(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mRootId:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceComponent()Landroid/content/ComponentName;
    .registers 4
    .annotation build Landroidj/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->isConnected()Z

    move-result v0

    if-nez v0, :cond_27

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getServiceComponent() called while not connected (state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getSessionToken()Landroidj/support/v4/media/session/MediaSessionCompat$Token;
    .registers 4
    .annotation build Landroidj/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->isConnected()Z

    move-result v0

    if-nez v0, :cond_27

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSessionToken() called while not connected(state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mMediaSessionToken:Landroidj/support/v4/media/session/MediaSessionCompat$Token;

    return-object v0
.end method

.method public isConnected()Z
    .registers 3

    iget v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public onConnectionFailed(Landroid/os/Messenger;)V
    .registers 5

    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnectFailed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "onConnectFailed"

    invoke-direct {p0, p1, v0}, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->isCurrent(Landroid/os/Messenger;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    :goto_22
    return-void

    :cond_23
    iget v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4d

    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnect from service while mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    invoke-static {v2}, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->getStateLabel(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "... ignoring"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    :cond_4d
    invoke-virtual {p0}, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->forceCloseConnection()V

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mCallback:Landroidj/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    invoke-virtual {v0}, Landroidj/support/v4/media/MediaBrowserCompat$ConnectionCallback;->onConnectionFailed()V

    goto :goto_22
.end method

.method public onLoadChildren(Landroid/os/Messenger;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V
    .registers 8

    const-string v0, "onLoadChildren"

    invoke-direct {p0, p1, v0}, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->isCurrent(Landroid/os/Messenger;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    sget-boolean v0, Landroidj/support/v4/media/MediaBrowserCompat;->DEBUG:Z

    if-eqz v0, :cond_31

    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadChildren for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mSubscriptions:Landroidj/support/v4/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroidj/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/media/MediaBrowserCompat$Subscription;

    if-nez v0, :cond_58

    sget-boolean v0, Landroidj/support/v4/media/MediaBrowserCompat;->DEBUG:Z

    if-eqz v0, :cond_8

    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadChildren for id that isn\'t subscribed id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_58
    invoke-virtual {v0, p4}, Landroidj/support/v4/media/MediaBrowserCompat$Subscription;->getCallback(Landroid/os/Bundle;)Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback;

    move-result-object v0

    if-eqz v0, :cond_8

    if-nez p4, :cond_6a

    if-nez p3, :cond_66

    invoke-virtual {v0, p2}, Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->onError(Ljava/lang/String;)V

    goto :goto_8

    :cond_66
    invoke-virtual {v0, p2, p3}, Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_8

    :cond_6a
    if-nez p3, :cond_70

    invoke-virtual {v0, p2, p4}, Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->onError(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_8

    :cond_70
    invoke-virtual {v0, p2, p3, p4}, Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V

    goto :goto_8
.end method

.method public onServiceConnected(Landroid/os/Messenger;Ljava/lang/String;Landroidj/support/v4/media/session/MediaSessionCompat$Token;Landroid/os/Bundle;)V
    .registers 14

    const-string v0, "onConnect"

    invoke-direct {p0, p1, v0}, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->isCurrent(Landroid/os/Messenger;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_33

    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnect from service while mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    invoke-static {v2}, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->getStateLabel(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "... ignoring"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_33
    iput-object p2, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mRootId:Ljava/lang/String;

    iput-object p3, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mMediaSessionToken:Landroidj/support/v4/media/session/MediaSessionCompat$Token;

    iput-object p4, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mExtras:Landroid/os/Bundle;

    const/4 v0, 0x3

    iput v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    sget-boolean v0, Landroidj/support/v4/media/MediaBrowserCompat;->DEBUG:Z

    if-eqz v0, :cond_4a

    const-string v0, "MediaBrowserCompat"

    const-string v1, "ServiceCallbacks.onConnect..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->dump()V

    :cond_4a
    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mCallback:Landroidj/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    invoke-virtual {v0}, Landroidj/support/v4/media/MediaBrowserCompat$ConnectionCallback;->onConnected()V

    :try_start_4f
    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mSubscriptions:Landroidj/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroidj/support/v4/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_59
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/media/MediaBrowserCompat$Subscription;

    invoke-virtual {v0}, Landroidj/support/v4/media/MediaBrowserCompat$Subscription;->getCallbacks()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0}, Landroidj/support/v4/media/MediaBrowserCompat$Subscription;->getOptionsList()Ljava/util/List;

    move-result-object v5

    const/4 v0, 0x0

    move v2, v0

    :goto_7b
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_59

    iget-object v6, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceBinderWrapper:Landroidj/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback;

    invoke-static {v0}, Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->access$000(Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)Landroid/os/IBinder;

    move-result-object v7

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iget-object v8, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mCallbacksMessenger:Landroid/os/Messenger;

    invoke-virtual {v6, v1, v7, v0, v8}, Landroidj/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->addSubscription(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;Landroid/os/Messenger;)V
    :try_end_98
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_98} :catch_9c

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7b

    :catch_9c
    move-exception v0

    const-string v0, "MediaBrowserCompat"

    const-string v1, "addSubscription failed with RemoteException."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8
.end method

.method public search(Ljava/lang/String;Landroid/os/Bundle;Landroidj/support/v4/media/MediaBrowserCompat$SearchCallback;)V
    .registers 8
    .param p1  # Ljava/lang/String;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroidj/support/v4/media/MediaBrowserCompat$SearchCallback;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2b

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "search() called while not connected (state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    invoke-static {v2}, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->getStateLabel(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    new-instance v0, Landroidj/support/v4/media/MediaBrowserCompat$SearchResultReceiver;

    iget-object v1, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mHandler:Landroidj/support/v4/media/MediaBrowserCompat$CallbackHandler;

    invoke-direct {v0, p1, p2, p3, v1}, Landroidj/support/v4/media/MediaBrowserCompat$SearchResultReceiver;-><init>(Ljava/lang/String;Landroid/os/Bundle;Landroidj/support/v4/media/MediaBrowserCompat$SearchCallback;Landroid/os/Handler;)V

    :try_start_32
    iget-object v1, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceBinderWrapper:Landroidj/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v2, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mCallbacksMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, p1, p2, v0, v2}, Landroidj/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->search(Ljava/lang/String;Landroid/os/Bundle;Landroidj/support/v4/os/ResultReceiver;Landroid/os/Messenger;)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_39} :catch_3a

    :goto_39
    return-void

    :catch_3a
    move-exception v0

    const-string v1, "MediaBrowserCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote error searching items with query: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mHandler:Landroidj/support/v4/media/MediaBrowserCompat$CallbackHandler;

    new-instance v1, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;

    invoke-direct {v1, p0, p3, p1, p2}, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;-><init>(Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroidj/support/v4/media/MediaBrowserCompat$SearchCallback;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroidj/support/v4/media/MediaBrowserCompat$CallbackHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_39
.end method

.method public sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;Landroidj/support/v4/media/MediaBrowserCompat$CustomActionCallback;)V
    .registers 8
    .param p1  # Ljava/lang/String;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroidj/support/v4/media/MediaBrowserCompat$CustomActionCallback;
        .annotation build Landroidj/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->isConnected()Z

    move-result v0

    if-nez v0, :cond_3b

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot send a custom action ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "extras "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " because the browser is not connected to the "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "service."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3b
    new-instance v0, Landroidj/support/v4/media/MediaBrowserCompat$CustomActionResultReceiver;

    iget-object v1, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mHandler:Landroidj/support/v4/media/MediaBrowserCompat$CallbackHandler;

    invoke-direct {v0, p1, p2, p3, v1}, Landroidj/support/v4/media/MediaBrowserCompat$CustomActionResultReceiver;-><init>(Ljava/lang/String;Landroid/os/Bundle;Landroidj/support/v4/media/MediaBrowserCompat$CustomActionCallback;Landroid/os/Handler;)V

    :try_start_42
    iget-object v1, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceBinderWrapper:Landroidj/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v2, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mCallbacksMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, p1, p2, v0, v2}, Landroidj/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;Landroidj/support/v4/os/ResultReceiver;Landroid/os/Messenger;)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_49} :catch_4a

    :goto_49
    return-void

    :catch_4a
    move-exception v0

    const-string v1, "MediaBrowserCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote error sending a custom action: action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", extras="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mHandler:Landroidj/support/v4/media/MediaBrowserCompat$CallbackHandler;

    new-instance v1, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$6;

    invoke-direct {v1, p0, p3, p1, p2}, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$6;-><init>(Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroidj/support/v4/media/MediaBrowserCompat$CustomActionCallback;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroidj/support/v4/media/MediaBrowserCompat$CallbackHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_49
.end method

.method public subscribe(Ljava/lang/String;Landroid/os/Bundle;Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)V
    .registers 8
    .param p1  # Ljava/lang/String;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mSubscriptions:Landroidj/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroidj/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/media/MediaBrowserCompat$Subscription;

    if-nez v0, :cond_4d

    new-instance v0, Landroidj/support/v4/media/MediaBrowserCompat$Subscription;

    invoke-direct {v0}, Landroidj/support/v4/media/MediaBrowserCompat$Subscription;-><init>()V

    iget-object v1, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mSubscriptions:Landroidj/support/v4/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroidj/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    :goto_15
    if-nez p2, :cond_2d

    const/4 v0, 0x0

    :goto_18
    invoke-virtual {v1, v0, p3}, Landroidj/support/v4/media/MediaBrowserCompat$Subscription;->putCallback(Landroid/os/Bundle;Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)V

    invoke-virtual {p0}, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2c

    :try_start_21
    iget-object v1, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceBinderWrapper:Landroidj/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-static {p3}, Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->access$000(Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mCallbacksMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, p1, v2, v0, v3}, Landroidj/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->addSubscription(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;Landroid/os/Messenger;)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_2c} :catch_33

    :cond_2c
    :goto_2c
    return-void

    :cond_2d
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_18

    :catch_33
    move-exception v0

    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addSubscription failed with RemoteException parentId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    :cond_4d
    move-object v1, v0

    goto :goto_15
.end method

.method public unsubscribe(Ljava/lang/String;Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)V
    .registers 10
    .param p1  # Ljava/lang/String;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mSubscriptions:Landroidj/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroidj/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/media/MediaBrowserCompat$Subscription;

    if-nez v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    if-nez p2, :cond_29

    :try_start_d
    invoke-virtual {p0}, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceBinderWrapper:Landroidj/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    const/4 v2, 0x0

    iget-object v3, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mCallbacksMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, p1, v2, v3}, Landroidj/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->removeSubscription(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Messenger;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1b} :catch_59

    :cond_1b
    :goto_1b
    invoke-virtual {v0}, Landroidj/support/v4/media/MediaBrowserCompat$Subscription;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_23

    if-nez p2, :cond_a

    :cond_23
    iget-object v0, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mSubscriptions:Landroidj/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroidj/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_29
    :try_start_29
    invoke-virtual {v0}, Landroidj/support/v4/media/MediaBrowserCompat$Subscription;->getCallbacks()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Landroidj/support/v4/media/MediaBrowserCompat$Subscription;->getOptionsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_37
    if-ltz v1, :cond_1b

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p2, :cond_56

    invoke-virtual {p0}, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_50

    iget-object v4, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceBinderWrapper:Landroidj/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-static {p2}, Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->access$000(Landroidj/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)Landroid/os/IBinder;

    move-result-object v5

    iget-object v6, p0, Landroidj/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mCallbacksMessenger:Landroid/os/Messenger;

    invoke-virtual {v4, p1, v5, v6}, Landroidj/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->removeSubscription(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Messenger;)V

    :cond_50
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_56} :catch_59

    :cond_56
    add-int/lit8 v1, v1, -0x1

    goto :goto_37

    :catch_59
    move-exception v1

    const-string v1, "MediaBrowserCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeSubscription failed with RemoteException parentId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b
.end method
