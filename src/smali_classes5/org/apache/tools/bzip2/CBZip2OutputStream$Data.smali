.class final Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;
.super Ljava/lang/Object;
.source "CBZip2OutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/bzip2/CBZip2OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Data"
.end annotation


# instance fields
.field final block:[B

.field final fmap:[I

.field final generateMTFValues_yy:[B

.field final heap:[I

.field final inUse:[Z

.field final mtfFreq:[I

.field origPtr:I

.field final parent:[I

.field final selector:[B

.field final selectorMtf:[B

.field final sendMTFValues2_pos:[B

.field final sendMTFValues_code:[[I

.field final sendMTFValues_cost:[S

.field final sendMTFValues_fave:[I

.field final sendMTFValues_len:[[B

.field final sendMTFValues_rfreq:[[I

.field final sentMTFValues4_inUse16:[Z

.field final sfmap:[C

.field final unseqToSeq:[B

.field final weight:[I


# direct methods
.method constructor <init>(I)V
    .registers 8

    const/16 v5, 0x4652

    const/16 v4, 0x204

    const/16 v1, 0x100

    const/16 v3, 0x102

    const/4 v2, 0x6

    .line 1566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1520
    new-array v0, v1, [Z

    iput-object v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->inUse:[Z

    .line 1521
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->unseqToSeq:[B

    .line 1522
    new-array v0, v3, [I

    iput-object v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->mtfFreq:[I

    .line 1523
    new-array v0, v5, [B

    iput-object v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->selector:[B

    .line 1524
    new-array v0, v5, [B

    iput-object v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->selectorMtf:[B

    .line 1526
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->generateMTFValues_yy:[B

    .line 1527
    filled-new-array {v2, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->sendMTFValues_len:[[B

    .line 1529
    filled-new-array {v2, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->sendMTFValues_rfreq:[[I

    .line 1531
    new-array v0, v2, [I

    iput-object v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->sendMTFValues_fave:[I

    .line 1532
    new-array v0, v2, [S

    iput-object v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->sendMTFValues_cost:[S

    .line 1533
    filled-new-array {v2, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->sendMTFValues_code:[[I

    .line 1535
    new-array v0, v2, [B

    iput-object v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->sendMTFValues2_pos:[B

    .line 1536
    const/16 v0, 0x10

    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->sentMTFValues4_inUse16:[Z

    .line 1538
    const/16 v0, 0x104

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->heap:[I

    .line 1539
    new-array v0, v4, [I

    iput-object v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->weight:[I

    .line 1540
    new-array v0, v4, [I

    iput-object v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->parent:[I

    .line 1568
    const v0, 0x186a0

    mul-int/2addr v0, p1

    .line 1569
    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v1, v1, 0x14

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->block:[B

    .line 1570
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->fmap:[I

    .line 1571
    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/apache/tools/bzip2/CBZip2OutputStream$Data;->sfmap:[C

    .line 1572
    return-void
.end method
