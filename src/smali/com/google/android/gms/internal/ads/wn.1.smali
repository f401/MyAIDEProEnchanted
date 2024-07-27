.class public final Lcom/google/android/gms/internal/ads/wn;
.super Lcom/google/android/gms/internal/ads/on;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/on;-><init>()V

    return-void
.end method


# virtual methods
.method public final j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/Dn;IZLcom/google/android/gms/internal/ads/D;Lcom/google/android/gms/internal/ads/Cn;)Lcom/google/android/gms/internal/ads/zzbdi;
    .registers 15

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/common/util/o;->j6()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    :cond_0
    move v0, v6

    :goto_0
    if-nez v0, :cond_2

    const/4 v1, 0x0

    :goto_1
    return-object v1

    :cond_1
    move v0, v7

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ads/Fn;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/Dn;->j3()Lcom/google/android/gms/internal/ads/zzbbi;

    move-result-object v2

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/Dn;->cb()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/Dn;->Mz()Lcom/google/android/gms/internal/ads/A;

    move-result-object v5

    move-object v1, p1

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/Fn;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbi;Ljava/lang/String;Lcom/google/android/gms/internal/ads/D;Lcom/google/android/gms/internal/ads/A;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_3

    const/4 v1, 0x2

    if-ne p3, v1, :cond_3

    move v1, v6

    :goto_2
    if-eqz v1, :cond_4

    iget-object v1, p6, Lcom/google/android/gms/internal/ads/Cn;->v5:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "3"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lcom/google/android/gms/internal/ads/Jn;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/on;->j6(Lcom/google/android/gms/internal/ads/Dn;)Z

    move-result v6

    move-object v2, p1

    move-object v3, v0

    move-object v4, p2

    move v5, p4

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/Jn;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/Fn;Lcom/google/android/gms/internal/ads/Dn;ZZLcom/google/android/gms/internal/ads/Cn;)V

    goto :goto_1

    :cond_3
    move v1, v7

    goto :goto_2

    :cond_4
    new-instance v7, Lcom/google/android/gms/internal/ads/cn;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/on;->j6(Lcom/google/android/gms/internal/ads/Dn;)Z

    move-result v6

    new-instance v0, Lcom/google/android/gms/internal/ads/Fn;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/Dn;->j3()Lcom/google/android/gms/internal/ads/zzbbi;

    move-result-object v2

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/Dn;->cb()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/Dn;->Mz()Lcom/google/android/gms/internal/ads/A;

    move-result-object v5

    move-object v1, p1

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/Fn;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbi;Ljava/lang/String;Lcom/google/android/gms/internal/ads/D;Lcom/google/android/gms/internal/ads/A;)V

    move-object v1, v7

    move-object v2, p1

    move v3, p4

    move v4, v6

    move-object v5, p6

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/cn;-><init>(Landroid/content/Context;ZZLcom/google/android/gms/internal/ads/Cn;Lcom/google/android/gms/internal/ads/Fn;)V

    move-object v1, v7

    goto :goto_1
.end method
