.class public Lorg/ahocorasick/interval/Interval;
.super Ljava/lang/Object;
.source "Interval.java"

# interfaces
.implements Lorg/ahocorasick/interval/Intervalable;


# instance fields
.field private end:I

.field private start:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lorg/ahocorasick/interval/Interval;->start:I

    .line 10
    iput p2, p0, Lorg/ahocorasick/interval/Interval;->end:I

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .registers 4

    .line 51
    instance-of v0, p1, Lorg/ahocorasick/interval/Intervalable;

    if-nez v0, :cond_6

    const/4 p1, -0x1

    return p1

    .line 54
    :cond_6
    check-cast p1, Lorg/ahocorasick/interval/Intervalable;

    .line 55
    iget v0, p0, Lorg/ahocorasick/interval/Interval;->start:I

    invoke-interface {p1}, Lorg/ahocorasick/interval/Intervalable;->getStart()I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_12

    goto :goto_19

    .line 56
    :cond_12
    iget v0, p0, Lorg/ahocorasick/interval/Interval;->end:I

    invoke-interface {p1}, Lorg/ahocorasick/interval/Intervalable;->getEnd()I

    move-result p1

    sub-int/2addr v0, p1

    :goto_19
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 36
    instance-of v0, p1, Lorg/ahocorasick/interval/Intervalable;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 39
    :cond_6
    check-cast p1, Lorg/ahocorasick/interval/Intervalable;

    .line 40
    iget v0, p0, Lorg/ahocorasick/interval/Interval;->start:I

    invoke-interface {p1}, Lorg/ahocorasick/interval/Intervalable;->getStart()I

    move-result v2

    if-ne v0, v2, :cond_19

    iget v0, p0, Lorg/ahocorasick/interval/Interval;->end:I

    .line 41
    invoke-interface {p1}, Lorg/ahocorasick/interval/Intervalable;->getEnd()I

    move-result p1

    if-ne v0, p1, :cond_19

    const/4 v1, 0x1

    :cond_19
    return v1
.end method

.method public getEnd()I
    .registers 2

    .line 18
    iget v0, p0, Lorg/ahocorasick/interval/Interval;->end:I

    return v0
.end method

.method public getStart()I
    .registers 2

    .line 14
    iget v0, p0, Lorg/ahocorasick/interval/Interval;->start:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 46
    iget v0, p0, Lorg/ahocorasick/interval/Interval;->start:I

    rem-int/lit8 v0, v0, 0x64

    iget v1, p0, Lorg/ahocorasick/interval/Interval;->end:I

    rem-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    return v0
.end method

.method public overlapsWith(I)Z
    .registers 3

    .line 31
    iget v0, p0, Lorg/ahocorasick/interval/Interval;->start:I

    if-gt v0, p1, :cond_a

    iget v0, p0, Lorg/ahocorasick/interval/Interval;->end:I

    if-gt p1, v0, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public overlapsWith(Lorg/ahocorasick/interval/Interval;)Z
    .registers 4

    .line 26
    iget v0, p0, Lorg/ahocorasick/interval/Interval;->start:I

    invoke-virtual {p1}, Lorg/ahocorasick/interval/Interval;->getEnd()I

    move-result v1

    if-gt v0, v1, :cond_12

    iget v0, p0, Lorg/ahocorasick/interval/Interval;->end:I

    .line 27
    invoke-virtual {p1}, Lorg/ahocorasick/interval/Interval;->getStart()I

    move-result p1

    if-lt v0, p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method public size()I
    .registers 3

    .line 22
    iget v0, p0, Lorg/ahocorasick/interval/Interval;->end:I

    iget v1, p0, Lorg/ahocorasick/interval/Interval;->start:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/ahocorasick/interval/Interval;->start:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/ahocorasick/interval/Interval;->end:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
