.class public final Lcom/google/android/gms/measurement/AppMeasurementReceiver;
.super Landroid/support/v4/content/WakefulBroadcastReceiver;

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzbp;


# instance fields
.field private zzadb:Lcom/google/android/gms/measurement/internal/zzbm;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v4/content/WakefulBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final doGoAsync()Landroid/content/BroadcastReceiver$PendingResult;
    .registers 2

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public final doStartService(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    invoke-static {p1, p2}, Landroid/support/v4/content/WakefulBroadcastReceiver;->startWakefulService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementReceiver;->zzadb:Lcom/google/android/gms/measurement/internal/zzbm;

    if-nez v0, :cond_b

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzbm;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzbm;-><init>(Lcom/google/android/gms/measurement/internal/zzbp;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementReceiver;->zzadb:Lcom/google/android/gms/measurement/internal/zzbm;

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementReceiver;->zzadb:Lcom/google/android/gms/measurement/internal/zzbm;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzbm;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
