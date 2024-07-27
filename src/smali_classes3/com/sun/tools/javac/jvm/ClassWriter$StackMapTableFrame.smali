.class abstract Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame;
.super Ljava/lang/Object;
.source "ClassWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/jvm/ClassWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "StackMapTableFrame"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame$AppendFrame;,
        Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame$ChopFrame;,
        Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame$FullFrame;,
        Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame$SameFrame;,
        Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame$SameLocals1StackItemFrame;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static compare([Lcom/sun/tools/javac/code/Type;[Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Types;)I
    .registers 9

    const v1, 0x7fffffff

    .line 1507
    array-length v0, p0

    array-length v2, p1

    sub-int v2, v0, v2

    .line 1508
    const/4 v0, 0x4

    if-gt v2, v0, :cond_0

    const/4 v0, -0x4

    if-ge v2, v0, :cond_1

    :cond_0
    move v0, v1

    .line 1517
    :goto_0
    return v0

    .line 1511
    :cond_1
    if-lez v2, :cond_2

    array-length v0, p1

    .line 1512
    :goto_1
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_4

    .line 1513
    aget-object v4, p0, v3

    aget-object v5, p1, v3

    invoke-static {v4, v5, p2}, Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame;->isSameType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Types;)Z

    move-result v4

    if-nez v4, :cond_3

    move v0, v1

    .line 1514
    goto :goto_0

    .line 1511
    :cond_2
    array-length v0, p0

    goto :goto_1

    .line 1512
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    move v0, v2

    .line 1517
    goto :goto_0
.end method

.method static getInstance(Lcom/sun/tools/javac/jvm/Code$StackMapFrame;I[Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame;
    .registers 11

    const/4 v1, 0x0

    .line 1444
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Code$StackMapFrame;->locals:[Lcom/sun/tools/javac/code/Type;

    .line 1445
    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Code$StackMapFrame;->stack:[Lcom/sun/tools/javac/code/Type;

    .line 1446
    iget v0, p0, Lcom/sun/tools/javac/jvm/Code$StackMapFrame;->pc:I

    sub-int/2addr v0, p1

    add-int/lit8 v4, v0, -0x1

    .line 1447
    array-length v0, v3

    const/4 v5, 0x1

    if-ne v0, v5, :cond_0

    .line 1448
    array-length v0, v2

    array-length v5, p2

    if-ne v0, v5, :cond_4

    .line 1449
    invoke-static {p2, v2, p3}, Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame;->compare([Lcom/sun/tools/javac/code/Type;[Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Types;)I

    move-result v0

    if-nez v0, :cond_4

    .line 1450
    new-instance v0, Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame$SameLocals1StackItemFrame;

    aget-object v1, v3, v1

    invoke-direct {v0, v4, v1}, Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame$SameLocals1StackItemFrame;-><init>(ILcom/sun/tools/javac/code/Type;)V

    .line 1472
    :goto_0
    return-object v0

    .line 1452
    :cond_0
    array-length v0, v3

    if-nez v0, :cond_4

    .line 1453
    invoke-static {p2, v2, p3}, Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame;->compare([Lcom/sun/tools/javac/code/Type;[Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Types;)I

    move-result v5

    .line 1454
    if-nez v5, :cond_1

    .line 1455
    new-instance v0, Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame$SameFrame;

    invoke-direct {v0, v4}, Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame$SameFrame;-><init>(I)V

    goto :goto_0

    .line 1456
    :cond_1
    const/4 v0, -0x4

    if-ge v0, v5, :cond_3

    if-gez v5, :cond_3

    .line 1458
    neg-int v0, v5

    new-array v3, v0, [Lcom/sun/tools/javac/code/Type;

    .line 1459
    array-length v0, p2

    :goto_1
    array-length v6, v2

    if-ge v0, v6, :cond_2

    .line 1460
    aget-object v6, v2, v0

    aput-object v6, v3, v1

    .line 1459
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1462
    :cond_2
    new-instance v0, Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame$AppendFrame;

    rsub-int v1, v5, 0xfb

    invoke-direct {v0, v1, v4, v3}, Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame$AppendFrame;-><init>(II[Lcom/sun/tools/javac/code/Type;)V

    goto :goto_0

    .line 1465
    :cond_3
    if-lez v5, :cond_4

    const/4 v0, 0x4

    if-ge v5, v0, :cond_4

    .line 1467
    new-instance v0, Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame$ChopFrame;

    rsub-int v1, v5, 0xfb

    invoke-direct {v0, v1, v4}, Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame$ChopFrame;-><init>(II)V

    goto :goto_0

    .line 1472
    :cond_4
    new-instance v0, Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame$FullFrame;

    invoke-direct {v0, v4, v2, v3}, Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame$FullFrame;-><init>(I[Lcom/sun/tools/javac/code/Type;[Lcom/sun/tools/javac/code/Type;)V

    goto :goto_0
.end method

.method static isInt(Lcom/sun/tools/javac/code/Type;)Z
    .registers 3

    .line 1476
    iget v0, p0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isSameType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Types;)Z
    .registers 8

    const/16 v4, 0x17

    const/16 v3, 0x16

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1480
    if-nez p0, :cond_2

    .line 1481
    if-nez p1, :cond_1

    .line 1503
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1481
    goto :goto_0

    .line 1483
    :cond_2
    if-nez p1, :cond_3

    move v0, v1

    .line 1484
    goto :goto_0

    .line 1487
    :cond_3
    invoke-static {p0}, Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame;->isInt(Lcom/sun/tools/javac/code/Type;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {p1}, Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame;->isInt(Lcom/sun/tools/javac/code/Type;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1491
    :cond_4
    iget v2, p0, Lcom/sun/tools/javac/code/Type;->tag:I

    if-ne v2, v3, :cond_5

    .line 1492
    iget v2, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 1493
    :cond_5
    iget v2, p0, Lcom/sun/tools/javac/code/Type;->tag:I

    if-ne v2, v4, :cond_7

    .line 1494
    iget v2, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    if-ne v2, v4, :cond_6

    .line 1495
    check-cast p0, Lcom/sun/tools/javac/jvm/UninitializedType;

    iget v2, p0, Lcom/sun/tools/javac/jvm/UninitializedType;->offset:I

    check-cast p1, Lcom/sun/tools/javac/jvm/UninitializedType;

    iget v3, p1, Lcom/sun/tools/javac/jvm/UninitializedType;->offset:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v1

    .line 1497
    goto :goto_0

    .line 1499
    :cond_7
    iget v0, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    if-eq v0, v3, :cond_8

    iget v0, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    if-ne v0, v4, :cond_9

    :cond_8
    move v0, v1

    .line 1500
    goto :goto_0

    .line 1503
    :cond_9
    invoke-virtual {p2, p0, p1}, Lcom/sun/tools/javac/code/Types;->isSameType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method abstract getFrameType()I
.end method

.method write(Lcom/sun/tools/javac/jvm/ClassWriter;)V
    .registers 6

    .line 1285
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame;->getFrameType()I

    move-result v0

    .line 1286
    iget-object v1, p1, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/ByteBuffer;->appendByte(I)V

    .line 1287
    iget-boolean v1, p1, Lcom/sun/tools/javac/jvm/ClassWriter;->debugstackmap:Z

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " frame_type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1288
    :cond_0
    return-void
.end method
