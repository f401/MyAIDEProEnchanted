.class final Lorg/apache/commons/lang3/time/FormatCache$ArrayKey;
.super Ljava/lang/Object;
.source "FormatCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/FormatCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ArrayKey"
.end annotation


# instance fields
.field private final hashCode:I

.field private final keys:[Ljava/lang/Object;


# direct methods
.method varargs constructor <init>([Ljava/lang/Object;)V
    .registers 3

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    iput-object p1, p0, Lorg/apache/commons/lang3/time/FormatCache$ArrayKey;->keys:[Ljava/lang/Object;

    .line 237
    invoke-static {p1}, Lorg/apache/commons/lang3/time/FormatCache$ArrayKey;->computeHashCode([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/lang3/time/FormatCache$ArrayKey;->hashCode:I

    .line 238
    return-void
.end method

.method private static computeHashCode([Ljava/lang/Object;)I
    .registers 2

    .line 221
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 224
    add-int/lit8 v0, v0, 0x1f

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    .line 247
    if-ne p0, p1, :cond_1

    .line 248
    const/4 v0, 0x1

    .line 257
    :cond_0
    :goto_0
    return v0

    .line 250
    :cond_1
    if-eqz p1, :cond_0

    .line 253
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 256
    check-cast p1, Lorg/apache/commons/lang3/time/FormatCache$ArrayKey;

    .line 257
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FormatCache$ArrayKey;->keys:[Ljava/lang/Object;

    iget-object v1, p1, Lorg/apache/commons/lang3/time/FormatCache$ArrayKey;->keys:[Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .registers 2

    .line 242
    iget v0, p0, Lorg/apache/commons/lang3/time/FormatCache$ArrayKey;->hashCode:I

    return v0
.end method
