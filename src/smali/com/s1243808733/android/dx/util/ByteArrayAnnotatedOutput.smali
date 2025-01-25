.class public final Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;
.super Ljava/lang/Object;
.source "ByteArrayAnnotatedOutput.java"

# interfaces
.implements Lcom/s1243808733/android/dx/util/AnnotatedOutput;
.implements Lcom/s1243808733/android/dex/util/ByteOutput;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput$Annotation;
    }
.end annotation


# static fields
.field private static final DEFAULT_SIZE:I = 0x3e8


# instance fields
.field private annotationWidth:I

.field private annotations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput$Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private cursor:I

.field private data:[B

.field private hexCols:I

.field private final stretchy:Z

.field private verbose:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 88
    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 97
    new-array p1, p1, [B

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;-><init>([BZ)V

    return-void
.end method

.method public constructor <init>([B)V
    .registers 3

    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;-><init>([BZ)V

    return-void
.end method

.method private constructor <init>([BZ)V
    .registers 3

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_16

    .line 111
    iput-boolean p2, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->stretchy:Z

    .line 112
    iput-object p1, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->data:[B

    .line 113
    const/4 p1, 0x0

    iput p1, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    .line 114
    iput-boolean p1, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->verbose:Z

    .line 115
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->annotations:Ljava/util/ArrayList;

    .line 116
    iput p1, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->annotationWidth:I

    .line 117
    iput p1, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->hexCols:I

    return-void

    .line 108
    :cond_16
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "data == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private ensureCapacity(I)V
    .registers 5

    .line 560
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->data:[B

    array-length v1, v0

    if-ge v1, p1, :cond_13

    .line 561
    mul-int/lit8 p1, p1, 0x2

    add-int/lit16 p1, p1, 0x3e8

    new-array p1, p1, [B

    .line 562
    iget v1, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 563
    iput-object p1, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->data:[B

    :cond_13
    return-void
.end method

.method private static throwBounds()V
    .registers 2

    .line 550
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "attempt to write past the end"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public alignTo(I)V
    .registers 5

    add-int/lit8 v0, p1, -0x1

    if-ltz p1, :cond_29

    and-int/2addr p1, v0

    if-nez p1, :cond_29

    .line 349
    iget p1, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    add-int/2addr p1, v0

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr p1, v0

    .line 351
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->stretchy:Z

    if-eqz v0, :cond_15

    .line 352
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->ensureCapacity(I)V

    goto :goto_1e

    .line 353
    :cond_15
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->data:[B

    array-length v0, v0

    if-le p1, v0, :cond_1e

    .line 354
    invoke-static {}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->throwBounds()V

    return-void

    .line 361
    :cond_1e
    :goto_1e
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->data:[B

    iget v1, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Ljava/util/Arrays;->fill([BIIB)V

    .line 363
    iput p1, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    return-void

    .line 346
    :cond_29
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bogus alignment"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public annotate(ILjava/lang/String;)V
    .registers 6

    .line 392
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->annotations:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    return-void

    .line 396
    :cond_5
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->endAnnotation()V

    .line 398
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->annotations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x0

    goto :goto_20

    .line 399
    :cond_12
    iget-object v1, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->annotations:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput$Annotation;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput$Annotation;->getEnd()I

    move-result v0

    .line 402
    :goto_20
    iget v1, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    if-gt v0, v1, :cond_25

    move v0, v1

    .line 408
    :cond_25
    iget-object v1, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->annotations:Ljava/util/ArrayList;

    new-instance v2, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput$Annotation;

    add-int/2addr p1, v0

    invoke-direct {v2, v0, p1, p2}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput$Annotation;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public annotate(Ljava/lang/String;)V
    .registers 5

    .line 381
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->annotations:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    return-void

    .line 385
    :cond_5
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->endAnnotation()V

    .line 386
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->annotations:Ljava/util/ArrayList;

    new-instance v1, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput$Annotation;

    iget v2, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    invoke-direct {v1, v2, p1}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput$Annotation;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public annotates()Z
    .registers 2

    .line 369
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->annotations:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public assertCursor(I)V
    .registers 4

    .line 156
    iget v0, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    if-ne v0, p1, :cond_5

    return-void

    .line 157
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "expected cursor "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; actual value: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Lcom/s1243808733/android/dex/util/ExceptionWithContext;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/s1243808733/android/dex/util/ExceptionWithContext;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public enableAnnotations(IZ)V
    .registers 6

    .line 442
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->annotations:Ljava/util/ArrayList;

    if-nez v0, :cond_37

    iget v0, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    if-nez v0, :cond_37

    const/16 v0, 0x28

    if-lt p1, v0, :cond_2f

    .line 450
    add-int/lit8 v0, p1, -0x7

    div-int/lit8 v0, v0, 0xf

    add-int/lit8 v0, v0, 0x1

    and-int/lit8 v0, v0, -0x2

    const/4 v1, 0x6

    if-ge v0, v1, :cond_19

    const/4 v0, 0x6

    goto :goto_1f

    :cond_19
    const/16 v1, 0xa

    if-le v0, v1, :cond_1f

    const/16 v0, 0xa

    .line 457
    :cond_1f
    :goto_1f
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x3e8

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->annotations:Ljava/util/ArrayList;

    .line 458
    iput p1, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->annotationWidth:I

    .line 459
    iput v0, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->hexCols:I

    .line 460
    iput-boolean p2, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->verbose:Z

    return-void

    .line 447
    :cond_2f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "annotationWidth < 40"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 443
    :cond_37
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "cannot enable annotations"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public endAnnotation()V
    .registers 3

    .line 414
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->annotations:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    return-void

    .line 418
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1a

    .line 421
    iget-object v1, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->annotations:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput$Annotation;

    iget v1, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput$Annotation;->setEndIfUnset(I)V

    :cond_1a
    return-void
.end method

.method public finishAnnotating()V
    .registers 6

    .line 470
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->endAnnotation()V

    .line 473
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->annotations:Ljava/util/ArrayList;

    if-eqz v0, :cond_32

    .line 474
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_b
    if-lez v0, :cond_32

    .line 476
    iget-object v1, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->annotations:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput$Annotation;

    .line 477
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput$Annotation;->getStart()I

    move-result v3

    iget v4, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    if-le v3, v4, :cond_27

    .line 478
    iget-object v1, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->annotations:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 480
    :cond_27
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput$Annotation;->getEnd()I

    move-result v0

    iget v2, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    if-le v0, v2, :cond_32

    .line 481
    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput$Annotation;->setEnd(I)V

    :cond_32
    return-void
.end method

.method public getAnnotationWidth()I
    .registers 4

    .line 428
    iget v0, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->hexCols:I

    div-int/lit8 v1, v0, 0x2

    .line 430
    iget v2, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->annotationWidth:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x8

    add-int/2addr v0, v1

    sub-int/2addr v2, v0

    return v2
.end method

.method public getArray()[B
    .registers 2

    .line 129
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->data:[B

    return-object v0
.end method

.method public getCursor()I
    .registers 2

    .line 150
    iget v0, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    return v0
.end method

.method public isVerbose()Z
    .registers 2

    .line 375
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->verbose:Z

    return v0
.end method

.method public toByteArray()[B
    .registers 5

    .line 142
    iget v0, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    new-array v1, v0, [B

    .line 143
    iget-object v2, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->data:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public write(Lcom/s1243808733/android/dx/util/ByteArray;)V
    .registers 5

    .line 270
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/util/ByteArray;->size()I

    move-result v0

    .line 271
    iget v1, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    add-int/2addr v0, v1

    .line 274
    iget-boolean v2, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->stretchy:Z

    if-eqz v2, :cond_f

    .line 275
    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->ensureCapacity(I)V

    goto :goto_18

    .line 276
    :cond_f
    iget-object v2, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->data:[B

    array-length v2, v2

    if-le v0, v2, :cond_18

    .line 277
    invoke-static {}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->throwBounds()V

    return-void

    .line 281
    :cond_18
    :goto_18
    iget-object v2, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->data:[B

    invoke-virtual {p1, v2, v1}, Lcom/s1243808733/android/dx/util/ByteArray;->getBytes([BI)V

    .line 282
    iput v0, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    return-void
.end method

.method public write([B)V
    .registers 4

    .line 313
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .registers 8

    .line 288
    iget v0, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    add-int v1, v0, p3

    or-int v2, p2, p3

    or-int/2addr v2, v1

    if-ltz v2, :cond_27

    .line 293
    add-int v2, p2, p3

    array-length v3, p1

    if-gt v2, v3, :cond_27

    .line 299
    iget-boolean v2, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->stretchy:Z

    if-eqz v2, :cond_16

    .line 300
    invoke-direct {p0, v1}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->ensureCapacity(I)V

    goto :goto_1f

    .line 301
    :cond_16
    iget-object v2, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_1f

    .line 302
    invoke-static {}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->throwBounds()V

    return-void

    .line 306
    :cond_1f
    :goto_1f
    iget-object v2, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->data:[B

    invoke-static {p1, p2, v2, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 307
    iput v1, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    return-void

    .line 294
    :cond_27
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "bytes.length "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "..!"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeAnnotationsTo(Ljava/io/Writer;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 496
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->getAnnotationWidth()I

    move-result v0

    .line 497
    iget v1, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->annotationWidth:I

    .line 499
    new-instance v2, Lcom/s1243808733/android/dx/util/TwoColumnOutput;

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    const-string v3, "|"

    invoke-direct {v2, p1, v1, v0, v3}, Lcom/s1243808733/android/dx/util/TwoColumnOutput;-><init>(Ljava/io/Writer;IILjava/lang/String;)V

    .line 500
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/util/TwoColumnOutput;->getLeft()Ljava/io/Writer;

    move-result-object p1

    .line 501
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/util/TwoColumnOutput;->getRight()Ljava/io/Writer;

    move-result-object v0

    .line 504
    iget-object v1, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->annotations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 506
    :goto_20
    iget v4, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    if-ge v7, v4, :cond_5c

    if-ge v3, v1, :cond_5c

    .line 507
    iget-object v4, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->annotations:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput$Annotation;

    .line 508
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput$Annotation;->getStart()I

    move-result v5

    if-ge v7, v5, :cond_39

    .line 516
    const-string v4, ""

    move v11, v5

    move v8, v7

    goto :goto_45

    .line 519
    :cond_39
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput$Annotation;->getEnd()I

    move-result v6

    .line 520
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput$Annotation;->getText()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    move v8, v5

    move v11, v6

    .line 524
    :goto_45
    iget-object v5, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->data:[B

    sub-int v7, v11, v8

    iget v9, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->hexCols:I

    const/4 v10, 0x6

    move v6, v8

    invoke-static/range {v5 .. v10}, Lcom/s1243808733/android/dx/util/Hex;->dump([BIIIII)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 525
    invoke-virtual {v0, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 526
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/util/TwoColumnOutput;->flush()V

    move v7, v11

    goto :goto_20

    :cond_5c
    if-ge v7, v4, :cond_6e

    .line 532
    iget-object v5, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->data:[B

    sub-int v6, v4, v7

    iget v8, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->hexCols:I

    const/4 v9, 0x6

    move-object v4, v5

    move v5, v7

    invoke-static/range {v4 .. v9}, Lcom/s1243808733/android/dx/util/Hex;->dump([BIIIII)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_6e
    :goto_6e
    if-ge v3, v1, :cond_82

    .line 538
    iget-object p1, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->annotations:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput$Annotation;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput$Annotation;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6e

    .line 542
    :cond_82
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/util/TwoColumnOutput;->flush()V

    return-void
.end method

.method public writeByte(I)V
    .registers 5

    .line 165
    iget v0, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    add-int/lit8 v1, v0, 0x1

    .line 168
    iget-boolean v2, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->stretchy:Z

    if-eqz v2, :cond_c

    .line 169
    invoke-direct {p0, v1}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->ensureCapacity(I)V

    goto :goto_15

    .line 170
    :cond_c
    iget-object v2, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_15

    .line 171
    invoke-static {}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->throwBounds()V

    return-void

    .line 175
    :cond_15
    :goto_15
    iget-object v2, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->data:[B

    int-to-byte p1, p1

    aput-byte p1, v2, v0

    .line 176
    iput v1, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    return-void
.end method

.method public writeInt(I)V
    .registers 7

    .line 200
    iget v0, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    add-int/lit8 v1, v0, 0x4

    .line 203
    iget-boolean v2, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->stretchy:Z

    if-eqz v2, :cond_c

    .line 204
    invoke-direct {p0, v1}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->ensureCapacity(I)V

    goto :goto_15

    .line 205
    :cond_c
    iget-object v2, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_15

    .line 206
    invoke-static {}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->throwBounds()V

    return-void

    .line 210
    :cond_15
    :goto_15
    iget-object v2, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->data:[B

    int-to-byte v3, p1

    aput-byte v3, v2, v0

    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    .line 211
    add-int/lit8 v4, v0, 0x1

    aput-byte v3, v2, v4

    shr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    .line 212
    add-int/lit8 v4, v0, 0x2

    aput-byte v3, v2, v4

    shr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    .line 213
    add-int/lit8 v0, v0, 0x3

    aput-byte p1, v2, v0

    .line 214
    iput v1, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    return-void
.end method

.method public writeLong(J)V
    .registers 9

    .line 220
    iget v0, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    add-int/lit8 v1, v0, 0x8

    .line 223
    iget-boolean v2, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->stretchy:Z

    if-eqz v2, :cond_c

    .line 224
    invoke-direct {p0, v1}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->ensureCapacity(I)V

    goto :goto_15

    .line 225
    :cond_c
    iget-object v2, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_15

    .line 226
    invoke-static {}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->throwBounds()V

    return-void

    :cond_15
    :goto_15
    long-to-int v2, p1

    .line 231
    iget-object v3, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->data:[B

    int-to-byte v4, v2

    aput-byte v4, v3, v0

    shr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    .line 232
    add-int/lit8 v5, v0, 0x1

    aput-byte v4, v3, v5

    shr-int/lit8 v4, v2, 0x10

    int-to-byte v4, v4

    .line 233
    add-int/lit8 v5, v0, 0x2

    aput-byte v4, v3, v5

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    .line 234
    add-int/lit8 v4, v0, 0x3

    aput-byte v2, v3, v4

    const/16 v2, 0x20

    shr-long/2addr p1, v2

    long-to-int p2, p1

    int-to-byte p1, p2

    .line 237
    add-int/lit8 v2, v0, 0x4

    aput-byte p1, v3, v2

    shr-int/lit8 p1, p2, 0x8

    int-to-byte p1, p1

    .line 238
    add-int/lit8 v2, v0, 0x5

    aput-byte p1, v3, v2

    shr-int/lit8 p1, p2, 0x10

    int-to-byte p1, p1

    .line 239
    add-int/lit8 v2, v0, 0x6

    aput-byte p1, v3, v2

    shr-int/lit8 p1, p2, 0x18

    int-to-byte p1, p1

    .line 240
    add-int/lit8 v0, v0, 0x7

    aput-byte p1, v3, v0

    .line 242
    iput v1, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    return-void
.end method

.method public writeShort(I)V
    .registers 6

    .line 182
    iget v0, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    add-int/lit8 v1, v0, 0x2

    .line 185
    iget-boolean v2, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->stretchy:Z

    if-eqz v2, :cond_c

    .line 186
    invoke-direct {p0, v1}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->ensureCapacity(I)V

    goto :goto_15

    .line 187
    :cond_c
    iget-object v2, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_15

    .line 188
    invoke-static {}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->throwBounds()V

    return-void

    .line 192
    :cond_15
    :goto_15
    iget-object v2, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->data:[B

    int-to-byte v3, p1

    aput-byte v3, v2, v0

    shr-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    .line 193
    add-int/lit8 v0, v0, 0x1

    aput-byte p1, v2, v0

    .line 194
    iput v1, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    return-void
.end method

.method public writeSleb128(I)I
    .registers 3

    .line 259
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->stretchy:Z

    if-eqz v0, :cond_b

    .line 260
    iget v0, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    add-int/lit8 v0, v0, 0x5

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->ensureCapacity(I)V

    .line 262
    :cond_b
    iget v0, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    .line 263
    invoke-static {p0, p1}, Lcom/s1243808733/android/dex/Leb128;->writeSignedLeb128(Lcom/s1243808733/android/dex/util/ByteOutput;I)V

    .line 264
    iget p1, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public writeUleb128(I)I
    .registers 3

    .line 248
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->stretchy:Z

    if-eqz v0, :cond_b

    .line 249
    iget v0, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    add-int/lit8 v0, v0, 0x5

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->ensureCapacity(I)V

    .line 251
    :cond_b
    iget v0, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    .line 252
    invoke-static {p0, p1}, Lcom/s1243808733/android/dex/Leb128;->writeUnsignedLeb128(Lcom/s1243808733/android/dex/util/ByteOutput;I)V

    .line 253
    iget p1, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public writeZeroes(I)V
    .registers 5

    if-ltz p1, :cond_21

    .line 323
    iget v0, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    add-int/2addr v0, p1

    .line 325
    iget-boolean p1, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->stretchy:Z

    if-eqz p1, :cond_d

    .line 326
    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->ensureCapacity(I)V

    goto :goto_16

    .line 327
    :cond_d
    iget-object p1, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->data:[B

    array-length p1, p1

    if-le v0, p1, :cond_16

    .line 328
    invoke-static {}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->throwBounds()V

    return-void

    .line 335
    :cond_16
    :goto_16
    iget-object p1, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->data:[B

    iget v1, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Ljava/util/Arrays;->fill([BIIB)V

    .line 337
    iput v0, p0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->cursor:I

    return-void

    .line 320
    :cond_21
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "count < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
