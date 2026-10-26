.class public Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;
.super Ljava/lang/Object;
.source "DirectClassFile.java"

# interfaces
.implements Lcom/s1243808733/android/dx/cf/iface/ClassFile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/android/dx/cf/direct/DirectClassFile$DcfTypeList;
    }
.end annotation


# static fields
.field private static final CLASS_FILE_MAGIC:I = -0x35014542

.field private static final CLASS_FILE_MAX_MAJOR_VERSION:I = 0x35

.field private static final CLASS_FILE_MAX_MINOR_VERSION:I = 0x0

.field private static final CLASS_FILE_MIN_MAJOR_VERSION:I = 0x2d


# instance fields
.field private accessFlags:I

.field private attributeFactory:Lcom/s1243808733/android/dx/cf/direct/AttributeFactory;

.field private attributes:Lcom/s1243808733/android/dx/cf/iface/StdAttributeList;

.field private final bytes:Lcom/s1243808733/android/dx/util/ByteArray;

.field private fields:Lcom/s1243808733/android/dx/cf/iface/FieldList;

.field private final filePath:Ljava/lang/String;

.field private interfaces:Lcom/s1243808733/android/dx/rop/type/TypeList;

.field private methods:Lcom/s1243808733/android/dx/cf/iface/MethodList;

.field private observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

.field private pool:Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;

.field private final strictParse:Z

.field private superClass:Lcom/s1243808733/android/dx/rop/cst/CstType;

