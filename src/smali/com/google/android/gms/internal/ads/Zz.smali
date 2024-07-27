.class public final Lcom/google/android/gms/internal/ads/Zz;
.super Ljava/lang/Object;


# instance fields
.field public final DW:[B

.field public final j6:I


# direct methods
.method public constructor <init>(I[B)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/Zz;->j6:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Zz;->DW:[B

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    const-class v1, Lcom/google/android/gms/internal/ads/Zz;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/ads/Zz;

    iget v1, p0, Lcom/google/android/gms/internal/ads/Zz;->j6:I

    iget v2, p1, Lcom/google/android/gms/internal/ads/Zz;->j6:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Zz;->DW:[B

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/Zz;->DW:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0
.end method

.method public final hashCode()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/Zz;->j6:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Zz;->DW:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
