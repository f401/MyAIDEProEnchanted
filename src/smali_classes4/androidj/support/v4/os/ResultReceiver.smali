.class public Landroidj/support/v4/os/ResultReceiver;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidj/support/annotation/RestrictTo;
    value = {
        .enum Landroidj/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidj/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroidj/support/v4/os/ResultReceiver;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mHandler:Landroid/os/Handler;

.field final mLocal:Z

.field mReceiver:Landroidj/support/v4/os/IResultReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidj/support/v4/os/ResultReceiver$1;

    invoke-direct {v0}, Landroidj/support/v4/os/ResultReceiver$1;-><init>()V

    sput-object v0, Landroidj/support/v4/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidj/support/v4/os/ResultReceiver;->mLocal:Z

    iput-object p1, p0, Landroidj/support/v4/os/ResultReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidj/support/v4/os/ResultReceiver;->mLocal:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroidj/support/v4/os/ResultReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidj/support/v4/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroidj/support/v4/os/IResultReceiver;

    move-result-object v0

    iput-object v0, p0, Landroidj/support/v4/os/ResultReceiver;->mReceiver:Landroidj/support/v4/os/IResultReceiver;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public send(ILandroid/os/Bundle;)V
    .registers 5

    iget-boolean v0, p0, Landroidj/support/v4/os/ResultReceiver;->mLocal:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroidj/support/v4/os/ResultReceiver;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroidj/support/v4/os/ResultReceiver;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroidj/support/v4/os/ResultReceiver$MyRunnable;

    invoke-direct {v1, p0, p1, p2}, Landroidj/support/v4/os/ResultReceiver$MyRunnable;-><init>(Landroidj/support/v4/os/ResultReceiver;ILandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_12
    :goto_12
    return-void

    :cond_13
    invoke-virtual {p0, p1, p2}, Landroidj/support/v4/os/ResultReceiver;->onReceiveResult(ILandroid/os/Bundle;)V

    goto :goto_12

    :cond_17
    iget-object v0, p0, Landroidj/support/v4/os/ResultReceiver;->mReceiver:Landroidj/support/v4/os/IResultReceiver;

    if-eqz v0, :cond_12

    :try_start_1b
    iget-object v0, p0, Landroidj/support/v4/os/ResultReceiver;->mReceiver:Landroidj/support/v4/os/IResultReceiver;

    invoke-interface {v0, p1, p2}, Landroidj/support/v4/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_21

    goto :goto_12

    :catch_21
    move-exception v0

    goto :goto_12
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroidj/support/v4/os/ResultReceiver;->mReceiver:Landroidj/support/v4/os/IResultReceiver;

    if-nez v0, :cond_c

    new-instance v0, Landroidj/support/v4/os/ResultReceiver$MyResultReceiver;

    invoke-direct {v0, p0}, Landroidj/support/v4/os/ResultReceiver$MyResultReceiver;-><init>(Landroidj/support/v4/os/ResultReceiver;)V

    iput-object v0, p0, Landroidj/support/v4/os/ResultReceiver;->mReceiver:Landroidj/support/v4/os/IResultReceiver;

    :cond_c
    iget-object v0, p0, Landroidj/support/v4/os/ResultReceiver;->mReceiver:Landroidj/support/v4/os/IResultReceiver;

    invoke-interface {v0}, Landroidj/support/v4/os/IResultReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    monitor-exit p0

    return-void

    :catchall_17
    move-exception v0

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_17

    throw v0
.end method
