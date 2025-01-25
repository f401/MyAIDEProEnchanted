.class Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;
.super Ljava/io/Reader;
.source "FixCrLfFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/filters/FixCrLfFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimpleFilterReader"
.end annotation


# static fields
.field private static final PREEMPT_BUFFER_LENGTH:I = 0x10


# instance fields
.field private in:Ljava/io/Reader;

.field private preempt:[I

.field private preemptIndex:I


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .registers 3

    .line 408
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 404
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->preempt:[I

    .line 406
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->preemptIndex:I

    .line 409
    iput-object p1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->in:Ljava/io/Reader;

    .line 410
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 450
    iget-object v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 451
    return-void
.end method

.method public editsBlocked()Z
    .registers 3

    .line 442
    iget-object v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->in:Ljava/io/Reader;

    instance-of v1, v0, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;

    if-eqz v1, :cond_10

    check-cast v0, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;

    invoke-virtual {v0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->editsBlocked()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public mark(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 466
    iget-object v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->in:Ljava/io/Reader;

    invoke-virtual {v0, p1}, Ljava/io/Reader;->mark(I)V

    .line 467
    return-void
.end method

.method public markSupported()Z
    .registers 2

    .line 458
    iget-object v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->markSupported()Z

    move-result v0

    return v0
.end method

.method public push(C)V
    .registers 2

    .line 413
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->push(I)V

    .line 414
    return-void
.end method

.method public push(I)V
    .registers 6

    const/4 v3, 0x0

    .line 418
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->preempt:[I

    iget v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->preemptIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->preemptIndex:I
    :try_end_9
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_9} :catch_c

    aput p1, v0, v1

    .line 425
    :goto_b
    return-void

    .line 419
    :catch_c
    move-exception v0

    .line 420
    iget-object v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->preempt:[I

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    .line 421
    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 422
    iput-object v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->preempt:[I

    .line 423
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->push(I)V

    goto :goto_b
.end method

.method public push([C)V
    .registers 4

    .line 434
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->push([CII)V

    .line 435
    return-void
.end method

.method public push([CII)V
    .registers 6

    .line 428
    add-int v0, p2, p3

    add-int/lit8 v0, v0, -0x1

    :goto_4
    if-lt v0, p2, :cond_e

    .line 429
    aget-char v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->push(C)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 431
    :cond_e
    return-void
.end method

.method public read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 446
    iget v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->preemptIndex:I

    if-lez v0, :cond_d

    iget-object v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->preempt:[I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->preemptIndex:I

    aget v0, v1, v0

    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    goto :goto_c
.end method

.method public read([C)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 474
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->read([CII)I

    move-result v0

    return v0
.end method

.method public read([CII)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v0, -0x1

    .line 478
    move v2, v3

    move v1, v3

    .line 482
    :goto_4
    if-lez p3, :cond_16

    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->read()I

    move-result v2

    if-eq v2, v0, :cond_16

    .line 483
    int-to-char v3, v2

    aput-char v3, p1, p2

    .line 484
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_4

    .line 487
    :cond_16
    if-nez v1, :cond_1b

    if-ne v2, v0, :cond_1b

    :goto_1a
    return v0

    :cond_1b
    move v0, v1

    goto :goto_1a
.end method

.method public ready()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 462
    iget-object v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->ready()Z

    move-result v0

    return v0
.end method

.method public reset()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 454
    iget-object v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->reset()V

    .line 455
    return-void
.end method

.method public skip(J)J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 470
    iget-object v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->in:Ljava/io/Reader;

    invoke-virtual {v0, p1, p2}, Ljava/io/Reader;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method
