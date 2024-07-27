.class public final Lcom/google/android/gms/internal/ads/WC;
.super Lcom/google/android/gms/internal/ads/RC;


# instance fields
.field private final VH:I

.field private final gn:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/LB;I)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gms/internal/ads/WC;-><init>(Lcom/google/android/gms/internal/ads/LB;IILjava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/LB;IILjava/lang/Object;)V
    .registers 7

    const/4 v1, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [I

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/RC;-><init>(Lcom/google/android/gms/internal/ads/LB;[I)V

    iput v1, p0, Lcom/google/android/gms/internal/ads/WC;->VH:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/WC;->gn:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final DW()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final j6()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final j6(J)V
    .registers 3

    return-void
.end method

.method public final v5()Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
