.class public final Lcom/google/android/gms/internal/ads/bD;
.super Ljava/lang/Object;


# instance fields
.field private final DW:[Lcom/google/android/gms/internal/ads/_C;

.field private FH:I

.field public final j6:I


# direct methods
.method public varargs constructor <init>([Lcom/google/android/gms/internal/ads/_C;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bD;->DW:[Lcom/google/android/gms/internal/ads/_C;

    array-length p1, p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/bD;->j6:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    if-eqz p1, :cond_1a

    const-class v0, Lcom/google/android/gms/internal/ads/bD;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_f

    goto :goto_1a

    :cond_f
    check-cast p1, Lcom/google/android/gms/internal/ads/bD;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bD;->DW:[Lcom/google/android/gms/internal/ads/_C;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/bD;->DW:[Lcom/google/android/gms/internal/ads/_C;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1a
    :goto_1a
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/bD;->FH:I

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bD;->DW:[Lcom/google/android/gms/internal/ads/_C;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    iput v0, p0, Lcom/google/android/gms/internal/ads/bD;->FH:I

    :cond_e
    iget v0, p0, Lcom/google/android/gms/internal/ads/bD;->FH:I

    return v0
.end method

.method public final j6(I)Lcom/google/android/gms/internal/ads/_C;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bD;->DW:[Lcom/google/android/gms/internal/ads/_C;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final j6()[Lcom/google/android/gms/internal/ads/_C;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bD;->DW:[Lcom/google/android/gms/internal/ads/_C;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/_C;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/_C;

    return-object v0
.end method
