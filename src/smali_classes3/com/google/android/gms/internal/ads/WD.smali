.class public final Lcom/google/android/gms/internal/ads/WD;
.super Ljava/lang/Object;


# instance fields
.field public final DW:I

.field private final FH:I

.field private final Hw:I

.field public final j6:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
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
            "Ljava/util/List<",
            "[B>;IIIF)V"
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
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->gn()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->DW()I

    move-result v1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    invoke-static {p0, v1, v0}, Lcom/google/android/gms/internal/ads/DD;->j6([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static j6(Lcom/google/android/gms/internal/ads/LD;)Lcom/google/android/gms/internal/ads/WD;
    .registers 9

    const/4 v0, 0x4

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->VH()I

    move-result v0

    const/4 v1, 0x3

    and-int/2addr v0, v1

    add-int/lit8 v4, v0, 0x1

    if-eq v4, v1, :cond_63

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->VH()I

    move-result v0

    and-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1b
    if-ge v2, v0, :cond_27

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/WD;->DW(Lcom/google/android/gms/internal/ads/LD;)[B

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_27
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->VH()I

    move-result v2

    const/4 v5, 0x0

    :goto_2c
    if-ge v5, v2, :cond_38

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/WD;->DW(Lcom/google/android/gms/internal/ads/LD;)[B

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2c

    :cond_38
    if-lez v0, :cond_55

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length p0, p0

    invoke-static {v0, v4, p0}, Lcom/google/android/gms/internal/ads/ID;->j6([BII)Lcom/google/android/gms/internal/ads/JD;

    move-result-object p0

    iget v0, p0, Lcom/google/android/gms/internal/ads/JD;->DW:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/JD;->FH:I

    iget p0, p0, Lcom/google/android/gms/internal/ads/JD;->Hw:F

    move v7, p0

    move v5, v0

    move v6, v1

    goto :goto_5c

    :cond_55
    const/4 p0, -0x1

    const/high16 v0, 0x3f800000  # 1.0f

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/high16 v7, 0x3f800000  # 1.0f

    :goto_5c
    new-instance p0, Lcom/google/android/gms/internal/ads/WD;

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/WD;-><init>(Ljava/util/List;IIIF)V

    return-object p0

    :cond_63
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
    :try_end_69
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_69} :catch_69

    :catch_69
    move-exception p0

    new-instance v0, Lcom/google/android/gms/internal/ads/My;

    const-string v1, "Error parsing AVC config"

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_73

    :goto_72
    throw v0

    :goto_73
    goto :goto_72
.end method
