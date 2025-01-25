.class final Lcom/google/android/gms/internal/ads/QB;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/UB;


# instance fields
.field private final DW:[Lcom/google/android/gms/internal/ads/EB;

.field private final j6:[I


# direct methods
.method public constructor <init>([I[Lcom/google/android/gms/internal/ads/EB;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/QB;->j6:[I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/QB;->DW:[Lcom/google/android/gms/internal/ads/EB;

    return-void
.end method


# virtual methods
.method public final j6(II)Lcom/google/android/gms/internal/ads/Yz;
    .registers 5

    const/4 p1, 0x0

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/QB;->j6:[I

    array-length v1, v0

    if-ge p1, v1, :cond_12

    aget v0, v0, p1

    if-ne p2, v0, :cond_f

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/QB;->DW:[Lcom/google/android/gms/internal/ads/EB;

    aget-object p1, p2, p1

    return-object p1

    :cond_f
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_12
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x24

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unmatched track of type: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "BaseMediaChunkOutput"

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/google/android/gms/internal/ads/Nz;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/Nz;-><init>()V

    return-object p1
.end method

.method public final j6(J)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/QB;->DW:[Lcom/google/android/gms/internal/ads/EB;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_10

    aget-object v3, v0, v2

    if-eqz v3, :cond_d

    invoke-virtual {v3, p1, p2}, Lcom/google/android/gms/internal/ads/EB;->j6(J)V

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_10
    return-void
.end method

.method public final j6()[I
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/QB;->DW:[Lcom/google/android/gms/internal/ads/EB;

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_6
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/QB;->DW:[Lcom/google/android/gms/internal/ads/EB;

    array-length v3, v2

    if-ge v1, v3, :cond_18

    aget-object v2, v2, v1

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/EB;->FH()I

    move-result v2

    aput v2, v0, v1

    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_18
    return-object v0
.end method
