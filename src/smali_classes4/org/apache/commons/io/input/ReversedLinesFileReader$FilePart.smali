.class Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/input/ReversedLinesFileReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilePart"
.end annotation


# instance fields
.field private currentLastBytePos:I

.field private final data:[B

.field private leftOver:[B

.field private final no:J

.field final this$0:Lorg/apache/commons/io/input/ReversedLinesFileReader;


# direct methods
.method private constructor <init>(Lorg/apache/commons/io/input/ReversedLinesFileReader;JI[B)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iput-object p1, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->this$0:Lorg/apache/commons/io/input/ReversedLinesFileReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->no:J

    if-eqz p5, :cond_3b

    array-length v0, p5

    :goto_b
    add-int/2addr v0, p4

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->data:[B

    invoke-static {p1}, Lorg/apache/commons/io/input/ReversedLinesFileReader;->access$300(Lorg/apache/commons/io/input/ReversedLinesFileReader;)I

    move-result v0

    int-to-long v2, v0

    const-wide/16 v4, 0x0

    cmp-long v0, p2, v4

    if-lez v0, :cond_3d

    invoke-static {p1}, Lorg/apache/commons/io/input/ReversedLinesFileReader;->access$400(Lorg/apache/commons/io/input/ReversedLinesFileReader;)Ljava/io/RandomAccessFile;

    move-result-object v0

    const-wide/16 v4, 0x1

    sub-long v4, p2, v4

    mul-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-static {p1}, Lorg/apache/commons/io/input/ReversedLinesFileReader;->access$400(Lorg/apache/commons/io/input/ReversedLinesFileReader;)Ljava/io/RandomAccessFile;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->data:[B

    invoke-virtual {v0, v2, v1, p4}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    if-eq v0, p4, :cond_3d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Count of requested bytes and actually read bytes don\'t match"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3b
    move v0, v1

    goto :goto_b

    :cond_3d
    if-eqz p5, :cond_45

    iget-object v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->data:[B

    array-length v2, p5

    invoke-static {p5, v1, v0, p4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_45
    iget-object v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->data:[B

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->currentLastBytePos:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->leftOver:[B

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/io/input/ReversedLinesFileReader;JI[BLorg/apache/commons/io/input/ReversedLinesFileReader$1;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;-><init>(Lorg/apache/commons/io/input/ReversedLinesFileReader;JI[B)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->readLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;)Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->rollOver()Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;

    move-result-object v0

    return-object v0
.end method

.method private createLeftOver()V
    .registers 5

    const/4 v3, 0x0

    iget v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->currentLastBytePos:I

    add-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_16

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->leftOver:[B

    iget-object v1, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->data:[B

    iget-object v2, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->leftOver:[B

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_12
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->currentLastBytePos:I

    return-void

    :cond_16
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->leftOver:[B

    goto :goto_12
.end method

.method private getNewLineMatchByteCount([BI)I
    .registers 13

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->this$0:Lorg/apache/commons/io/input/ReversedLinesFileReader;

    invoke-static {v0}, Lorg/apache/commons/io/input/ReversedLinesFileReader;->access$800(Lorg/apache/commons/io/input/ReversedLinesFileReader;)[[B

    move-result-object v6

    array-length v7, v6

    move v5, v2

    :goto_a
    if-ge v5, v7, :cond_2e

    aget-object v8, v6, v5

    array-length v0, v8

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    move v4, v1

    :goto_13
    if-ltz v3, :cond_2b

    add-int v0, p2, v3

    array-length v9, v8

    add-int/lit8 v9, v9, -0x1

    sub-int/2addr v0, v9

    if-ltz v0, :cond_29

    aget-byte v0, p1, v0

    aget-byte v9, v8, v3

    if-ne v0, v9, :cond_29

    move v0, v1

    :goto_24
    add-int/lit8 v3, v3, -0x1

    and-int/2addr v0, v4

    move v4, v0

    goto :goto_13

    :cond_29
    move v0, v2

    goto :goto_24

    :cond_2b
    if-eqz v4, :cond_2f

    array-length v2, v8

    :cond_2e
    return v2

    :cond_2f
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_a
.end method

.method private readLine()Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-wide v4, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->no:J

    const-wide/16 v6, 0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_34

    const/4 v0, 0x1

    :goto_b
    iget v3, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->currentLastBytePos:I

    :cond_d
    const/4 v4, -0x1

    if-le v3, v4, :cond_86

    if-nez v0, :cond_36

    iget-object v4, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->this$0:Lorg/apache/commons/io/input/ReversedLinesFileReader;

    invoke-static {v4}, Lorg/apache/commons/io/input/ReversedLinesFileReader;->access$600(Lorg/apache/commons/io/input/ReversedLinesFileReader;)I

    move-result v4

    if-ge v3, v4, :cond_36

    invoke-direct {p0}, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->createLeftOver()V

    move-object v1, v2

    :goto_1e
    if-eqz v0, :cond_84

    iget-object v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->leftOver:[B

    if-eqz v0, :cond_84

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->leftOver:[B

    iget-object v3, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->this$0:Lorg/apache/commons/io/input/ReversedLinesFileReader;

    invoke-static {v3}, Lorg/apache/commons/io/input/ReversedLinesFileReader;->access$500(Lorg/apache/commons/io/input/ReversedLinesFileReader;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v2, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->leftOver:[B

    :goto_33
    return-object v0

    :cond_34
    move v0, v1

    goto :goto_b

    :cond_36
    iget-object v4, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->data:[B

    invoke-direct {p0, v4, v3}, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->getNewLineMatchByteCount([BI)I

    move-result v4

    if-lez v4, :cond_76

    add-int/lit8 v5, v3, 0x1

    iget v6, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->currentLastBytePos:I

    sub-int/2addr v6, v5

    add-int/lit8 v6, v6, 0x1

    if-gez v6, :cond_60

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected negative line length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_60
    new-array v7, v6, [B

    iget-object v8, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->data:[B

    invoke-static {v8, v5, v7, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Ljava/lang/String;

    iget-object v5, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->this$0:Lorg/apache/commons/io/input/ReversedLinesFileReader;

    invoke-static {v5}, Lorg/apache/commons/io/input/ReversedLinesFileReader;->access$500(Lorg/apache/commons/io/input/ReversedLinesFileReader;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v1, v7, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    sub-int/2addr v3, v4

    iput v3, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->currentLastBytePos:I

    goto :goto_1e

    :cond_76
    iget-object v4, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->this$0:Lorg/apache/commons/io/input/ReversedLinesFileReader;

    invoke-static {v4}, Lorg/apache/commons/io/input/ReversedLinesFileReader;->access$700(Lorg/apache/commons/io/input/ReversedLinesFileReader;)I

    move-result v4

    sub-int/2addr v3, v4

    if-gez v3, :cond_d

    invoke-direct {p0}, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->createLeftOver()V

    move-object v1, v2

    goto :goto_1e

    :cond_84
    move-object v0, v1

    goto :goto_33

    :cond_86
    move-object v1, v2

    goto :goto_1e
.end method

.method private rollOver()Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v4, 0x1

    iget v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->currentLastBytePos:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_22

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current currentLastCharPos unexpectedly positive... last readLine() should have returned something! currentLastCharPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->currentLastBytePos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    iget-wide v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->no:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_3b

    new-instance v0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;

    iget-object v1, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->this$0:Lorg/apache/commons/io/input/ReversedLinesFileReader;

    iget-wide v2, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->no:J

    sub-long/2addr v2, v4

    iget-object v4, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->this$0:Lorg/apache/commons/io/input/ReversedLinesFileReader;

    invoke-static {v4}, Lorg/apache/commons/io/input/ReversedLinesFileReader;->access$300(Lorg/apache/commons/io/input/ReversedLinesFileReader;)I

    move-result v4

    iget-object v5, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->leftOver:[B

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;-><init>(Lorg/apache/commons/io/input/ReversedLinesFileReader;JI[B)V

    :goto_3a
    return-object v0

    :cond_3b
    iget-object v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->leftOver:[B

    if-eqz v0, :cond_65

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected leftover of the last block: leftOverOfThisFilePart="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->leftOver:[B

    iget-object v4, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->this$0:Lorg/apache/commons/io/input/ReversedLinesFileReader;

    invoke-static {v4}, Lorg/apache/commons/io/input/ReversedLinesFileReader;->access$500(Lorg/apache/commons/io/input/ReversedLinesFileReader;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_65
    const/4 v0, 0x0

    goto :goto_3a
.end method
