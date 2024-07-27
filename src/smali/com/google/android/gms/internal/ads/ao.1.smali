.class final synthetic Lcom/google/android/gms/internal/ads/ao;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/jD;


# instance fields
.field private final DW:[B

.field private final j6:Lcom/google/android/gms/internal/ads/jD;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/jD;[B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ao;->j6:Lcom/google/android/gms/internal/ads/jD;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ao;->DW:[B

    return-void
.end method


# virtual methods
.method public final zzgs()Lcom/google/android/gms/internal/ads/iD;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ao;->j6:Lcom/google/android/gms/internal/ads/jD;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ao;->DW:[B

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/jD;->zzgs()Lcom/google/android/gms/internal/ads/iD;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/ads/fo;

    new-instance v3, Lcom/google/android/gms/internal/ads/hD;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/hD;-><init>([B)V

    array-length v1, v1

    invoke-direct {v2, v3, v1, v0}, Lcom/google/android/gms/internal/ads/fo;-><init>(Lcom/google/android/gms/internal/ads/iD;ILcom/google/android/gms/internal/ads/iD;)V

    return-object v2
.end method
