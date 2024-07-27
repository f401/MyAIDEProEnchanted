.class public Lutilcode/android/support/v4/os/ResultReceiver;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lutilcode/android/support/v4/os/ResultReceiver$MyResultReceiver;,
        Lutilcode/android/support/v4/os/ResultReceiver$MyRunnable;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lutilcode/android/support/v4/os/ResultReceiver;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mHandler:Landroid/os/Handler;

.field final mLocal:Z

.field mReceiver:Lutilcode/android/support/v4/os/IResultReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lutilcode/android/support/v4/os/ResultReceiver$1;

    invoke-direct {v0}, Lutilcode/android/support/v4/os/ResultReceiver$1;-><init>()V

    sput-object v0, Lutilcode/android/support/v4/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lutilcode/android/support/v4/os/ResultReceiver;->mLocal:Z

    iput-object p1, p0, Lutilcode/android/support/v4/os/ResultReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lutilcode/android/support/v4/os/ResultReceiver;->mLocal:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lutilcode/android/support/v4/os/ResultReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lutilcode/android/support/v4/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lutilcode/android/support/v4/os/IResultReceiver;

    move-result-object v0

    iput-object v0, p0, Lutilcode/android/support/v4/os/ResultReceiver;->mReceiver:Lutilcode/android/support/v4/os/IResultReceiver;

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

    iget-boolean v0, p0, Lutilcode/android/support/v4/os/ResultReceiver;->mLocal:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lutilcode/android/support/v4/os/ResultReceiver;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    new-instance v1, Lutilcode/android/support/v4/os/ResultReceiver$MyRunnable;

    invoke-direct {v1, p0, p1, p2}, Lutilcode/android/support/v4/os/ResultReceiver$MyRunnable;-><init>(Lutilcode/android/support/v4/os/ResultReceiver;ILandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1, p2}, Lutilcode/android/support/v4/os/ResultReceiver;->onReceiveResult(ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lutilcode/android/support/v4/os/ResultReceiver;->mReceiver:Lutilcode/android/support/v4/os/IResultReceiver;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1, p2}, Lutilcode/android/support/v4/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lutilcode/android/support/v4/os/ResultReceiver;->mReceiver:Lutilcode/android/support/v4/os/IResultReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lutilcode/android/support/v4/os/ResultReceiver$MyResultReceiver;

    invoke-direct {v0, p0}, Lutilcode/android/support/v4/os/ResultReceiver$MyResultReceiver;-><init>(Lutilcode/android/support/v4/os/ResultReceiver;)V

    iput-object v0, p0, Lutilcode/android/support/v4/os/ResultReceiver;->mReceiver:Lutilcode/android/support/v4/os/IResultReceiver;

    :cond_0
    iget-object v0, p0, Lutilcode/android/support/v4/os/ResultReceiver;->mReceiver:Lutilcode/android/support/v4/os/IResultReceiver;

    invoke-interface {v0}, Lutilcode/android/support/v4/os/IResultReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
