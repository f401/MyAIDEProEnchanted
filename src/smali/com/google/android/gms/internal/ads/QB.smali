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
    .registers 6

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/QB;->j6:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget v1, v1, v0

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/QB;->DW:[Lcom/google/android/gms/internal/ads/EB;

    aget-object v0, v1, v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x24

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unmatched track of type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "BaseMediaChunkOutput"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/google/android/gms/internal/ads/Nz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Nz;-><init>()V

    goto :goto_1
.end method

.method public final j6(J)V
    .registers 8

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/QB;->DW:[Lcom/google/android/gms/internal/ads/EB;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    if-eqz v3, :cond_0

    invoke-virtual {v3, p1, p2}, Lcom/google/android/gms/internal/ads/EB;->j6(J)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final j6()[I
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/QB;->DW:[Lcom/google/android/gms/internal/ads/EB;

    array-length v0, v0

    new-array v1, v0, [I

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/QB;->DW:[Lcom/google/android/gms/internal/ads/EB;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-object v3, v2, v0

    if-eqz v3, :cond_0

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/EB;->FH()I

    move-result v2

    aput v2, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method
