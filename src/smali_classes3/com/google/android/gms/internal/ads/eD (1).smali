.class public final Lcom/google/android/gms/internal/ads/eD;
.super Ljava/lang/Object;


# instance fields
.field public final DW:Lcom/google/android/gms/internal/ads/bD;

.field public final FH:Ljava/lang/Object;

.field public final Hw:[Lcom/google/android/gms/internal/ads/Ry;

.field public final j6:Lcom/google/android/gms/internal/ads/NB;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/NB;Lcom/google/android/gms/internal/ads/bD;Ljava/lang/Object;[Lcom/google/android/gms/internal/ads/Ry;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eD;->j6:Lcom/google/android/gms/internal/ads/NB;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/eD;->DW:Lcom/google/android/gms/internal/ads/bD;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/eD;->FH:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/eD;->Hw:[Lcom/google/android/gms/internal/ads/Ry;

    return-void
.end method


# virtual methods
.method public final j6(Lcom/google/android/gms/internal/ads/eD;I)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eD;->DW:Lcom/google/android/gms/internal/ads/bD;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/bD;->j6(I)Lcom/google/android/gms/internal/ads/_C;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/eD;->DW:Lcom/google/android/gms/internal/ads/bD;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/ads/bD;->j6(I)Lcom/google/android/gms/internal/ads/_C;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/TD;->j6(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eD;->Hw:[Lcom/google/android/gms/internal/ads/Ry;

    aget-object v1, v1, p2

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/eD;->Hw:[Lcom/google/android/gms/internal/ads/Ry;

    aget-object p1, p1, p2

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/TD;->j6(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    const/4 p1, 0x1

    return p1

    :cond_26
    return v0
.end method
