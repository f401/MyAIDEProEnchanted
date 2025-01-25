.class public final Lcom/google/android/gms/measurement/AppMeasurementJobService;
.super Landroid/app/job/JobService;

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzfc;


# instance fields
.field private zzadc:Lcom/google/android/gms/measurement/internal/zzey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/measurement/internal/zzey<",
            "Lcom/google/android/gms/measurement/AppMeasurementJobService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method private final zzfz()Lcom/google/android/gms/measurement/internal/zzey;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/measurement/internal/zzey<",
            "Lcom/google/android/gms/measurement/AppMeasurementJobService;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementJobService;->zzadc:Lcom/google/android/gms/measurement/internal/zzey;

    if-nez v0, :cond_b

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzey;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzey;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementJobService;->zzadc:Lcom/google/android/gms/measurement/internal/zzey;

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementJobService;->zzadc:Lcom/google/android/gms/measurement/internal/zzey;

    return-object v0
.end method


# virtual methods
.method public final callServiceStopSelfResult(I)Z
    .registers 2

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final onCreate()V
    .registers 2

    invoke-super {p0}, Landroid/app/job/JobService;->onCreate()V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurementJobService;->zzfz()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzey;->onCreate()V

    return-void
.end method

.method public final onDestroy()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurementJobService;->zzfz()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzey;->onDestroy()V

    invoke-super {p0}, Landroid/app/job/JobService;->onDestroy()V

    return-void
.end method

.method public final onRebind(Landroid/content/Intent;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurementJobService;->zzfz()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzey;->onRebind(Landroid/content/Intent;)V

    return-void
.end method

.method public final onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurementJobService;->zzfz()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzey;->onStartJob(Landroid/app/job/JobParameters;)Z

    move-result p1

    return p1
.end method

.method public final onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public final onUnbind(Landroid/content/Intent;)Z
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurementJobService;->zzfz()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzey;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public final zza(Landroid/app/job/JobParameters;Z)V
    .registers 3

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method

.method public final zza(Landroid/content/Intent;)V
    .registers 2

    return-void
.end method
