.class public final Lcom/google/android/gms/internal/ads/zzur;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field DW:Z

.field j6:Lcom/google/android/gms/internal/ads/qy;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/p;->j6(Landroid/content/Context;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->yu:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_40

    :try_start_18
    const-string v0, "com.google.android.gms.ads.clearcut.DynamiteClearcutLogger"

    sget-object v1, Lcom/google/android/gms/internal/ads/cG;->j6:Lcom/google/android/gms/internal/ads/lm;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/km;->j6(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/lm;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/qy;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzur;->j6:Lcom/google/android/gms/internal/ads/qy;

    invoke-static {p1}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzur;->j6:Lcom/google/android/gms/internal/ads/qy;

    invoke-static {p1}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object p1

    const-string v1, "GMA_SDK"

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/qy;->DW(Labcd/ox;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzur;->DW:Z
    :try_end_35
    .catch Lcom/google/android/gms/internal/ads/mm; {:try_start_18 .. :try_end_35} :catch_3a
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_35} :catch_38
    .catch Ljava/lang/NullPointerException; {:try_start_18 .. :try_end_35} :catch_36

    return-void

    :catch_36
    move-exception p1

    goto :goto_3b

    :catch_38
    move-exception p1

    goto :goto_3b

    :catch_3a
    move-exception p1

    :goto_3b
    const-string p1, "Cannot dynamite load clearcut"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    :cond_40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/p;->j6(Landroid/content/Context;)V

    :try_start_6
    const-string p3, "com.google.android.gms.ads.clearcut.DynamiteClearcutLogger"

    sget-object v0, Lcom/google/android/gms/internal/ads/bG;->j6:Lcom/google/android/gms/internal/ads/lm;

    invoke-static {p1, p3, v0}, Lcom/google/android/gms/internal/ads/km;->j6(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/lm;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/ads/qy;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzur;->j6:Lcom/google/android/gms/internal/ads/qy;

    invoke-static {p1}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzur;->j6:Lcom/google/android/gms/internal/ads/qy;

    invoke-static {p1}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p3, p1, p2, v0}, Lcom/google/android/gms/internal/ads/qy;->j6(Labcd/ox;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzur;->DW:Z
    :try_end_22
    .catch Lcom/google/android/gms/internal/ads/mm; {:try_start_6 .. :try_end_22} :catch_27
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_22} :catch_25
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_22} :catch_23

    return-void

    :catch_23
    move-exception p1

    goto :goto_28

    :catch_25
    move-exception p1

    goto :goto_28

    :catch_27
    move-exception p1

    :goto_28
    const-string p1, "Cannot dynamite load clearcut"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final j6([B)Lcom/google/android/gms/internal/ads/eG;
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/ads/eG;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/internal/ads/eG;-><init>(Lcom/google/android/gms/internal/ads/zzur;[BLcom/google/android/gms/internal/ads/dG;)V

    return-object v0
.end method
