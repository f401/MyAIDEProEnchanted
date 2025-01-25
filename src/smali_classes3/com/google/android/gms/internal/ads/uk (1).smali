.class public final Lcom/google/android/gms/internal/ads/uk;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private DW:J

.field private FH:I

.field Hw:I

.field private final VH:Ljava/lang/String;

.field private final Zo:Ljava/lang/Object;

.field private final gn:Lcom/google/android/gms/internal/ads/Hk;

.field private j6:J

.field private tp:I

.field private u7:I

.field private v5:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/Hk;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/uk;->j6:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/uk;->DW:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/uk;->FH:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/uk;->Hw:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/uk;->v5:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/uk;->Zo:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/uk;->u7:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/uk;->tp:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/uk;->VH:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/uk;->gn:Lcom/google/android/gms/internal/ads/Hk;

    return-void
.end method

.method private static j6(Landroid/content/Context;)Z
    .registers 7

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "style"

    const-string v2, "android"

    const-string v3, "Theme.Translucent"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const-string v1, "Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad."

    const/4 v2, 0x0

    if-nez v0, :cond_17

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;)V

    return v2

    :cond_17
    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.google.android.gms.ads.AdActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_22
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v3, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ActivityInfo;->theme:I

    if-ne v0, p0, :cond_30

    const/4 p0, 0x1

    return p0

    :cond_30
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;)V
    :try_end_33
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_22 .. :try_end_33} :catch_34

    return v2

    :catch_34
    move-exception p0

    const-string p0, "Fail to fetch AdActivity theme"

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;)V

    return v2
.end method


# virtual methods
.method public final DW()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uk;->Zo:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/google/android/gms/internal/ads/uk;->u7:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/uk;->u7:I

    monitor-exit v0

    return-void

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public final j6(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uk;->Zo:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "session_id"

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/uk;->VH:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "basets"

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/uk;->DW:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "currts"

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/uk;->j6:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "seq_num"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "preqs"

    iget v2, p0, Lcom/google/android/gms/internal/ads/uk;->FH:I

    invoke-virtual {v1, p2, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "preqs_in_session"

    iget v2, p0, Lcom/google/android/gms/internal/ads/uk;->Hw:I

    invoke-virtual {v1, p2, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "time_in_session"

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/uk;->v5:J

    invoke-virtual {v1, p2, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p2, "pclick"

    iget v2, p0, Lcom/google/android/gms/internal/ads/uk;->u7:I

    invoke-virtual {v1, p2, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "pimp"

    iget v2, p0, Lcom/google/android/gms/internal/ads/uk;->tp:I

    invoke-virtual {v1, p2, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "support_transparent_background"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/uk;->j6(Landroid/content/Context;)Z

    move-result p1

    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    monitor-exit v0

    return-object v1

    :catchall_50
    move-exception p1

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_3 .. :try_end_52} :catchall_50

    throw p1
.end method

.method public final j6()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uk;->Zo:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/google/android/gms/internal/ads/uk;->tp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/uk;->tp:I

    monitor-exit v0

    return-void

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/zzwb;J)V
    .registers 14

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uk;->Zo:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uk;->gn:Lcom/google/android/gms/internal/ads/Hk;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Hk;->J8()J

    move-result-wide v1

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/uk;->DW:J

    const-wide/16 v7, -0x1

    cmp-long v9, v5, v7

    if-nez v9, :cond_3d

    sget-object v5, Lcom/google/android/gms/internal/ads/p;->Gj:Lcom/google/android/gms/internal/ads/e;

    sub-long v1, v3, v1

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v7, v1, v5

    if-lez v7, :cond_33

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/uk;->Hw:I

    goto :goto_3b

    :cond_33
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uk;->gn:Lcom/google/android/gms/internal/ads/Hk;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Hk;->J0()I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/uk;->Hw:I

    :goto_3b
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/uk;->DW:J

    :cond_3d
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/uk;->j6:J

    const/4 p2, 0x1

    if-eqz p1, :cond_53

    iget-object p3, p1, Lcom/google/android/gms/internal/ads/zzwb;->FH:Landroid/os/Bundle;

    if-eqz p3, :cond_53

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzwb;->FH:Landroid/os/Bundle;

    const-string p3, "gw"

    const/4 v1, 0x2

    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, p2, :cond_53

    monitor-exit v0

    return-void

    :cond_53
    iget p1, p0, Lcom/google/android/gms/internal/ads/uk;->FH:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/gms/internal/ads/uk;->FH:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/uk;->Hw:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/gms/internal/ads/uk;->Hw:I

    if-nez p1, :cond_69

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/uk;->v5:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/uk;->gn:Lcom/google/android/gms/internal/ads/Hk;

    invoke-interface {p1, v3, v4}, Lcom/google/android/gms/internal/ads/Hk;->DW(J)V

    goto :goto_72

    :cond_69
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/uk;->gn:Lcom/google/android/gms/internal/ads/Hk;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Hk;->we()J

    move-result-wide p1

    sub-long/2addr v3, p1

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/uk;->v5:J

    :goto_72
    monitor-exit v0

    return-void

    :catchall_74
    move-exception p1

    monitor-exit v0
    :try_end_76
    .catchall {:try_start_3 .. :try_end_76} :catchall_74

    throw p1
.end method
