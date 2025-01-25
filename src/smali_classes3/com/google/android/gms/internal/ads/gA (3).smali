.class final Lcom/google/android/gms/internal/ads/gA;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/dA;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/eA;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/eA;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gA;->j6:Lcom/google/android/gms/internal/ads/eA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/eA;Lcom/google/android/gms/internal/ads/fA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/gA;-><init>(Lcom/google/android/gms/internal/ads/eA;)V

    return-void
.end method


# virtual methods
.method public final DW(I)I
    .registers 2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/eA;->j6(I)I

    move-result p1

    return p1
.end method

.method public final FH(I)Z
    .registers 2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/eA;->DW(I)Z

    move-result p1

    return p1
.end method

.method public final j6(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gA;->j6:Lcom/google/android/gms/internal/ads/eA;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/eA;->FH(I)V

    return-void
.end method

.method public final j6(ID)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gA;->j6:Lcom/google/android/gms/internal/ads/eA;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/eA;->j6(ID)V

    return-void
.end method

.method public final j6(IILcom/google/android/gms/internal/ads/Qz;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gA;->j6:Lcom/google/android/gms/internal/ads/eA;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/eA;->j6(IILcom/google/android/gms/internal/ads/Qz;)V

    return-void
.end method

.method public final j6(IJ)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gA;->j6:Lcom/google/android/gms/internal/ads/eA;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/eA;->j6(IJ)V

    return-void
.end method

.method public final j6(IJJ)V
    .registers 12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gA;->j6:Lcom/google/android/gms/internal/ads/eA;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/eA;->j6(IJJ)V

    return-void
.end method

.method public final j6(ILjava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gA;->j6:Lcom/google/android/gms/internal/ads/eA;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/eA;->j6(ILjava/lang/String;)V

    return-void
.end method
