.class final Lcom/google/android/gms/internal/ads/vB;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/HB;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/oB;

.field private final j6:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/oB;I)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vB;->DW:Lcom/google/android/gms/internal/ads/oB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/ads/vB;->j6:I

    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/vB;)I
    .registers 1

    iget p0, p0, Lcom/google/android/gms/internal/ads/vB;->j6:I

    return p0
.end method


# virtual methods
.method public final FH()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vB;->DW:Lcom/google/android/gms/internal/ads/oB;

    iget v1, p0, Lcom/google/android/gms/internal/ads/vB;->j6:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/oB;->j6(I)Z

    move-result v0

    return v0
.end method

.method public final Hw(J)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vB;->DW:Lcom/google/android/gms/internal/ads/oB;

    iget v1, p0, Lcom/google/android/gms/internal/ads/vB;->j6:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/internal/ads/oB;->j6(IJ)V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Jy;Lcom/google/android/gms/internal/ads/Ez;Z)I
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vB;->DW:Lcom/google/android/gms/internal/ads/oB;

    iget v1, p0, Lcom/google/android/gms/internal/ads/vB;->j6:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/oB;->j6(ILcom/google/android/gms/internal/ads/Jy;Lcom/google/android/gms/internal/ads/Ez;Z)I

    move-result p1

    return p1
.end method

.method public final j6()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vB;->DW:Lcom/google/android/gms/internal/ads/oB;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oB;->gn()V

    return-void
.end method
