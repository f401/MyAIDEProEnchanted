.class final Lcom/google/android/gms/internal/ads/Bl;
.super Lcom/google/android/gms/internal/ads/Gj;


# instance fields
.field private final Mr:Lcom/google/android/gms/internal/ads/cm;

.field private final aM:[B

.field private final j3:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzazs;ILjava/lang/String;Lcom/google/android/gms/internal/ads/uI;Lcom/google/android/gms/internal/ads/XH;[BLjava/util/Map;Lcom/google/android/gms/internal/ads/cm;)V
    .registers 9

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/Bl;->aM:[B

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/Bl;->j3:Ljava/util/Map;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/Bl;->Mr:Lcom/google/android/gms/internal/ads/cm;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/google/android/gms/internal/ads/Gj;-><init>(ILjava/lang/String;Lcom/google/android/gms/internal/ads/uI;Lcom/google/android/gms/internal/ads/XH;)V

    return-void
.end method


# virtual methods
.method protected final FH(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Bl;->Mr:Lcom/google/android/gms/internal/ads/cm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/cm;->j6(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/Gj;->FH(Ljava/lang/String;)V

    return-void
.end method

.method public final Hw()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Bl;->j3:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/lE;->Hw()Ljava/util/Map;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final j3()[B
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Bl;->aM:[B

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/lE;->j3()[B

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected final synthetic j6(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Bl;->FH(Ljava/lang/String;)V

    return-void
.end method
