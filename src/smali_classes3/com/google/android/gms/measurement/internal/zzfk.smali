.class public final Lcom/google/android/gms/measurement/internal/zzfk;
.super Lcom/google/android/gms/measurement/internal/zzfn;


# instance fields
.field private final zzate:Lcom/google/android/gms/measurement/internal/zzy;

.field private final zzyt:Landroid/app/AlarmManager;

.field private zzyu:Ljava/lang/Integer;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/measurement/internal/zzfo;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfn;-><init>(Lcom/google/android/gms/measurement/internal/zzfo;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzyt:Landroid/app/AlarmManager;

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzfl;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfo;->zzmh()Lcom/google/android/gms/measurement/internal/zzbw;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzfl;-><init>(Lcom/google/android/gms/measurement/internal/zzfk;Lcom/google/android/gms/measurement/internal/zzct;Lcom/google/android/gms/measurement/internal/zzfo;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzate:Lcom/google/android/gms/measurement/internal/zzy;

    return-void
.end method

.method private final getJobId()I
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzyu:Ljava/lang/Integer;

    if-nez v0, :cond_2c

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "measurement"

    if-eqz v1, :cond_1d

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_22

    :cond_1d
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_22
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzyu:Ljava/lang/Integer;

    :cond_2c
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzyu:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private final zzeo()Landroid/app/PendingIntent;
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.google.android.gms.measurement.AppMeasurementReceiver"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.google.android.gms.measurement.UPLOAD"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private final zzlr()V
    .registers 6

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "jobscheduler"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->getJobId()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v2

    const-string v3, "Cancelling job. JobID"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->cancel(I)V

    return-void
.end method


# virtual methods
.method public final cancel()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfn;->zzcl()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzyt:Landroid/app/AlarmManager;

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzeo()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzate:Lcom/google/android/gms/measurement/internal/zzy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzy;->cancel()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1a

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzlr()V

    :cond_1a
    return-void
.end method

.method public final bridge synthetic getContext()Landroid/content/Context;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzaf()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    return-void
.end method

.method public final bridge synthetic zzbx()Lcom/google/android/gms/common/util/e;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzbx()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgf()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgf()V

    return-void
.end method

.method public final bridge synthetic zzgg()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgg()V

    return-void
.end method

.method public final bridge synthetic zzgh()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgh()V

    return-void
.end method

.method public final bridge synthetic zzgp()Lcom/google/android/gms/measurement/internal/zzaa;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgp()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgq()Lcom/google/android/gms/measurement/internal/zzaq;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgr()Lcom/google/android/gms/measurement/internal/zzfy;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgs()Lcom/google/android/gms/measurement/internal/zzbr;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgt()Lcom/google/android/gms/measurement/internal/zzas;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgu()Lcom/google/android/gms/measurement/internal/zzbd;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgv()Lcom/google/android/gms/measurement/internal/zzq;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgw()Lcom/google/android/gms/measurement/internal/zzn;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgw()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v0

    return-object v0
.end method

.method protected final zzgy()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzyt:Landroid/app/AlarmManager;

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzeo()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_12

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzlr()V

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public final zzh(J)V
    .registers 14

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfn;->zzcl()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgw()Lcom/google/android/gms/measurement/internal/zzn;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzbm;->zza(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1d

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjn()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    const-string v2, "Receiver not registered/enabled"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    :cond_1d
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_31

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjn()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v1, "Service not registered/enabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    :cond_31
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->cancel()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzbx()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->DW()J

    move-result-wide v0

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzai;->zzajr:Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzai$zza;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    cmp-long v4, p1, v2

    if-gez v4, :cond_6c

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzate:Lcom/google/android/gms/measurement/internal/zzy;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzy;->zzej()Z

    move-result v2

    if-nez v2, :cond_6c

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v2

    const-string v3, "Scheduling upload with DelayedRunnable"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzate:Lcom/google/android/gms/measurement/internal/zzy;

    invoke-virtual {v2, p1, p2}, Lcom/google/android/gms/measurement/internal/zzy;->zzh(J)V

    :cond_6c
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgw()Lcom/google/android/gms/measurement/internal/zzn;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_cd

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v1, "Scheduling upload with JobScheduler"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.google.android.gms.measurement.AppMeasurementJobService"

    invoke-direct {v1, v0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->getJobId()I

    move-result v2

    new-instance v3, Landroid/os/PersistableBundle;

    invoke-direct {v3}, Landroid/os/PersistableBundle;-><init>()V

    const-string v4, "action"

    const-string v5, "com.google.android.gms.measurement.UPLOAD"

    invoke-virtual {v3, v4, v5}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Landroid/app/job/JobInfo$Builder;

    invoke-direct {v4, v2, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    invoke-virtual {v4, p1, p2}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    const/4 v4, 0x1

    shl-long/2addr p1, v4

    invoke-virtual {v1, p1, p2}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p2

    const-string v1, "Scheduling job. JobID"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "com.google.android.gms"

    const-string v1, "UploadAlarm"

    invoke-static {v0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/a;->j6(Landroid/content/Context;Landroid/app/job/JobInfo;Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_cd
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v2

    const-string v3, "Scheduling upload with AlarmManager"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzyt:Landroid/app/AlarmManager;

    const/4 v5, 0x2

    add-long v6, v0, p1

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzai;->zzajm:Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzai$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzeo()Landroid/app/PendingIntent;

    move-result-object v10

    invoke-virtual/range {v4 .. v10}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    return-void
.end method

.method public final bridge synthetic zzjr()Lcom/google/android/gms/measurement/internal/zzfu;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzfm;->zzjr()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzjs()Lcom/google/android/gms/measurement/internal/zzm;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzfm;->zzjs()Lcom/google/android/gms/measurement/internal/zzm;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzjt()Lcom/google/android/gms/measurement/internal/zzt;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzfm;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v0

    return-object v0
.end method
