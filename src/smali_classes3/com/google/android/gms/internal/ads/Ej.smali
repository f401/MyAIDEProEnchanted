.class public final Lcom/google/android/gms/internal/ads/Ej;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/yj;

.field private final j6:Lcom/google/android/gms/internal/ads/Je;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Je;Lcom/google/android/gms/internal/ads/xj;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ej;->j6:Lcom/google/android/gms/internal/ads/Je;

    new-instance p1, Lcom/google/android/gms/internal/ads/yj;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/yj;-><init>(Lcom/google/android/gms/internal/ads/xj;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ej;->DW:Lcom/google/android/gms/internal/ads/yj;

    return-void
.end method


# virtual methods
.method public final DW()Lcom/google/android/gms/internal/ads/yj;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ej;->DW:Lcom/google/android/gms/internal/ads/yj;

    return-object v0
.end method

.method public final j6()Lcom/google/android/gms/internal/ads/Je;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ej;->j6:Lcom/google/android/gms/internal/ads/Je;

    return-object v0
.end method
