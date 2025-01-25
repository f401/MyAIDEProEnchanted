.class public final Lcom/google/android/gms/internal/ads/tl;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final DW:[D

.field private final FH:[D

.field private final Hw:[I

.field private final j6:[Ljava/lang/String;

.field private v5:I


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/wl;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/wl;->j6(Lcom/google/android/gms/internal/ads/wl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/wl;->DW(Lcom/google/android/gms/internal/ads/wl;)Ljava/util/List;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/tl;->j6:[Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/wl;->j6(Lcom/google/android/gms/internal/ads/wl;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/tl;->j6(Ljava/util/List;)[D

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/tl;->DW:[D

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/wl;->FH(Lcom/google/android/gms/internal/ads/wl;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/tl;->j6(Ljava/util/List;)[D

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tl;->FH:[D

    new-array p1, v0, [I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tl;->Hw:[I

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/tl;->v5:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/wl;Lcom/google/android/gms/internal/ads/ul;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/tl;-><init>(Lcom/google/android/gms/internal/ads/wl;)V

    return-void
.end method

.method private static j6(Ljava/util/List;)[D
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)[D"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [D

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_18

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_18
    return-object v1
.end method


# virtual methods
.method public final j6()Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/vl;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tl;->j6:[Ljava/lang/String;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_9
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/tl;->j6:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_3c

    aget-object v5, v2, v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/tl;->FH:[D

    aget-wide v6, v2, v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/tl;->DW:[D

    aget-wide v8, v2, v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/tl;->Hw:[I

    aget v3, v2, v1

    int-to-double v3, v3

    iget v10, p0, Lcom/google/android/gms/internal/ads/tl;->v5:I

    int-to-double v10, v10

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    new-instance v13, Lcom/google/android/gms/internal/ads/vl;

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    div-double v10, v3, v10

    aget v12, v2, v1

    move-object v4, v13

    invoke-direct/range {v4 .. v12}, Lcom/google/android/gms/internal/ads/vl;-><init>(Ljava/lang/String;DDDI)V

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_3c
    return-object v0
.end method

.method public final j6(D)V
    .registers 9

    iget v0, p0, Lcom/google/android/gms/internal/ads/tl;->v5:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/tl;->v5:I

    const/4 v0, 0x0

    :goto_7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tl;->FH:[D

    array-length v2, v1

    if-ge v0, v2, :cond_29

    aget-wide v2, v1, v0

    cmpg-double v1, v2, p1

    if-gtz v1, :cond_22

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tl;->DW:[D

    aget-wide v4, v1, v0

    cmpg-double v1, p1, v4

    if-gez v1, :cond_22

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tl;->Hw:[I

    aget v4, v1, v0

    add-int/lit8 v4, v4, 0x1

    aput v4, v1, v0

    :cond_22
    cmpg-double v1, p1, v2

    if-ltz v1, :cond_29

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_29
    return-void
.end method
