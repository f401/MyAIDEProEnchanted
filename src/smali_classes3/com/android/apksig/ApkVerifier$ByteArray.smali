.class Lcom/android/apksig/ApkVerifier$ByteArray;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/ApkVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ByteArray"
.end annotation


# instance fields
.field private final mArray:[B

.field private final mHashCode:I


# direct methods
.method private constructor <init>([B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/apksig/ApkVerifier$ByteArray;->mArray:[B

    invoke-static {p1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iput v0, p0, Lcom/android/apksig/ApkVerifier$ByteArray;->mHashCode:I

    return-void
.end method

.method synthetic constructor <init>([BLcom/android/apksig/ApkVerifier$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/apksig/ApkVerifier$ByteArray;-><init>([B)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    instance-of v0, p1, Lcom/android/apksig/ApkVerifier$ByteArray;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/android/apksig/ApkVerifier$ByteArray;

    invoke-virtual {p0}, Lcom/android/apksig/ApkVerifier$ByteArray;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/apksig/ApkVerifier$ByteArray;->hashCode()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$ByteArray;->mArray:[B

    iget-object v1, p1, Lcom/android/apksig/ApkVerifier$ByteArray;->mArray:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lcom/android/apksig/ApkVerifier$ByteArray;->mHashCode:I

    return v0
.end method
