.class public final Lcom/google/android/gms/internal/ads/Nl;
.super Lcom/google/android/gms/internal/ads/Ak;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final Hw:Lcom/google/android/gms/internal/ads/nm;

.field private final v5:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/Nk;->DW(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lcom/google/android/gms/internal/ads/Nl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Ak;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/nm;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/nm;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Nl;->Hw:Lcom/google/android/gms/internal/ads/nm;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Nl;->v5:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final DW()V
    .registers 1

    return-void
.end method

.method public final Hw()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nl;->Hw:Lcom/google/android/gms/internal/ads/nm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nl;->v5:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/nm;->j6(Ljava/lang/String;)V

    return-void
.end method
