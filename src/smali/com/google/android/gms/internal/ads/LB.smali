.class public final Lcom/google/android/gms/internal/ads/LB;
.super Ljava/lang/Object;


# instance fields
.field private final DW:[Lcom/google/android/gms/internal/ads/zzfs;

.field private FH:I

.field public final j6:I


# direct methods
.method public varargs constructor <init>([Lcom/google/android/gms/internal/ads/zzfs;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/LB;->DW:[Lcom/google/android/gms/internal/ads/zzfs;

    array-length v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/LB;->j6:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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

    const-class v1, Lcom/google/android/gms/internal/ads/LB;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/ads/LB;

    iget v1, p0, Lcom/google/android/gms/internal/ads/LB;->j6:I

    iget v2, p1, Lcom/google/android/gms/internal/ads/LB;->j6:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/LB;->DW:[Lcom/google/android/gms/internal/ads/zzfs;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/LB;->DW:[Lcom/google/android/gms/internal/ads/zzfs;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0
.end method

.method public final hashCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/LB;->FH:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/LB;->DW:[Lcom/google/android/gms/internal/ads/zzfs;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    iput v0, p0, Lcom/google/android/gms/internal/ads/LB;->FH:I

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/LB;->FH:I

    return v0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/zzfs;)I
    .registers 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/LB;->DW:[Lcom/google/android/gms/internal/ads/zzfs;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    if-ne p1, v1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public final j6(I)Lcom/google/android/gms/internal/ads/zzfs;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/LB;->DW:[Lcom/google/android/gms/internal/ads/zzfs;

    aget-object v0, v0, p1

    return-object v0
.end method
