.class final Lzeroaicy/org/objectweb/asm/MethodWriter;
.super Lzeroaicy/org/objectweb/asm/MethodVisitor;
.source "MethodWriter.java"


# static fields
.field static final COMPUTE_ALL_FRAMES:I = 0x4

.field static final COMPUTE_INSERTED_FRAMES:I = 0x3

.field static final COMPUTE_MAX_STACK_AND_LOCAL:I = 0x1

.field static final COMPUTE_MAX_STACK_AND_LOCAL_FROM_FRAMES:I = 0x2

.field static final COMPUTE_NOTHING:I

.field private static final NA:I

.field private static final STACK_SIZE_DELTA:[I


# instance fields
.field private final accessFlags:I

.field private final code:Lzeroaicy/org/objectweb/asm/ByteVector;

.field private final compute:I

.field private currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

.field private currentFrame:[I

.field private currentLocals:I

.field private defaultValue:Lzeroaicy/org/objectweb/asm/ByteVector;

.field private final descriptor:Ljava/lang/String;

.field private final descriptorIndex:I

.field private final exceptionIndexTable:[I

.field private firstAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

.field private firstBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

.field private firstCodeAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

.field private firstHandler:Lzeroaicy/org/objectweb/asm/Handler;

.field private hasAsmInstructions:Z

.field private hasSubroutines:Z

.field private invisibleAnnotableParameterCount:I

.field private lastBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

.field private lastBytecodeOffset:I

.field private lastCodeRuntimeInvisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

.field private lastCodeRuntimeVisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

.field private lastHandler:Lzeroaicy/org/objectweb/asm/Handler;

.field private lastRuntimeInvisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

.field private lastRuntimeInvisibleParameterAnnotations:[Lzeroaicy/org/objectweb/asm/AnnotationWriter;

.field private lastRuntimeInvisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

.field private lastRuntimeVisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

.field private lastRuntimeVisibleParameterAnnotations:[Lzeroaicy/org/objectweb/asm/AnnotationWriter;

.field private lastRuntimeVisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

.field private lineNumberTable:Lzeroaicy/org/objectweb/asm/ByteVector;

.field private lineNumberTableLength:I

.field private localVariableTable:Lzeroaicy/org/objectweb/asm/ByteVector;

.field private localVariableTableLength:I

.field private localVariableTypeTable:Lzeroaicy/org/objectweb/asm/ByteVector;

.field private localVariableTypeTableLength:I

.field private maxLocals:I

.field private maxRelativeStackSize:I

.field private maxStack:I

.field private final name:Ljava/lang/String;

.field private final nameIndex:I

.field private final numberOfExceptions:I

.field private parameters:Lzeroaicy/org/objectweb/asm/ByteVector;

.field private parametersCount:I

.field private previousFrame:[I

.field private previousFrameOffset:I

.field private relativeStackSize:I

.field private final signatureIndex:I

.field private sourceLength:I

.field private sourceOffset:I

.field private stackMapTableEntries:Lzeroaicy/org/objectweb/asm/ByteVector;

.field private stackMapTableNumberOfEntries:I

.field private final symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

.field private visibleAnnotableParameterCount:I


# direct methods
.method private static $d2j$hex$6bade914$decode_B(Ljava/lang/String;)[B
    .registers 12

    .line 42
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 43
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    new-array v1, p0, [B

    const/4 v2, 0x0

    :goto_d
    if-ge v2, p0, :cond_60

    mul-int/lit8 v3, v2, 0x2

    .line 45
    aget-char v4, v0, v3

    .line 46
    add-int/lit8 v3, v3, 0x1

    aget-char v3, v0, v3

    const/16 v5, 0x46

    const/16 v6, 0x66

    const/16 v7, 0x41

    const/16 v8, 0x39

    const/16 v9, 0x61

    const/16 v10, 0x30

    if-lt v4, v10, :cond_2a

    if-gt v4, v8, :cond_2a

    add-int/lit8 v4, v4, -0x30

    goto :goto_37

    :cond_2a
    if-lt v4, v9, :cond_31

    if-gt v4, v6, :cond_31

    add-int/lit8 v4, v4, -0x57

    goto :goto_37

    :cond_31
    if-lt v4, v7, :cond_5a

    if-gt v4, v5, :cond_5a

    add-int/lit8 v4, v4, -0x37

    :goto_37
    if-lt v3, v10, :cond_3e

    if-gt v3, v8, :cond_3e

    add-int/lit8 v3, v3, -0x30

    goto :goto_4b

    :cond_3e
    if-lt v3, v9, :cond_45

    if-gt v3, v6, :cond_45

    add-int/lit8 v3, v3, -0x57

    goto :goto_4b

    :cond_45
    if-lt v3, v7, :cond_54

    if-gt v3, v5, :cond_54

    add-int/lit8 v3, v3, -0x37

    :goto_4b
    shl-int/lit8 v4, v4, 0x4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    .line 67
    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 65
    :cond_54
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    .line 55
    :cond_5a
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_60
    return-object v1
.end method

.method private static $d2j$hex$6bade914$decode_I(Ljava/lang/String;)[I
    .registers 3

    .line 22
    invoke-static {p0}, Lzeroaicy/org/objectweb/asm/MethodWriter;->$d2j$hex$6bade914$decode_B(Ljava/lang/String;)[B

    move-result-object p0

    .line 23
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 24
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 25
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    .line 26
    array-length p0, p0

    div-int/lit8 p0, p0, 0x4

    new-array p0, p0, [I

    .line 27
    invoke-virtual {v0, p0}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    return-object p0
.end method

.method private static $d2j$hex$6bade914$decode_J(Ljava/lang/String;)[J
    .registers 3

    .line 12
    invoke-static {p0}, Lzeroaicy/org/objectweb/asm/MethodWriter;->$d2j$hex$6bade914$decode_B(Ljava/lang/String;)[B

    move-result-object p0

    .line 13
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 14
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 15
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v0

    .line 16
    array-length p0, p0

    div-int/lit8 p0, p0, 0x8

    new-array p0, p0, [J

    .line 17
    invoke-virtual {v0, p0}, Ljava/nio/LongBuffer;->get([J)Ljava/nio/LongBuffer;

    return-object p0
.end method

.method private static $d2j$hex$6bade914$decode_S(Ljava/lang/String;)[S
    .registers 3

    .line 32
    invoke-static {p0}, Lzeroaicy/org/objectweb/asm/MethodWriter;->$d2j$hex$6bade914$decode_B(Ljava/lang/String;)[B

    move-result-object p0

    .line 33
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 34
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 35
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    .line 36
    array-length p0, p0

    div-int/lit8 p0, p0, 0x2

    new-array p0, p0, [S

    .line 37
    invoke-virtual {v0, p0}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    return-object p0
.end method

.method static final constructor <clinit>()V
    .registers 1

    const-string v0, "00000000010000000100000001000000010000000100000001000000010000000100000002000000020000000100000001000000010000000200000002000000010000000100000001000000000000000000000001000000020000000100000002000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffff00000000ffffffff00000000fffffffffffffffffffffffffffffffffffffffffefffffffffffffffeffffffffffffff0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fdfffffffcfffffffdfffffffcfffffffdfffffffdfffffffdfffffffdfffffffffffffffeffffff01000000010000000100000002000000020000000200000000000000fffffffffefffffffffffffffefffffffffffffffefffffffffffffffefffffffffffffffefffffffffffffffefffffffffffffffefffffffffffffffefffffffffffffffefffffffffffffffeffffff00000000000000000000000000000000fffffffffffffffffffffffffffffffffffffffffffffffffffffffffefffffffffffffffefffffffffffffffeffffff00000000010000000000000001000000ffffffffffffffff00000000000000000100000001000000ffffffff00000000ffffffff000000000000000000000000fdfffffffffffffffffffffffdfffffffdfffffffffffffffffffffffffffffffffffffffffffffffffffffffefffffffefffffffefffffffefffffffefffffffefffffffefffffffeffffff000000000100000000000000fffffffffffffffffffffffffefffffffffffffffeffffffffffffff0000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000ffffffffffffffff0000000000000000ffffffffffffffff0000000000000000"

    invoke-static {v0}, Lzeroaicy/org/objectweb/asm/MethodWriter;->$d2j$hex$6bade914$decode_I(Ljava/lang/String;)[I

    move-result-object v0

    sput-object v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->STACK_SIZE_DELTA:[I

    return-void
.end method

.method constructor <init>(Lzeroaicy/org/objectweb/asm/SymbolTable;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)V
    .registers 9

    .line 596
    const/high16 v0, 0x90000

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/MethodVisitor;-><init>(I)V

    new-instance v0, Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lzeroaicy/org/objectweb/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 597
    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    .line 598
    const-string v0, "<init>"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/high16 v0, 0x40000

    or-int/2addr v0, p2

    goto :goto_1b

    :cond_1a
    move v0, p2

    :goto_1b
    iput v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->accessFlags:I

    .line 599
    invoke-virtual {p1, p3}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->nameIndex:I

    .line 600
    iput-object p3, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->name:Ljava/lang/String;

    .line 601
    invoke-virtual {p1, p4}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->descriptorIndex:I

    .line 602
    iput-object p4, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->descriptor:Ljava/lang/String;

    const/4 p3, 0x0

    if-nez p5, :cond_32

    const/4 p5, 0x0

    goto :goto_36

    .line 603
    :cond_32
    invoke-virtual {p1, p5}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p5

    :goto_36
    iput p5, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->signatureIndex:I

    if-eqz p6, :cond_58

    .line 604
    array-length p5, p6

    if-lez p5, :cond_58

    .line 605
    array-length p5, p6

    iput p5, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->numberOfExceptions:I

    .line 606
    new-array p5, p5, [I

    iput-object p5, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->exceptionIndexTable:[I

    .line 607
    :goto_44
    iget p5, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->numberOfExceptions:I

    if-lt p3, p5, :cond_49

    goto :goto_60

    .line 608
    :cond_49
    iget-object p5, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->exceptionIndexTable:[I

    aget-object v0, p6, p3

    invoke-virtual {p1, v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v0

    iget v0, v0, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    aput v0, p5, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_44

    .line 611
    :cond_58
    iput p3, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->numberOfExceptions:I

    .line 612
    const/4 p1, 0x0

    move-object p3, p1

    check-cast p3, [I

    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->exceptionIndexTable:[I

    .line 614
    :goto_60
    iput p7, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->compute:I

    if-eqz p7, :cond_7e

    .line 617
    invoke-static {p4}, Lzeroaicy/org/objectweb/asm/Type;->getArgumentsAndReturnSizes(Ljava/lang/String;)I

    move-result p1

    shr-int/lit8 p1, p1, 0x2

    and-int/lit8 p2, p2, 0x8

    if-eqz p2, :cond_70

    add-int/lit8 p1, p1, -0x1

    .line 621
    :cond_70
    iput p1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxLocals:I

    .line 622
    iput p1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentLocals:I

    .line 624
    new-instance p1, Lzeroaicy/org/objectweb/asm/Label;

    invoke-direct {p1}, Lzeroaicy/org/objectweb/asm/Label;-><init>()V

    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->firstBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    .line 625
    invoke-virtual {p0, p1}, Lzeroaicy/org/objectweb/asm/MethodWriter;->visitLabel(Lzeroaicy/org/objectweb/asm/Label;)V

    :cond_7e
    return-void
.end method

.method private addSuccessorToCurrentBasicBlock(ILzeroaicy/org/objectweb/asm/Label;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lzeroaicy/org/objectweb/asm/Label;",
            ")V"
        }
    .end annotation

    .line 1783
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    new-instance v1, Lzeroaicy/org/objectweb/asm/Edge;

    iget-object v2, v0, Lzeroaicy/org/objectweb/asm/Label;->outgoingEdges:Lzeroaicy/org/objectweb/asm/Edge;

    invoke-direct {v1, p1, p2, v2}, Lzeroaicy/org/objectweb/asm/Edge;-><init>(ILzeroaicy/org/objectweb/asm/Label;Lzeroaicy/org/objectweb/asm/Edge;)V

    iput-object v1, v0, Lzeroaicy/org/objectweb/asm/Label;->outgoingEdges:Lzeroaicy/org/objectweb/asm/Edge;

    return-void
.end method

.method private computeAllFrames()V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1561
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->firstHandler:Lzeroaicy/org/objectweb/asm/Handler;

    .line 1562
    :goto_2
    const-string v1, "java/lang/Throwable"

    if-nez v0, :cond_c7

    .line 1581
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->firstBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    iget-object v0, v0, Lzeroaicy/org/objectweb/asm/Label;->frame:Lzeroaicy/org/objectweb/asm/Frame;

    .line 1582
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget v3, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->accessFlags:I

    iget-object v4, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->descriptor:Ljava/lang/String;

    iget v5, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxLocals:I

    invoke-virtual {v0, v2, v3, v4, v5}, Lzeroaicy/org/objectweb/asm/Frame;->setInputFrameFromDescriptor(Lzeroaicy/org/objectweb/asm/SymbolTable;ILjava/lang/String;I)V

    .line 1583
    invoke-virtual {v0, p0}, Lzeroaicy/org/objectweb/asm/Frame;->accept(Lzeroaicy/org/objectweb/asm/MethodWriter;)V

    .line 1591
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->firstBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    .line 1592
    sget-object v2, Lzeroaicy/org/objectweb/asm/Label;->EMPTY_LIST:Lzeroaicy/org/objectweb/asm/Label;

    iput-object v2, v0, Lzeroaicy/org/objectweb/asm/Label;->nextListElement:Lzeroaicy/org/objectweb/asm/Label;

    const/4 v2, 0x0

    move-object v3, v0

    const/4 v0, 0x0

    .line 1594
    :goto_21
    sget-object v4, Lzeroaicy/org/objectweb/asm/Label;->EMPTY_LIST:Lzeroaicy/org/objectweb/asm/Label;

    if-ne v3, v4, :cond_85

    .line 1625
    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->firstBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    :goto_27
    if-nez v3, :cond_2c

    .line 1657
    iput v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxStack:I

    return-void

    .line 1627
    :cond_2c
    iget-short v4, v3, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    const/16 v5, 0xa

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_38

    .line 1629
    iget-object v4, v3, Lzeroaicy/org/objectweb/asm/Label;->frame:Lzeroaicy/org/objectweb/asm/Frame;

    invoke-virtual {v4, p0}, Lzeroaicy/org/objectweb/asm/Frame;->accept(Lzeroaicy/org/objectweb/asm/MethodWriter;)V

    .line 1631
    :cond_38
    iget-short v4, v3, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_82

    .line 1633
    iget-object v4, v3, Lzeroaicy/org/objectweb/asm/Label;->nextBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    .line 1634
    iget v5, v3, Lzeroaicy/org/objectweb/asm/Label;->bytecodeOffset:I

    if-nez v4, :cond_49

    .line 1635
    iget-object v6, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v6, v6, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    goto :goto_4b

    :cond_49
    iget v6, v4, Lzeroaicy/org/objectweb/asm/Label;->bytecodeOffset:I

    :goto_4b
    const/4 v7, 0x1

    sub-int/2addr v6, v7

    if-lt v6, v5, :cond_82

    move v8, v5

    :goto_50
    if-lt v8, v6, :cond_78

    .line 1641
    iget-object v8, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v8, v8, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    const/16 v9, -0x41

    aput-byte v9, v8, v6

    .line 1644
    invoke-virtual {p0, v5, v2, v7}, Lzeroaicy/org/objectweb/asm/MethodWriter;->visitFrameStart(III)I

    move-result v5

    .line 1645
    iget-object v6, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentFrame:[I

    iget-object v8, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-static {v8, v1}, Lzeroaicy/org/objectweb/asm/Frame;->getAbstractTypeFromInternalName(Lzeroaicy/org/objectweb/asm/SymbolTable;Ljava/lang/String;)I

    move-result v8

    aput v8, v6, v5

    .line 1647
    invoke-virtual {p0}, Lzeroaicy/org/objectweb/asm/MethodWriter;->visitFrameEnd()V

    .line 1649
    iget-object v5, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->firstHandler:Lzeroaicy/org/objectweb/asm/Handler;

    invoke-static {v5, v3, v4}, Lzeroaicy/org/objectweb/asm/Handler;->removeRange(Lzeroaicy/org/objectweb/asm/Handler;Lzeroaicy/org/objectweb/asm/Label;Lzeroaicy/org/objectweb/asm/Label;)Lzeroaicy/org/objectweb/asm/Handler;

    move-result-object v4

    iput-object v4, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->firstHandler:Lzeroaicy/org/objectweb/asm/Handler;

    .line 1651
    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_82

    .line 1639
    :cond_78
    iget-object v9, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v9, v9, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    int-to-byte v10, v2

    aput-byte v10, v9, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_50

    .line 1654
    :cond_82
    :goto_82
    iget-object v3, v3, Lzeroaicy/org/objectweb/asm/Label;->nextBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    goto :goto_27

    .line 1597
    :cond_85
    iget-object v4, v3, Lzeroaicy/org/objectweb/asm/Label;->nextListElement:Lzeroaicy/org/objectweb/asm/Label;

    .line 1598
    const/4 v5, 0x0

    move-object v6, v5

    check-cast v6, Lzeroaicy/org/objectweb/asm/Label;

    iput-object v5, v3, Lzeroaicy/org/objectweb/asm/Label;->nextListElement:Lzeroaicy/org/objectweb/asm/Label;

    .line 1600
    iget-short v5, v3, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    or-int/lit8 v5, v5, 0x8

    int-to-short v5, v5

    iput-short v5, v3, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    .line 1602
    iget-object v5, v3, Lzeroaicy/org/objectweb/asm/Label;->frame:Lzeroaicy/org/objectweb/asm/Frame;

    invoke-virtual {v5}, Lzeroaicy/org/objectweb/asm/Frame;->getInputStackSize()I

    move-result v5

    iget-short v6, v3, Lzeroaicy/org/objectweb/asm/Label;->outputStackMax:S

    add-int/2addr v5, v6

    if-le v5, v0, :cond_a0

    goto :goto_a1

    :cond_a0
    move v5, v0

    .line 1607
    :goto_a1
    iget-object v0, v3, Lzeroaicy/org/objectweb/asm/Label;->outgoingEdges:Lzeroaicy/org/objectweb/asm/Edge;

    :goto_a3
    if-nez v0, :cond_a9

    move-object v3, v4

    move v0, v5

    goto/16 :goto_21

    .line 1609
    :cond_a9
    iget-object v6, v0, Lzeroaicy/org/objectweb/asm/Edge;->successor:Lzeroaicy/org/objectweb/asm/Label;

    invoke-virtual {v6}, Lzeroaicy/org/objectweb/asm/Label;->getCanonicalInstance()Lzeroaicy/org/objectweb/asm/Label;

    move-result-object v6

    .line 1610
    iget-object v7, v3, Lzeroaicy/org/objectweb/asm/Label;->frame:Lzeroaicy/org/objectweb/asm/Frame;

    iget-object v8, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget-object v9, v6, Lzeroaicy/org/objectweb/asm/Label;->frame:Lzeroaicy/org/objectweb/asm/Frame;

    iget v10, v0, Lzeroaicy/org/objectweb/asm/Edge;->info:I

    invoke-virtual {v7, v8, v9, v10}, Lzeroaicy/org/objectweb/asm/Frame;->merge(Lzeroaicy/org/objectweb/asm/SymbolTable;Lzeroaicy/org/objectweb/asm/Frame;I)Z

    move-result v7

    if-eqz v7, :cond_c4

    .line 1612
    iget-object v7, v6, Lzeroaicy/org/objectweb/asm/Label;->nextListElement:Lzeroaicy/org/objectweb/asm/Label;

    if-nez v7, :cond_c4

    .line 1615
    iput-object v4, v6, Lzeroaicy/org/objectweb/asm/Label;->nextListElement:Lzeroaicy/org/objectweb/asm/Label;

    move-object v4, v6

    .line 1618
    :cond_c4
    iget-object v0, v0, Lzeroaicy/org/objectweb/asm/Edge;->nextEdge:Lzeroaicy/org/objectweb/asm/Edge;

    goto :goto_a3

    .line 1563
    :cond_c7
    iget-object v2, v0, Lzeroaicy/org/objectweb/asm/Handler;->catchTypeDescriptor:Ljava/lang/String;

    if-nez v2, :cond_cc

    goto :goto_ce

    :cond_cc
    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/Handler;->catchTypeDescriptor:Ljava/lang/String;

    .line 1565
    :goto_ce
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-static {v2, v1}, Lzeroaicy/org/objectweb/asm/Frame;->getAbstractTypeFromInternalName(Lzeroaicy/org/objectweb/asm/SymbolTable;Ljava/lang/String;)I

    move-result v1

    .line 1567
    iget-object v2, v0, Lzeroaicy/org/objectweb/asm/Handler;->handlerPc:Lzeroaicy/org/objectweb/asm/Label;

    invoke-virtual {v2}, Lzeroaicy/org/objectweb/asm/Label;->getCanonicalInstance()Lzeroaicy/org/objectweb/asm/Label;

    move-result-object v2

    .line 1568
    iget-short v3, v2, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    or-int/lit8 v3, v3, 0x2

    int-to-short v3, v3

    iput-short v3, v2, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    .line 1570
    iget-object v3, v0, Lzeroaicy/org/objectweb/asm/Handler;->startPc:Lzeroaicy/org/objectweb/asm/Label;

    invoke-virtual {v3}, Lzeroaicy/org/objectweb/asm/Label;->getCanonicalInstance()Lzeroaicy/org/objectweb/asm/Label;

    move-result-object v3

    .line 1571
    iget-object v4, v0, Lzeroaicy/org/objectweb/asm/Handler;->endPc:Lzeroaicy/org/objectweb/asm/Label;

    invoke-virtual {v4}, Lzeroaicy/org/objectweb/asm/Label;->getCanonicalInstance()Lzeroaicy/org/objectweb/asm/Label;

    move-result-object v4

    :goto_ed
    if-ne v3, v4, :cond_f3

    .line 1577
    iget-object v0, v0, Lzeroaicy/org/objectweb/asm/Handler;->nextHandler:Lzeroaicy/org/objectweb/asm/Handler;

    goto/16 :goto_2

    .line 1573
    :cond_f3
    new-instance v5, Lzeroaicy/org/objectweb/asm/Edge;

    iget-object v6, v3, Lzeroaicy/org/objectweb/asm/Label;->outgoingEdges:Lzeroaicy/org/objectweb/asm/Edge;

    invoke-direct {v5, v1, v2, v6}, Lzeroaicy/org/objectweb/asm/Edge;-><init>(ILzeroaicy/org/objectweb/asm/Label;Lzeroaicy/org/objectweb/asm/Edge;)V

    iput-object v5, v3, Lzeroaicy/org/objectweb/asm/Label;->outgoingEdges:Lzeroaicy/org/objectweb/asm/Edge;

    .line 1575
    iget-object v3, v3, Lzeroaicy/org/objectweb/asm/Label;->nextBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    goto :goto_ed
.end method

.method private computeMaxStackAndLocal()V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1663
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->firstHandler:Lzeroaicy/org/objectweb/asm/Handler;

    :goto_2
    const v1, 0x7fffffff

    if-nez v0, :cond_90

    .line 1687
    iget-boolean v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->hasSubroutines:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_51

    int-to-short v0, v2

    .line 1691
    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->firstBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    invoke-virtual {v3, v0}, Lzeroaicy/org/objectweb/asm/Label;->markSubroutine(S)V

    move v3, v0

    :goto_13
    if-le v0, v3, :cond_2c

    .line 1711
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->firstBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    :goto_17
    if-nez v0, :cond_1a

    goto :goto_51

    .line 1713
    :cond_1a
    iget-short v3, v0, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_29

    .line 1716
    iget-object v3, v0, Lzeroaicy/org/objectweb/asm/Label;->outgoingEdges:Lzeroaicy/org/objectweb/asm/Edge;

    iget-object v3, v3, Lzeroaicy/org/objectweb/asm/Edge;->nextEdge:Lzeroaicy/org/objectweb/asm/Edge;

    iget-object v3, v3, Lzeroaicy/org/objectweb/asm/Edge;->successor:Lzeroaicy/org/objectweb/asm/Label;

    .line 1717
    invoke-virtual {v3, v0}, Lzeroaicy/org/objectweb/asm/Label;->addSubroutineRetSuccessors(Lzeroaicy/org/objectweb/asm/Label;)V

    .line 1719
    :cond_29
    iget-object v0, v0, Lzeroaicy/org/objectweb/asm/Label;->nextBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    goto :goto_17

    .line 1695
    :cond_2c
    iget-object v4, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->firstBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    :goto_2e
    if-nez v4, :cond_34

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    goto :goto_13

    .line 1697
    :cond_34
    iget-short v5, v4, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_4e

    iget-short v5, v4, Lzeroaicy/org/objectweb/asm/Label;->subroutineId:S

    if-ne v5, v0, :cond_4e

    .line 1699
    iget-object v5, v4, Lzeroaicy/org/objectweb/asm/Label;->outgoingEdges:Lzeroaicy/org/objectweb/asm/Edge;

    iget-object v5, v5, Lzeroaicy/org/objectweb/asm/Edge;->nextEdge:Lzeroaicy/org/objectweb/asm/Edge;

    iget-object v5, v5, Lzeroaicy/org/objectweb/asm/Edge;->successor:Lzeroaicy/org/objectweb/asm/Label;

    .line 1700
    iget-short v6, v5, Lzeroaicy/org/objectweb/asm/Label;->subroutineId:S

    if-nez v6, :cond_4e

    add-int/lit8 v3, v3, 0x1

    int-to-short v3, v3

    .line 1702
    invoke-virtual {v5, v3}, Lzeroaicy/org/objectweb/asm/Label;->markSubroutine(S)V

    .line 1705
    :cond_4e
    iget-object v4, v4, Lzeroaicy/org/objectweb/asm/Label;->nextBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    goto :goto_2e

    .line 1727
    :cond_51
    :goto_51
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->firstBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    .line 1728
    sget-object v3, Lzeroaicy/org/objectweb/asm/Label;->EMPTY_LIST:Lzeroaicy/org/objectweb/asm/Label;

    iput-object v3, v0, Lzeroaicy/org/objectweb/asm/Label;->nextListElement:Lzeroaicy/org/objectweb/asm/Label;

    .line 1729
    iget v3, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxStack:I

    .line 1730
    :goto_59
    sget-object v4, Lzeroaicy/org/objectweb/asm/Label;->EMPTY_LIST:Lzeroaicy/org/objectweb/asm/Label;

    if-ne v0, v4, :cond_60

    .line 1764
    iput v3, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxStack:I

    return-void

    .line 1735
    :cond_60
    iget-object v4, v0, Lzeroaicy/org/objectweb/asm/Label;->nextListElement:Lzeroaicy/org/objectweb/asm/Label;

    .line 1737
    iget-short v5, v0, Lzeroaicy/org/objectweb/asm/Label;->inputStackSize:S

    .line 1738
    iget-short v6, v0, Lzeroaicy/org/objectweb/asm/Label;->outputStackMax:S

    add-int/2addr v6, v5

    if-le v6, v3, :cond_6a

    move v3, v6

    .line 1745
    :cond_6a
    iget-object v6, v0, Lzeroaicy/org/objectweb/asm/Label;->outgoingEdges:Lzeroaicy/org/objectweb/asm/Edge;

    .line 1746
    iget-short v0, v0, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_74

    .line 1751
    iget-object v6, v6, Lzeroaicy/org/objectweb/asm/Edge;->nextEdge:Lzeroaicy/org/objectweb/asm/Edge;

    :cond_74
    move-object v0, v4

    :goto_75
    if-nez v6, :cond_78

    goto :goto_59

    .line 1754
    :cond_78
    iget-object v4, v6, Lzeroaicy/org/objectweb/asm/Edge;->successor:Lzeroaicy/org/objectweb/asm/Label;

    .line 1755
    iget-object v7, v4, Lzeroaicy/org/objectweb/asm/Label;->nextListElement:Lzeroaicy/org/objectweb/asm/Label;

    if-nez v7, :cond_8d

    .line 1756
    iget v7, v6, Lzeroaicy/org/objectweb/asm/Edge;->info:I

    if-ne v7, v1, :cond_84

    const/4 v7, 0x1

    goto :goto_87

    :cond_84
    iget v7, v6, Lzeroaicy/org/objectweb/asm/Edge;->info:I

    add-int/2addr v7, v5

    :goto_87
    int-to-short v7, v7

    iput-short v7, v4, Lzeroaicy/org/objectweb/asm/Label;->inputStackSize:S

    .line 1758
    iput-object v0, v4, Lzeroaicy/org/objectweb/asm/Label;->nextListElement:Lzeroaicy/org/objectweb/asm/Label;

    move-object v0, v4

    .line 1761
    :cond_8d
    iget-object v6, v6, Lzeroaicy/org/objectweb/asm/Edge;->nextEdge:Lzeroaicy/org/objectweb/asm/Edge;

    goto :goto_75

    .line 1665
    :cond_90
    iget-object v2, v0, Lzeroaicy/org/objectweb/asm/Handler;->handlerPc:Lzeroaicy/org/objectweb/asm/Label;

    .line 1666
    iget-object v3, v0, Lzeroaicy/org/objectweb/asm/Handler;->startPc:Lzeroaicy/org/objectweb/asm/Label;

    .line 1667
    iget-object v4, v0, Lzeroaicy/org/objectweb/asm/Handler;->endPc:Lzeroaicy/org/objectweb/asm/Label;

    :goto_96
    if-ne v3, v4, :cond_9c

    .line 1683
    iget-object v0, v0, Lzeroaicy/org/objectweb/asm/Handler;->nextHandler:Lzeroaicy/org/objectweb/asm/Handler;

    goto/16 :goto_2

    .line 1670
    :cond_9c
    iget-short v5, v3, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    and-int/lit8 v5, v5, 0x10

    if-nez v5, :cond_ac

    .line 1671
    new-instance v5, Lzeroaicy/org/objectweb/asm/Edge;

    iget-object v6, v3, Lzeroaicy/org/objectweb/asm/Label;->outgoingEdges:Lzeroaicy/org/objectweb/asm/Edge;

    invoke-direct {v5, v1, v2, v6}, Lzeroaicy/org/objectweb/asm/Edge;-><init>(ILzeroaicy/org/objectweb/asm/Label;Lzeroaicy/org/objectweb/asm/Edge;)V

    iput-object v5, v3, Lzeroaicy/org/objectweb/asm/Label;->outgoingEdges:Lzeroaicy/org/objectweb/asm/Edge;

    goto :goto_bd

    .line 1677
    :cond_ac
    iget-object v5, v3, Lzeroaicy/org/objectweb/asm/Label;->outgoingEdges:Lzeroaicy/org/objectweb/asm/Edge;

    iget-object v5, v5, Lzeroaicy/org/objectweb/asm/Edge;->nextEdge:Lzeroaicy/org/objectweb/asm/Edge;

    new-instance v6, Lzeroaicy/org/objectweb/asm/Edge;

    iget-object v7, v3, Lzeroaicy/org/objectweb/asm/Label;->outgoingEdges:Lzeroaicy/org/objectweb/asm/Edge;

    iget-object v7, v7, Lzeroaicy/org/objectweb/asm/Edge;->nextEdge:Lzeroaicy/org/objectweb/asm/Edge;

    iget-object v7, v7, Lzeroaicy/org/objectweb/asm/Edge;->nextEdge:Lzeroaicy/org/objectweb/asm/Edge;

    invoke-direct {v6, v1, v2, v7}, Lzeroaicy/org/objectweb/asm/Edge;-><init>(ILzeroaicy/org/objectweb/asm/Label;Lzeroaicy/org/objectweb/asm/Edge;)V

    iput-object v6, v5, Lzeroaicy/org/objectweb/asm/Edge;->nextEdge:Lzeroaicy/org/objectweb/asm/Edge;

    .line 1681
    :goto_bd
    iget-object v3, v3, Lzeroaicy/org/objectweb/asm/Label;->nextBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    goto :goto_96
.end method

.method private endCurrentBasicBlockWithNoSuccessor()V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1795
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->compute:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ne v0, v1, :cond_29

    .line 1796
    new-instance v0, Lzeroaicy/org/objectweb/asm/Label;

    invoke-direct {v0}, Lzeroaicy/org/objectweb/asm/Label;-><init>()V

    .line 1797
    new-instance v1, Lzeroaicy/org/objectweb/asm/Frame;

    invoke-direct {v1, v0}, Lzeroaicy/org/objectweb/asm/Frame;-><init>(Lzeroaicy/org/objectweb/asm/Label;)V

    iput-object v1, v0, Lzeroaicy/org/objectweb/asm/Label;->frame:Lzeroaicy/org/objectweb/asm/Frame;

    .line 1798
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v1, v1, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v3, v3, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    invoke-virtual {v0, v1, v3}, Lzeroaicy/org/objectweb/asm/Label;->resolve([BI)Z

    .line 1799
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    iput-object v0, v1, Lzeroaicy/org/objectweb/asm/Label;->nextBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    .line 1800
    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    .line 1801
    move-object v0, v2

    check-cast v0, Lzeroaicy/org/objectweb/asm/Label;

    iput-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    goto :goto_38

    :cond_29
    const/4 v1, 0x1

    if-ne v0, v1, :cond_38

    .line 1803
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    iget v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxRelativeStackSize:I

    int-to-short v1, v1

    iput-short v1, v0, Lzeroaicy/org/objectweb/asm/Label;->outputStackMax:S

    .line 1804
    move-object v0, v2

    check-cast v0, Lzeroaicy/org/objectweb/asm/Label;

    iput-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    :cond_38
    :goto_38
    return-void
.end method

.method private putAbstractTypes(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    :goto_0
    if-lt p1, p2, :cond_3

    return-void

    .line 1960
    :cond_3
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentFrame:[I

    aget v1, v1, p1

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->stackMapTableEntries:Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-static {v0, v1, v2}, Lzeroaicy/org/objectweb/asm/Frame;->putAbstractType(Lzeroaicy/org/objectweb/asm/SymbolTable;ILzeroaicy/org/objectweb/asm/ByteVector;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method private putFrame()V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1860
    move-object/from16 v0, p0

    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentFrame:[I

    const/4 v2, 0x1

    aget v3, v1, v2

    .line 1861
    const/4 v4, 0x2

    aget v1, v1, v4

    .line 1862
    iget-object v4, v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v4}, Lzeroaicy/org/objectweb/asm/SymbolTable;->getMajorVersion()I

    move-result v4

    const/16 v5, 0x32

    const/4 v6, 0x3

    const/4 v7, 0x0

    if-ge v4, v5, :cond_31

    .line 1864
    iget-object v2, v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->stackMapTableEntries:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v4, v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentFrame:[I

    aget v4, v4, v7

    invoke-virtual {v2, v4}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v2

    invoke-virtual {v2, v3}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    add-int/2addr v3, v6

    .line 1865
    invoke-direct {v0, v6, v3}, Lzeroaicy/org/objectweb/asm/MethodWriter;->putAbstractTypes(II)V

    .line 1866
    iget-object v2, v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->stackMapTableEntries:Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-virtual {v2, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 1867
    add-int/2addr v1, v3

    invoke-direct {v0, v3, v1}, Lzeroaicy/org/objectweb/asm/MethodWriter;->putAbstractTypes(II)V

    return-void

    .line 1870
    :cond_31
    iget v4, v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->stackMapTableNumberOfEntries:I

    if-nez v4, :cond_3a

    iget-object v4, v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentFrame:[I

    aget v4, v4, v7

    goto :goto_44

    :cond_3a
    iget-object v4, v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentFrame:[I

    aget v4, v4, v7

    iget-object v5, v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->previousFrame:[I

    aget v5, v5, v7

    sub-int/2addr v4, v5

    sub-int/2addr v4, v2

    .line 1874
    :goto_44
    iget-object v5, v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->previousFrame:[I

    aget v5, v5, v2

    sub-int v8, v3, v5

    const/16 v9, 0xfc

    const/16 v10, 0xf8

    const/16 v11, 0xf7

    const/16 v12, 0x40

    const/16 v13, 0xff

    const/16 v14, 0xfb

    if-nez v1, :cond_69

    packed-switch v8, :pswitch_data_10c

    goto :goto_77

    :pswitch_5c  #0x1, 0x2, 0x3
    const/16 v2, 0xfc

    goto :goto_79

    :pswitch_5f  #0x0
    if-ge v4, v12, :cond_63

    const/4 v2, 0x0

    goto :goto_79

    :cond_63
    const/16 v2, 0xfb

    goto :goto_79

    :pswitch_66  #0xfffffffd, 0xfffffffe, 0xffffffff
    const/16 v2, 0xf8

    goto :goto_79

    :cond_69
    if-nez v8, :cond_77

    if-ne v1, v2, :cond_77

    const/16 v2, 0x3f

    if-ge v4, v2, :cond_74

    const/16 v2, 0x40

    goto :goto_79

    :cond_74
    const/16 v2, 0xf7

    goto :goto_79

    :cond_77
    :goto_77
    const/16 v2, 0xff

    :goto_79
    if-eq v2, v13, :cond_96

    const/4 v15, 0x3

    :goto_7c
    if-ge v7, v5, :cond_96

    if-lt v7, v3, :cond_81

    goto :goto_96

    .line 1906
    :cond_81
    iget-object v6, v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentFrame:[I

    aget v6, v6, v15

    iget-object v13, v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->previousFrame:[I

    aget v13, v13, v15

    if-eq v6, v13, :cond_8e

    const/16 v2, 0xff

    goto :goto_96

    :cond_8e
    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x3

    const/16 v13, 0xff

    goto :goto_7c

    :cond_96
    :goto_96
    if-eqz v2, :cond_105

    if-eq v2, v12, :cond_f7

    if-eq v2, v11, :cond_e6

    if-eq v2, v10, :cond_db

    if-eq v2, v14, :cond_d1

    if-eq v2, v9, :cond_c0

    .line 1943
    iget-object v2, v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->stackMapTableEntries:Lzeroaicy/org/objectweb/asm/ByteVector;

    const/16 v5, 0xff

    invoke-virtual {v2, v5}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v2

    invoke-virtual {v2, v4}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v2

    invoke-virtual {v2, v3}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    const/4 v2, 0x3

    add-int/2addr v3, v2

    .line 1944
    invoke-direct {v0, v2, v3}, Lzeroaicy/org/objectweb/asm/MethodWriter;->putAbstractTypes(II)V

    .line 1945
    iget-object v2, v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->stackMapTableEntries:Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-virtual {v2, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 1946
    add-int/2addr v1, v3

    invoke-direct {v0, v3, v1}, Lzeroaicy/org/objectweb/asm/MethodWriter;->putAbstractTypes(II)V

    goto :goto_10a

    .line 1936
    :cond_c0
    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->stackMapTableEntries:Lzeroaicy/org/objectweb/asm/ByteVector;

    add-int/2addr v8, v14

    invoke-virtual {v1, v8}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v4}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 1939
    const/4 v1, 0x3

    add-int/2addr v5, v1

    add-int/2addr v3, v1

    invoke-direct {v0, v5, v3}, Lzeroaicy/org/objectweb/asm/MethodWriter;->putAbstractTypes(II)V

    goto :goto_10a

    .line 1928
    :cond_d1
    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->stackMapTableEntries:Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-virtual {v1, v14}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v4}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    goto :goto_10a

    .line 1931
    :cond_db
    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->stackMapTableEntries:Lzeroaicy/org/objectweb/asm/ByteVector;

    add-int/2addr v8, v14

    invoke-virtual {v1, v8}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v4}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    goto :goto_10a

    .line 1922
    :cond_e6
    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->stackMapTableEntries:Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-virtual {v1, v11}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v4}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 1925
    add-int/lit8 v1, v3, 0x3

    add-int/lit8 v3, v3, 0x4

    invoke-direct {v0, v1, v3}, Lzeroaicy/org/objectweb/asm/MethodWriter;->putAbstractTypes(II)V

    goto :goto_10a

    .line 1918
    :cond_f7
    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->stackMapTableEntries:Lzeroaicy/org/objectweb/asm/ByteVector;

    add-int/2addr v4, v12

    invoke-virtual {v1, v4}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 1919
    add-int/lit8 v1, v3, 0x3

    add-int/lit8 v3, v3, 0x4

    invoke-direct {v0, v1, v3}, Lzeroaicy/org/objectweb/asm/MethodWriter;->putAbstractTypes(II)V

    goto :goto_10a

    .line 1915
    :cond_105
    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->stackMapTableEntries:Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-virtual {v1, v4}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    :goto_10a
    return-void

    nop

    :pswitch_data_10c
    .packed-switch -0x3
        :pswitch_66  #fffffffd
        :pswitch_66  #fffffffe
        :pswitch_66  #ffffffff
        :pswitch_5f  #00000000
        :pswitch_5c  #00000001
        :pswitch_5c  #00000002
        :pswitch_5c  #00000003
    .end packed-switch
.end method

.method private putFrameType(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1975
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_10

    .line 1976
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->stackMapTableEntries:Lzeroaicy/org/objectweb/asm/ByteVector;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    goto :goto_38

    .line 1977
    :cond_10
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_29

    .line 1978
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->stackMapTableEntries:Lzeroaicy/org/objectweb/asm/ByteVector;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p1

    iget p1, p1, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    goto :goto_38

    .line 1982
    :cond_29
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->stackMapTableEntries:Lzeroaicy/org/objectweb/asm/ByteVector;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    check-cast p1, Lzeroaicy/org/objectweb/asm/Label;

    iget p1, p1, Lzeroaicy/org/objectweb/asm/Label;->bytecodeOffset:I

    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    :goto_38
    return-void
.end method

.method private visitSwitchInsn(Lzeroaicy/org/objectweb/asm/Label;[Lzeroaicy/org/objectweb/asm/Label;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzeroaicy/org/objectweb/asm/Label;",
            "[",
            "Lzeroaicy/org/objectweb/asm/Label;",
            ")V"
        }
    .end annotation

    .line 1363
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    if-eqz v0, :cond_5a

    .line 1364
    iget v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->compute:I

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3e

    .line 1365
    iget-object v0, v0, Lzeroaicy/org/objectweb/asm/Label;->frame:Lzeroaicy/org/objectweb/asm/Frame;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Lzeroaicy/org/objectweb/asm/Symbol;

    move-object v2, v1

    check-cast v2, Lzeroaicy/org/objectweb/asm/SymbolTable;

    const/16 v2, 0xab

    invoke-virtual {v0, v2, v3, v1, v1}, Lzeroaicy/org/objectweb/asm/Frame;->execute(IILzeroaicy/org/objectweb/asm/Symbol;Lzeroaicy/org/objectweb/asm/SymbolTable;)V

    .line 1367
    invoke-direct {p0, v3, p1}, Lzeroaicy/org/objectweb/asm/MethodWriter;->addSuccessorToCurrentBasicBlock(ILzeroaicy/org/objectweb/asm/Label;)V

    .line 1368
    invoke-virtual {p1}, Lzeroaicy/org/objectweb/asm/Label;->getCanonicalInstance()Lzeroaicy/org/objectweb/asm/Label;

    move-result-object p1

    iget-short v0, p1, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    or-int/lit8 v0, v0, 0x2

    int-to-short v0, v0

    iput-short v0, p1, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    const/4 p1, 0x0

    .line 1371
    :goto_27
    array-length v0, p2

    if-lt p1, v0, :cond_2b

    goto :goto_57

    .line 1369
    :cond_2b
    aget-object v0, p2, p1

    .line 1370
    invoke-direct {p0, v3, v0}, Lzeroaicy/org/objectweb/asm/MethodWriter;->addSuccessorToCurrentBasicBlock(ILzeroaicy/org/objectweb/asm/Label;)V

    .line 1371
    invoke-virtual {v0}, Lzeroaicy/org/objectweb/asm/Label;->getCanonicalInstance()Lzeroaicy/org/objectweb/asm/Label;

    move-result-object v0

    iget-short v1, v0, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    or-int/lit8 v1, v1, 0x2

    int-to-short v1, v1

    iput-short v1, v0, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    add-int/lit8 p1, p1, 0x1

    goto :goto_27

    :cond_3e
    const/4 v0, 0x1

    if-ne v1, v0, :cond_57

    .line 1375
    iget v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->relativeStackSize:I

    sub-int/2addr v1, v0

    iput v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->relativeStackSize:I

    .line 1377
    invoke-direct {p0, v1, p1}, Lzeroaicy/org/objectweb/asm/MethodWriter;->addSuccessorToCurrentBasicBlock(ILzeroaicy/org/objectweb/asm/Label;)V

    .line 1379
    :goto_49
    array-length p1, p2

    if-lt v3, p1, :cond_4d

    goto :goto_57

    .line 1378
    :cond_4d
    aget-object p1, p2, v3

    .line 1379
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->relativeStackSize:I

    invoke-direct {p0, v0, p1}, Lzeroaicy/org/objectweb/asm/MethodWriter;->addSuccessorToCurrentBasicBlock(ILzeroaicy/org/objectweb/asm/Label;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_49

    .line 1383
    :cond_57
    :goto_57
    invoke-direct {p0}, Lzeroaicy/org/objectweb/asm/MethodWriter;->endCurrentBasicBlockWithNoSuccessor()V

    :cond_5a
    return-void
.end method


# virtual methods
.method canCopyMethodAttributes(Lzeroaicy/org/objectweb/asm/ClassReader;ZZIII)Z
    .registers 9

    .line 2027
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->getSource()Lzeroaicy/org/objectweb/asm/ClassReader;

    move-result-object v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_66

    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->descriptorIndex:I

    if-ne p4, v0, :cond_66

    iget p4, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->signatureIndex:I

    if-ne p5, p4, :cond_66

    const/high16 p4, 0x20000

    if-nez p3, :cond_1b

    iget p3, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->accessFlags:I

    and-int/2addr p3, p4

    if-eqz p3, :cond_21

    goto :goto_66

    :cond_1b
    iget p3, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->accessFlags:I

    and-int/2addr p3, p4

    if-nez p3, :cond_21

    goto :goto_66

    .line 2033
    :cond_21
    iget-object p3, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {p3}, Lzeroaicy/org/objectweb/asm/SymbolTable;->getMajorVersion()I

    move-result p3

    const/16 p4, 0x31

    const/4 p5, 0x1

    if-ge p3, p4, :cond_35

    iget p3, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->accessFlags:I

    and-int/lit16 p3, p3, 0x1000

    if-nez p3, :cond_33

    goto :goto_35

    :cond_33
    const/4 p3, 0x1

    goto :goto_36

    :cond_35
    :goto_35
    const/4 p3, 0x0

    :goto_36
    if-nez p2, :cond_3b

    if-eqz p3, :cond_3e

    goto :goto_3d

    :cond_3b
    if-nez p3, :cond_3e

    :goto_3d
    return v1

    :cond_3e
    if-nez p6, :cond_45

    .line 2039
    iget p1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->numberOfExceptions:I

    if-eqz p1, :cond_65

    return v1

    .line 2042
    :cond_45
    invoke-virtual {p1, p6}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result p2

    iget p3, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->numberOfExceptions:I

    if-ne p2, p3, :cond_65

    add-int/lit8 p6, p6, 0x2

    const/4 p2, 0x0

    .line 2044
    :goto_50
    iget p3, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->numberOfExceptions:I

    if-lt p2, p3, :cond_55

    goto :goto_65

    .line 2045
    :cond_55
    invoke-virtual {p1, p6}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result p3

    iget-object p4, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->exceptionIndexTable:[I

    aget p4, p4, p2

    if-eq p3, p4, :cond_60

    return v1

    :cond_60
    add-int/lit8 p6, p6, 0x2

    add-int/lit8 p2, p2, 0x1

    goto :goto_50

    :cond_65
    :goto_65
    return p5

    :cond_66
    :goto_66
    return v1
.end method

.method final collectAttributePrototypes(Lzeroaicy/org/objectweb/asm/Attribute$Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzeroaicy/org/objectweb/asm/Attribute$Set;",
            ")V"
        }
    .end annotation

    .line 2391
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->firstAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    invoke-virtual {p1, v0}, Lzeroaicy/org/objectweb/asm/Attribute$Set;->addAttributes(Lzeroaicy/org/objectweb/asm/Attribute;)V

    .line 2392
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->firstCodeAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    invoke-virtual {p1, v0}, Lzeroaicy/org/objectweb/asm/Attribute$Set;->addAttributes(Lzeroaicy/org/objectweb/asm/Attribute;)V

    return-void
.end method

.method computeMethodInfoSize()I
    .registers 9

    .line 2078
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->sourceOffset:I

    if-eqz v0, :cond_9

    .line 2080
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->sourceLength:I

    add-int/lit8 v0, v0, 0x6

    return v0

    .line 2085
    :cond_9
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v0, v0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    const/16 v1, 0x8

    if-lez v0, :cond_c7

    .line 2086
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v0, v0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    const v2, 0xffff

    if-gt v0, v2, :cond_b3

    .line 2090
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    const-string v2, "Code"

    invoke-virtual {v0, v2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    .line 2093
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v0, v0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v0, v0, 0x10

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->firstHandler:Lzeroaicy/org/objectweb/asm/Handler;

    invoke-static {v2}, Lzeroaicy/org/objectweb/asm/Handler;->getExceptionTableSize(Lzeroaicy/org/objectweb/asm/Handler;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    .line 2094
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->stackMapTableEntries:Lzeroaicy/org/objectweb/asm/ByteVector;

    if-eqz v2, :cond_52

    .line 2095
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->getMajorVersion()I

    move-result v2

    const/16 v3, 0x32

    if-ge v2, v3, :cond_3f

    const/4 v2, 0x0

    goto :goto_40

    :cond_3f
    const/4 v2, 0x1

    .line 2096
    :goto_40
    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    if-eqz v2, :cond_47

    const-string v2, "StackMapTable"

    goto :goto_49

    :cond_47
    const-string v2, "StackMap"

    :goto_49
    invoke-virtual {v3, v2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    .line 2098
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->stackMapTableEntries:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v2, v2, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    add-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 2100
    :cond_52
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lineNumberTable:Lzeroaicy/org/objectweb/asm/ByteVector;

    if-eqz v2, :cond_63

    .line 2101
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    const-string v3, "LineNumberTable"

    invoke-virtual {v2, v3}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    .line 2103
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lineNumberTable:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v2, v2, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    add-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 2105
    :cond_63
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->localVariableTable:Lzeroaicy/org/objectweb/asm/ByteVector;

    if-eqz v2, :cond_74

    .line 2106
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    const-string v3, "LocalVariableTable"

    invoke-virtual {v2, v3}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    .line 2108
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->localVariableTable:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v2, v2, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    add-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 2110
    :cond_74
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->localVariableTypeTable:Lzeroaicy/org/objectweb/asm/ByteVector;

    if-eqz v2, :cond_85

    .line 2111
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    const-string v3, "LocalVariableTypeTable"

    invoke-virtual {v2, v3}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    .line 2113
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->localVariableTypeTable:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v2, v2, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    add-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 2115
    :cond_85
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastCodeRuntimeVisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    if-eqz v2, :cond_90

    .line 2116
    const-string v3, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v2, v3}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->computeAnnotationsSize(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2120
    :cond_90
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastCodeRuntimeInvisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    if-eqz v2, :cond_9b

    .line 2121
    const-string v3, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v2, v3}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->computeAnnotationsSize(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2125
    :cond_9b
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->firstCodeAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    if-eqz v2, :cond_c9

    .line 2126
    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget-object v4, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v4, v4, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    iget-object v5, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v5, v5, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    iget v6, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxStack:I

    iget v7, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxLocals:I

    invoke-virtual/range {v2 .. v7}, Lzeroaicy/org/objectweb/asm/Attribute;->computeAttributesSize(Lzeroaicy/org/objectweb/asm/SymbolTable;[BIII)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_c9

    .line 2087
    :cond_b3
    new-instance v0, Lzeroaicy/org/objectweb/asm/MethodTooLargeException;

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->getClassName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->name:Ljava/lang/String;

    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->descriptor:Ljava/lang/String;

    iget-object v4, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v4, v4, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    invoke-direct {v0, v1, v2, v3, v4}, Lzeroaicy/org/objectweb/asm/MethodTooLargeException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    :cond_c7
    const/16 v0, 0x8

    .line 2131
    :cond_c9
    :goto_c9
    iget v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->numberOfExceptions:I

    if-lez v2, :cond_da

    .line 2132
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    const-string v3, "Exceptions"

    invoke-virtual {v2, v3}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    .line 2133
    iget v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->numberOfExceptions:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 2135
    :cond_da
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->accessFlags:I

    iget v3, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->signatureIndex:I

    invoke-static {v1, v2, v3}, Lzeroaicy/org/objectweb/asm/Attribute;->computeAttributesSize(Lzeroaicy/org/objectweb/asm/SymbolTable;II)I

    move-result v1

    .line 2136
    add-int/2addr v0, v1

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastRuntimeVisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastRuntimeInvisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastRuntimeVisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    iget-object v4, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastRuntimeInvisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    invoke-static {v1, v2, v3, v4}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->computeAnnotationsSize(Lzeroaicy/org/objectweb/asm/AnnotationWriter;Lzeroaicy/org/objectweb/asm/AnnotationWriter;Lzeroaicy/org/objectweb/asm/AnnotationWriter;Lzeroaicy/org/objectweb/asm/AnnotationWriter;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2142
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastRuntimeVisibleParameterAnnotations:[Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    if-eqz v1, :cond_102

    .line 2143
    iget v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->visibleAnnotableParameterCount:I

    if-nez v2, :cond_fb

    array-length v2, v1

    :cond_fb
    const-string v3, "RuntimeVisibleParameterAnnotations"

    invoke-static {v3, v1, v2}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->computeParameterAnnotationsSize(Ljava/lang/String;[Lzeroaicy/org/objectweb/asm/AnnotationWriter;I)I

    move-result v1

    add-int/2addr v0, v1

    .line 2151
    :cond_102
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastRuntimeInvisibleParameterAnnotations:[Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    if-eqz v1, :cond_112

    .line 2152
    iget v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->invisibleAnnotableParameterCount:I

    if-nez v2, :cond_10b

    array-length v2, v1

    :cond_10b
    const-string v3, "RuntimeInvisibleParameterAnnotations"

    invoke-static {v3, v1, v2}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->computeParameterAnnotationsSize(Ljava/lang/String;[Lzeroaicy/org/objectweb/asm/AnnotationWriter;I)I

    move-result v1

    add-int/2addr v0, v1

    .line 2160
    :cond_112
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->defaultValue:Lzeroaicy/org/objectweb/asm/ByteVector;

    if-eqz v1, :cond_124

    .line 2161
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    const-string v2, "AnnotationDefault"

    invoke-virtual {v1, v2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    .line 2162
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->defaultValue:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v1, v1, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    .line 2164
    :cond_124
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->parameters:Lzeroaicy/org/objectweb/asm/ByteVector;

    if-eqz v1, :cond_136

    .line 2165
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    const-string v2, "MethodParameters"

    invoke-virtual {v1, v2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    .line 2167
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->parameters:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v1, v1, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    .line 2169
    :cond_136
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->firstAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    if-eqz v1, :cond_141

    .line 2170
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v1, v2}, Lzeroaicy/org/objectweb/asm/Attribute;->computeAttributesSize(Lzeroaicy/org/objectweb/asm/SymbolTable;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_141
    return v0
.end method

.method hasAsmInstructions()Z
    .registers 2

    .line 634
    iget-boolean v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->hasAsmInstructions:Z

    return v0
.end method

.method hasFrames()Z
    .registers 2

    .line 630
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->stackMapTableNumberOfEntries:I

    if-gtz v0, :cond_6

    const/4 v0, 0x0

    goto :goto_7

    :cond_6
    const/4 v0, 0x1

    :goto_7
    return v0
.end method

.method putMethodInfo(Lzeroaicy/org/objectweb/asm/ByteVector;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzeroaicy/org/objectweb/asm/ByteVector;",
            ")V"
        }
    .end annotation

    .line 2182
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->getMajorVersion()I

    move-result v0

    const/16 v1, 0x31

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_e

    const/4 v0, 0x0

    goto :goto_f

    :cond_e
    const/4 v0, 0x1

    :goto_f
    if-eqz v0, :cond_14

    const/16 v1, 0x1000

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    .line 2184
    :goto_15
    xor-int/lit8 v1, v1, -0x1

    iget v4, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->accessFlags:I

    and-int/2addr v1, v4

    invoke-virtual {p1, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v1

    iget v4, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->nameIndex:I

    invoke-virtual {v1, v4}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v1

    iget v4, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->descriptorIndex:I

    invoke-virtual {v1, v4}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 2186
    iget v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->sourceOffset:I

    if-eqz v1, :cond_3d

    .line 2187
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->getSource()Lzeroaicy/org/objectweb/asm/ClassReader;

    move-result-object v0

    iget-object v0, v0, Lzeroaicy/org/objectweb/asm/ClassReader;->classFileBuffer:[B

    iget v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->sourceOffset:I

    iget v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->sourceLength:I

    invoke-virtual {p1, v0, v1, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByteArray([BII)Lzeroaicy/org/objectweb/asm/ByteVector;

    return-void

    .line 2192
    :cond_3d
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v1, v1, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    if-lez v1, :cond_45

    const/4 v1, 0x1

    goto :goto_46

    :cond_45
    const/4 v1, 0x0

    .line 2195
    :goto_46
    iget v4, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->numberOfExceptions:I

    if-lez v4, :cond_4c

    add-int/lit8 v1, v1, 0x1

    .line 2198
    :cond_4c
    iget v4, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->accessFlags:I

    and-int/lit16 v5, v4, 0x1000

    if-eqz v5, :cond_56

    if-eqz v0, :cond_56

    add-int/lit8 v1, v1, 0x1

    .line 2201
    :cond_56
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->signatureIndex:I

    if-eqz v0, :cond_5c

    add-int/lit8 v1, v1, 0x1

    :cond_5c
    const/high16 v0, 0x20000

    and-int/2addr v0, v4

    if-eqz v0, :cond_63

    add-int/lit8 v1, v1, 0x1

    .line 2207
    :cond_63
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastRuntimeVisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    if-eqz v0, :cond_69

    add-int/lit8 v1, v1, 0x1

    .line 2210
    :cond_69
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastRuntimeInvisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    if-eqz v0, :cond_6f

    add-int/lit8 v1, v1, 0x1

    .line 2213
    :cond_6f
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastRuntimeVisibleParameterAnnotations:[Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    if-eqz v0, :cond_75

    add-int/lit8 v1, v1, 0x1

    .line 2216
    :cond_75
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastRuntimeInvisibleParameterAnnotations:[Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    if-eqz v0, :cond_7b

    add-int/lit8 v1, v1, 0x1

    .line 2219
    :cond_7b
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastRuntimeVisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    if-eqz v0, :cond_81

    add-int/lit8 v1, v1, 0x1

    .line 2222
    :cond_81
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastRuntimeInvisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    if-eqz v0, :cond_87

    add-int/lit8 v1, v1, 0x1

    .line 2225
    :cond_87
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->defaultValue:Lzeroaicy/org/objectweb/asm/ByteVector;

    if-eqz v0, :cond_8d

    add-int/lit8 v1, v1, 0x1

    .line 2228
    :cond_8d
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->parameters:Lzeroaicy/org/objectweb/asm/ByteVector;

    if-eqz v0, :cond_93

    add-int/lit8 v1, v1, 0x1

    .line 2231
    :cond_93
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->firstAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    if-eqz v0, :cond_9c

    .line 2232
    invoke-virtual {v0}, Lzeroaicy/org/objectweb/asm/Attribute;->getAttributeCount()I

    move-result v0

    add-int/2addr v1, v0

    .line 2235
    :cond_9c
    invoke-virtual {p1, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 2236
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v0, v0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    if-lez v0, :cond_23c

    .line 2239
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v0, v0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v0, v0, 0xa

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->firstHandler:Lzeroaicy/org/objectweb/asm/Handler;

    invoke-static {v1}, Lzeroaicy/org/objectweb/asm/Handler;->getExceptionTableSize(Lzeroaicy/org/objectweb/asm/Handler;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2241
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->stackMapTableEntries:Lzeroaicy/org/objectweb/asm/ByteVector;

    if-eqz v1, :cond_bd

    .line 2243
    iget v1, v1, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    const/4 v1, 0x1

    goto :goto_be

    :cond_bd
    const/4 v1, 0x0

    .line 2246
    :goto_be
    iget-object v4, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lineNumberTable:Lzeroaicy/org/objectweb/asm/ByteVector;

    if-eqz v4, :cond_c9

    .line 2248
    iget v4, v4, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v4, v4, 0x8

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    .line 2251
    :cond_c9
    iget-object v4, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->localVariableTable:Lzeroaicy/org/objectweb/asm/ByteVector;

    if-eqz v4, :cond_d4

    .line 2253
    iget v4, v4, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v4, v4, 0x8

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    .line 2256
    :cond_d4
    iget-object v4, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->localVariableTypeTable:Lzeroaicy/org/objectweb/asm/ByteVector;

    if-eqz v4, :cond_df

    .line 2258
    iget v4, v4, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v4, v4, 0x8

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    .line 2261
    :cond_df
    iget-object v4, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastCodeRuntimeVisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    const-string v5, "RuntimeVisibleTypeAnnotations"

    if-eqz v4, :cond_ec

    .line 2262
    invoke-virtual {v4, v5}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->computeAnnotationsSize(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    .line 2267
    :cond_ec
    iget-object v4, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastCodeRuntimeInvisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    const-string v6, "RuntimeInvisibleTypeAnnotations"

    if-eqz v4, :cond_f9

    .line 2268
    invoke-virtual {v4, v6}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->computeAnnotationsSize(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    .line 2273
    :cond_f9
    iget-object v7, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->firstCodeAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    if-eqz v7, :cond_117

    .line 2274
    iget-object v8, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget-object v4, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v9, v4, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    iget-object v4, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v10, v4, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    iget v11, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxStack:I

    iget v12, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxLocals:I

    invoke-virtual/range {v7 .. v12}, Lzeroaicy/org/objectweb/asm/Attribute;->computeAttributesSize(Lzeroaicy/org/objectweb/asm/SymbolTable;[BIII)I

    move-result v4

    add-int/2addr v0, v4

    .line 2277
    iget-object v4, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->firstCodeAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    invoke-virtual {v4}, Lzeroaicy/org/objectweb/asm/Attribute;->getAttributeCount()I

    move-result v4

    add-int/2addr v1, v4

    .line 2279
    :cond_117
    iget-object v4, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    const-string v7, "Code"

    invoke-virtual {v4, v7}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v4}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v4

    invoke-virtual {v4, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putInt(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget v4, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxStack:I

    invoke-virtual {v0, v4}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget v4, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxLocals:I

    invoke-virtual {v0, v4}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v4, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v4, v4, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    invoke-virtual {v0, v4}, Lzeroaicy/org/objectweb/asm/ByteVector;->putInt(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v4, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v4, v4, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    iget-object v7, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v7, v7, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    invoke-virtual {v0, v4, v2, v7}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByteArray([BII)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 2286
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->firstHandler:Lzeroaicy/org/objectweb/asm/Handler;

    invoke-static {v0, p1}, Lzeroaicy/org/objectweb/asm/Handler;->putExceptionTable(Lzeroaicy/org/objectweb/asm/Handler;Lzeroaicy/org/objectweb/asm/ByteVector;)V

    .line 2287
    invoke-virtual {p1, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 2288
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->stackMapTableEntries:Lzeroaicy/org/objectweb/asm/ByteVector;

    if-eqz v0, :cond_18b

    .line 2289
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->getMajorVersion()I

    move-result v0

    const/16 v1, 0x32

    if-ge v0, v1, :cond_15e

    const/4 v0, 0x0

    goto :goto_15f

    :cond_15e
    const/4 v0, 0x1

    .line 2290
    :goto_15f
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    if-eqz v0, :cond_166

    const-string v0, "StackMapTable"

    goto :goto_168

    :cond_166
    const-string v0, "StackMap"

    :goto_168
    invoke-virtual {v1, v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->stackMapTableEntries:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v1, v1, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putInt(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->stackMapTableNumberOfEntries:I

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->stackMapTableEntries:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v1, v1, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    iget-object v4, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->stackMapTableEntries:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v4, v4, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    invoke-virtual {v0, v1, v2, v4}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByteArray([BII)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 2298
    :cond_18b
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lineNumberTable:Lzeroaicy/org/objectweb/asm/ByteVector;

    if-eqz v0, :cond_1b6

    .line 2299
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    const-string v1, "LineNumberTable"

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lineNumberTable:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v1, v1, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putInt(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lineNumberTableLength:I

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lineNumberTable:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v1, v1, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    iget-object v4, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lineNumberTable:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v4, v4, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    invoke-virtual {v0, v1, v2, v4}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByteArray([BII)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 2305
    :cond_1b6
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->localVariableTable:Lzeroaicy/org/objectweb/asm/ByteVector;

    if-eqz v0, :cond_1e1

    .line 2306
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    const-string v1, "LocalVariableTable"

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->localVariableTable:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v1, v1, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putInt(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->localVariableTableLength:I

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->localVariableTable:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v1, v1, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    iget-object v4, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->localVariableTable:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v4, v4, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    invoke-virtual {v0, v1, v2, v4}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByteArray([BII)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 2312
    :cond_1e1
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->localVariableTypeTable:Lzeroaicy/org/objectweb/asm/ByteVector;

    if-eqz v0, :cond_20c

    .line 2313
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    const-string v1, "LocalVariableTypeTable"

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->localVariableTypeTable:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v1, v1, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putInt(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->localVariableTypeTableLength:I

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->localVariableTypeTable:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v1, v1, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    iget-object v4, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->localVariableTypeTable:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v4, v4, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    invoke-virtual {v0, v1, v2, v4}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByteArray([BII)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 2319
    :cond_20c
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastCodeRuntimeVisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    if-eqz v0, :cond_219

    .line 2320
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v1, v5}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->putAnnotations(ILzeroaicy/org/objectweb/asm/ByteVector;)V

    .line 2323
    :cond_219
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastCodeRuntimeInvisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    if-eqz v0, :cond_226

    .line 2324
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v1, v6}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->putAnnotations(ILzeroaicy/org/objectweb/asm/ByteVector;)V

    .line 2327
    :cond_226
    iget-object v4, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->firstCodeAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    if-eqz v4, :cond_23c

    .line 2328
    iget-object v5, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v6, v0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v7, v0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    iget v8, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxStack:I

    iget v9, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxLocals:I

    move-object v10, p1

    invoke-virtual/range {v4 .. v10}, Lzeroaicy/org/objectweb/asm/Attribute;->putAttributes(Lzeroaicy/org/objectweb/asm/SymbolTable;[BIIILzeroaicy/org/objectweb/asm/ByteVector;)V

    .line 2332
    :cond_23c
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->numberOfExceptions:I

    if-lez v0, :cond_26a

    .line 2333
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    const-string v1, "Exceptions"

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->numberOfExceptions:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putInt(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->numberOfExceptions:I

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 2337
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->exceptionIndexTable:[I

    const/4 v1, 0x0

    .line 2338
    :goto_25e
    array-length v4, v0

    if-lt v1, v4, :cond_262

    goto :goto_26a

    .line 2337
    :cond_262
    aget v4, v0, v1

    .line 2338
    invoke-virtual {p1, v4}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    add-int/lit8 v1, v1, 0x1

    goto :goto_25e

    .line 2341
    :cond_26a
    :goto_26a
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->accessFlags:I

    iget v4, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->signatureIndex:I

    invoke-static {v0, v1, v4, p1}, Lzeroaicy/org/objectweb/asm/Attribute;->putAttributes(Lzeroaicy/org/objectweb/asm/SymbolTable;IILzeroaicy/org/objectweb/asm/ByteVector;)V

    .line 2342
    iget-object v5, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget-object v6, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastRuntimeVisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    iget-object v7, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastRuntimeInvisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    iget-object v8, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastRuntimeVisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    iget-object v9, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastRuntimeInvisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    move-object v10, p1

    invoke-static/range {v5 .. v10}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->putAnnotations(Lzeroaicy/org/objectweb/asm/SymbolTable;Lzeroaicy/org/objectweb/asm/AnnotationWriter;Lzeroaicy/org/objectweb/asm/AnnotationWriter;Lzeroaicy/org/objectweb/asm/AnnotationWriter;Lzeroaicy/org/objectweb/asm/AnnotationWriter;Lzeroaicy/org/objectweb/asm/ByteVector;)V

    .line 2349
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastRuntimeVisibleParameterAnnotations:[Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    if-eqz v0, :cond_297

    .line 2350
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    const-string v1, "RuntimeVisibleParameterAnnotations"

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastRuntimeVisibleParameterAnnotations:[Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    iget v4, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->visibleAnnotableParameterCount:I

    if-nez v4, :cond_294

    array-length v4, v1

    :cond_294
    invoke-static {v0, v1, v4, p1}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->putParameterAnnotations(I[Lzeroaicy/org/objectweb/asm/AnnotationWriter;ILzeroaicy/org/objectweb/asm/ByteVector;)V

    .line 2358
    :cond_297
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastRuntimeInvisibleParameterAnnotations:[Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    if-eqz v0, :cond_2ad

    .line 2359
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    const-string v1, "RuntimeInvisibleParameterAnnotations"

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastRuntimeInvisibleParameterAnnotations:[Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    iget v4, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->invisibleAnnotableParameterCount:I

    if-nez v4, :cond_2aa

    array-length v4, v1

    :cond_2aa
    invoke-static {v0, v1, v4, p1}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->putParameterAnnotations(I[Lzeroaicy/org/objectweb/asm/AnnotationWriter;ILzeroaicy/org/objectweb/asm/ByteVector;)V

    .line 2367
    :cond_2ad
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->defaultValue:Lzeroaicy/org/objectweb/asm/ByteVector;

    if-eqz v0, :cond_2d0

    .line 2368
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    const-string v1, "AnnotationDefault"

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->defaultValue:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v1, v1, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putInt(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->defaultValue:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v1, v1, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    iget-object v4, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->defaultValue:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v4, v4, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    invoke-virtual {v0, v1, v2, v4}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByteArray([BII)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 2373
    :cond_2d0
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->parameters:Lzeroaicy/org/objectweb/asm/ByteVector;

    if-eqz v0, :cond_2fa

    .line 2374
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    const-string v1, "MethodParameters"

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->parameters:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v1, v1, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    add-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putInt(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->parametersCount:I

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->parameters:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v1, v1, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->parameters:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v3, v3, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    invoke-virtual {v0, v1, v2, v3}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByteArray([BII)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 2380
    :cond_2fa
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->firstAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    if-eqz v0, :cond_303

    .line 2381
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0, v1, p1}, Lzeroaicy/org/objectweb/asm/Attribute;->putAttributes(Lzeroaicy/org/objectweb/asm/SymbolTable;Lzeroaicy/org/objectweb/asm/ByteVector;)V

    :cond_303
    return-void
.end method

.method setMethodAttributesSource(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 2066
    add-int/lit8 p1, p1, 0x6

    iput p1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->sourceOffset:I

    .line 2067
    add-int/lit8 p2, p2, -0x6

    iput p2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->sourceLength:I

    return-void
.end method

.method visitAbstractType(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 1838
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentFrame:[I

    aput p2, v0, p1

    return-void
.end method

.method public visitAnnotableParameterCount(IZ)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    if-eqz p2, :cond_5

    .line 684
    iput p1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->visibleAnnotableParameterCount:I

    goto :goto_7

    .line 686
    :cond_5
    iput p1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->invisibleAnnotableParameterCount:I

    :goto_7
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    if-eqz p2, :cond_d

    .line 659
    iget-object p2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastRuntimeVisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    invoke-static {p2, p1, v0}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->create(Lzeroaicy/org/objectweb/asm/SymbolTable;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/AnnotationWriter;)Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    move-result-object p1

    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastRuntimeVisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    return-object p1

    .line 662
    :cond_d
    iget-object p2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastRuntimeInvisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    invoke-static {p2, p1, v0}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->create(Lzeroaicy/org/objectweb/asm/SymbolTable;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/AnnotationWriter;)Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    move-result-object p1

    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastRuntimeInvisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    return-object p1
.end method

.method public visitAnnotationDefault()Lzeroaicy/org/objectweb/asm/AnnotationVisitor;
    .registers 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 652
    new-instance v0, Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lzeroaicy/org/objectweb/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->defaultValue:Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 653
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    new-instance v3, Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4, v0, v2}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;-><init>(Lzeroaicy/org/objectweb/asm/SymbolTable;ZLzeroaicy/org/objectweb/asm/ByteVector;Lzeroaicy/org/objectweb/asm/AnnotationWriter;)V

    return-object v3
.end method

.method public visitAttribute(Lzeroaicy/org/objectweb/asm/Attribute;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzeroaicy/org/objectweb/asm/Attribute;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 717
    invoke-virtual {p1}, Lzeroaicy/org/objectweb/asm/Attribute;->isCodeAttribute()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 718
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->firstCodeAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    iput-object v0, p1, Lzeroaicy/org/objectweb/asm/Attribute;->nextAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    .line 719
    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->firstCodeAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    goto :goto_13

    .line 721
    :cond_d
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->firstAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    iput-object v0, p1, Lzeroaicy/org/objectweb/asm/Attribute;->nextAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    .line 722
    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->firstAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    :goto_13
    return-void
.end method

.method public visitCode()V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method

.method public visitEnd()V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method

.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 993
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v0, v0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    iput v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastBytecodeOffset:I

    .line 995
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p2, p3, p4}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p2

    .line 996
    iget-object p3, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v0, p2, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    invoke-virtual {p3, p1, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 998
    iget-object p3, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    if-eqz p3, :cond_62

    .line 999
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->compute:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5b

    const/4 v1, 0x3

    if-ne v0, v1, :cond_21

    goto :goto_5b

    .line 1003
    :cond_21
    invoke-virtual {p4, v2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/4 p3, 0x1

    const/16 p4, 0x4a

    const/16 v0, 0x44

    const/4 v1, -0x2

    packed-switch p1, :pswitch_data_64

    .line 1016
    iget p1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->relativeStackSize:I

    if-eq p2, v0, :cond_50

    if-ne p2, p4, :cond_51

    goto :goto_50

    .line 1012
    :pswitch_35  #0xb4
    iget p1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->relativeStackSize:I

    if-eq p2, v0, :cond_3b

    if-ne p2, p4, :cond_3c

    :cond_3b
    const/4 v2, 0x1

    :cond_3c
    add-int/2addr p1, v2

    goto :goto_52

    .line 1009
    :pswitch_3e  #0xb3
    iget p1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->relativeStackSize:I

    if-eq p2, v0, :cond_51

    if-ne p2, p4, :cond_45

    goto :goto_51

    :cond_45
    const/4 v1, -0x1

    goto :goto_51

    .line 1006
    :pswitch_47  #0xb2
    iget p1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->relativeStackSize:I

    if-eq p2, v0, :cond_4d

    if-ne p2, p4, :cond_4e

    :cond_4d
    const/4 p3, 0x2

    :cond_4e
    add-int/2addr p1, p3

    goto :goto_52

    :cond_50
    :goto_50
    const/4 v1, -0x3

    .line 1009
    :cond_51
    :goto_51
    add-int/2addr p1, v1

    .line 1019
    :goto_52
    iget p2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxRelativeStackSize:I

    if-le p1, p2, :cond_58

    .line 1020
    iput p1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxRelativeStackSize:I

    .line 1022
    :cond_58
    iput p1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->relativeStackSize:I

    goto :goto_62

    .line 1000
    :cond_5b
    :goto_5b
    iget-object p3, p3, Lzeroaicy/org/objectweb/asm/Label;->frame:Lzeroaicy/org/objectweb/asm/Frame;

    iget-object p4, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {p3, p1, v2, p2, p4}, Lzeroaicy/org/objectweb/asm/Frame;->execute(IILzeroaicy/org/objectweb/asm/Symbol;Lzeroaicy/org/objectweb/asm/SymbolTable;)V

    :cond_62
    :goto_62
    return-void

    nop

    :pswitch_data_64
    .packed-switch 0xb2
        :pswitch_47  #000000b2
        :pswitch_3e  #000000b3
        :pswitch_35  #000000b4
    .end packed-switch
.end method

.method public visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[",
            "Ljava/lang/Object;",
            "I[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 738
    move-object v0, p0

    move v1, p1

    move v3, p2

    move v7, p4

    iget v2, v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->compute:I

    const/4 v4, 0x4

    if-ne v2, v4, :cond_a

    return-void

    :cond_a
    const/4 v5, -0x1

    const/4 v8, 0x2

    const/4 v6, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ne v2, v6, :cond_4f

    .line 743
    iget-object v2, v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    iget-object v2, v2, Lzeroaicy/org/objectweb/asm/Label;->frame:Lzeroaicy/org/objectweb/asm/Frame;

    if-nez v2, :cond_36

    .line 747
    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    new-instance v2, Lzeroaicy/org/objectweb/asm/CurrentFrame;

    invoke-direct {v2, v1}, Lzeroaicy/org/objectweb/asm/CurrentFrame;-><init>(Lzeroaicy/org/objectweb/asm/Label;)V

    iput-object v2, v1, Lzeroaicy/org/objectweb/asm/Label;->frame:Lzeroaicy/org/objectweb/asm/Frame;

    .line 748
    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    iget-object v1, v1, Lzeroaicy/org/objectweb/asm/Label;->frame:Lzeroaicy/org/objectweb/asm/Frame;

    iget-object v2, v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget v4, v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->accessFlags:I

    iget-object v5, v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->descriptor:Ljava/lang/String;

    invoke-virtual {v1, v2, v4, v5, p2}, Lzeroaicy/org/objectweb/asm/Frame;->setInputFrameFromDescriptor(Lzeroaicy/org/objectweb/asm/SymbolTable;ILjava/lang/String;I)V

    .line 750
    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    iget-object v1, v1, Lzeroaicy/org/objectweb/asm/Label;->frame:Lzeroaicy/org/objectweb/asm/Frame;

    invoke-virtual {v1, p0}, Lzeroaicy/org/objectweb/asm/Frame;->accept(Lzeroaicy/org/objectweb/asm/MethodWriter;)V

    goto/16 :goto_168

    :cond_36
    if-ne v1, v5, :cond_46

    .line 753
    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    iget-object v1, v1, Lzeroaicy/org/objectweb/asm/Label;->frame:Lzeroaicy/org/objectweb/asm/Frame;

    iget-object v2, v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lzeroaicy/org/objectweb/asm/Frame;->setInputFrameFromApiFormat(Lzeroaicy/org/objectweb/asm/SymbolTable;I[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 759
    :cond_46
    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    iget-object v1, v1, Lzeroaicy/org/objectweb/asm/Label;->frame:Lzeroaicy/org/objectweb/asm/Frame;

    invoke-virtual {v1, p0}, Lzeroaicy/org/objectweb/asm/Frame;->accept(Lzeroaicy/org/objectweb/asm/MethodWriter;)V

    goto/16 :goto_168

    :cond_4f
    if-ne v1, v5, :cond_a8

    .line 762
    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->previousFrame:[I

    if-nez v1, :cond_72

    .line 763
    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->descriptor:Ljava/lang/String;

    invoke-static {v1}, Lzeroaicy/org/objectweb/asm/Type;->getArgumentsAndReturnSizes(Ljava/lang/String;)I

    move-result v1

    .line 764
    new-instance v2, Lzeroaicy/org/objectweb/asm/Frame;

    new-instance v4, Lzeroaicy/org/objectweb/asm/Label;

    invoke-direct {v4}, Lzeroaicy/org/objectweb/asm/Label;-><init>()V

    invoke-direct {v2, v4}, Lzeroaicy/org/objectweb/asm/Frame;-><init>(Lzeroaicy/org/objectweb/asm/Label;)V

    .line 765
    iget-object v4, v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget v5, v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->accessFlags:I

    iget-object v6, v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->descriptor:Ljava/lang/String;

    shr-int/2addr v1, v8

    invoke-virtual {v2, v4, v5, v6, v1}, Lzeroaicy/org/objectweb/asm/Frame;->setInputFrameFromDescriptor(Lzeroaicy/org/objectweb/asm/SymbolTable;ILjava/lang/String;I)V

    .line 767
    invoke-virtual {v2, p0}, Lzeroaicy/org/objectweb/asm/Frame;->accept(Lzeroaicy/org/objectweb/asm/MethodWriter;)V

    .line 769
    :cond_72
    iput v3, v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentLocals:I

    .line 770
    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v1, v1, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    invoke-virtual {p0, v1, p2, p4}, Lzeroaicy/org/objectweb/asm/MethodWriter;->visitFrameStart(III)I

    move-result v1

    const/4 v2, 0x0

    :goto_7d
    if-lt v2, v3, :cond_97

    const/4 v2, 0x0

    :goto_80
    if-lt v2, v7, :cond_87

    .line 777
    invoke-virtual {p0}, Lzeroaicy/org/objectweb/asm/MethodWriter;->visitFrameEnd()V

    goto/16 :goto_168

    .line 775
    :cond_87
    iget-object v3, v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentFrame:[I

    iget-object v4, v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    aget-object v5, p5, v2

    invoke-static {v4, v5}, Lzeroaicy/org/objectweb/asm/Frame;->getAbstractTypeFromApiFormat(Lzeroaicy/org/objectweb/asm/SymbolTable;Ljava/lang/Object;)I

    move-result v4

    aput v4, v3, v1

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v10

    goto :goto_80

    .line 772
    :cond_97
    iget-object v4, v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentFrame:[I

    iget-object v5, v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    aget-object v6, p3, v2

    invoke-static {v5, v6}, Lzeroaicy/org/objectweb/asm/Frame;->getAbstractTypeFromApiFormat(Lzeroaicy/org/objectweb/asm/SymbolTable;Ljava/lang/Object;)I

    move-result v5

    aput v5, v4, v1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7d

    .line 779
    :cond_a8
    iget-object v2, v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->getMajorVersion()I

    move-result v2

    const/16 v5, 0x32

    if-lt v2, v5, :cond_1b0

    .line 783
    iget-object v2, v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->stackMapTableEntries:Lzeroaicy/org/objectweb/asm/ByteVector;

    if-nez v2, :cond_c2

    .line 784
    new-instance v2, Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-direct {v2}, Lzeroaicy/org/objectweb/asm/ByteVector;-><init>()V

    iput-object v2, v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->stackMapTableEntries:Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 785
    iget-object v2, v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v2, v2, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    goto :goto_d5

    .line 787
    :cond_c2
    iget-object v2, v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v2, v2, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    iget v5, v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->previousFrameOffset:I

    sub-int/2addr v2, v5

    sub-int/2addr v2, v10

    if-gez v2, :cond_d5

    if-ne v1, v6, :cond_cf

    return-void

    .line 792
    :cond_cf
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_d5
    :goto_d5
    if-eqz v1, :cond_141

    if-eq v1, v10, :cond_125

    const/16 v5, 0xfb

    if-eq v1, v8, :cond_115

    const/16 v3, 0x40

    if-eq v1, v6, :cond_103

    if-ne v1, v4, :cond_fd

    if-ge v2, v3, :cond_ec

    .line 829
    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->stackMapTableEntries:Lzeroaicy/org/objectweb/asm/ByteVector;

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    goto :goto_f7

    .line 831
    :cond_ec
    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->stackMapTableEntries:Lzeroaicy/org/objectweb/asm/ByteVector;

    const/16 v3, 0xf7

    invoke-virtual {v1, v3}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 835
    :goto_f7
    aget-object v1, p5, v9

    invoke-direct {p0, v1}, Lzeroaicy/org/objectweb/asm/MethodWriter;->putFrameType(Ljava/lang/Object;)V

    goto :goto_15d

    .line 838
    :cond_fd
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_103
    if-ge v2, v3, :cond_10b

    .line 822
    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->stackMapTableEntries:Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-virtual {v1, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    goto :goto_15d

    .line 824
    :cond_10b
    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->stackMapTableEntries:Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-virtual {v1, v5}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    goto :goto_15d

    .line 817
    :cond_115
    iget v1, v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentLocals:I

    sub-int/2addr v1, v3

    iput v1, v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentLocals:I

    .line 818
    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->stackMapTableEntries:Lzeroaicy/org/objectweb/asm/ByteVector;

    sub-int/2addr v5, v3

    invoke-virtual {v1, v5}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    goto :goto_15d

    .line 810
    :cond_125
    iget v1, v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentLocals:I

    add-int/2addr v1, v3

    iput v1, v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentLocals:I

    .line 811
    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->stackMapTableEntries:Lzeroaicy/org/objectweb/asm/ByteVector;

    add-int/lit16 v4, v3, 0xfb

    invoke-virtual {v1, v4}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    const/4 v1, 0x0

    :goto_136
    if-lt v1, v3, :cond_139

    goto :goto_15d

    .line 813
    :cond_139
    aget-object v2, p3, v1

    invoke-direct {p0, v2}, Lzeroaicy/org/objectweb/asm/MethodWriter;->putFrameType(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_136

    .line 799
    :cond_141
    iput v3, v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentLocals:I

    .line 800
    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->stackMapTableEntries:Lzeroaicy/org/objectweb/asm/ByteVector;

    const/16 v4, 0xff

    invoke-virtual {v1, v4}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, p2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    const/4 v1, 0x0

    :goto_153
    if-lt v1, v3, :cond_1a8

    .line 804
    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->stackMapTableEntries:Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-virtual {v1, p4}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    const/4 v1, 0x0

    :goto_15b
    if-lt v1, v7, :cond_1a0

    .line 841
    :goto_15d
    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v1, v1, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    iput v1, v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->previousFrameOffset:I

    .line 842
    iget v1, v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->stackMapTableNumberOfEntries:I

    add-int/2addr v1, v10

    iput v1, v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->stackMapTableNumberOfEntries:I

    .line 845
    :goto_168
    iget v1, v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->compute:I

    if-ne v1, v8, :cond_18d

    .line 846
    iput v7, v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->relativeStackSize:I

    :goto_16e
    if-lt v9, v7, :cond_179

    .line 852
    iget v1, v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->relativeStackSize:I

    iget v2, v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxRelativeStackSize:I

    if-le v1, v2, :cond_18d

    .line 853
    iput v1, v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxRelativeStackSize:I

    goto :goto_18d

    .line 848
    :cond_179
    aget-object v1, p5, v9

    sget-object v2, Lzeroaicy/org/objectweb/asm/Opcodes;->LONG:Ljava/lang/Integer;

    if-eq v1, v2, :cond_185

    aget-object v1, p5, v9

    sget-object v2, Lzeroaicy/org/objectweb/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    if-ne v1, v2, :cond_18a

    .line 849
    :cond_185
    iget v1, v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->relativeStackSize:I

    add-int/2addr v1, v10

    iput v1, v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->relativeStackSize:I

    :cond_18a
    add-int/lit8 v9, v9, 0x1

    goto :goto_16e

    .line 857
    :cond_18d
    :goto_18d
    iget v1, v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxStack:I

    invoke-static {v1, p4}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxStack:I

    .line 858
    iget v1, v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxLocals:I

    iget v2, v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentLocals:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxLocals:I

    return-void

    .line 806
    :cond_1a0
    aget-object v2, p5, v1

    invoke-direct {p0, v2}, Lzeroaicy/org/objectweb/asm/MethodWriter;->putFrameType(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_15b

    .line 802
    :cond_1a8
    aget-object v2, p3, v1

    invoke-direct {p0, v2}, Lzeroaicy/org/objectweb/asm/MethodWriter;->putFrameType(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_153

    .line 780
    :cond_1b0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Class versions V1_5 or less must use F_NEW frames."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_1b9

    :goto_1b8
    throw v1

    :goto_1b9
    goto :goto_1b8
.end method

.method visitFrameEnd()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1847
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->previousFrame:[I

    if-eqz v0, :cond_18

    .line 1848
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->stackMapTableEntries:Lzeroaicy/org/objectweb/asm/ByteVector;

    if-nez v0, :cond_f

    .line 1849
    new-instance v0, Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lzeroaicy/org/objectweb/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->stackMapTableEntries:Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 1851
    :cond_f
    invoke-direct {p0}, Lzeroaicy/org/objectweb/asm/MethodWriter;->putFrame()V

    .line 1852
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->stackMapTableNumberOfEntries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->stackMapTableNumberOfEntries:I

    .line 1854
    :cond_18
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentFrame:[I

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->previousFrame:[I

    .line 1855
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, [I

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentFrame:[I

    return-void
.end method

.method visitFrameStart(III)I
    .registers 6

    add-int/lit8 v0, p2, 0x3

    add-int/2addr v0, p3

    .line 1822
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentFrame:[I

    if-eqz v1, :cond_a

    array-length v1, v1

    if-ge v1, v0, :cond_e

    .line 1823
    :cond_a
    new-array v0, v0, [I

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentFrame:[I

    .line 1825
    :cond_e
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentFrame:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 1826
    const/4 p1, 0x1

    aput p2, v0, p1

    .line 1827
    const/4 p1, 0x2

    aput p3, v0, p1

    const/4 p1, 0x3

    return p1
.end method

.method public visitIincInsn(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 1312
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v0, v0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    iput v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastBytecodeOffset:I

    const/16 v0, 0xff

    const/16 v1, 0x84

    if-gt p1, v0, :cond_1f

    const/16 v0, 0x7f

    if-gt p2, v0, :cond_1f

    const/16 v0, -0x80

    if-ge p2, v0, :cond_15

    goto :goto_1f

    .line 1317
    :cond_15
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lzeroaicy/org/objectweb/asm/ByteVector;->put11(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    goto :goto_2e

    .line 1315
    :cond_1f
    :goto_1f
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    const/16 v2, 0xc4

    invoke-virtual {v0, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lzeroaicy/org/objectweb/asm/ByteVector;->put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 1320
    :goto_2e
    iget-object p2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    if-eqz p2, :cond_46

    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->compute:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_3a

    const/4 v2, 0x3

    if-ne v0, v2, :cond_46

    .line 1322
    :cond_3a
    iget-object p2, p2, Lzeroaicy/org/objectweb/asm/Label;->frame:Lzeroaicy/org/objectweb/asm/Frame;

    const/4 v0, 0x0

    move-object v2, v0

    check-cast v2, Lzeroaicy/org/objectweb/asm/Symbol;

    move-object v2, v0

    check-cast v2, Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {p2, v1, p1, v0, v0}, Lzeroaicy/org/objectweb/asm/Frame;->execute(IILzeroaicy/org/objectweb/asm/Symbol;Lzeroaicy/org/objectweb/asm/SymbolTable;)V

    .line 1324
    :cond_46
    iget p2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->compute:I

    if-eqz p2, :cond_52

    add-int/lit8 p1, p1, 0x1

    .line 1326
    iget p2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxLocals:I

    if-le p1, p2, :cond_52

    .line 1327
    iput p1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxLocals:I

    :cond_52
    return-void
.end method

.method public visitInsn(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 863
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v0, v0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    iput v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastBytecodeOffset:I

    .line 865
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 867
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    if-eqz v0, :cond_44

    .line 868
    iget v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->compute:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_28

    const/4 v2, 0x3

    if-ne v1, v2, :cond_18

    goto :goto_28

    .line 871
    :cond_18
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->relativeStackSize:I

    sget-object v1, Lzeroaicy/org/objectweb/asm/MethodWriter;->STACK_SIZE_DELTA:[I

    aget v1, v1, p1

    add-int/2addr v0, v1

    .line 872
    iget v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxRelativeStackSize:I

    if-le v0, v1, :cond_25

    .line 873
    iput v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxRelativeStackSize:I

    .line 875
    :cond_25
    iput v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->relativeStackSize:I

    goto :goto_35

    .line 869
    :cond_28
    :goto_28
    iget-object v0, v0, Lzeroaicy/org/objectweb/asm/Label;->frame:Lzeroaicy/org/objectweb/asm/Frame;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Lzeroaicy/org/objectweb/asm/Symbol;

    move-object v2, v1

    check-cast v2, Lzeroaicy/org/objectweb/asm/SymbolTable;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1, v1}, Lzeroaicy/org/objectweb/asm/Frame;->execute(IILzeroaicy/org/objectweb/asm/Symbol;Lzeroaicy/org/objectweb/asm/SymbolTable;)V

    :goto_35
    const/16 v0, 0xac

    if-lt p1, v0, :cond_3d

    const/16 v0, 0xb1

    if-le p1, v0, :cond_41

    :cond_3d
    const/16 v0, 0xbf

    if-ne p1, v0, :cond_44

    .line 878
    :cond_41
    invoke-direct {p0}, Lzeroaicy/org/objectweb/asm/MethodWriter;->endCurrentBasicBlockWithNoSuccessor()V

    :cond_44
    return-void
.end method

.method public visitInsnAnnotation(ILzeroaicy/org/objectweb/asm/TypePath;Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;
    .registers 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const v0, -0xffff01

    if-eqz p4, :cond_16

    .line 1409
    iget-object p4, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    and-int/2addr p1, v0

    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastBytecodeOffset:I

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p1, v0

    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastCodeRuntimeVisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    invoke-static {p4, p1, p2, p3, v0}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->create(Lzeroaicy/org/objectweb/asm/SymbolTable;ILzeroaicy/org/objectweb/asm/TypePath;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/AnnotationWriter;)Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    move-result-object p1

    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastCodeRuntimeVisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    return-object p1

    .line 1417
    :cond_16
    iget-object p4, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    and-int/2addr p1, v0

    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastBytecodeOffset:I

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p1, v0

    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastCodeRuntimeInvisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    invoke-static {p4, p1, p2, p3, v0}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->create(Lzeroaicy/org/objectweb/asm/SymbolTable;ILzeroaicy/org/objectweb/asm/TypePath;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/AnnotationWriter;)Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    move-result-object p1

    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastCodeRuntimeInvisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    return-object p1
.end method

.method public visitIntInsn(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 885
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v0, v0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    iput v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastBytecodeOffset:I

    const/16 v0, 0x11

    if-ne p1, v0, :cond_10

    .line 888
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-virtual {v0, p1, p2}, Lzeroaicy/org/objectweb/asm/ByteVector;->put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    goto :goto_15

    .line 890
    :cond_10
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-virtual {v0, p1, p2}, Lzeroaicy/org/objectweb/asm/ByteVector;->put11(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 893
    :goto_15
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    if-eqz v0, :cond_3f

    .line 894
    iget v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->compute:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_33

    const/4 v2, 0x3

    if-ne v1, v2, :cond_22

    goto :goto_33

    :cond_22
    const/16 p2, 0xbc

    if-eq p1, p2, :cond_3f

    .line 898
    iget p1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->relativeStackSize:I

    add-int/lit8 p1, p1, 0x1

    .line 899
    iget p2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxRelativeStackSize:I

    if-le p1, p2, :cond_30

    .line 900
    iput p1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxRelativeStackSize:I

    .line 902
    :cond_30
    iput p1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->relativeStackSize:I

    goto :goto_3f

    .line 895
    :cond_33
    :goto_33
    iget-object v0, v0, Lzeroaicy/org/objectweb/asm/Label;->frame:Lzeroaicy/org/objectweb/asm/Frame;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Lzeroaicy/org/objectweb/asm/Symbol;

    move-object v2, v1

    check-cast v2, Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p1, p2, v1, v1}, Lzeroaicy/org/objectweb/asm/Frame;->execute(IILzeroaicy/org/objectweb/asm/Symbol;Lzeroaicy/org/objectweb/asm/SymbolTable;)V

    :cond_3f
    :goto_3f
    return-void
.end method

.method public varargs visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/Handle;[Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lzeroaicy/org/objectweb/asm/Handle;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 1070
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v0, v0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    iput v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastBytecodeOffset:I

    .line 1072
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p1, p2, p3, p4}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantInvokeDynamic(Ljava/lang/String;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/Handle;[Ljava/lang/Object;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p1

    .line 1075
    iget-object p2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget p3, p1, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    const/16 p4, 0xba

    invoke-virtual {p2, p4, p3}, Lzeroaicy/org/objectweb/asm/ByteVector;->put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 1076
    iget-object p2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 1078
    iget-object p2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    if-eqz p2, :cond_46

    .line 1079
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->compute:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3f

    const/4 v1, 0x3

    if-ne v0, v1, :cond_28

    goto :goto_3f

    .line 1082
    :cond_28
    invoke-virtual {p1}, Lzeroaicy/org/objectweb/asm/Symbol;->getArgumentsAndReturnSizes()I

    move-result p1

    .line 1084
    iget p2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->relativeStackSize:I

    and-int/lit8 p3, p1, 0x3

    shr-int/lit8 p1, p1, 0x2

    sub-int/2addr p3, p1

    add-int/lit8 p3, p3, 0x1

    add-int/2addr p2, p3

    .line 1085
    iget p1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxRelativeStackSize:I

    if-le p2, p1, :cond_3c

    .line 1086
    iput p2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxRelativeStackSize:I

    .line 1088
    :cond_3c
    iput p2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->relativeStackSize:I

    goto :goto_46

    .line 1080
    :cond_3f
    :goto_3f
    iget-object p2, p2, Lzeroaicy/org/objectweb/asm/Label;->frame:Lzeroaicy/org/objectweb/asm/Frame;

    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {p2, p4, p3, p1, v0}, Lzeroaicy/org/objectweb/asm/Frame;->execute(IILzeroaicy/org/objectweb/asm/Symbol;Lzeroaicy/org/objectweb/asm/SymbolTable;)V

    :cond_46
    :goto_46
    return-void
.end method

.method public visitJumpInsn(ILzeroaicy/org/objectweb/asm/Label;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lzeroaicy/org/objectweb/asm/Label;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 1095
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v0, v0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    iput v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastBytecodeOffset:I

    const/16 v0, 0xc8

    if-lt p1, v0, :cond_d

    add-int/lit8 v1, p1, -0x21

    goto :goto_e

    :cond_d
    move v1, p1

    .line 1101
    :goto_e
    iget-short v2, p2, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    const/4 v3, 0x4

    and-int/2addr v2, v3

    const/16 v4, 0xa8

    const/16 v5, 0xa7

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_62

    iget v2, p2, Lzeroaicy/org/objectweb/asm/Label;->bytecodeOffset:I

    iget-object v8, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v8, v8, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    sub-int/2addr v2, v8

    const/16 v8, -0x8000

    if-ge v2, v8, :cond_62

    if-ne v1, v5, :cond_2d

    .line 1108
    iget-object p1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-virtual {p1, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    goto :goto_36

    :cond_2d
    if-ne v1, v4, :cond_38

    .line 1110
    iget-object p1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    const/16 v0, 0xc9

    invoke-virtual {p1, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    :goto_36
    const/4 p1, 0x0

    goto :goto_59

    .line 1115
    :cond_38
    iget-object p1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    const/16 v0, 0xc6

    if-lt v1, v0, :cond_41

    xor-int/lit8 v0, v1, 0x1

    goto :goto_45

    :cond_41
    add-int/lit8 v0, v1, 0x1

    xor-int/2addr v0, v7

    sub-int/2addr v0, v7

    :goto_45
    invoke-virtual {p1, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 1116
    iget-object p1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 1123
    iget-object p1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    const/16 v0, 0xdc

    invoke-virtual {p1, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 1124
    iput-boolean v7, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->hasAsmInstructions:Z

    const/4 p1, 0x1

    .line 1128
    :goto_59
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v2, v0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    sub-int/2addr v2, v7

    invoke-virtual {p2, v0, v2, v7}, Lzeroaicy/org/objectweb/asm/Label;->put(Lzeroaicy/org/objectweb/asm/ByteVector;IZ)V

    goto :goto_80

    :cond_62
    if-eq v1, p1, :cond_72

    .line 1132
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 1133
    iget-object p1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v0, p1, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    sub-int/2addr v0, v7

    invoke-virtual {p2, p1, v0, v7}, Lzeroaicy/org/objectweb/asm/Label;->put(Lzeroaicy/org/objectweb/asm/ByteVector;IZ)V

    goto :goto_7f

    .line 1138
    :cond_72
    iget-object p1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-virtual {p1, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 1139
    iget-object p1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v0, p1, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    sub-int/2addr v0, v7

    invoke-virtual {p2, p1, v0, v6}, Lzeroaicy/org/objectweb/asm/Label;->put(Lzeroaicy/org/objectweb/asm/ByteVector;IZ)V

    :goto_7f
    const/4 p1, 0x0

    .line 1143
    :goto_80
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    if-eqz v0, :cond_10c

    .line 1144
    const/4 v2, 0x0

    move-object v8, v2

    check-cast v8, Lzeroaicy/org/objectweb/asm/Label;

    .line 1145
    iget v8, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->compute:I

    const/4 v9, 0x2

    if-ne v8, v3, :cond_ad

    .line 1146
    iget-object v0, v0, Lzeroaicy/org/objectweb/asm/Label;->frame:Lzeroaicy/org/objectweb/asm/Frame;

    move-object v3, v2

    check-cast v3, Lzeroaicy/org/objectweb/asm/Symbol;

    move-object v3, v2

    check-cast v3, Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0, v1, v6, v2, v2}, Lzeroaicy/org/objectweb/asm/Frame;->execute(IILzeroaicy/org/objectweb/asm/Symbol;Lzeroaicy/org/objectweb/asm/SymbolTable;)V

    .line 1148
    invoke-virtual {p2}, Lzeroaicy/org/objectweb/asm/Label;->getCanonicalInstance()Lzeroaicy/org/objectweb/asm/Label;

    move-result-object v0

    iget-short v3, v0, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    or-int/2addr v3, v9

    int-to-short v3, v3

    iput-short v3, v0, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    .line 1150
    invoke-direct {p0, v6, p2}, Lzeroaicy/org/objectweb/asm/MethodWriter;->addSuccessorToCurrentBasicBlock(ILzeroaicy/org/objectweb/asm/Label;)V

    if-eq v1, v5, :cond_fa

    .line 1155
    new-instance v2, Lzeroaicy/org/objectweb/asm/Label;

    invoke-direct {v2}, Lzeroaicy/org/objectweb/asm/Label;-><init>()V

    goto :goto_fa

    :cond_ad
    const/4 v3, 0x3

    if-ne v8, v3, :cond_bc

    .line 1158
    iget-object p2, v0, Lzeroaicy/org/objectweb/asm/Label;->frame:Lzeroaicy/org/objectweb/asm/Frame;

    move-object v0, v2

    check-cast v0, Lzeroaicy/org/objectweb/asm/Symbol;

    move-object v0, v2

    check-cast v0, Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {p2, v1, v6, v2, v2}, Lzeroaicy/org/objectweb/asm/Frame;->execute(IILzeroaicy/org/objectweb/asm/Symbol;Lzeroaicy/org/objectweb/asm/SymbolTable;)V

    goto :goto_fa

    :cond_bc
    if-ne v8, v9, :cond_c8

    .line 1161
    iget p2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->relativeStackSize:I

    sget-object v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->STACK_SIZE_DELTA:[I

    aget v0, v0, v1

    add-int/2addr p2, v0

    iput p2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->relativeStackSize:I

    goto :goto_fa

    :cond_c8
    if-ne v1, v4, :cond_ee

    .line 1165
    iget-short v0, p2, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_d9

    .line 1166
    iget-short v0, p2, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    or-int/lit8 v0, v0, 0x20

    int-to-short v0, v0

    iput-short v0, p2, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    .line 1167
    iput-boolean v7, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->hasSubroutines:Z

    .line 1169
    :cond_d9
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    iget-short v2, v0, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    or-int/lit8 v2, v2, 0x10

    int-to-short v2, v2

    iput-short v2, v0, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    .line 1176
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->relativeStackSize:I

    add-int/2addr v0, v7

    invoke-direct {p0, v0, p2}, Lzeroaicy/org/objectweb/asm/MethodWriter;->addSuccessorToCurrentBasicBlock(ILzeroaicy/org/objectweb/asm/Label;)V

    .line 1178
    new-instance v2, Lzeroaicy/org/objectweb/asm/Label;

    invoke-direct {v2}, Lzeroaicy/org/objectweb/asm/Label;-><init>()V

    goto :goto_fa

    .line 1181
    :cond_ee
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->relativeStackSize:I

    sget-object v3, Lzeroaicy/org/objectweb/asm/MethodWriter;->STACK_SIZE_DELTA:[I

    aget v3, v3, v1

    add-int/2addr v0, v3

    iput v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->relativeStackSize:I

    .line 1182
    invoke-direct {p0, v0, p2}, Lzeroaicy/org/objectweb/asm/MethodWriter;->addSuccessorToCurrentBasicBlock(ILzeroaicy/org/objectweb/asm/Label;)V

    :cond_fa
    :goto_fa
    if-eqz v2, :cond_107

    if-eqz p1, :cond_104

    .line 1189
    iget-short p1, v2, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    or-int/2addr p1, v9

    int-to-short p1, p1

    iput-short p1, v2, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    .line 1191
    :cond_104
    invoke-virtual {p0, v2}, Lzeroaicy/org/objectweb/asm/MethodWriter;->visitLabel(Lzeroaicy/org/objectweb/asm/Label;)V

    :cond_107
    if-ne v1, v5, :cond_10c

    .line 1194
    invoke-direct {p0}, Lzeroaicy/org/objectweb/asm/MethodWriter;->endCurrentBasicBlockWithNoSuccessor()V

    :cond_10c
    return-void
.end method

.method public visitLabel(Lzeroaicy/org/objectweb/asm/Label;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzeroaicy/org/objectweb/asm/Label;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 1202
    iget-boolean v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->hasAsmInstructions:Z

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v1, v1, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v2, v2, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    invoke-virtual {p1, v1, v2}, Lzeroaicy/org/objectweb/asm/Label;->resolve([BI)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->hasAsmInstructions:Z

    .line 1205
    iget-short v0, p1, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_18

    return-void

    .line 1208
    :cond_18
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->compute:I

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v0, v2, :cond_72

    .line 1209
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    if-eqz v0, :cond_40

    .line 1210
    iget v0, p1, Lzeroaicy/org/objectweb/asm/Label;->bytecodeOffset:I

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    iget v1, v1, Lzeroaicy/org/objectweb/asm/Label;->bytecodeOffset:I

    if-ne v0, v1, :cond_3d

    .line 1215
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    iget-short v1, v0, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    iget-short v2, p1, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    and-int/2addr v2, v4

    or-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    .line 1219
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    iget-object v0, v0, Lzeroaicy/org/objectweb/asm/Label;->frame:Lzeroaicy/org/objectweb/asm/Frame;

    iput-object v0, p1, Lzeroaicy/org/objectweb/asm/Label;->frame:Lzeroaicy/org/objectweb/asm/Frame;

    return-void

    .line 1225
    :cond_3d
    invoke-direct {p0, v3, p1}, Lzeroaicy/org/objectweb/asm/MethodWriter;->addSuccessorToCurrentBasicBlock(ILzeroaicy/org/objectweb/asm/Label;)V

    .line 1228
    :cond_40
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    if-eqz v0, :cond_66

    .line 1229
    iget v0, p1, Lzeroaicy/org/objectweb/asm/Label;->bytecodeOffset:I

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    iget v1, v1, Lzeroaicy/org/objectweb/asm/Label;->bytecodeOffset:I

    if-ne v0, v1, :cond_62

    .line 1231
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    iget-short v1, v0, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    iget-short v2, p1, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    and-int/2addr v2, v4

    or-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    .line 1233
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    iget-object v0, v0, Lzeroaicy/org/objectweb/asm/Label;->frame:Lzeroaicy/org/objectweb/asm/Frame;

    iput-object v0, p1, Lzeroaicy/org/objectweb/asm/Label;->frame:Lzeroaicy/org/objectweb/asm/Frame;

    .line 1234
    iget-object p1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    return-void

    .line 1237
    :cond_62
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    iput-object p1, v0, Lzeroaicy/org/objectweb/asm/Label;->nextBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    .line 1239
    :cond_66
    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    .line 1241
    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    .line 1243
    new-instance v0, Lzeroaicy/org/objectweb/asm/Frame;

    invoke-direct {v0, p1}, Lzeroaicy/org/objectweb/asm/Frame;-><init>(Lzeroaicy/org/objectweb/asm/Label;)V

    iput-object v0, p1, Lzeroaicy/org/objectweb/asm/Label;->frame:Lzeroaicy/org/objectweb/asm/Frame;

    goto :goto_a8

    :cond_72
    const/4 v2, 0x3

    if-ne v0, v2, :cond_81

    .line 1245
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    if-nez v0, :cond_7c

    .line 1248
    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    goto :goto_a8

    .line 1251
    :cond_7c
    iget-object v0, v0, Lzeroaicy/org/objectweb/asm/Label;->frame:Lzeroaicy/org/objectweb/asm/Frame;

    iput-object p1, v0, Lzeroaicy/org/objectweb/asm/Frame;->owner:Lzeroaicy/org/objectweb/asm/Label;

    goto :goto_a8

    :cond_81
    if-ne v0, v1, :cond_a0

    .line 1254
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    if-eqz v0, :cond_91

    .line 1256
    iget v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxRelativeStackSize:I

    int-to-short v1, v1

    iput-short v1, v0, Lzeroaicy/org/objectweb/asm/Label;->outputStackMax:S

    .line 1257
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->relativeStackSize:I

    invoke-direct {p0, v0, p1}, Lzeroaicy/org/objectweb/asm/MethodWriter;->addSuccessorToCurrentBasicBlock(ILzeroaicy/org/objectweb/asm/Label;)V

    .line 1260
    :cond_91
    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    .line 1261
    iput v3, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->relativeStackSize:I

    .line 1262
    iput v3, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxRelativeStackSize:I

    .line 1264
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    if-eqz v0, :cond_9d

    .line 1265
    iput-object p1, v0, Lzeroaicy/org/objectweb/asm/Label;->nextBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    .line 1267
    :cond_9d
    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    goto :goto_a8

    :cond_a0
    if-ne v0, v4, :cond_a8

    .line 1268
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    if-nez v0, :cond_a8

    .line 1272
    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    :cond_a8
    :goto_a8
    return-void
.end method

.method public visitLdcInsn(Ljava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 1278
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v0, v0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    iput v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastBytecodeOffset:I

    .line 1280
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstant(Ljava/lang/Object;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p1

    .line 1281
    iget v0, p1, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    .line 1283
    iget v1, p1, Lzeroaicy/org/objectweb/asm/Symbol;->tag:I

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_30

    iget v1, p1, Lzeroaicy/org/objectweb/asm/Symbol;->tag:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_30

    iget v1, p1, Lzeroaicy/org/objectweb/asm/Symbol;->tag:I

    const/16 v2, 0x11

    if-ne v1, v2, :cond_2e

    iget-object v1, p1, Lzeroaicy/org/objectweb/asm/Symbol;->value:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x4a

    if-eq v1, v2, :cond_30

    const/16 v2, 0x44

    if-eq v1, v2, :cond_30

    :cond_2e
    const/4 v1, 0x0

    goto :goto_31

    :cond_30
    const/4 v1, 0x1

    :goto_31
    const/16 v2, 0x12

    if-eqz v1, :cond_3d

    .line 1290
    iget-object v5, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    const/16 v6, 0x14

    invoke-virtual {v5, v6, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    goto :goto_4e

    :cond_3d
    const/16 v5, 0x100

    if-lt v0, v5, :cond_49

    .line 1292
    iget-object v5, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    const/16 v6, 0x13

    invoke-virtual {v5, v6, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    goto :goto_4e

    .line 1294
    :cond_49
    iget-object v5, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-virtual {v5, v2, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->put11(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 1297
    :goto_4e
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    if-eqz v0, :cond_71

    .line 1298
    iget v5, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->compute:I

    const/4 v6, 0x4

    if-eq v5, v6, :cond_6a

    const/4 v6, 0x3

    if-ne v5, v6, :cond_5b

    goto :goto_6a

    .line 1301
    :cond_5b
    iget p1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->relativeStackSize:I

    if-eqz v1, :cond_60

    const/4 v4, 0x2

    :cond_60
    add-int/2addr p1, v4

    .line 1302
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxRelativeStackSize:I

    if-le p1, v0, :cond_67

    .line 1303
    iput p1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxRelativeStackSize:I

    .line 1305
    :cond_67
    iput p1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->relativeStackSize:I

    goto :goto_71

    .line 1299
    :cond_6a
    :goto_6a
    iget-object v0, v0, Lzeroaicy/org/objectweb/asm/Label;->frame:Lzeroaicy/org/objectweb/asm/Frame;

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0, v2, v3, p1, v1}, Lzeroaicy/org/objectweb/asm/Frame;->execute(IILzeroaicy/org/objectweb/asm/Symbol;Lzeroaicy/org/objectweb/asm/SymbolTable;)V

    :cond_71
    :goto_71
    return-void
.end method

.method public visitLineNumber(ILzeroaicy/org/objectweb/asm/Label;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lzeroaicy/org/objectweb/asm/Label;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 1536
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lineNumberTable:Lzeroaicy/org/objectweb/asm/ByteVector;

    if-nez v0, :cond_b

    .line 1537
    new-instance v0, Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lzeroaicy/org/objectweb/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lineNumberTable:Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 1539
    :cond_b
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lineNumberTableLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lineNumberTableLength:I

    .line 1540
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lineNumberTable:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget p2, p2, Lzeroaicy/org/objectweb/asm/Label;->bytecodeOffset:I

    invoke-virtual {v0, p2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 1541
    iget-object p2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lineNumberTable:Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-virtual {p2, p1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    return-void
.end method

.method public visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/Label;Lzeroaicy/org/objectweb/asm/Label;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lzeroaicy/org/objectweb/asm/Label;",
            "Lzeroaicy/org/objectweb/asm/Label;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x1

    if-eqz p3, :cond_3b

    .line 1464
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->localVariableTypeTable:Lzeroaicy/org/objectweb/asm/ByteVector;

    if-nez v1, :cond_e

    .line 1465
    new-instance v1, Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-direct {v1}, Lzeroaicy/org/objectweb/asm/ByteVector;-><init>()V

    iput-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->localVariableTypeTable:Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 1467
    :cond_e
    iget v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->localVariableTypeTableLength:I

    add-int/2addr v1, v0

    iput v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->localVariableTypeTableLength:I

    .line 1468
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->localVariableTypeTable:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v2, p4, Lzeroaicy/org/objectweb/asm/Label;->bytecodeOffset:I

    invoke-virtual {v1, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v1

    iget v2, p5, Lzeroaicy/org/objectweb/asm/Label;->bytecodeOffset:I

    iget v3, p4, Lzeroaicy/org/objectweb/asm/Label;->bytecodeOffset:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v1

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v2, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v1

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v2, p3}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {v1, p3}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object p3

    invoke-virtual {p3, p6}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 1475
    :cond_3b
    iget-object p3, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->localVariableTable:Lzeroaicy/org/objectweb/asm/ByteVector;

    if-nez p3, :cond_46

    .line 1476
    new-instance p3, Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-direct {p3}, Lzeroaicy/org/objectweb/asm/ByteVector;-><init>()V

    iput-object p3, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->localVariableTable:Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 1478
    :cond_46
    iget p3, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->localVariableTableLength:I

    add-int/2addr p3, v0

    iput p3, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->localVariableTableLength:I

    .line 1479
    iget-object p3, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->localVariableTable:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v1, p4, Lzeroaicy/org/objectweb/asm/Label;->bytecodeOffset:I

    invoke-virtual {p3, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object p3

    iget p5, p5, Lzeroaicy/org/objectweb/asm/Label;->bytecodeOffset:I

    iget p4, p4, Lzeroaicy/org/objectweb/asm/Label;->bytecodeOffset:I

    sub-int/2addr p5, p4

    invoke-virtual {p3, p5}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object p3

    iget-object p4, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {p4, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p3, p1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object p1

    iget-object p3, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {p3, p2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p3}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object p1

    invoke-virtual {p1, p6}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 1485
    iget p1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->compute:I

    if-eqz p1, :cond_8c

    .line 1486
    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 p2, 0x4a

    if-eq p1, p2, :cond_84

    const/16 p2, 0x44

    if-ne p1, p2, :cond_85

    :cond_84
    const/4 v0, 0x2

    :cond_85
    add-int/2addr p6, v0

    .line 1488
    iget p1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxLocals:I

    if-le p6, p1, :cond_8c

    .line 1489
    iput p6, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxLocals:I

    :cond_8c
    return-void
.end method

.method public visitLocalVariableAnnotation(ILzeroaicy/org/objectweb/asm/TypePath;[Lzeroaicy/org/objectweb/asm/Label;[Lzeroaicy/org/objectweb/asm/Label;[ILjava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;
    .registers 13
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 1505
    new-instance v0, Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lzeroaicy/org/objectweb/asm/ByteVector;-><init>()V

    .line 1507
    ushr-int/lit8 p1, p1, 0x18

    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object p1

    array-length v1, p3

    invoke-virtual {p1, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 1508
    :goto_11
    array-length v2, p3

    if-lt v1, v2, :cond_3f

    .line 1514
    invoke-static {p2, v0}, Lzeroaicy/org/objectweb/asm/TypePath;->put(Lzeroaicy/org/objectweb/asm/TypePath;Lzeroaicy/org/objectweb/asm/ByteVector;)V

    .line 1516
    iget-object p2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {p2, p6}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object p2

    invoke-virtual {p2, p1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    const/4 p1, 0x1

    if-eqz p7, :cond_33

    .line 1518
    new-instance p2, Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    iget-object p3, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget-object p4, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastCodeRuntimeVisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    invoke-direct {p2, p3, p1, v0, p4}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;-><init>(Lzeroaicy/org/objectweb/asm/SymbolTable;ZLzeroaicy/org/objectweb/asm/ByteVector;Lzeroaicy/org/objectweb/asm/AnnotationWriter;)V

    iput-object p2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastCodeRuntimeVisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    return-object p2

    .line 1525
    :cond_33
    new-instance p2, Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    iget-object p3, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget-object p4, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastCodeRuntimeInvisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    invoke-direct {p2, p3, p1, v0, p4}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;-><init>(Lzeroaicy/org/objectweb/asm/SymbolTable;ZLzeroaicy/org/objectweb/asm/ByteVector;Lzeroaicy/org/objectweb/asm/AnnotationWriter;)V

    iput-object p2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastCodeRuntimeInvisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    return-object p2

    .line 1509
    :cond_3f
    aget-object v2, p3, v1

    iget v2, v2, Lzeroaicy/org/objectweb/asm/Label;->bytecodeOffset:I

    invoke-virtual {v0, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v2

    aget-object v3, p4, v1

    iget v3, v3, Lzeroaicy/org/objectweb/asm/Label;->bytecodeOffset:I

    aget-object v4, p3, v1

    iget v4, v4, Lzeroaicy/org/objectweb/asm/Label;->bytecodeOffset:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v2

    aget v3, p5, v1

    invoke-virtual {v2, v3}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    add-int/lit8 v1, v1, 0x1

    goto :goto_11
.end method

.method public visitLookupSwitchInsn(Lzeroaicy/org/objectweb/asm/Label;[I[Lzeroaicy/org/objectweb/asm/Label;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzeroaicy/org/objectweb/asm/Label;",
            "[I[",
            "Lzeroaicy/org/objectweb/asm/Label;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 1349
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v0, v0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    iput v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastBytecodeOffset:I

    .line 1351
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    const/16 v1, 0xab

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, [B

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v2, v2, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    rem-int/lit8 v2, v2, 0x4

    rsub-int/lit8 v2, v2, 0x4

    rem-int/lit8 v2, v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByteArray([BII)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 1352
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastBytecodeOffset:I

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lzeroaicy/org/objectweb/asm/Label;->put(Lzeroaicy/org/objectweb/asm/ByteVector;IZ)V

    .line 1353
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    array-length v1, p3

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putInt(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 1354
    :goto_2e
    array-length v0, p3

    if-lt v3, v0, :cond_35

    .line 1359
    invoke-direct {p0, p1, p3}, Lzeroaicy/org/objectweb/asm/MethodWriter;->visitSwitchInsn(Lzeroaicy/org/objectweb/asm/Label;[Lzeroaicy/org/objectweb/asm/Label;)V

    return-void

    .line 1355
    :cond_35
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    aget v1, p2, v3

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putInt(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 1356
    aget-object v0, p3, v3

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v4, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastBytecodeOffset:I

    invoke-virtual {v0, v1, v4, v2}, Lzeroaicy/org/objectweb/asm/Label;->put(Lzeroaicy/org/objectweb/asm/ByteVector;IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2e
.end method

.method public visitMaxs(II)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 1546
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->compute:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    .line 1547
    invoke-direct {p0}, Lzeroaicy/org/objectweb/asm/MethodWriter;->computeAllFrames()V

    goto :goto_1c

    :cond_9
    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 1549
    invoke-direct {p0}, Lzeroaicy/org/objectweb/asm/MethodWriter;->computeMaxStackAndLocal()V

    goto :goto_1c

    :cond_10
    const/4 v1, 0x2

    if-ne v0, v1, :cond_18

    .line 1551
    iget p1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxRelativeStackSize:I

    iput p1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxStack:I

    goto :goto_1c

    .line 1553
    :cond_18
    iput p1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxStack:I

    .line 1554
    iput p2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxLocals:I

    :goto_1c
    return-void
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 1034
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v0, v0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    iput v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastBytecodeOffset:I

    .line 1036
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p2, p3, p4, p5}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p2

    const/4 p3, 0x0

    const/16 p4, 0xb9

    if-ne p1, p4, :cond_23

    .line 1038
    iget-object p5, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v0, p2, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    invoke-virtual {p5, p4, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object p4

    invoke-virtual {p2}, Lzeroaicy/org/objectweb/asm/Symbol;->getArgumentsAndReturnSizes()I

    move-result p5

    shr-int/lit8 p5, p5, 0x2

    invoke-virtual {p4, p5, p3}, Lzeroaicy/org/objectweb/asm/ByteVector;->put11(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    goto :goto_2a

    .line 1041
    :cond_23
    iget-object p4, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget p5, p2, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    invoke-virtual {p4, p1, p5}, Lzeroaicy/org/objectweb/asm/ByteVector;->put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 1044
    :goto_2a
    iget-object p4, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    if-eqz p4, :cond_5d

    .line 1045
    iget p5, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->compute:I

    const/4 v0, 0x4

    if-eq p5, v0, :cond_56

    const/4 v0, 0x3

    if-ne p5, v0, :cond_37

    goto :goto_56

    .line 1048
    :cond_37
    invoke-virtual {p2}, Lzeroaicy/org/objectweb/asm/Symbol;->getArgumentsAndReturnSizes()I

    move-result p2

    and-int/lit8 p3, p2, 0x3

    shr-int/lit8 p2, p2, 0x2

    sub-int/2addr p3, p2

    const/16 p2, 0xb8

    if-ne p1, p2, :cond_4a

    .line 1052
    iget p1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->relativeStackSize:I

    add-int/2addr p1, p3

    add-int/lit8 p1, p1, 0x1

    goto :goto_4d

    .line 1054
    :cond_4a
    iget p1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->relativeStackSize:I

    add-int/2addr p1, p3

    .line 1056
    :goto_4d
    iget p2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxRelativeStackSize:I

    if-le p1, p2, :cond_53

    .line 1057
    iput p1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxRelativeStackSize:I

    .line 1059
    :cond_53
    iput p1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->relativeStackSize:I

    goto :goto_5d

    .line 1046
    :cond_56
    :goto_56
    iget-object p4, p4, Lzeroaicy/org/objectweb/asm/Label;->frame:Lzeroaicy/org/objectweb/asm/Frame;

    iget-object p5, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {p4, p1, p3, p2, p5}, Lzeroaicy/org/objectweb/asm/Frame;->execute(IILzeroaicy/org/objectweb/asm/Symbol;Lzeroaicy/org/objectweb/asm/SymbolTable;)V

    :cond_5d
    :goto_5d
    return-void
.end method

.method public visitMultiANewArrayInsn(Ljava/lang/String;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 1389
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v0, v0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    iput v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastBytecodeOffset:I

    .line 1391
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p1

    .line 1392
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v1, p1, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    const/16 v2, 0xc5

    invoke-virtual {v0, v2, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 1394
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    if-eqz v0, :cond_35

    .line 1395
    iget v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->compute:I

    const/4 v3, 0x4

    if-eq v1, v3, :cond_2e

    const/4 v3, 0x3

    if-ne v1, v3, :cond_26

    goto :goto_2e

    .line 1400
    :cond_26
    iget p1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->relativeStackSize:I

    rsub-int/lit8 p2, p2, 0x1

    add-int/2addr p1, p2

    iput p1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->relativeStackSize:I

    goto :goto_35

    .line 1396
    :cond_2e
    :goto_2e
    iget-object v0, v0, Lzeroaicy/org/objectweb/asm/Label;->frame:Lzeroaicy/org/objectweb/asm/Frame;

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0, v2, p2, p1, v1}, Lzeroaicy/org/objectweb/asm/Frame;->execute(IILzeroaicy/org/objectweb/asm/Symbol;Lzeroaicy/org/objectweb/asm/SymbolTable;)V

    :cond_35
    :goto_35
    return-void
.end method

.method public visitParameter(Ljava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 643
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->parameters:Lzeroaicy/org/objectweb/asm/ByteVector;

    if-nez v0, :cond_b

    .line 644
    new-instance v0, Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lzeroaicy/org/objectweb/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->parameters:Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 646
    :cond_b
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->parametersCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->parametersCount:I

    .line 647
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->parameters:Lzeroaicy/org/objectweb/asm/ByteVector;

    if-nez p1, :cond_17

    const/4 p1, 0x0

    goto :goto_1d

    :cond_17
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v1, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p1

    :goto_1d
    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object p1

    invoke-virtual {p1, p2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    return-void
.end method

.method public visitParameterAnnotation(ILjava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;
    .registers 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    if-eqz p3, :cond_1e

    .line 694
    iget-object p3, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastRuntimeVisibleParameterAnnotations:[Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    if-nez p3, :cond_11

    .line 695
    iget-object p3, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->descriptor:Ljava/lang/String;

    invoke-static {p3}, Lzeroaicy/org/objectweb/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lzeroaicy/org/objectweb/asm/Type;

    move-result-object p3

    array-length p3, p3

    new-array p3, p3, [Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    iput-object p3, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastRuntimeVisibleParameterAnnotations:[Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    .line 698
    :cond_11
    iget-object p3, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastRuntimeVisibleParameterAnnotations:[Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    aget-object v1, p3, p1

    invoke-static {v0, p2, v1}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->create(Lzeroaicy/org/objectweb/asm/SymbolTable;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/AnnotationWriter;)Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    move-result-object p2

    aput-object p2, p3, p1

    return-object p2

    .line 702
    :cond_1e
    iget-object p3, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastRuntimeInvisibleParameterAnnotations:[Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    if-nez p3, :cond_2d

    .line 703
    iget-object p3, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->descriptor:Ljava/lang/String;

    invoke-static {p3}, Lzeroaicy/org/objectweb/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lzeroaicy/org/objectweb/asm/Type;

    move-result-object p3

    array-length p3, p3

    new-array p3, p3, [Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    iput-object p3, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastRuntimeInvisibleParameterAnnotations:[Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    .line 706
    :cond_2d
    iget-object p3, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastRuntimeInvisibleParameterAnnotations:[Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    aget-object v1, p3, p1

    invoke-static {v0, p2, v1}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->create(Lzeroaicy/org/objectweb/asm/SymbolTable;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/AnnotationWriter;)Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    move-result-object p2

    aput-object p2, p3, p1

    return-object p2
.end method

.method public varargs visitTableSwitchInsn(IILzeroaicy/org/objectweb/asm/Label;[Lzeroaicy/org/objectweb/asm/Label;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lzeroaicy/org/objectweb/asm/Label;",
            "[",
            "Lzeroaicy/org/objectweb/asm/Label;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 1335
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v0, v0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    iput v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastBytecodeOffset:I

    .line 1337
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    const/16 v1, 0xaa

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, [B

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v2, v2, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    rem-int/lit8 v2, v2, 0x4

    rsub-int/lit8 v2, v2, 0x4

    rem-int/lit8 v2, v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByteArray([BII)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 1338
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastBytecodeOffset:I

    const/4 v2, 0x1

    invoke-virtual {p3, v0, v1, v2}, Lzeroaicy/org/objectweb/asm/Label;->put(Lzeroaicy/org/objectweb/asm/ByteVector;IZ)V

    .line 1339
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putInt(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object p1

    invoke-virtual {p1, p2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putInt(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 1341
    :goto_31
    array-length p1, p4

    if-lt v3, p1, :cond_38

    .line 1344
    invoke-direct {p0, p3, p4}, Lzeroaicy/org/objectweb/asm/MethodWriter;->visitSwitchInsn(Lzeroaicy/org/objectweb/asm/Label;[Lzeroaicy/org/objectweb/asm/Label;)V

    return-void

    .line 1340
    :cond_38
    aget-object p1, p4, v3

    .line 1341
    iget-object p2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastBytecodeOffset:I

    invoke-virtual {p1, p2, v0, v2}, Lzeroaicy/org/objectweb/asm/Label;->put(Lzeroaicy/org/objectweb/asm/ByteVector;IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_31
.end method

.method public visitTryCatchAnnotation(ILzeroaicy/org/objectweb/asm/TypePath;Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;
    .registers 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    if-eqz p4, :cond_d

    .line 1445
    iget-object p4, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastCodeRuntimeVisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    invoke-static {p4, p1, p2, p3, v0}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->create(Lzeroaicy/org/objectweb/asm/SymbolTable;ILzeroaicy/org/objectweb/asm/TypePath;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/AnnotationWriter;)Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    move-result-object p1

    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastCodeRuntimeVisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    return-object p1

    .line 1449
    :cond_d
    iget-object p4, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastCodeRuntimeInvisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    invoke-static {p4, p1, p2, p3, v0}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->create(Lzeroaicy/org/objectweb/asm/SymbolTable;ILzeroaicy/org/objectweb/asm/TypePath;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/AnnotationWriter;)Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    move-result-object p1

    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastCodeRuntimeInvisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    return-object p1
.end method

.method public visitTryCatchBlock(Lzeroaicy/org/objectweb/asm/Label;Lzeroaicy/org/objectweb/asm/Label;Lzeroaicy/org/objectweb/asm/Label;Ljava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzeroaicy/org/objectweb/asm/Label;",
            "Lzeroaicy/org/objectweb/asm/Label;",
            "Lzeroaicy/org/objectweb/asm/Label;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    if-eqz p4, :cond_c

    .line 1430
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p4}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v0

    iget v0, v0, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    move v5, v0

    goto :goto_e

    :cond_c
    const/4 v0, 0x0

    const/4 v5, 0x0

    :goto_e
    new-instance v0, Lzeroaicy/org/objectweb/asm/Handler;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lzeroaicy/org/objectweb/asm/Handler;-><init>(Lzeroaicy/org/objectweb/asm/Label;Lzeroaicy/org/objectweb/asm/Label;Lzeroaicy/org/objectweb/asm/Label;ILjava/lang/String;)V

    .line 1433
    iget-object p1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->firstHandler:Lzeroaicy/org/objectweb/asm/Handler;

    if-nez p1, :cond_1f

    .line 1434
    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->firstHandler:Lzeroaicy/org/objectweb/asm/Handler;

    goto :goto_23

    .line 1436
    :cond_1f
    iget-object p1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastHandler:Lzeroaicy/org/objectweb/asm/Handler;

    iput-object v0, p1, Lzeroaicy/org/objectweb/asm/Handler;->nextHandler:Lzeroaicy/org/objectweb/asm/Handler;

    .line 1438
    :goto_23
    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastHandler:Lzeroaicy/org/objectweb/asm/Handler;

    return-void
.end method

.method public visitTypeAnnotation(ILzeroaicy/org/objectweb/asm/TypePath;Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;
    .registers 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    if-eqz p4, :cond_d

    .line 671
    iget-object p4, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastRuntimeVisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    invoke-static {p4, p1, p2, p3, v0}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->create(Lzeroaicy/org/objectweb/asm/SymbolTable;ILzeroaicy/org/objectweb/asm/TypePath;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/AnnotationWriter;)Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    move-result-object p1

    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastRuntimeVisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    return-object p1

    .line 675
    :cond_d
    iget-object p4, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastRuntimeInvisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    invoke-static {p4, p1, p2, p3, v0}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->create(Lzeroaicy/org/objectweb/asm/SymbolTable;ILzeroaicy/org/objectweb/asm/TypePath;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/AnnotationWriter;)Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    move-result-object p1

    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastRuntimeInvisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    return-object p1
.end method

.method public visitTypeInsn(ILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 971
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v0, v0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    iput v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastBytecodeOffset:I

    .line 973
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p2

    .line 974
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v1, p2, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    invoke-virtual {v0, p1, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 976
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    if-eqz v0, :cond_3a

    .line 977
    iget v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->compute:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_31

    const/4 v2, 0x3

    if-ne v1, v2, :cond_20

    goto :goto_31

    :cond_20
    const/16 p2, 0xbb

    if-ne p1, p2, :cond_3a

    .line 981
    iget p1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->relativeStackSize:I

    add-int/lit8 p1, p1, 0x1

    .line 982
    iget p2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxRelativeStackSize:I

    if-le p1, p2, :cond_2e

    .line 983
    iput p1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxRelativeStackSize:I

    .line 985
    :cond_2e
    iput p1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->relativeStackSize:I

    goto :goto_3a

    .line 978
    :cond_31
    :goto_31
    iget-object v0, v0, Lzeroaicy/org/objectweb/asm/Label;->frame:Lzeroaicy/org/objectweb/asm/Frame;

    iget v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastBytecodeOffset:I

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p1, v1, p2, v2}, Lzeroaicy/org/objectweb/asm/Frame;->execute(IILzeroaicy/org/objectweb/asm/Symbol;Lzeroaicy/org/objectweb/asm/SymbolTable;)V

    :cond_3a
    :goto_3a
    return-void
.end method

.method public visitVarInsn(II)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 909
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v0, v0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    iput v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastBytecodeOffset:I

    const/16 v0, 0xa9

    const/16 v1, 0x36

    const/4 v2, 0x4

    if-ge p2, v2, :cond_25

    if-eq p1, v0, :cond_25

    if-ge p1, v1, :cond_18

    add-int/lit8 v3, p1, -0x15

    shl-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1a

    goto :goto_1e

    :cond_18
    add-int/lit8 v3, p1, -0x36

    shl-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x3b

    .line 918
    :goto_1e
    iget-object v4, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    add-int/2addr v3, p2

    invoke-virtual {v4, v3}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    goto :goto_3a

    :cond_25
    const/16 v3, 0x100

    if-lt p2, v3, :cond_35

    .line 920
    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    const/16 v4, 0xc4

    invoke-virtual {v3, v4}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lzeroaicy/org/objectweb/asm/ByteVector;->put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    goto :goto_3a

    .line 922
    :cond_35
    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-virtual {v3, p1, p2}, Lzeroaicy/org/objectweb/asm/ByteVector;->put11(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 925
    :goto_3a
    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    if-eqz v3, :cond_76

    .line 926
    iget v4, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->compute:I

    if-eq v4, v2, :cond_6a

    const/4 v5, 0x3

    if-ne v4, v5, :cond_46

    goto :goto_6a

    :cond_46
    if-ne p1, v0, :cond_5a

    .line 931
    iget-short v0, v3, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    or-int/lit8 v0, v0, 0x40

    int-to-short v0, v0

    iput-short v0, v3, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    .line 932
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    iget v3, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->relativeStackSize:I

    int-to-short v3, v3

    iput-short v3, v0, Lzeroaicy/org/objectweb/asm/Label;->outputStackSize:S

    .line 933
    invoke-direct {p0}, Lzeroaicy/org/objectweb/asm/MethodWriter;->endCurrentBasicBlockWithNoSuccessor()V

    goto :goto_76

    .line 935
    :cond_5a
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->relativeStackSize:I

    sget-object v3, Lzeroaicy/org/objectweb/asm/MethodWriter;->STACK_SIZE_DELTA:[I

    aget v3, v3, p1

    add-int/2addr v0, v3

    .line 936
    iget v3, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxRelativeStackSize:I

    if-le v0, v3, :cond_67

    .line 937
    iput v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxRelativeStackSize:I

    .line 939
    :cond_67
    iput v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->relativeStackSize:I

    goto :goto_76

    .line 927
    :cond_6a
    :goto_6a
    iget-object v0, v3, Lzeroaicy/org/objectweb/asm/Label;->frame:Lzeroaicy/org/objectweb/asm/Frame;

    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, Lzeroaicy/org/objectweb/asm/Symbol;

    move-object v4, v3

    check-cast v4, Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p1, p2, v3, v3}, Lzeroaicy/org/objectweb/asm/Frame;->execute(IILzeroaicy/org/objectweb/asm/Symbol;Lzeroaicy/org/objectweb/asm/SymbolTable;)V

    .line 943
    :cond_76
    :goto_76
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->compute:I

    if-eqz v0, :cond_96

    const/16 v3, 0x16

    if-eq p1, v3, :cond_8e

    const/16 v3, 0x18

    if-eq p1, v3, :cond_8e

    const/16 v3, 0x37

    if-eq p1, v3, :cond_8e

    const/16 v3, 0x39

    if-ne p1, v3, :cond_8b

    goto :goto_8e

    :cond_8b
    add-int/lit8 p2, p2, 0x1

    goto :goto_90

    :cond_8e
    :goto_8e
    add-int/lit8 p2, p2, 0x2

    .line 953
    :goto_90
    iget v3, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxLocals:I

    if-le p2, v3, :cond_96

    .line 954
    iput p2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxLocals:I

    :cond_96
    if-lt p1, v1, :cond_a6

    if-ne v0, v2, :cond_a6

    .line 957
    iget-object p1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->firstHandler:Lzeroaicy/org/objectweb/asm/Handler;

    if-eqz p1, :cond_a6

    .line 965
    new-instance p1, Lzeroaicy/org/objectweb/asm/Label;

    invoke-direct {p1}, Lzeroaicy/org/objectweb/asm/Label;-><init>()V

    invoke-virtual {p0, p1}, Lzeroaicy/org/objectweb/asm/MethodWriter;->visitLabel(Lzeroaicy/org/objectweb/asm/Label;)V

    :cond_a6
    return-void
.end method
