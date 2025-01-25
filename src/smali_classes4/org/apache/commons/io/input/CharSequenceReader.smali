.class public Lorg/apache/commons/io/input/CharSequenceReader;
.super Ljava/io/Reader;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x33aef9076e3a9d04L


# instance fields
.field private final charSequence:Ljava/lang/CharSequence;

.field private idx:I

.field private mark:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .registers 2

    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    if-eqz p1, :cond_8

    :goto_5
    iput-object p1, p0, Lorg/apache/commons/io/input/CharSequenceReader;->charSequence:Ljava/lang/CharSequence;

    return-void

    :cond_8
    const-string p1, ""

    goto :goto_5
.end method


# virtual methods
.method public close()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    iput v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->mark:I

    return-void
.end method

.method public mark(I)V
    .registers 3

    iget v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    iput v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->mark:I

    return-void
.end method

.method public markSupported()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .registers 4

    iget v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    iget-object v1, p0, Lorg/apache/commons/io/input/CharSequenceReader;->charSequence:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lt v0, v1, :cond_c

    const/4 v0, -0x1

    :goto_b
    return v0

    :cond_c
    iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->charSequence:Ljava/lang/CharSequence;

    iget v1, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    goto :goto_b
.end method

.method public read([CII)I
    .registers 9

    const/4 v3, 0x0

    const/4 v0, -0x1

    iget v1, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    iget-object v2, p0, Lorg/apache/commons/io/input/CharSequenceReader;->charSequence:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt v1, v2, :cond_d

    :goto_c
    return v0

    :cond_d
    if-nez p1, :cond_17

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Character array is missing"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    if-ltz p3, :cond_20

    if-ltz p2, :cond_20

    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_4e

    :cond_20
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Array Size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4e
    move v2, v3

    move v1, v3

    :goto_50
    if-ge v2, p3, :cond_65

    invoke-virtual {p0}, Lorg/apache/commons/io/input/CharSequenceReader;->read()I

    move-result v3

    if-ne v3, v0, :cond_5a

    move v0, v1

    goto :goto_c

    :cond_5a
    add-int v4, p2, v2

    int-to-char v3, v3

    int-to-char v3, v3

    aput-char v3, p1, v4

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_50

    :cond_65
    move v0, v1

    goto :goto_c
.end method

.method public reset()V
    .registers 2

    iget v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->mark:I

    iput v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    return-void
.end method

.method public skip(J)J
    .registers 8

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number of characters to skip is less than zero: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    iget v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    iget-object v1, p0, Lorg/apache/commons/io/input/CharSequenceReader;->charSequence:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lt v0, v1, :cond_2c

    const-wide/16 v0, -0x1

    :goto_2b
    return-wide v0

    :cond_2c
    iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->charSequence:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    int-to-long v0, v0

    iget v2, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    int-to-long v2, v2

    add-long/2addr v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    iget v1, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    iput v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    goto :goto_2b
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->charSequence:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
