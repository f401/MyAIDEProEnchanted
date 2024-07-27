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
    .registers 6

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    if-nez p1, :cond_0

    .line 184
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "bytes == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_0
    if-nez p2, :cond_1

    .line 188
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "filePath == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_1
    iput-object p2, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->filePath:Ljava/lang/String;

    .line 192
    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    .line 193
    iput-boolean p3, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->strictParse:Z

    .line 194
    const/4 v0, -0x1

    iput v0, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->accessFlags:I

    return-void
.end method

.method public constructor <init>([BLjava/lang/String;Z)V
    .registers 5

    .line 210
    new-instance v0, Lcom/s1243808733/android/dx/util/ByteArray;

    invoke-direct {v0, p1}, Lcom/s1243808733/android/dx/util/ByteArray;-><init>([B)V

    invoke-direct {p0, v0, p2, p3}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;-><init>(Lcom/s1243808733/android/dx/util/ByteArray;Ljava/lang/String;Z)V

    return-void
.end method

.method private isGoodMagic(I)Z
    .registers 3

    .line 452
    const v0, -0x35014542    # -8346975.0f

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isGoodVersion(II)Z
    .registers 5

    const/16 v1, 0x35

    const/4 v0, 0x1

    .line 468
    if-ltz p1, :cond_2

    .line 472
    if-ne p2, v1, :cond_1

    .line 473
    if-gtz p1, :cond_2

    .line 482
    :cond_0
    :goto_0
    return v0

    .line 476
    :cond_1
    if-ge p2, v1, :cond_2

    const/16 v1, 0x2d

    if-ge p2, v1, :cond_0

    .line 482
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parse()V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 434
    :try_start_0
    invoke-direct {p0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->parse0()V
    :try_end_0
    .catch Lcom/s1243808733/android/dx/cf/iface/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 441
    return-void

    .line 434
    :catch_0
    move-exception v0

    .line 436
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "...while parsing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/cf/iface/ParseException;->addContext(Ljava/lang/String;)V

    .line 437
    throw v0

    :catch_1
    move-exception v0

    .line 439
    new-instance v1, Lcom/s1243808733/android/dx/cf/iface/ParseException;

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dx/cf/iface/ParseException;-><init>(Ljava/lang/Throwable;)V

    .line 440
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "...while parsing "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/cf/iface/ParseException;->addContext(Ljava/lang/String;)V

    .line 441
    throw v1
.end method

.method private parse0()V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v4, 0x4

    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 489
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/ByteArray;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 490
    new-instance v0, Lcom/s1243808733/android/dx/cf/iface/ParseException;

    const-string v1, "severely truncated class file"

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/cf/iface/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    if-eqz v0, :cond_1

    .line 494
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    const-string v2, "begin classfile"

    invoke-interface {v0, v1, v8, v8, v2}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 495
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "magic: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getMagic0()I

    move-result v3

    invoke-static {v3}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v8, v4, v2}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 496
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "minor_version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getMinorVersion0()I

    move-result v3

    invoke-static {v3}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v4, v9, v2}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 498
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "major_version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getMajorVersion0()I

    move-result v4

    invoke-static {v4}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v9, v3}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 502
    :cond_1
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->strictParse:Z

    if-eqz v0, :cond_3

    .line 506
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getMagic0()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->isGoodMagic(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 507
    new-instance v0, Lcom/s1243808733/android/dx/cf/iface/ParseException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "bad class file magic ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getMagic0()I

    move-result v3

    invoke-static {v3}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/cf/iface/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 510
    :cond_2
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getMinorVersion0()I

    move-result v0

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getMajorVersion0()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->isGoodVersion(II)Z

    move-result v0

    if-nez v0, :cond_3

    .line 511
    new-instance v0, Lcom/s1243808733/android/dx/cf/iface/ParseException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "unsupported class file version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getMajorVersion0()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getMinorVersion0()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/cf/iface/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 517
    :cond_3
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
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->pool:Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;

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
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->pool:Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;

    invoke-virtual {v3, v0}, Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;->get(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstType;

    iput-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->thisClass:Lcom/s1243808733/android/dx/rop/cst/CstType;

    .line 526
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v3, v1, 0x4

    invoke-virtual {v0, v3}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v0

    .line 527
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->pool:Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;

    invoke-virtual {v3, v0}, Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;->get0Ok(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstType;

    iput-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->superClass:Lcom/s1243808733/android/dx/rop/cst/CstType;

    .line 528
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v3, v1, 0x6

    invoke-virtual {v0, v3}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v0

    .line 530
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    if-eqz v3, :cond_4

    .line 531
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    iget-object v4, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "access_flags: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-static {v2}, Lcom/s1243808733/android/dx/rop/code/AccessFlags;->classString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v1, v9, v5}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 534
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    iget-object v4, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v5, v1, 0x2

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "this_class: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v7, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->thisClass:Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v9, v6}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 535
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    iget-object v4, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v5, v1, 0x4

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "super_class: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v7, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->superClass:Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-static {v7}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->stringOrNone(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v9, v6}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 537
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    iget-object v4, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v5, v1, 0x6

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "interfaces_count: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v9, v6}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 539
    if-eqz v0, :cond_4

    .line 540
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    iget-object v4, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v5, v1, 0x8

    const-string v6, "interfaces:"

    invoke-interface {v3, v4, v5, v8, v6}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 544
    :cond_4
    add-int/lit8 v1, v1, 0x8

    .line 545
    invoke-virtual {p0, v1, v0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->makeTypeList(II)Lcom/s1243808733/android/dx/rop/type/TypeList;

    move-result-object v3

    iput-object v3, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->interfaces:Lcom/s1243808733/android/dx/rop/type/TypeList;

    .line 546
    iget-boolean v3, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->strictParse:Z

    if-eqz v3, :cond_6

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

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->filePath:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->filePath:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x6

    if-eq v4, v5, :cond_6

    .line 557
    :cond_5
    new-instance v0, Lcom/s1243808733/android/dx/cf/iface/ParseException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "class name ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ") does not match path ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->filePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/cf/iface/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 568
    :cond_6
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

    invoke-direct {v1, p0, v8, v0, v2}, Lcom/s1243808733/android/dx/cf/direct/AttributeListParser;-><init>(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/direct/AttributeFactory;)V

    .line 585
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/cf/direct/AttributeListParser;->setObserver(Lcom/s1243808733/android/dx/cf/iface/ParseObserver;)V

    .line 586
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/cf/direct/AttributeListParser;->getList()Lcom/s1243808733/android/dx/cf/iface/StdAttributeList;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->attributes:Lcom/s1243808733/android/dx/cf/iface/StdAttributeList;

    .line 587
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->attributes:Lcom/s1243808733/android/dx/cf/iface/StdAttributeList;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/iface/StdAttributeList;->setImmutable()V

    .line 588
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/cf/direct/AttributeListParser;->getEndOffset()I

    move-result v0

    .line 590
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/util/ByteArray;->size()I

    move-result v1

    if-eq v0, v1, :cond_7

    .line 591
    new-instance v1, Lcom/s1243808733/android/dx/cf/iface/ParseException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "extra bytes at end of class file, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "at offset "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dx/cf/iface/ParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 595
    :cond_7
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    if-eqz v1, :cond_8

    .line 596
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    const-string v3, "end classfile"

    invoke-interface {v1, v2, v0, v8, v3}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    :cond_8
    return-void
.end method

.method private parseToEndIfNecessary()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 424
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->attributes:Lcom/s1243808733/android/dx/cf/iface/StdAttributeList;

    if-nez v0, :cond_0

    .line 425
    invoke-direct {p0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->parse()V

    :cond_0
    return-void
.end method

.method private parseToInterfacesIfNecessary()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

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
    .registers 2

    .line 163
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
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 277
    invoke-direct {p0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->parseToInterfacesIfNecessary()V

    .line 278
    iget v0, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->accessFlags:I

    return v0
.end method

.method public getAttributes()Lcom/s1243808733/android/dx/cf/iface/AttributeList;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 326
    invoke-direct {p0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->parseToEndIfNecessary()V

    .line 327
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->attributes:Lcom/s1243808733/android/dx/cf/iface/StdAttributeList;

    return-object v0
.end method

.method public getBootstrapMethods()Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList;
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 333
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getAttributes()Lcom/s1243808733/android/dx/cf/iface/AttributeList;

    move-result-object v0

    const-string v1, "BootstrapMethods"

    invoke-interface {v0, v1}, Lcom/s1243808733/android/dx/cf/iface/AttributeList;->findFirst(Ljava/lang/String;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/cf/attrib/AttBootstrapMethods;

    .line 335
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
    .registers 2

    .line 250
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    return-object v0
.end method

.method public getConstantPool()Lcom/s1243808733/android/dx/rop/cst/ConstantPool;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 298
    invoke-direct {p0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->parseToInterfacesIfNecessary()V

    .line 299
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->pool:Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;

    return-object v0
.end method

.method public getFields()Lcom/s1243808733/android/dx/cf/iface/FieldList;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 312
    invoke-direct {p0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->parseToEndIfNecessary()V

    .line 313
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->fields:Lcom/s1243808733/android/dx/cf/iface/FieldList;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .registers 2

    .line 241
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getInterfaces()Lcom/s1243808733/android/dx/rop/type/TypeList;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 305
    invoke-direct {p0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->parseToInterfacesIfNecessary()V

    .line 306
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->interfaces:Lcom/s1243808733/android/dx/rop/type/TypeList;

    return-object v0
.end method

.method public getMagic()I
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 256
    invoke-direct {p0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->parseToInterfacesIfNecessary()V

    .line 257
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getMagic0()I

    move-result v0

    return v0
.end method

.method public getMagic0()I
    .registers 3

    .line 387
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/util/ByteArray;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getMajorVersion()I
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 270
    invoke-direct {p0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->parseToInterfacesIfNecessary()V

    .line 271
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getMajorVersion0()I

    move-result v0

    return v0
.end method

.method public getMajorVersion0()I
    .registers 3

    .line 407
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v0

    return v0
.end method

.method public getMethods()Lcom/s1243808733/android/dx/cf/iface/MethodList;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 319
    invoke-direct {p0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->parseToEndIfNecessary()V

    .line 320
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->methods:Lcom/s1243808733/android/dx/cf/iface/MethodList;

    return-object v0
.end method

.method public getMinorVersion()I
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 263
    invoke-direct {p0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->parseToInterfacesIfNecessary()V

    .line 264
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getMinorVersion0()I

    move-result v0

    return v0
.end method

.method public getMinorVersion0()I
    .registers 3

    .line 397
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v0

    return v0
.end method

.method public getSourceFile()Lcom/s1243808733/android/dx/rop/cst/CstString;
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

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

    .line 352
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstString;

    goto :goto_0
.end method

.method public getSuperclass()Lcom/s1243808733/android/dx/rop/cst/CstType;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 291
    invoke-direct {p0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->parseToInterfacesIfNecessary()V

    .line 292
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->superClass:Lcom/s1243808733/android/dx/rop/cst/CstType;

    return-object v0
.end method

.method public getThisClass()Lcom/s1243808733/android/dx/rop/cst/CstType;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 284
    invoke-direct {p0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->parseToInterfacesIfNecessary()V

    .line 285
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->thisClass:Lcom/s1243808733/android/dx/rop/cst/CstType;

    return-object v0
.end method

.method public makeTypeList(II)Lcom/s1243808733/android/dx/rop/type/TypeList;
    .registers 9

    .line 369
    if-nez p2, :cond_0

    .line 370
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->EMPTY:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    .line 377
    :goto_0
    return-object v0

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->pool:Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;

    if-nez v0, :cond_1

    .line 374
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "pool not yet initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 377
    :cond_1
    new-instance v0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile$DcfTypeList;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    iget-object v4, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->pool:Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;

    iget-object v5, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile$DcfTypeList;-><init>(Lcom/s1243808733/android/dx/util/ByteArray;IILcom/s1243808733/android/dx/rop/cst/StdConstantPool;Lcom/s1243808733/android/dx/cf/iface/ParseObserver;)V

    goto :goto_0
.end method

.method public setAttributeFactory(Lcom/s1243808733/android/dx/cf/direct/AttributeFactory;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/cf/direct/AttributeFactory;",
            ")V"
        }
    .end annotation

    .line 228
    if-nez p1, :cond_0

    .line 229
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "attributeFactory == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_0
    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->attributeFactory:Lcom/s1243808733/android/dx/cf/direct/AttributeFactory;

    return-void
.end method

.method public setObserver(Lcom/s1243808733/android/dx/cf/iface/ParseObserver;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/cf/iface/ParseObserver;",
            ")V"
        }
    .end annotation

    .line 219
    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    return-void
.end method
