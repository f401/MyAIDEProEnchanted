.class public final Lcom/google/android/gms/internal/ads/Xy;
.super Ljava/lang/Object;


# static fields
.field private static final j6:Lcom/google/android/gms/internal/ads/Xy;


# instance fields
.field private final DW:[I

.field private final FH:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/ads/Xy;

    const/4 v1, 0x2

    filled-new-array {v1}, [I

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/Xy;-><init>([II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/Xy;->j6:Lcom/google/android/gms/internal/ads/Xy;

    return-void
.end method

.method private constructor <init>([II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length p2, p1

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Xy;->DW:[I

    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/ads/Xy;->FH:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/Xy;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/ads/Xy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Xy;->DW:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/Xy;->DW:[I

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget v1, p0, Lcom/google/android/gms/internal/ads/Xy;->FH:I

    iget p1, p1, Lcom/google/android/gms/internal/ads/Xy;->FH:I

    if-ne v1, p1, :cond_1d

    return v0

    :cond_1d
    return v2
.end method

.method public final hashCode()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/Xy;->FH:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Xy;->DW:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

.method public final j6(I)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Xy;->DW:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p1

    if-ltz p1, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    const/4 p1, 0x0

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    iget v0, p0, Lcom/google/android/gms/internal/ads/Xy;->FH:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Xy;->DW:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x43

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "AudioCapabilities[maxChannelCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", supportedEncodings="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
