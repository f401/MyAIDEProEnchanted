.class public final Lcom/google/android/gms/common/internal/c$j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "j"
.end annotation


# instance fields
.field private final DW:Lcom/google/android/gms/common/internal/c;

.field private final j6:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/c;I)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/common/internal/c$j;->DW:Lcom/google/android/gms/common/internal/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/common/internal/c$j;->j6:I

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7

    iget-object p1, p0, Lcom/google/android/gms/common/internal/c$j;->DW:Lcom/google/android/gms/common/internal/c;

    if-nez p2, :cond_a

    const/16 p2, 0x10

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/c;->zza(Lcom/google/android/gms/common/internal/c;I)V

    return-void

    :cond_a
    invoke-static {p1}, Lcom/google/android/gms/common/internal/c;->zza(Lcom/google/android/gms/common/internal/c;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_f
    iget-object v0, p0, Lcom/google/android/gms/common/internal/c$j;->DW:Lcom/google/android/gms/common/internal/c;

    const/4 v1, 0x0

    if-nez p2, :cond_16

    move-object v2, v1

    goto :goto_2a

    :cond_16
    const-string v2, "com.google.android.gms.common.internal.IGmsServiceBroker"

    invoke-interface {p2, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    if-eqz v2, :cond_25

    instance-of v3, v2, Lcom/google/android/gms/common/internal/o;

    if-eqz v3, :cond_25

    check-cast v2, Lcom/google/android/gms/common/internal/o;

    goto :goto_2a

    :cond_25
    new-instance v2, Lcom/google/android/gms/common/internal/n;

    invoke-direct {v2, p2}, Lcom/google/android/gms/common/internal/n;-><init>(Landroid/os/IBinder;)V

    :goto_2a
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/c;->zza(Lcom/google/android/gms/common/internal/c;Lcom/google/android/gms/common/internal/o;)Lcom/google/android/gms/common/internal/o;

    monitor-exit p1
    :try_end_2e
    .catchall {:try_start_f .. :try_end_2e} :catchall_37

    iget-object p1, p0, Lcom/google/android/gms/common/internal/c$j;->DW:Lcom/google/android/gms/common/internal/c;

    const/4 p2, 0x0

    iget v0, p0, Lcom/google/android/gms/common/internal/c$j;->j6:I

    invoke-virtual {p1, p2, v1, v0}, Lcom/google/android/gms/common/internal/c;->zza(ILandroid/os/Bundle;I)V

    return-void

    :catchall_37
    move-exception p2

    :try_start_38
    monitor-exit p1
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw p2
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    iget-object p1, p0, Lcom/google/android/gms/common/internal/c$j;->DW:Lcom/google/android/gms/common/internal/c;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/c;->zza(Lcom/google/android/gms/common/internal/c;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/common/internal/c$j;->DW:Lcom/google/android/gms/common/internal/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/c;->zza(Lcom/google/android/gms/common/internal/c;Lcom/google/android/gms/common/internal/o;)Lcom/google/android/gms/common/internal/o;

    monitor-exit p1
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_1e

    iget-object p1, p0, Lcom/google/android/gms/common/internal/c$j;->DW:Lcom/google/android/gms/common/internal/c;

    iget-object p1, p1, Lcom/google/android/gms/common/internal/c;->mHandler:Landroid/os/Handler;

    iget v0, p0, Lcom/google/android/gms/common/internal/c$j;->j6:I

    const/4 v1, 0x1

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_1e
    move-exception v0

    :try_start_1f
    monitor-exit p1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v0
.end method
