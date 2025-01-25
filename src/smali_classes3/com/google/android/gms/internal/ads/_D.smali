.class public final Lcom/google/android/gms/internal/ads/_D;
.super Ljava/lang/Object;


# instance fields
.field public final DW:I

.field public final j6:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/_D;->j6:Ljava/util/List;

    iput p2, p0, Lcom/google/android/gms/internal/ads/_D;->DW:I

    return-void
.end method

.method public static j6(Lcom/google/android/gms/internal/ads/LD;)Lcom/google/android/gms/internal/ads/_D;
    .registers 14

    const/16 v0, 0x15

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->VH()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->VH()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->DW()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_14
    const/4 v6, 0x1

    if-ge v4, v1, :cond_31

    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->gn()I

    move-result v6

    const/4 v7, 0x0

    :goto_1f
    if-ge v7, v6, :cond_2e

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->gn()I

    move-result v8

    add-int/lit8 v9, v8, 0x4

    add-int/2addr v5, v9

    invoke-virtual {p0, v8}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1f

    :cond_2e
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_31
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    new-array v2, v5, [B

    const/4 v4, 0x0

    const/4 v7, 0x0

    :goto_38
    if-ge v4, v1, :cond_67

    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->gn()I

    move-result v8

    const/4 v9, 0x0

    :goto_42
    if-ge v9, v8, :cond_64

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->gn()I

    move-result v10

    sget-object v11, Lcom/google/android/gms/internal/ads/ID;->j6:[B

    sget-object v12, Lcom/google/android/gms/internal/ads/ID;->j6:[B

    array-length v12, v12

    invoke-static {v11, v3, v2, v7, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v11, Lcom/google/android/gms/internal/ads/ID;->j6:[B

    array-length v11, v11

    add-int/2addr v7, v11

    iget-object v11, p0, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->DW()I

    move-result v12

    invoke-static {v11, v12, v2, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v7, v10

    invoke-virtual {p0, v10}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_42

    :cond_64
    add-int/lit8 v4, v4, 0x1

    goto :goto_38

    :cond_67
    if-nez v5, :cond_6b

    const/4 p0, 0x0

    goto :goto_6f

    :cond_6b
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    :goto_6f
    new-instance v1, Lcom/google/android/gms/internal/ads/_D;

    and-int/lit8 v0, v0, 0x3

    add-int/2addr v0, v6

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/_D;-><init>(Ljava/util/List;I)V
    :try_end_77
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_77} :catch_78

    return-object v1

    :catch_78
    move-exception p0

    new-instance v0, Lcom/google/android/gms/internal/ads/My;

    const-string v1, "Error parsing HEVC config"

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_82

    :goto_81
    throw v0

    :goto_82
    goto :goto_81
.end method
