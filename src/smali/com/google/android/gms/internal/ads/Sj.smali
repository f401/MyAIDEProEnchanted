.class public final Lcom/google/android/gms/internal/ads/Sj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Xj;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private j6:Lcom/google/android/gms/internal/ads/Yj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Yj;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Sj;->j6:Lcom/google/android/gms/internal/ads/Yj;

    return-void
.end method


# virtual methods
.method public final j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbi;Lcom/google/android/gms/internal/ads/zzasm;)Lcom/google/android/gms/internal/ads/Wj;
    .registers 10

    iget-object v3, p3, Lcom/google/android/gms/internal/ads/zzasm;->sG:Lcom/google/android/gms/internal/ads/zzawo;

    if-nez v3, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/Mj;

    iget-object v4, p3, Lcom/google/android/gms/internal/ads/zzasm;->FH:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/Sj;->j6:Lcom/google/android/gms/internal/ads/Yj;

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/Mj;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbi;Lcom/google/android/gms/internal/ads/zzawo;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Yj;)V

    goto :goto_0
.end method
