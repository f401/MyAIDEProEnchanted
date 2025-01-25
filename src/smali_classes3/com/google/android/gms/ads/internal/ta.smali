.class public final Lcom/google/android/gms/ads/internal/ta;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field public final DW:Lcom/google/android/gms/internal/ads/on;

.field public final FH:Lcom/google/android/gms/internal/ads/Xj;

.field public final Hw:Lcom/google/android/gms/internal/ads/zzur;

.field public final j6:Lcom/google/android/gms/internal/ads/wo;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/wo;Lcom/google/android/gms/internal/ads/on;Lcom/google/android/gms/internal/ads/Xj;Lcom/google/android/gms/internal/ads/zzur;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/ta;->j6:Lcom/google/android/gms/internal/ads/wo;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/ta;->DW:Lcom/google/android/gms/internal/ads/on;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/ta;->FH:Lcom/google/android/gms/internal/ads/Xj;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/ta;->Hw:Lcom/google/android/gms/internal/ads/zzur;

    return-void
.end method

.method public static j6(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/ta;
    .registers 6

    new-instance v0, Lcom/google/android/gms/ads/internal/ta;

    new-instance v1, Lcom/google/android/gms/internal/ads/io;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/io;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/ads/wn;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/wn;-><init>()V

    new-instance v3, Lcom/google/android/gms/internal/ads/Sj;

    new-instance v4, Lcom/google/android/gms/internal/ads/Tj;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/Tj;-><init>()V

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/ads/Sj;-><init>(Lcom/google/android/gms/internal/ads/Yj;)V

    new-instance v4, Lcom/google/android/gms/internal/ads/zzur;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/ads/zzur;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/ads/internal/ta;-><init>(Lcom/google/android/gms/internal/ads/wo;Lcom/google/android/gms/internal/ads/on;Lcom/google/android/gms/internal/ads/Xj;Lcom/google/android/gms/internal/ads/zzur;)V

    return-object v0
.end method
