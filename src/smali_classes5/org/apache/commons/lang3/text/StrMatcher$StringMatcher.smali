.class final Lorg/apache/commons/lang3/text/StrMatcher$StringMatcher;
.super Lorg/apache/commons/lang3/text/StrMatcher;
.source "StrMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/text/StrMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StringMatcher"
.end annotation


# instance fields
.field private final chars:[C


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 351
    invoke-direct {p0}, Lorg/apache/commons/lang3/text/StrMatcher;-><init>()V

    .line 352
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrMatcher$StringMatcher;->chars:[C

    .line 353
    return-void
.end method


# virtual methods
.method public isMatch([CIII)I
    .registers 10

    const/4 v1, 0x0

    .line 366
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrMatcher$StringMatcher;->chars:[C

    array-length v2, v0

    .line 367
    add-int v0, p2, v2

    if-le v0, p4, :cond_9

    .line 375
    :cond_8
    :goto_8
    return v1

    :cond_9
    move v0, v1

    .line 370
    :goto_a
    iget-object v3, p0, Lorg/apache/commons/lang3/text/StrMatcher$StringMatcher;->chars:[C

    array-length v4, v3

    if-ge v0, v4, :cond_1a

    .line 371
    aget-char v3, v3, v0

    aget-char v4, p1, p2

    if-ne v3, v4, :cond_8

    .line 370
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_a

    :cond_1a
    move v1, v2

    .line 375
    goto :goto_8
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrMatcher$StringMatcher;->chars:[C

    invoke-static {v1}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
