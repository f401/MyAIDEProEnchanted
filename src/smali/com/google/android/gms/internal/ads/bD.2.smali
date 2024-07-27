.class public final Lcom/google/android/gms/internal/ads/bD;
.super Ljava/lang/Object;


# instance fields
.field private final DW:[Lcom/google/android/gms/internal/ads/_C;

.field private FH:I

.field public final j6:I


# direct methods
.method public varargs constructor <init>([Lcom/google/android/gms/internal/ads/_C;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bD;->DW:[Lcom/google/android/gms/internal/ads/_C;

    array-length v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/bD;->j6:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    const-class v0, Lcom/google/android/gms/internal/ads/bD;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/ads/bD;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bD;->DW:[Lcom/google/android/gms/internal/ads/_C;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/bD;->DW:[Lcom/google/android/gms/internal/ads/_C;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/bD;->FH:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bD;->DW:[Lcom/google/android/gms/internal/ads/_C;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    iput v0, p0, Lcom/google/android/gms/internal/ads/bD;->FH:I

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/bD;->FH:I

    return v0
.end method

.method public final j6(I)Lcom/google/android/gms/internal/ads/_C;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bD;->DW:[Lcom/google/android/gms/internal/ads/_C;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final j6()[Lcom/google/android/gms/internal/ads/_C;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bD;->DW:[Lcom/google/android/gms/internal/ads/_C;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/_C;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/_C;

    return-object v0
.end method
