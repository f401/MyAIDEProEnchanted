.class public final Lcom/google/android/gms/internal/ads/WD;
.super Ljava/lang/Object;


# instance fields
.field public final DW:I

.field private final FH:I

.field private final Hw:I

.field public final j6:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field public final v5:F


# direct methods
.method private constructor <init>(Ljava/util/List;IIIF)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;IIIF)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/WD;->j6:Ljava/util/List;

    iput p2, p0, Lcom/google/android/gms/internal/ads/WD;->DW:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/WD;->FH:I

    iput p4, p0, Lcom/google/android/gms/internal/ads/WD;->Hw:I

    iput p5, p0, Lcom/google/android/gms/internal/ads/WD;->v5:F

    return-void
.end method

.method private static DW(Lcom/google/android/gms/internal/ads/LD;)[B
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->gn()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->DW()I

    move-result v1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/ads/DD;->j6([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static j6(Lcom/google/android/gms/internal/ads/LD;)Lcom/google/android/gms/internal/ads/WD;
    .registers 8

    const/4 v0, -0x1

    const/4 v3, 0x0

    const/4 v1, 0x4

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->VH()I

    move-result v1

    and-int/lit8 v1, v1, 0x3

    add-int/lit8 v2, v1, 0x1

    const/4 v1, 0x3

    if-eq v2, v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->VH()I

    move-result v4

    and-int/lit8 v5, v4, 0x1f

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/WD;->DW(Lcom/google/android/gms/internal/ads/LD;)[B

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->VH()I

    move-result v4

    :goto_1
    if-ge v3, v4, :cond_1

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/WD;->DW(Lcom/google/android/gms/internal/ads/LD;)[B

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    if-lez v5, :cond_2

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    array-length v0, v0

    invoke-static {v3, v2, v0}, Lcom/google/android/gms/internal/ads/ID;->j6([BII)Lcom/google/android/gms/internal/ads/JD;

    move-result-object v0

    iget v3, v0, Lcom/google/android/gms/internal/ads/JD;->DW:I

    iget v4, v0, Lcom/google/android/gms/internal/ads/JD;->FH:I

    iget v5, v0, Lcom/google/android/gms/internal/ads/JD;->Hw:F

    :goto_2
    new-instance v0, Lcom/google/android/gms/internal/ads/WD;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/WD;-><init>(Ljava/util/List;IIIF)V

    return-object v0

    :cond_2
    const/high16 v5, 0x3f800000    # 1.0f

    move v4, v0

    move v3, v0

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/ads/My;

    const-string v2, "Error parsing AVC config"

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