.field private thisClass:Lcom/s1243808733/android/dx/rop/cst/CstType;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/util/ByteArray;Ljava/lang/String;Z)V
    .locals 2

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 191
    iput-object p2, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->filePath:Ljava/lang/String;

    .line 192
    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    .line 193
    iput-boolean p3, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->strictParse:Z

    .line 194
    const/4 v0, -0x1

    iput v0, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->accessFlags:I

    return-void

    .line 188
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "filePath == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "bytes == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([BLjava/lang/String;Z)V
    .locals 1

    .line 210
    new-instance v0, Lcom/s1243808733/android/dx/util/ByteArray;

    invoke-direct {v0, p1}, Lcom/s1243808733/android/dx/util/ByteArray;-><init>([B)V

    invoke-direct {p0, v0, p2, p3}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;-><init>(Lcom/s1243808733/android/dx/util/ByteArray;Ljava/lang/String;Z)V

    return-void
.end method

.method private isGoodMagic(I)Z
    .locals 1

    const v0, -0x35014542    # -8346975.0f

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isGoodVersion(II)Z
    .locals 2

    const/16 v1, 0x35

    const/4 v0, 0x1

    if-ltz p1, :cond_2

    if-ne p2, v1, :cond_1

    if-gtz p1, :cond_2

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ge p2, v1, :cond_2

    const/16 v1, 0x2d

    if-ge p2, v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parse()V
    .locals 3

    .line 434
    :try_start_0
    invoke-direct {p0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->parse0()V
    :try_end_0
    .catch Lcom/s1243808733/android/dx/cf/iface/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 439
    new-instance v1, Lcom/s1243808733/android/dx/cf/iface/ParseException;

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dx/cf/iface/ParseException;-><init>(Ljava/lang/Throwable;)V

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "...while parsing "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/cf/iface/ParseException;->addContext(Ljava/lang/String;)V

    .line 441
    throw v1

    :catch_1
    move-exception v0

    .line 436
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "...while parsing "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/cf/iface/ParseException;->addContext(Ljava/lang/String;)V

    .line 437
    throw v0
.end method

.method private parse0()V
    .locals 12

    const/4 v4, 0x4

    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 489
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/ByteArray;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_9

    .line 493
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    if-eqz v0, :cond_0

    .line 494
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    const-string v2, "begin classfile"

    invoke-interface {v0, v1, v10, v10, v2}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 495
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "magic: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getMagic0()I

    move-result v3

    invoke-static {v3}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v10, v4, v2}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 496
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "minor_version: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 497
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getMinorVersion0()I

    move-result v3

    invoke-static {v3}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 496
    invoke-interface {v0, v1, v4, v11, v2}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 498
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "major_version: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 499
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getMajorVersion0()I

    move-result v3

    invoke-static {v3}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 498
    const/4 v3, 0x6

    invoke-interface {v0, v1, v3, v11, v2}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 502
    :cond_0
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->strictParse:Z

    if-eqz v0, :cond_1

    .line 506
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getMagic0()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->isGoodMagic(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 510
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getMinorVersion0()I

    move-result v0

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getMajorVersion0()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->isGoodVersion(II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 517
    :cond_1
    new-instance v0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;-><init>(Lcom/s1243808733/android/dx/util/ByteArray;)V

    .line 518
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->setObserver(Lcom/s1243808733/android/dx/cf/iface/ParseObserver;)V

    .line 519
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->getPool()Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;

    move-result-object v1

    iput-object v1, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->pool:Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;

    .line 520
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;->setImmutable()V

    .line 522
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->getEndOffset()I

    move-result v1

    .line 523
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v2

    .line 524
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v3, v1, 0x2

    invoke-virtual {v0, v3}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v0

    .line 525
    iget-object v4, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->pool:Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;

    invoke-virtual {v4, v0}, Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;->get(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstType;

    iput-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->thisClass:Lcom/s1243808733/android/dx/rop/cst/CstType;

    .line 526
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v4, v1, 0x4

    invoke-virtual {v0, v4}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v0

    .line 527
    iget-object v5, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->pool:Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;

    invoke-virtual {v5, v0}, Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;->get0Ok(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstType;

    iput-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->superClass:Lcom/s1243808733/android/dx/rop/cst/CstType;

    .line 528
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v5, v1, 0x6

    invoke-virtual {v0, v5}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v0

    .line 530
    iget-object v6, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    if-eqz v6, :cond_2

    .line 531
    iget-object v7, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "access_flags: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 533
    invoke-static {v2}, Lcom/s1243808733/android/dx/rop/code/AccessFlags;->classString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 531
    invoke-interface {v6, v7, v1, v11, v8}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 534
    iget-object v6, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    iget-object v7, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "this_class: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->thisClass:Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v3, v11, v8}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 535
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    iget-object v6, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "super_class: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->superClass:Lcom/s1243808733/android/dx/rop/cst/CstType;

    .line 536
    invoke-static {v8}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->stringOrNone(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 535
    invoke-interface {v3, v6, v4, v11, v7}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 537
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    iget-object v4, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "interfaces_count: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 538
    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 537
    invoke-interface {v3, v4, v5, v11, v6}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    if-eqz v0, :cond_2

    .line 540
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    iget-object v4, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v5, v1, 0x8

    const-string v6, "interfaces:"

    invoke-interface {v3, v4, v5, v10, v6}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    :cond_2
    add-int/lit8 v1, v1, 0x8

    .line 545
    invoke-virtual {p0, v1, v0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->makeTypeList(II)Lcom/s1243808733/android/dx/rop/type/TypeList;

    move-result-object v3

    iput-object v3, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->interfaces:Lcom/s1243808733/android/dx/rop/type/TypeList;

    .line 548
    iget-boolean v3, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->strictParse:Z

    if-eqz v3, :cond_3

    .line 553
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->thisClass:Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/cst/CstType;->getClassType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/type/Type;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 554
    iget-object v4, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->filePath:Ljava/lang/String;

    const-string v5, ".class"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->filePath:Ljava/lang/String;

    .line 555
    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->filePath:Ljava/lang/String;

    .line 556
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x6

    if-ne v4, v5, :cond_7

    .line 568
    :cond_3
    iput v2, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->accessFlags:I

    .line 570
    new-instance v2, Lcom/s1243808733/android/dx/cf/direct/FieldListParser;

    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->thisClass:Lcom/s1243808733/android/dx/rop/cst/CstType;

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->attributeFactory:Lcom/s1243808733/android/dx/cf/direct/AttributeFactory;

    invoke-direct {v2, p0, v3, v0, v1}, Lcom/s1243808733/android/dx/cf/direct/FieldListParser;-><init>(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;Lcom/s1243808733/android/dx/rop/cst/CstType;ILcom/s1243808733/android/dx/cf/direct/AttributeFactory;)V

    .line 572
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    invoke-virtual {v2, v0}, Lcom/s1243808733/android/dx/cf/direct/FieldListParser;->setObserver(Lcom/s1243808733/android/dx/cf/iface/ParseObserver;)V

    .line 573
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/cf/direct/FieldListParser;->getList()Lcom/s1243808733/android/dx/cf/iface/StdFieldList;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->fields:Lcom/s1243808733/android/dx/cf/iface/FieldList;

    .line 574
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/cf/direct/FieldListParser;->getEndOffset()I

    move-result v0

    .line 576
    new-instance v1, Lcom/s1243808733/android/dx/cf/direct/MethodListParser;

    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->thisClass:Lcom/s1243808733/android/dx/rop/cst/CstType;

    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->attributeFactory:Lcom/s1243808733/android/dx/cf/direct/AttributeFactory;

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/s1243808733/android/dx/cf/direct/MethodListParser;-><init>(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;Lcom/s1243808733/android/dx/rop/cst/CstType;ILcom/s1243808733/android/dx/cf/direct/AttributeFactory;)V

    .line 578
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/cf/direct/MethodListParser;->setObserver(Lcom/s1243808733/android/dx/cf/iface/ParseObserver;)V

    .line 579
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/cf/direct/MethodListParser;->getList()Lcom/s1243808733/android/dx/cf/iface/StdMethodList;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->methods:Lcom/s1243808733/android/dx/cf/iface/MethodList;

    .line 580
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/cf/direct/MethodListParser;->getEndOffset()I

    move-result v0

    .line 582
    new-instance v1, Lcom/s1243808733/android/dx/cf/direct/AttributeListParser;

    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->attributeFactory:Lcom/s1243808733/android/dx/cf/direct/AttributeFactory;

    invoke-direct {v1, p0, v10, v0, v2}, Lcom/s1243808733/android/dx/cf/direct/AttributeListParser;-><init>(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/direct/AttributeFactory;)V

    .line 585
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/cf/direct/AttributeListParser;->setObserver(Lcom/s1243808733/android/dx/cf/iface/ParseObserver;)V

    .line 586
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/cf/direct/AttributeListParser;->getList()Lcom/s1243808733/android/dx/cf/iface/StdAttributeList;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->attributes:Lcom/s1243808733/android/dx/cf/iface/StdAttributeList;

    .line 587
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/iface/StdAttributeList;->setImmutable()V

    .line 588
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/cf/direct/AttributeListParser;->getEndOffset()I

    move-result v0

    .line 590
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/util/ByteArray;->size()I

    move-result v1

    if-ne v0, v1, :cond_8

    .line 595
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    if-eqz v1, :cond_4

    .line 596
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    const-string v3, "end classfile"

    invoke-interface {v1, v2, v0, v10, v3}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    :cond_4
    return-void

    .line 511
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unsupported class file version "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 512
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getMajorVersion0()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getMinorVersion0()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/s1243808733/android/dx/cf/iface/ParseException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dx/cf/iface/ParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 507
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bad class file magic ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getMagic0()I

    move-result v1

    invoke-static {v1}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/s1243808733/android/dx/cf/iface/ParseException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dx/cf/iface/ParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 557
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "class name ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") does not match path ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/s1243808733/android/dx/cf/iface/ParseException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dx/cf/iface/ParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 591
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "extra bytes at end of class file, at offset "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 592
    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/s1243808733/android/dx/cf/iface/ParseException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/cf/iface/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 490
    :cond_9
    new-instance v0, Lcom/s1243808733/android/dx/cf/iface/ParseException;

    const-string v1, "severely truncated class file"

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/cf/iface/ParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseToEndIfNecessary()V
    .locals 1

    .line 424
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->attributes:Lcom/s1243808733/android/dx/cf/iface/StdAttributeList;

    if-nez v0, :cond_0

    .line 425
    invoke-direct {p0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->parse()V

    :cond_0
    return-void
.end method

.method private parseToInterfacesIfNecessary()V
    .locals 2

    .line 415
    iget v0, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->accessFlags:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 416
    invoke-direct {p0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->parse()V

    :cond_0
    return-void
.end method

.method public static stringOrNone(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    .line 164
    const-string v0, "(none)"

    .line 167
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getAccessFlags()I
    .locals 1

    .line 277
    invoke-direct {p0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->parseToInterfacesIfNecessary()V

    .line 278
    iget v0, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->accessFlags:I

    return v0
.end method

.method public getAttributes()Lcom/s1243808733/android/dx/cf/iface/AttributeList;
    .locals 1

    .line 326
    invoke-direct {p0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->parseToEndIfNecessary()V

    .line 327
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->attributes:Lcom/s1243808733/android/dx/cf/iface/StdAttributeList;

    return-object v0
.end method

.method public getBootstrapMethods()Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList;
    .locals 2

    .line 334
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getAttributes()Lcom/s1243808733/android/dx/cf/iface/AttributeList;

    move-result-object v0

    const-string v1, "BootstrapMethods"

    invoke-interface {v0, v1}, Lcom/s1243808733/android/dx/cf/iface/AttributeList;->findFirst(Ljava/lang/String;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/cf/attrib/AttBootstrapMethods;

    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/attrib/AttBootstrapMethods;->getBootstrapMethods()Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList;

    move-result-object v0

    .line 338
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList;->EMPTY:Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList;

    goto :goto_0
.end method

.method public getBytes()Lcom/s1243808733/android/dx/util/ByteArray;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    return-object v0
.end method

.method public getConstantPool()Lcom/s1243808733/android/dx/rop/cst/ConstantPool;
    .locals 1

    .line 298
    invoke-direct {p0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->parseToInterfacesIfNecessary()V

    .line 299
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->pool:Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;

    return-object v0
.end method

.method public getFields()Lcom/s1243808733/android/dx/cf/iface/FieldList;
    .locals 1

    .line 312
    invoke-direct {p0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->parseToEndIfNecessary()V

    .line 313
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->fields:Lcom/s1243808733/android/dx/cf/iface/FieldList;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getInterfaces()Lcom/s1243808733/android/dx/rop/type/TypeList;
    .locals 1

    .line 305
    invoke-direct {p0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->parseToInterfacesIfNecessary()V

    .line 306
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->interfaces:Lcom/s1243808733/android/dx/rop/type/TypeList;

    return-object v0
.end method

.method public getMagic()I
    .locals 1

    .line 256
    invoke-direct {p0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->parseToInterfacesIfNecessary()V

    .line 257
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getMagic0()I

    move-result v0

    return v0
.end method

.method public getMagic0()I
    .locals 2

    .line 387
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/util/ByteArray;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getMajorVersion()I
    .locals 1

    .line 270
    invoke-direct {p0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->parseToInterfacesIfNecessary()V

    .line 271
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getMajorVersion0()I

    move-result v0

    return v0
.end method

.method public getMajorVersion0()I
    .locals 2

    .line 407
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v0

    return v0
.end method

.method public getMethods()Lcom/s1243808733/android/dx/cf/iface/MethodList;
    .locals 1

    .line 319
    invoke-direct {p0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->parseToEndIfNecessary()V

    .line 320
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->methods:Lcom/s1243808733/android/dx/cf/iface/MethodList;

    return-object v0
.end method

.method public getMinorVersion()I
    .locals 1

    .line 263
    invoke-direct {p0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->parseToInterfacesIfNecessary()V

    .line 264
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getMinorVersion0()I

    move-result v0

    return v0
.end method

.method public getMinorVersion0()I
    .locals 2

    .line 397
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v0

    return v0
.end method

.method public getSourceFile()Lcom/s1243808733/android/dx/rop/cst/CstString;
    .locals 2

    .line 345
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getAttributes()Lcom/s1243808733/android/dx/cf/iface/AttributeList;

    move-result-object v0

    .line 346
    const-string v1, "SourceFile"

    invoke-interface {v0, v1}, Lcom/s1243808733/android/dx/cf/iface/AttributeList;->findFirst(Ljava/lang/String;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    .line 348
    instance-of v1, v0, Lcom/s1243808733/android/dx/cf/attrib/AttSourceFile;

    if-eqz v1, :cond_0

    .line 349
    check-cast v0, Lcom/s1243808733/android/dx/cf/attrib/AttSourceFile;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/attrib/AttSourceFile;->getSourceFile()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSuperclass()Lcom/s1243808733/android/dx/rop/cst/CstType;
    .locals 1

    .line 291
    invoke-direct {p0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->parseToInterfacesIfNecessary()V

    .line 292
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->superClass:Lcom/s1243808733/android/dx/rop/cst/CstType;

    return-object v0
.end method

.method public getThisClass()Lcom/s1243808733/android/dx/rop/cst/CstType;
    .locals 1

    .line 284
    invoke-direct {p0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->parseToInterfacesIfNecessary()V

    .line 285
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->thisClass:Lcom/s1243808733/android/dx/rop/cst/CstType;

    return-object v0
.end method

.method public makeTypeList(II)Lcom/s1243808733/android/dx/rop/type/TypeList;
    .locals 6

    if-nez p2, :cond_0

    .line 370
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->EMPTY:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    .line 377
    :goto_0
    return-object v0

    .line 373
    :cond_0
    iget-object v4, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->pool:Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;

    if-eqz v4, :cond_1

    .line 377
    new-instance v0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile$DcfTypeList;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    iget-object v5, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile$DcfTypeList;-><init>(Lcom/s1243808733/android/dx/util/ByteArray;IILcom/s1243808733/android/dx/rop/cst/StdConstantPool;Lcom/s1243808733/android/dx/cf/iface/ParseObserver;)V

    goto :goto_0

    .line 374
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "pool not yet initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAttributeFactory(Lcom/s1243808733/android/dx/cf/direct/AttributeFactory;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 232
    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->attributeFactory:Lcom/s1243808733/android/dx/cf/direct/AttributeFactory;

    return-void

    .line 229
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "attributeFactory == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setObserver(Lcom/s1243808733/android/dx/cf/iface/ParseObserver;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    return-void
.end method
