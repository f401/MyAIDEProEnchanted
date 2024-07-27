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
.method private static $d2j$hex$675f6152$decode_B(Ljava/lang/String;)[B
    .registers 14
    .param p0, "src"    # Ljava/lang/String;

    const/16 v12, 0x61

    const/16 v11, 0x46

    const/16 v10, 0x41

    const/16 v9, 0x39

    const/16 v8, 0x30

    .line 42
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 43
    .local v0, "d":[C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    new-array v6, v7, [B

    .line 44
    .local v6, "ret":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v7, v6

    if-ge v3, v7, :cond_6

    .line 45
    mul-int/lit8 v7, v3, 0x2

    aget-char v1, v0, v7

    .line 46
    .local v1, "h":C
    mul-int/lit8 v7, v3, 0x2

    add-int/lit8 v7, v7, 0x1

    aget-char v4, v0, v7

    .line 48
    .local v4, "l":C
    if-lt v1, v8, :cond_0

    if-gt v1, v9, :cond_0

    .line 49
    add-int/lit8 v2, v1, -0x30

    .line 58
    .local v2, "hh":I
    :goto_1
    if-lt v4, v8, :cond_3

    if-gt v4, v9, :cond_3

    .line 59
    add-int/lit8 v5, v4, -0x30

    .line 67
    .local v5, "ll":I
    :goto_2
    shl-int/lit8 v7, v2, 0x4

    or-int/2addr v7, v5

    int-to-byte v7, v7

    aput-byte v7, v6, v3

    .line 44
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 50
    .end local v2    # "hh":I
    .end local v5    # "ll":I
    :cond_0
    if-lt v1, v12, :cond_1

    const/16 v7, 0x66

    if-gt v1, v7, :cond_1

    .line 51
    add-int/lit8 v7, v1, -0x61

    add-int/lit8 v2, v7, 0xa

    .restart local v2    # "hh":I
    goto :goto_1

    .line 52
    .end local v2    # "hh":I
    :cond_1
    if-lt v1, v10, :cond_2

    if-gt v1, v11, :cond_2

    .line 53
    add-int/lit8 v7, v1, -0x41

    add-int/lit8 v2, v7, 0xa

    .restart local v2    # "hh":I
    goto :goto_1

    .line 55
    .end local v2    # "hh":I
    :cond_2
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7}, Ljava/lang/RuntimeException;-><init>()V

    throw v7

    .line 60
    .restart local v2    # "hh":I
    :cond_3
    if-lt v4, v12, :cond_4

    const/16 v7, 0x66

    if-gt v4, v7, :cond_4

    .line 61
    add-int/lit8 v7, v4, -0x61

    add-int/lit8 v5, v7, 0xa

    .restart local v5    # "ll":I
    goto :goto_2

    .line 62
    .end local v5    # "ll":I
    :cond_4
    if-lt v4, v10, :cond_5

    if-gt v4, v11, :cond_5

    .line 63
    add-int/lit8 v7, v4, -0x41

    add-int/lit8 v5, v7, 0xa

    .restart local v5    # "ll":I
    goto :goto_2

    .line 65
    .end local v5    # "ll":I
    :cond_5
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7}, Ljava/lang/RuntimeException;-><init>()V

    throw v7

    .line 69
    .end local v1    # "h":C
    .end local v2    # "hh":I
    .end local v4    # "l":C
    :cond_6
    return-object v6
.end method

.method private static $d2j$hex$675f6152$decode_I(Ljava/lang/String;)[I
    .registers 6
    .param p0, "src"    # Ljava/lang/String;

    .line 22
    invoke-static {p0}, Lzeroaicy/org/objectweb/asm/MethodWriter;->$d2j$hex$675f6152$decode_B(Ljava/lang/String;)[B

    move-result-object v1

    .line 23
    .local v1, "d":[B
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 24
    .local v0, "b":Ljava/nio/ByteBuffer;
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 25
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v3

    .line 26
    .local v3, "s":Ljava/nio/IntBuffer;
    array-length v4, v1

    div-int/lit8 v4, v4, 0x4

    new-array v2, v4, [I

    .line 27
    .local v2, "data":[I
    invoke-virtual {v3, v2}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    .line 28
    return-object v2
.end method

.method private static $d2j$hex$675f6152$decode_J(Ljava/lang/String;)[J
    .registers 6
    .param p0, "src"    # Ljava/lang/String;

    .line 12
    invoke-static {p0}, Lzeroaicy/org/objectweb/asm/MethodWriter;->$d2j$hex$675f6152$decode_B(Ljava/lang/String;)[B

    move-result-object v1

    .line 13
    .local v1, "d":[B
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 14
    .local v0, "b":Ljava/nio/ByteBuffer;
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 15
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v3

    .line 16
    .local v3, "s":Ljava/nio/LongBuffer;
    array-length v4, v1

    div-int/lit8 v4, v4, 0x8

    new-array v2, v4, [J

    .line 17
    .local v2, "data":[J
    invoke-virtual {v3, v2}, Ljava/nio/LongBuffer;->get([J)Ljava/nio/LongBuffer;

    .line 18
    return-object v2
.end method

.method private static $d2j$hex$675f6152$decode_S(Ljava/lang/String;)[S
    .registers 6
    .param p0, "src"    # Ljava/lang/String;

    .line 32
    invoke-static {p0}, Lzeroaicy/org/objectweb/asm/MethodWriter;->$d2j$hex$675f6152$decode_B(Ljava/lang/String;)[B

    move-result-object v1

    .line 33
    .local v1, "d":[B
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 34
    .local v0, "b":Ljava/nio/ByteBuffer;
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 35
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v3

    .line 36
    .local v3, "s":Ljava/nio/ShortBuffer;
    array-length v4, v1

    div-int/lit8 v4, v4, 0x2

    new-array v2, v4, [S

    .line 37
    .local v2, "data":[S
    invoke-virtual {v3, v2}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    .line 38
    return-object v2
.end method

.method static final constructor <clinit>()V
    .registers 1

    const-string v0, "00000000010000000100000001000000010000000100000001000000010000000100000002000000020000000100000001000000010000000200000002000000010000000100000001000000000000000000000001000000020000000100000002000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffff00000000ffffffff00000000fffffffffffffffffffffffffffffffffffffffffefffffffffffffffeffffffffffffff0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fdfffffffcfffffffdfffffffcfffffffdfffffffdfffffffdfffffffdfffffffffffffffeffffff01000000010000000100000002000000020000000200000000000000fffffffffefffffffffffffffefffffffffffffffefffffffffffffffefffffffffffffffefffffffffffffffefffffffffffffffefffffffffffffffefffffffffffffffefffffffffffffffeffffff00000000000000000000000000000000fffffffffffffffffffffffffffffffffffffffffffffffffffffffffefffffffffffffffefffffffffffffffeffffff00000000010000000000000001000000ffffffffffffffff00000000000000000100000001000000ffffffff00000000ffffffff000000000000000000000000fdfffffffffffffffffffffffdfffffffdfffffffffffffffffffffffffffffffffffffffffffffffffffffffefffffffefffffffefffffffefffffffefffffffefffffffefffffffeffffff000000000100000000000000fffffffffffffffffffffffffefffffffffffffffeffffffffffffff0000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000ffffffffffffffff0000000000000000ffffffffffffffff0000000000000000"

    invoke-static {v0}, Lzeroaicy/org/objectweb/asm/MethodWriter;->$d2j$hex$675f6152$decode_I(Ljava/lang/String;)[I

    move-result-object v0

    sput-object v0, Lzeroaicy/org/objectweb/asm/MethodWriter;->STACK_SIZE_DELTA:[I

    return-void
.end method

.method constructor <init>(Lzeroaicy/org/objectweb/asm/SymbolTable;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)V
    .registers 11

    const/4 v1, 0x0

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

    if-eqz v0, :cond_2

    const/high16 v0, 0x40000

    or-int/2addr v0, p2

    :goto_0
    iput v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->accessFlags:I

    .line 599
    invoke-virtual {p1, p3}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->nameIndex:I

    .line 600
    iput-object p3, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->name:Ljava/lang/String;

    .line 601
    invoke-virtual {p1, p4}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->descriptorIndex:I

    .line 602
    iput-object p4, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->descriptor:Ljava/lang/String;

    .line 603
    if-nez p5, :cond_3

    move v0, v1

    :goto_1
    iput v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->signatureIndex:I

    .line 604
    if-eqz p6, :cond_5

    array-length v0, p6

    if-lez v0, :cond_5

    .line 605
    array-length v0, p6

    iput v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->numberOfExceptions:I

    .line 606
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->numberOfExceptions:I

    new-array v0, v0, [I

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->exceptionIndexTable:[I

    .line 607
    :goto_2
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->numberOfExceptions:I

    if-lt v1, v0, :cond_4

    .line 614
    :goto_3
    iput p7, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->compute:I

    .line 615
    if-eqz p7, :cond_1

    .line 617
    invoke-static {p4}, Lzeroaicy/org/objectweb/asm/Type;->getArgumentsAndReturnSizes(Ljava/lang/String;)I

    move-result v0

    shr-int/lit8 v0, v0, 0x2

    .line 618
    and-int/lit8 v1, p2, 0x8

    if-eqz v1, :cond_0

    .line 619
    add-int/lit8 v0, v0, -0x1

    .line 621
    :cond_0
    iput v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxLocals:I

    .line 622
    iput v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentLocals:I

    .line 624
    new-instance v0, Lzeroaicy/org/objectweb/asm/Label;

    invoke-direct {v0}, Lzeroaicy/org/objectweb/asm/Label;-><init>()V

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->firstBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    .line 625
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->firstBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/MethodWriter;->visitLabel(Lzeroaicy/org/objectweb/asm/Label;)V

    :cond_1
    return-void

    :cond_2
    move v0, p2

    .line 598
    goto :goto_0

    .line 603
    :cond_3
    invoke-virtual {p1, p5}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 608
    :cond_4
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->exceptionIndexTable:[I

    aget-object v2, p6, v1

    invoke-virtual {p1, v2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v2

    iget v2, v2, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    aput v2, v0, v1

    .line 607
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 611
    :cond_5
    iput v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->numberOfExceptions:I

    .line 612
    const/4 v0, 0x0

    check-cast v0, [I

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->exceptionIndexTable:[I

    goto :goto_3
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

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    iget-object v2, v2, Lzeroaicy/org/objectweb/asm/Label;->outgoingEdges:Lzeroaicy/org/objectweb/asm/Edge;

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

    const/4 v10, 0x1

    const/4 v4, 0x0

    .line 1561
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->firstHandler:Lzeroaicy/org/objectweb/asm/Handler;

    move-object v1, v0

    .line 1562
    :goto_0
    if-nez v1, :cond_0

    .line 1581
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->firstBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    iget-object v0, v0, Lzeroaicy/org/objectweb/asm/Label;->frame:Lzeroaicy/org/objectweb/asm/Frame;

    .line 1582
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->accessFlags:I

    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->descriptor:Ljava/lang/String;

    iget v5, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxLocals:I

    invoke-virtual {v0, v1, v2, v3, v5}, Lzeroaicy/org/objectweb/asm/Frame;->setInputFrameFromDescriptor(Lzeroaicy/org/objectweb/asm/SymbolTable;ILjava/lang/String;I)V

    .line 1583
    invoke-virtual {v0, p0}, Lzeroaicy/org/objectweb/asm/Frame;->accept(Lzeroaicy/org/objectweb/asm/MethodWriter;)V

    .line 1591
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->firstBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    .line 1592
    sget-object v1, Lzeroaicy/org/objectweb/asm/Label;->EMPTY_LIST:Lzeroaicy/org/objectweb/asm/Label;

    iput-object v1, v0, Lzeroaicy/org/objectweb/asm/Label;->nextListElement:Lzeroaicy/org/objectweb/asm/Label;

    move-object v2, v0

    move v1, v4

    .line 1594
    :goto_1
    sget-object v0, Lzeroaicy/org/objectweb/asm/Label;->EMPTY_LIST:Lzeroaicy/org/objectweb/asm/Label;

    if-ne v2, v0, :cond_3

    .line 1625
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->firstBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    move-object v3, v2

    move v0, v1

    .line 1626
    :goto_2
    if-nez v3, :cond_6

    .line 1657
    iput v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxStack:I

    return-void

    .line 1563
    :cond_0
    iget-object v0, v1, Lzeroaicy/org/objectweb/asm/Handler;->catchTypeDescriptor:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "java/lang/Throwable"

    .line 1565
    :goto_3
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-static {v2, v0}, Lzeroaicy/org/objectweb/asm/Frame;->getAbstractTypeFromInternalName(Lzeroaicy/org/objectweb/asm/SymbolTable;Ljava/lang/String;)I

    move-result v2

    .line 1567
    iget-object v0, v1, Lzeroaicy/org/objectweb/asm/Handler;->handlerPc:Lzeroaicy/org/objectweb/asm/Label;

    invoke-virtual {v0}, Lzeroaicy/org/objectweb/asm/Label;->getCanonicalInstance()Lzeroaicy/org/objectweb/asm/Label;

    move-result-object v3

    .line 1568
    iget-short v0, v3, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    or-int/lit8 v0, v0, 0x2

    int-to-short v0, v0

    iput-short v0, v3, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    .line 1570
    iget-object v0, v1, Lzeroaicy/org/objectweb/asm/Handler;->startPc:Lzeroaicy/org/objectweb/asm/Label;

    invoke-virtual {v0}, Lzeroaicy/org/objectweb/asm/Label;->getCanonicalInstance()Lzeroaicy/org/objectweb/asm/Label;

    move-result-object v0

    .line 1571
    iget-object v5, v1, Lzeroaicy/org/objectweb/asm/Handler;->endPc:Lzeroaicy/org/objectweb/asm/Label;

    invoke-virtual {v5}, Lzeroaicy/org/objectweb/asm/Label;->getCanonicalInstance()Lzeroaicy/org/objectweb/asm/Label;

    move-result-object v5

    .line 1572
    :goto_4
    if-ne v0, v5, :cond_2

    .line 1577
    iget-object v0, v1, Lzeroaicy/org/objectweb/asm/Handler;->nextHandler:Lzeroaicy/org/objectweb/asm/Handler;

    move-object v1, v0

    goto :goto_0

    .line 1563
    :cond_1
    iget-object v0, v1, Lzeroaicy/org/objectweb/asm/Handler;->catchTypeDescriptor:Ljava/lang/String;

    goto :goto_3

    .line 1573
    :cond_2
    new-instance v6, Lzeroaicy/org/objectweb/asm/Edge;

    iget-object v7, v0, Lzeroaicy/org/objectweb/asm/Label;->outgoingEdges:Lzeroaicy/org/objectweb/asm/Edge;

    invoke-direct {v6, v2, v3, v7}, Lzeroaicy/org/objectweb/asm/Edge;-><init>(ILzeroaicy/org/objectweb/asm/Label;Lzeroaicy/org/objectweb/asm/Edge;)V

    iput-object v6, v0, Lzeroaicy/org/objectweb/asm/Label;->outgoingEdges:Lzeroaicy/org/objectweb/asm/Edge;

    .line 1575
    iget-object v0, v0, Lzeroaicy/org/objectweb/asm/Label;->nextBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    goto :goto_4

    .line 1597
    :cond_3
    iget-object v3, v2, Lzeroaicy/org/objectweb/asm/Label;->nextListElement:Lzeroaicy/org/objectweb/asm/Label;

    .line 1598
    const/4 v0, 0x0

    check-cast v0, Lzeroaicy/org/objectweb/asm/Label;

    iput-object v0, v2, Lzeroaicy/org/objectweb/asm/Label;->nextListElement:Lzeroaicy/org/objectweb/asm/Label;

    .line 1600
    iget-short v0, v2, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    or-int/lit8 v0, v0, 0x8

    int-to-short v0, v0

    iput-short v0, v2, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    .line 1602
    iget-object v0, v2, Lzeroaicy/org/objectweb/asm/Label;->frame:Lzeroaicy/org/objectweb/asm/Frame;

    invoke-virtual {v0}, Lzeroaicy/org/objectweb/asm/Frame;->getInputStackSize()I

    move-result v0

    iget-short v5, v2, Lzeroaicy/org/objectweb/asm/Label;->outputStackMax:S

    add-int/2addr v0, v5

    .line 1603
    if-le v0, v1, :cond_b

    .line 1607
    :goto_5
    iget-object v1, v2, Lzeroaicy/org/objectweb/asm/Label;->outgoingEdges:Lzeroaicy/org/objectweb/asm/Edge;

    move-object v5, v1

    .line 1608
    :goto_6
    if-nez v5, :cond_4

    move-object v2, v3

    move v1, v0

    goto :goto_1

    .line 1609
    :cond_4
    iget-object v1, v5, Lzeroaicy/org/objectweb/asm/Edge;->successor:Lzeroaicy/org/objectweb/asm/Label;

    invoke-virtual {v1}, Lzeroaicy/org/objectweb/asm/Label;->getCanonicalInstance()Lzeroaicy/org/objectweb/asm/Label;

    move-result-object v1

    .line 1610
    iget-object v6, v2, Lzeroaicy/org/objectweb/asm/Label;->frame:Lzeroaicy/org/objectweb/asm/Frame;

    iget-object v7, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget-object v8, v1, Lzeroaicy/org/objectweb/asm/Label;->frame:Lzeroaicy/org/objectweb/asm/Frame;

    iget v9, v5, Lzeroaicy/org/objectweb/asm/Edge;->info:I

    invoke-virtual {v6, v7, v8, v9}, Lzeroaicy/org/objectweb/asm/Frame;->merge(Lzeroaicy/org/objectweb/asm/SymbolTable;Lzeroaicy/org/objectweb/asm/Frame;I)Z

    move-result v6

    .line 1612
    if-eqz v6, :cond_5

    iget-object v6, v1, Lzeroaicy/org/objectweb/asm/Label;->nextListElement:Lzeroaicy/org/objectweb/asm/Label;

    if-nez v6, :cond_5

    .line 1615
    iput-object v3, v1, Lzeroaicy/org/objectweb/asm/Label;->nextListElement:Lzeroaicy/org/objectweb/asm/Label;

    move-object v3, v1

    .line 1618
    :cond_5
    iget-object v1, v5, Lzeroaicy/org/objectweb/asm/Edge;->nextEdge:Lzeroaicy/org/objectweb/asm/Edge;

    move-object v5, v1

    goto :goto_6

    .line 1627
    :cond_6
    iget-short v1, v3, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    and-int/lit8 v1, v1, 0xa

    const/16 v2, 0xa

    if-ne v1, v2, :cond_7

    .line 1629
    iget-object v1, v3, Lzeroaicy/org/objectweb/asm/Label;->frame:Lzeroaicy/org/objectweb/asm/Frame;

    invoke-virtual {v1, p0}, Lzeroaicy/org/objectweb/asm/Frame;->accept(Lzeroaicy/org/objectweb/asm/MethodWriter;)V

    .line 1631
    :cond_7
    iget-short v1, v3, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_8

    .line 1633
    iget-object v5, v3, Lzeroaicy/org/objectweb/asm/Label;->nextBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    .line 1634
    iget v2, v3, Lzeroaicy/org/objectweb/asm/Label;->bytecodeOffset:I

    .line 1635
    if-nez v5, :cond_9

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v1, v1, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    :goto_7
    add-int/lit8 v6, v1, -0x1

    .line 1636
    if-lt v6, v2, :cond_8

    move v1, v2

    .line 1638
    :goto_8
    if-lt v1, v6, :cond_a

    .line 1641
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v1, v1, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    const/16 v7, -0x41

    aput-byte v7, v1, v6

    .line 1644
    invoke-virtual {p0, v2, v4, v10}, Lzeroaicy/org/objectweb/asm/MethodWriter;->visitFrameStart(III)I

    move-result v1

    .line 1645
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentFrame:[I

    iget-object v6, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    const-string v7, "java/lang/Throwable"

    invoke-static {v6, v7}, Lzeroaicy/org/objectweb/asm/Frame;->getAbstractTypeFromInternalName(Lzeroaicy/org/objectweb/asm/SymbolTable;Ljava/lang/String;)I

    move-result v6

    aput v6, v2, v1

    .line 1647
    invoke-virtual {p0}, Lzeroaicy/org/objectweb/asm/MethodWriter;->visitFrameEnd()V

    .line 1649
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->firstHandler:Lzeroaicy/org/objectweb/asm/Handler;

    invoke-static {v1, v3, v5}, Lzeroaicy/org/objectweb/asm/Handler;->removeRange(Lzeroaicy/org/objectweb/asm/Handler;Lzeroaicy/org/objectweb/asm/Label;Lzeroaicy/org/objectweb/asm/Label;)Lzeroaicy/org/objectweb/asm/Handler;

    move-result-object v1

    iput-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->firstHandler:Lzeroaicy/org/objectweb/asm/Handler;

    .line 1651
    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1654
    :cond_8
    iget-object v1, v3, Lzeroaicy/org/objectweb/asm/Label;->nextBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    move-object v3, v1

    goto/16 :goto_2

    .line 1635
    :cond_9
    iget v1, v5, Lzeroaicy/org/objectweb/asm/Label;->bytecodeOffset:I

    goto :goto_7

    .line 1639
    :cond_a
    iget-object v7, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v7, v7, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    int-to-byte v8, v4

    aput-byte v8, v7, v1

    .line 1638
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_b
    move v0, v1

    goto/16 :goto_5
.end method

.method private computeMaxStackAndLocal()V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const v8, 0x7fffffff

    const/4 v3, 0x1

    .line 1663
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->firstHandler:Lzeroaicy/org/objectweb/asm/Handler;

    move-object v1, v0

    .line 1664
    :goto_0
    if-nez v1, :cond_2

    .line 1687
    iget-boolean v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->hasSubroutines:Z

    if-eqz v0, :cond_0

    .line 1690
    int-to-short v2, v3

    .line 1691
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->firstBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    invoke-virtual {v0, v2}, Lzeroaicy/org/objectweb/asm/Label;->markSubroutine(S)V

    .line 1694
    int-to-short v0, v3

    move v1, v0

    :goto_1
    if-le v1, v2, :cond_5

    .line 1711
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->firstBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    .line 1712
    :goto_2
    if-nez v0, :cond_8

    .line 1727
    :cond_0
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->firstBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    .line 1728
    sget-object v1, Lzeroaicy/org/objectweb/asm/Label;->EMPTY_LIST:Lzeroaicy/org/objectweb/asm/Label;

    iput-object v1, v0, Lzeroaicy/org/objectweb/asm/Label;->nextListElement:Lzeroaicy/org/objectweb/asm/Label;

    .line 1729
    iget v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxStack:I

    .line 1730
    :cond_1
    sget-object v2, Lzeroaicy/org/objectweb/asm/Label;->EMPTY_LIST:Lzeroaicy/org/objectweb/asm/Label;

    if-ne v0, v2, :cond_a

    .line 1764
    iput v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxStack:I

    return-void

    .line 1665
    :cond_2
    iget-object v2, v1, Lzeroaicy/org/objectweb/asm/Handler;->handlerPc:Lzeroaicy/org/objectweb/asm/Label;

    .line 1666
    iget-object v0, v1, Lzeroaicy/org/objectweb/asm/Handler;->startPc:Lzeroaicy/org/objectweb/asm/Label;

    .line 1667
    iget-object v4, v1, Lzeroaicy/org/objectweb/asm/Handler;->endPc:Lzeroaicy/org/objectweb/asm/Label;

    .line 1669
    :goto_3
    if-ne v0, v4, :cond_3

    .line 1683
    iget-object v0, v1, Lzeroaicy/org/objectweb/asm/Handler;->nextHandler:Lzeroaicy/org/objectweb/asm/Handler;

    move-object v1, v0

    goto :goto_0

    .line 1670
    :cond_3
    iget-short v5, v0, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    and-int/lit8 v5, v5, 0x10

    if-nez v5, :cond_4

    .line 1671
    new-instance v5, Lzeroaicy/org/objectweb/asm/Edge;

    iget-object v6, v0, Lzeroaicy/org/objectweb/asm/Label;->outgoingEdges:Lzeroaicy/org/objectweb/asm/Edge;

    invoke-direct {v5, v8, v2, v6}, Lzeroaicy/org/objectweb/asm/Edge;-><init>(ILzeroaicy/org/objectweb/asm/Label;Lzeroaicy/org/objectweb/asm/Edge;)V

    iput-object v5, v0, Lzeroaicy/org/objectweb/asm/Label;->outgoingEdges:Lzeroaicy/org/objectweb/asm/Edge;

    .line 1681
    :goto_4
    iget-object v0, v0, Lzeroaicy/org/objectweb/asm/Label;->nextBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    goto :goto_3

    .line 1677
    :cond_4
    iget-object v5, v0, Lzeroaicy/org/objectweb/asm/Label;->outgoingEdges:Lzeroaicy/org/objectweb/asm/Edge;

    iget-object v5, v5, Lzeroaicy/org/objectweb/asm/Edge;->nextEdge:Lzeroaicy/org/objectweb/asm/Edge;

    new-instance v6, Lzeroaicy/org/objectweb/asm/Edge;

    iget-object v7, v0, Lzeroaicy/org/objectweb/asm/Label;->outgoingEdges:Lzeroaicy/org/objectweb/asm/Edge;

    iget-object v7, v7, Lzeroaicy/org/objectweb/asm/Edge;->nextEdge:Lzeroaicy/org/objectweb/asm/Edge;

    iget-object v7, v7, Lzeroaicy/org/objectweb/asm/Edge;->nextEdge:Lzeroaicy/org/objectweb/asm/Edge;

    invoke-direct {v6, v8, v2, v7}, Lzeroaicy/org/objectweb/asm/Edge;-><init>(ILzeroaicy/org/objectweb/asm/Label;Lzeroaicy/org/objectweb/asm/Edge;)V

    iput-object v6, v5, Lzeroaicy/org/objectweb/asm/Edge;->nextEdge:Lzeroaicy/org/objectweb/asm/Edge;

    goto :goto_4

    .line 1695
    :cond_5
    iget-object v4, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->firstBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    move v0, v2

    .line 1696
    :goto_5
    if-nez v4, :cond_6

    .line 1694
    add-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    move v2, v0

    goto :goto_1

    .line 1697
    :cond_6
    iget-short v2, v4, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_7

    iget-short v2, v4, Lzeroaicy/org/objectweb/asm/Label;->subroutineId:S

    if-ne v2, v1, :cond_7

    .line 1699
    iget-object v2, v4, Lzeroaicy/org/objectweb/asm/Label;->outgoingEdges:Lzeroaicy/org/objectweb/asm/Edge;

    iget-object v2, v2, Lzeroaicy/org/objectweb/asm/Edge;->nextEdge:Lzeroaicy/org/objectweb/asm/Edge;

    iget-object v2, v2, Lzeroaicy/org/objectweb/asm/Edge;->successor:Lzeroaicy/org/objectweb/asm/Label;

    .line 1700
    iget-short v5, v2, Lzeroaicy/org/objectweb/asm/Label;->subroutineId:S

    if-nez v5, :cond_7

    .line 1702
    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    invoke-virtual {v2, v0}, Lzeroaicy/org/objectweb/asm/Label;->markSubroutine(S)V

    .line 1705
    :cond_7
    iget-object v2, v4, Lzeroaicy/org/objectweb/asm/Label;->nextBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    move-object v4, v2

    goto :goto_5

    .line 1713
    :cond_8
    iget-short v1, v0, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_9

    .line 1716
    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/Label;->outgoingEdges:Lzeroaicy/org/objectweb/asm/Edge;

    iget-object v1, v1, Lzeroaicy/org/objectweb/asm/Edge;->nextEdge:Lzeroaicy/org/objectweb/asm/Edge;

    iget-object v1, v1, Lzeroaicy/org/objectweb/asm/Edge;->successor:Lzeroaicy/org/objectweb/asm/Label;

    .line 1717
    invoke-virtual {v1, v0}, Lzeroaicy/org/objectweb/asm/Label;->addSubroutineRetSuccessors(Lzeroaicy/org/objectweb/asm/Label;)V

    .line 1719
    :cond_9
    iget-object v0, v0, Lzeroaicy/org/objectweb/asm/Label;->nextBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    goto :goto_2

    .line 1735
    :cond_a
    iget-object v4, v0, Lzeroaicy/org/objectweb/asm/Label;->nextListElement:Lzeroaicy/org/objectweb/asm/Label;

    .line 1737
    iget-short v6, v0, Lzeroaicy/org/objectweb/asm/Label;->inputStackSize:S

    .line 1738
    iget-short v2, v0, Lzeroaicy/org/objectweb/asm/Label;->outputStackMax:S

    add-int/2addr v2, v6

    .line 1740
    if-le v2, v1, :cond_b

    move v1, v2

    .line 1745
    :cond_b
    iget-object v2, v0, Lzeroaicy/org/objectweb/asm/Label;->outgoingEdges:Lzeroaicy/org/objectweb/asm/Edge;

    .line 1746
    iget-short v0, v0, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_c

    .line 1751
    iget-object v0, v2, Lzeroaicy/org/objectweb/asm/Edge;->nextEdge:Lzeroaicy/org/objectweb/asm/Edge;

    move-object v2, v0

    :cond_c
    move-object v5, v2

    move-object v0, v4

    .line 1753
    :goto_6
    if-eqz v5, :cond_1

    .line 1754
    iget-object v4, v5, Lzeroaicy/org/objectweb/asm/Edge;->successor:Lzeroaicy/org/objectweb/asm/Label;

    .line 1755
    iget-object v2, v4, Lzeroaicy/org/objectweb/asm/Label;->nextListElement:Lzeroaicy/org/objectweb/asm/Label;

    if-nez v2, :cond_d

    .line 1756
    iget v2, v5, Lzeroaicy/org/objectweb/asm/Edge;->info:I

    if-ne v2, v8, :cond_e

    move v2, v3

    :goto_7
    int-to-short v2, v2

    iput-short v2, v4, Lzeroaicy/org/objectweb/asm/Label;->inputStackSize:S

    .line 1758
    iput-object v0, v4, Lzeroaicy/org/objectweb/asm/Label;->nextListElement:Lzeroaicy/org/objectweb/asm/Label;

    move-object v0, v4

    .line 1761
    :cond_d
    iget-object v2, v5, Lzeroaicy/org/objectweb/asm/Edge;->nextEdge:Lzeroaicy/org/objectweb/asm/Edge;

    move-object v5, v2

    goto :goto_6

    .line 1756
    :cond_e
    iget v2, v5, Lzeroaicy/org/objectweb/asm/Edge;->info:I

    add-int/2addr v2, v6

    goto :goto_7
.end method

.method private endCurrentBasicBlockWithNoSuccessor()V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1795
    iget v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->compute:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 1796
    new-instance v1, Lzeroaicy/org/objectweb/asm/Label;

    invoke-direct {v1}, Lzeroaicy/org/objectweb/asm/Label;-><init>()V

    .line 1797
    new-instance v2, Lzeroaicy/org/objectweb/asm/Frame;

    invoke-direct {v2, v1}, Lzeroaicy/org/objectweb/asm/Frame;-><init>(Lzeroaicy/org/objectweb/asm/Label;)V

    iput-object v2, v1, Lzeroaicy/org/objectweb/asm/Label;->frame:Lzeroaicy/org/objectweb/asm/Frame;

    .line 1798
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v2, v2, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v3, v3, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    invoke-virtual {v1, v2, v3}, Lzeroaicy/org/objectweb/asm/Label;->resolve([BI)Z

    .line 1799
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    iput-object v1, v2, Lzeroaicy/org/objectweb/asm/Label;->nextBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    .line 1800
    iput-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    .line 1801
    check-cast v0, Lzeroaicy/org/objectweb/asm/Label;

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    .line 1804
    :cond_0
    :goto_0
    return-void

    .line 1802
    :cond_1
    iget v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->compute:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1803
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    iget v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxRelativeStackSize:I

    int-to-short v2, v2

    iput-short v2, v1, Lzeroaicy/org/objectweb/asm/Label;->outputStackMax:S

    .line 1804
    check-cast v0, Lzeroaicy/org/objectweb/asm/Label;

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    goto :goto_0
.end method

.method private putAbstractTypes(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 1959
    :goto_0
    if-lt p1, p2, :cond_0

    return-void

    .line 1960
    :cond_0
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentFrame:[I

    aget v1, v1, p1

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->stackMapTableEntries:Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-static {v0, v1, v2}, Lzeroaicy/org/objectweb/asm/Frame;->putAbstractType(Lzeroaicy/org/objectweb/asm/SymbolTable;ILzeroaicy/org/objectweb/asm/ByteVector;)V

    .line 1959
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method private putFrame()V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/16 v1, 0x40

    const/4 v5, 0x3

    const/4 v10, 0x1

    const/16 v2, 0xff

    const/4 v3, 0x0

    .line 1860
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentFrame:[I

    aget v6, v0, v10

    .line 1861
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentFrame:[I

    const/4 v4, 0x2

    aget v7, v0, v4

    .line 1862
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->getMajorVersion()I

    move-result v0

    const/16 v4, 0x32

    if-ge v0, v4, :cond_0

    .line 1864
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->stackMapTableEntries:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentFrame:[I

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v6}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 1865
    add-int/lit8 v0, v6, 0x3

    invoke-direct {p0, v5, v0}, Lzeroaicy/org/objectweb/asm/MethodWriter;->putAbstractTypes(II)V

    .line 1866
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->stackMapTableEntries:Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-virtual {v0, v7}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 1867
    add-int/lit8 v0, v6, 0x3

    add-int/lit8 v1, v6, 0x3

    add-int/2addr v1, v7

    invoke-direct {p0, v0, v1}, Lzeroaicy/org/objectweb/asm/MethodWriter;->putAbstractTypes(II)V

    .line 1947
    :goto_0
    return-void

    .line 1870
    :cond_0
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->stackMapTableNumberOfEntries:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentFrame:[I

    aget v0, v0, v3

    .line 1874
    :goto_1
    iget-object v4, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->previousFrame:[I

    aget v8, v4, v10

    .line 1875
    sub-int v9, v6, v8

    .line 1877
    if-nez v7, :cond_5

    .line 1878
    packed-switch v9, :pswitch_data_0

    move v1, v2

    .line 1902
    :cond_1
    :goto_2
    if-eq v1, v2, :cond_2

    move v4, v5

    .line 1905
    :goto_3
    if-ge v3, v8, :cond_2

    if-lt v3, v6, :cond_6

    .line 1913
    :cond_2
    :goto_4
    sparse-switch v1, :sswitch_data_0

    .line 1943
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->stackMapTableEntries:Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-virtual {v1, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v6}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 1944
    add-int/lit8 v0, v6, 0x3

    invoke-direct {p0, v5, v0}, Lzeroaicy/org/objectweb/asm/MethodWriter;->putAbstractTypes(II)V

    .line 1945
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->stackMapTableEntries:Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-virtual {v0, v7}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 1946
    add-int/lit8 v0, v6, 0x3

    add-int/lit8 v1, v6, 0x3

    add-int/2addr v1, v7

    invoke-direct {p0, v0, v1}, Lzeroaicy/org/objectweb/asm/MethodWriter;->putAbstractTypes(II)V

    goto :goto_0

    .line 1870
    :cond_3
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentFrame:[I

    aget v0, v0, v3

    iget-object v4, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->previousFrame:[I

    aget v4, v4, v3

    sub-int/2addr v0, v4

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1882
    :pswitch_0
    const/16 v1, 0xf8

    .line 1883
    goto :goto_2

    .line 1885
    :pswitch_1
    if-ge v0, v1, :cond_4

    move v1, v3

    goto :goto_2

    :cond_4
    const/16 v1, 0xfb

    goto :goto_2

    .line 1890
    :pswitch_2
    const/16 v1, 0xfc

    .line 1891
    goto :goto_2

    .line 1896
    :cond_5
    if-nez v9, :cond_8

    if-ne v7, v10, :cond_8

    .line 1897
    const/16 v4, 0x3f

    if-lt v0, v4, :cond_1

    const/16 v1, 0xf7

    goto :goto_2

    .line 1906
    :cond_6
    iget-object v10, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentFrame:[I

    aget v10, v10, v4

    iget-object v11, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->previousFrame:[I

    aget v11, v11, v4

    if-eq v10, v11, :cond_7

    move v1, v2

    .line 1908
    goto :goto_4

    .line 1910
    :cond_7
    add-int/lit8 v4, v4, 0x1

    .line 1905
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1915
    :sswitch_0
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->stackMapTableEntries:Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-virtual {v1, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    goto :goto_0

    .line 1918
    :sswitch_1
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->stackMapTableEntries:Lzeroaicy/org/objectweb/asm/ByteVector;

    add-int/lit8 v0, v0, 0x40

    invoke-virtual {v1, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 1919
    add-int/lit8 v0, v6, 0x3

    add-int/lit8 v1, v6, 0x4

    invoke-direct {p0, v0, v1}, Lzeroaicy/org/objectweb/asm/MethodWriter;->putAbstractTypes(II)V

    goto/16 :goto_0

    .line 1922
    :sswitch_2
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->stackMapTableEntries:Lzeroaicy/org/objectweb/asm/ByteVector;

    const/16 v2, 0xf7

    invoke-virtual {v1, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 1925
    add-int/lit8 v0, v6, 0x3

    add-int/lit8 v1, v6, 0x4

    invoke-direct {p0, v0, v1}, Lzeroaicy/org/objectweb/asm/MethodWriter;->putAbstractTypes(II)V

    goto/16 :goto_0

    .line 1928
    :sswitch_3
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->stackMapTableEntries:Lzeroaicy/org/objectweb/asm/ByteVector;

    const/16 v2, 0xfb

    invoke-virtual {v1, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    goto/16 :goto_0

    .line 1931
    :sswitch_4
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->stackMapTableEntries:Lzeroaicy/org/objectweb/asm/ByteVector;

    add-int/lit16 v2, v9, 0xfb

    invoke-virtual {v1, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    goto/16 :goto_0

    .line 1936
    :sswitch_5
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->stackMapTableEntries:Lzeroaicy/org/objectweb/asm/ByteVector;

    add-int/lit16 v2, v9, 0xfb

    invoke-virtual {v1, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 1939
    add-int/lit8 v0, v8, 0x3

    add-int/lit8 v1, v6, 0x3

    invoke-direct {p0, v0, v1}, Lzeroaicy/org/objectweb/asm/MethodWriter;->putAbstractTypes(II)V

    goto/16 :goto_0

    :cond_8
    move v1, v2

    goto/16 :goto_2

    .line 1878
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 1913
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x40 -> :sswitch_1
        0xf7 -> :sswitch_2
        0xf8 -> :sswitch_4
        0xfb -> :sswitch_3
        0xfc -> :sswitch_5
    .end sparse-switch
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

    if-eqz v0, :cond_0

    .line 1976
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->stackMapTableEntries:Lzeroaicy/org/objectweb/asm/ByteVector;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 1982
    :goto_0
    return-void

    .line 1977
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1978
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->stackMapTableEntries:Lzeroaicy/org/objectweb/asm/ByteVector;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v1

    iget v1, v1, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    goto :goto_0

    .line 1982
    :cond_1
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->stackMapTableEntries:Lzeroaicy/org/objectweb/asm/ByteVector;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    check-cast p1, Lzeroaicy/org/objectweb/asm/Label;

    iget v1, p1, Lzeroaicy/org/objectweb/asm/Label;->bytecodeOffset:I

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    goto :goto_0
.end method

.method private visitSwitchInsn(Lzeroaicy/org/objectweb/asm/Label;[Lzeroaicy/org/objectweb/asm/Label;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzeroaicy/org/objectweb/asm/Label;",
            "[",
            "Lzeroaicy/org/objectweb/asm/Label;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1363
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    if-eqz v0, :cond_1

    .line 1364
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->compute:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_3

    .line 1365
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    iget-object v3, v0, Lzeroaicy/org/objectweb/asm/Label;->frame:Lzeroaicy/org/objectweb/asm/Frame;

    const/16 v4, 0xab

    move-object v0, v1

    check-cast v0, Lzeroaicy/org/objectweb/asm/Symbol;

    check-cast v1, Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v3, v4, v2, v0, v1}, Lzeroaicy/org/objectweb/asm/Frame;->execute(IILzeroaicy/org/objectweb/asm/Symbol;Lzeroaicy/org/objectweb/asm/SymbolTable;)V

    .line 1367
    invoke-direct {p0, v2, p1}, Lzeroaicy/org/objectweb/asm/MethodWriter;->addSuccessorToCurrentBasicBlock(ILzeroaicy/org/objectweb/asm/Label;)V

    .line 1368
    invoke-virtual {p1}, Lzeroaicy/org/objectweb/asm/Label;->getCanonicalInstance()Lzeroaicy/org/objectweb/asm/Label;

    move-result-object v0

    iget-short v1, v0, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    or-int/lit8 v1, v1, 0x2

    int-to-short v1, v1

    iput-short v1, v0, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    move v0, v2

    .line 1371
    :goto_0
    array-length v1, p2

    if-lt v0, v1, :cond_2

    .line 1383
    :cond_0
    invoke-direct {p0}, Lzeroaicy/org/objectweb/asm/MethodWriter;->endCurrentBasicBlockWithNoSuccessor()V

    :cond_1
    return-void

    .line 1369
    :cond_2
    aget-object v1, p2, v0

    .line 1370
    invoke-direct {p0, v2, v1}, Lzeroaicy/org/objectweb/asm/MethodWriter;->addSuccessorToCurrentBasicBlock(ILzeroaicy/org/objectweb/asm/Label;)V

    .line 1371
    invoke-virtual {v1}, Lzeroaicy/org/objectweb/asm/Label;->getCanonicalInstance()Lzeroaicy/org/objectweb/asm/Label;

    move-result-object v1

    iget-short v3, v1, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    or-int/lit8 v3, v3, 0x2

    int-to-short v3, v3

    iput-short v3, v1, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1373
    :cond_3
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->compute:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1375
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->relativeStackSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->relativeStackSize:I

    .line 1377
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->relativeStackSize:I

    invoke-direct {p0, v0, p1}, Lzeroaicy/org/objectweb/asm/MethodWriter;->addSuccessorToCurrentBasicBlock(ILzeroaicy/org/objectweb/asm/Label;)V

    .line 1379
    :goto_1
    array-length v0, p2

    if-ge v2, v0, :cond_0

    .line 1378
    aget-object v0, p2, v2

    .line 1379
    iget v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->relativeStackSize:I

    invoke-direct {p0, v1, v0}, Lzeroaicy/org/objectweb/asm/MethodWriter;->addSuccessorToCurrentBasicBlock(ILzeroaicy/org/objectweb/asm/Label;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method canCopyMethodAttributes(Lzeroaicy/org/objectweb/asm/ClassReader;ZZIII)Z
    .registers 13

    const/high16 v3, 0x20000

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2027
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->getSource()Lzeroaicy/org/objectweb/asm/ClassReader;

    move-result-object v2

    if-ne p1, v2, :cond_0

    iget v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->descriptorIndex:I

    if-ne p4, v2, :cond_0

    iget v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->signatureIndex:I

    if-ne p5, v2, :cond_0

    if-nez p3, :cond_1

    iget v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->accessFlags:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    .line 2051
    :cond_0
    :goto_0
    return v0

    .line 2027
    :cond_1
    iget v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->accessFlags:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    .line 2033
    :cond_2
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->getMajorVersion()I

    move-result v2

    const/16 v3, 0x31

    if-ge v2, v3, :cond_3

    iget v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->accessFlags:I

    and-int/lit16 v2, v2, 0x1000

    if-nez v2, :cond_6

    :cond_3
    move v2, v0

    .line 2035
    :goto_1
    if-nez p2, :cond_7

    if-nez v2, :cond_0

    .line 2038
    :cond_4
    if-nez p6, :cond_8

    .line 2039
    iget v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->numberOfExceptions:I

    if-nez v2, :cond_0

    :cond_5
    move v0, v1

    .line 2051
    goto :goto_0

    :cond_6
    move v2, v1

    .line 2033
    goto :goto_1

    .line 2035
    :cond_7
    if-nez v2, :cond_4

    goto :goto_0

    .line 2042
    :cond_8
    invoke-virtual {p1, p6}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    iget v3, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->numberOfExceptions:I

    if-ne v2, v3, :cond_5

    .line 2043
    add-int/lit8 v2, p6, 0x2

    move v3, v0

    .line 2044
    :goto_2
    iget v4, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->numberOfExceptions:I

    if-ge v3, v4, :cond_5

    .line 2045
    invoke-virtual {p1, v2}, Lzeroaicy/org/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    iget-object v5, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->exceptionIndexTable:[I

    aget v5, v5, v3

    if-ne v4, v5, :cond_0

    .line 2048
    add-int/lit8 v2, v2, 0x2

    .line 2044
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
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
    .registers 8

    .line 2078
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->sourceOffset:I

    if-eqz v0, :cond_1

    .line 2080
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->sourceLength:I

    add-int/lit8 v0, v0, 0x6

    .line 2172
    :cond_0
    :goto_0
    return v0

    .line 2083
    :cond_1
    const/16 v0, 0x8

    .line 2085
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v1, v1, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    if-lez v1, :cond_7

    .line 2086
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v0, v0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    const v1, 0xffff

    if-le v0, v1, :cond_2

    .line 2087
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

    .line 2090
    :cond_2
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    const-string v1, "Code"

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    .line 2093
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v0, v0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v0, v0, 0x10

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->firstHandler:Lzeroaicy/org/objectweb/asm/Handler;

    invoke-static {v1}, Lzeroaicy/org/objectweb/asm/Handler;->getExceptionTableSize(Lzeroaicy/org/objectweb/asm/Handler;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v1, v0, 0x8

    .line 2094
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->stackMapTableEntries:Lzeroaicy/org/objectweb/asm/ByteVector;

    if-eqz v0, :cond_11

    .line 2095
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->getMajorVersion()I

    move-result v0

    const/16 v2, 0x32

    if-ge v0, v2, :cond_c

    const/4 v0, 0x0

    .line 2096
    :goto_1
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    if-eqz v0, :cond_d

    const-string v0, "StackMapTable"

    :goto_2
    invoke-virtual {v2, v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    .line 2098
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->stackMapTableEntries:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v0, v0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v0, v0, 0x8

    add-int/2addr v0, v1

    .line 2100
    :goto_3
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lineNumberTable:Lzeroaicy/org/objectweb/asm/ByteVector;

    if-eqz v1, :cond_3

    .line 2101
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    const-string v2, "LineNumberTable"

    invoke-virtual {v1, v2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    .line 2103
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lineNumberTable:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v1, v1, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 2105
    :cond_3
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->localVariableTable:Lzeroaicy/org/objectweb/asm/ByteVector;

    if-eqz v1, :cond_4

    .line 2106
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    const-string v2, "LocalVariableTable"

    invoke-virtual {v1, v2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    .line 2108
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->localVariableTable:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v1, v1, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 2110
    :cond_4
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->localVariableTypeTable:Lzeroaicy/org/objectweb/asm/ByteVector;

    if-eqz v1, :cond_5

    .line 2111
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    const-string v2, "LocalVariableTypeTable"

    invoke-virtual {v1, v2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    .line 2113
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->localVariableTypeTable:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v1, v1, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 2115
    :cond_5
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastCodeRuntimeVisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    if-eqz v1, :cond_6

    .line 2116
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastCodeRuntimeVisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    const-string v2, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v1, v2}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->computeAnnotationsSize(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2120
    :cond_6
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastCodeRuntimeInvisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    if-eqz v1, :cond_10

    .line 2121
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastCodeRuntimeInvisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    const-string v2, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v1, v2}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->computeAnnotationsSize(Ljava/lang/String;)I

    move-result v1

    add-int v6, v0, v1

    .line 2125
    :goto_4
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->firstCodeAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    if-eqz v0, :cond_12

    .line 2126
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->firstCodeAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v2, v2, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v3, v3, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    iget v4, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxStack:I

    iget v5, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxLocals:I

    invoke-virtual/range {v0 .. v5}, Lzeroaicy/org/objectweb/asm/Attribute;->computeAttributesSize(Lzeroaicy/org/objectweb/asm/SymbolTable;[BIII)I

    move-result v0

    add-int/2addr v0, v6

    .line 2131
    :cond_7
    :goto_5
    iget v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->numberOfExceptions:I

    if-lez v1, :cond_8

    .line 2132
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    const-string v2, "Exceptions"

    invoke-virtual {v1, v2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    .line 2133
    iget v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->numberOfExceptions:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 2135
    :cond_8
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->accessFlags:I

    iget v3, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->signatureIndex:I

    invoke-static {v1, v2, v3}, Lzeroaicy/org/objectweb/asm/Attribute;->computeAttributesSize(Lzeroaicy/org/objectweb/asm/SymbolTable;II)I

    move-result v1

    .line 2136
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastRuntimeVisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastRuntimeInvisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    iget-object v4, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastRuntimeVisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    iget-object v5, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastRuntimeInvisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    invoke-static {v2, v3, v4, v5}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->computeAnnotationsSize(Lzeroaicy/org/objectweb/asm/AnnotationWriter;Lzeroaicy/org/objectweb/asm/AnnotationWriter;Lzeroaicy/org/objectweb/asm/AnnotationWriter;Lzeroaicy/org/objectweb/asm/AnnotationWriter;)I

    move-result v2

    add-int/2addr v0, v1

    add-int v1, v2, v0

    .line 2142
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastRuntimeVisibleParameterAnnotations:[Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    if-eqz v0, :cond_9

    .line 2143
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastRuntimeVisibleParameterAnnotations:[Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->visibleAnnotableParameterCount:I

    if-nez v0, :cond_e

    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastRuntimeVisibleParameterAnnotations:[Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    array-length v0, v0

    :goto_6
    const-string v3, "RuntimeVisibleParameterAnnotations"

    invoke-static {v3, v2, v0}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->computeParameterAnnotationsSize(Ljava/lang/String;[Lzeroaicy/org/objectweb/asm/AnnotationWriter;I)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 2151
    :cond_9
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastRuntimeInvisibleParameterAnnotations:[Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    if-eqz v0, :cond_a

    .line 2152
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastRuntimeInvisibleParameterAnnotations:[Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->invisibleAnnotableParameterCount:I

    if-nez v0, :cond_f

    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastRuntimeInvisibleParameterAnnotations:[Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    array-length v0, v0

    :goto_7
    const-string v3, "RuntimeInvisibleParameterAnnotations"

    invoke-static {v3, v2, v0}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->computeParameterAnnotationsSize(Ljava/lang/String;[Lzeroaicy/org/objectweb/asm/AnnotationWriter;I)I

    move-result v0

    add-int/2addr v1, v0

    .line 2160
    :cond_a
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->defaultValue:Lzeroaicy/org/objectweb/asm/ByteVector;

    if-eqz v0, :cond_b

    .line 2161
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    const-string v2, "AnnotationDefault"

    invoke-virtual {v0, v2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    .line 2162
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->defaultValue:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v0, v0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v0, v0, 0x6

    add-int/2addr v1, v0

    .line 2164
    :cond_b
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->parameters:Lzeroaicy/org/objectweb/asm/ByteVector;

    if-eqz v0, :cond_13

    .line 2165
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    const-string v2, "MethodParameters"

    invoke-virtual {v0, v2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    .line 2167
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->parameters:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v0, v0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v1

    .line 2169
    :goto_8
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->firstAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    if-eqz v1, :cond_0

    .line 2170
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->firstAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v1, v2}, Lzeroaicy/org/objectweb/asm/Attribute;->computeAttributesSize(Lzeroaicy/org/objectweb/asm/SymbolTable;)I

    move-result v1

    add-int/2addr v0, v1

    goto/16 :goto_0

    .line 2095
    :cond_c
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 2096
    :cond_d
    const-string v0, "StackMap"

    goto/16 :goto_2

    .line 2143
    :cond_e
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->visibleAnnotableParameterCount:I

    goto :goto_6

    .line 2152
    :cond_f
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->invisibleAnnotableParameterCount:I

    goto :goto_7

    :cond_10
    move v6, v0

    goto/16 :goto_4

    :cond_11
    move v0, v1

    goto/16 :goto_3

    :cond_12
    move v0, v6

    goto/16 :goto_5

    :cond_13
    move v0, v1

    goto :goto_8
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

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method putMethodInfo(Lzeroaicy/org/objectweb/asm/ByteVector;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzeroaicy/org/objectweb/asm/ByteVector;",
            ")V"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2182
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->getMajorVersion()I

    move-result v0

    const/16 v1, 0x31

    if-lt v0, v1, :cond_1

    move v1, v7

    .line 2183
    :goto_0
    if-eqz v1, :cond_2

    const/16 v0, 0x1000

    .line 2184
    :goto_1
    xor-int/lit8 v0, v0, -0x1

    iget v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->accessFlags:I

    and-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->nameIndex:I

    invoke-virtual {v0, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->descriptorIndex:I

    invoke-virtual {v0, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 2186
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->sourceOffset:I

    if-eqz v0, :cond_3

    .line 2187
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->getSource()Lzeroaicy/org/objectweb/asm/ClassReader;

    move-result-object v0

    iget-object v0, v0, Lzeroaicy/org/objectweb/asm/ClassReader;->classFileBuffer:[B

    iget v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->sourceOffset:I

    iget v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->sourceLength:I

    invoke-virtual {p1, v0, v1, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByteArray([BII)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 2381
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v1, v6

    .line 2182
    goto :goto_0

    :cond_2
    move v0, v7

    .line 2183
    goto :goto_1

    .line 2192
    :cond_3
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v0, v0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    if-lez v0, :cond_29

    move v0, v6

    .line 2195
    :goto_3
    iget v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->numberOfExceptions:I

    if-lez v2, :cond_4

    .line 2196
    add-int/lit8 v0, v0, 0x1

    .line 2198
    :cond_4
    iget v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->accessFlags:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    .line 2199
    add-int/lit8 v0, v0, 0x1

    .line 2201
    :cond_5
    iget v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->signatureIndex:I

    if-eqz v1, :cond_6

    .line 2202
    add-int/lit8 v0, v0, 0x1

    .line 2204
    :cond_6
    iget v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->accessFlags:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-eqz v1, :cond_7

    .line 2205
    add-int/lit8 v0, v0, 0x1

    .line 2207
    :cond_7
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastRuntimeVisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    if-eqz v1, :cond_8

    .line 2208
    add-int/lit8 v0, v0, 0x1

    .line 2210
    :cond_8
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastRuntimeInvisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    if-eqz v1, :cond_9

    .line 2211
    add-int/lit8 v0, v0, 0x1

    .line 2213
    :cond_9
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastRuntimeVisibleParameterAnnotations:[Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    if-eqz v1, :cond_a

    .line 2214
    add-int/lit8 v0, v0, 0x1

    .line 2216
    :cond_a
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastRuntimeInvisibleParameterAnnotations:[Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    if-eqz v1, :cond_b

    .line 2217
    add-int/lit8 v0, v0, 0x1

    .line 2219
    :cond_b
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastRuntimeVisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    if-eqz v1, :cond_c

    .line 2220
    add-int/lit8 v0, v0, 0x1

    .line 2222
    :cond_c
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastRuntimeInvisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    if-eqz v1, :cond_d

    .line 2223
    add-int/lit8 v0, v0, 0x1

    .line 2225
    :cond_d
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->defaultValue:Lzeroaicy/org/objectweb/asm/ByteVector;

    if-eqz v1, :cond_e

    .line 2226
    add-int/lit8 v0, v0, 0x1

    .line 2228
    :cond_e
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->parameters:Lzeroaicy/org/objectweb/asm/ByteVector;

    if-eqz v1, :cond_f

    .line 2229
    add-int/lit8 v0, v0, 0x1

    .line 2231
    :cond_f
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->firstAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    if-eqz v1, :cond_10

    .line 2232
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->firstAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    invoke-virtual {v1}, Lzeroaicy/org/objectweb/asm/Attribute;->getAttributeCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 2235
    :cond_10
    invoke-virtual {p1, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 2236
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v0, v0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    if-lez v0, :cond_1d

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

    if-eqz v1, :cond_28

    .line 2243
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->stackMapTableEntries:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v1, v1, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    move v1, v6

    .line 2246
    :goto_4
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lineNumberTable:Lzeroaicy/org/objectweb/asm/ByteVector;

    if-eqz v2, :cond_11

    .line 2248
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lineNumberTable:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v2, v2, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v0, v2

    .line 2249
    add-int/lit8 v1, v1, 0x1

    .line 2251
    :cond_11
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->localVariableTable:Lzeroaicy/org/objectweb/asm/ByteVector;

    if-eqz v2, :cond_12

    .line 2253
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->localVariableTable:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v2, v2, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v0, v2

    .line 2254
    add-int/lit8 v1, v1, 0x1

    .line 2256
    :cond_12
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->localVariableTypeTable:Lzeroaicy/org/objectweb/asm/ByteVector;

    if-eqz v2, :cond_13

    .line 2258
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->localVariableTypeTable:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v2, v2, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v0, v2

    .line 2259
    add-int/lit8 v1, v1, 0x1

    .line 2261
    :cond_13
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastCodeRuntimeVisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    if-eqz v2, :cond_14

    .line 2262
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastCodeRuntimeVisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    const-string v3, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v2, v3}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->computeAnnotationsSize(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2265
    add-int/lit8 v1, v1, 0x1

    .line 2267
    :cond_14
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastCodeRuntimeInvisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    if-eqz v2, :cond_27

    .line 2268
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastCodeRuntimeInvisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    const-string v3, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v2, v3}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->computeAnnotationsSize(Ljava/lang/String;)I

    move-result v2

    .line 2271
    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v2

    move v8, v0

    move v9, v1

    .line 2273
    :goto_5
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->firstCodeAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    if-eqz v0, :cond_15

    .line 2274
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->firstCodeAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v2, v2, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v3, v3, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    iget v4, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxStack:I

    iget v5, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxLocals:I

    invoke-virtual/range {v0 .. v5}, Lzeroaicy/org/objectweb/asm/Attribute;->computeAttributesSize(Lzeroaicy/org/objectweb/asm/SymbolTable;[BIII)I

    move-result v0

    add-int/2addr v8, v0

    .line 2277
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->firstCodeAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    invoke-virtual {v0}, Lzeroaicy/org/objectweb/asm/Attribute;->getAttributeCount()I

    move-result v0

    add-int/2addr v9, v0

    .line 2279
    :cond_15
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    const-string v1, "Code"

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v8}, Lzeroaicy/org/objectweb/asm/ByteVector;->putInt(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxStack:I

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxLocals:I

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v1, v1, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putInt(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v1, v1, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v2, v2, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    invoke-virtual {v0, v1, v7, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByteArray([BII)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 2286
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->firstHandler:Lzeroaicy/org/objectweb/asm/Handler;

    invoke-static {v0, p1}, Lzeroaicy/org/objectweb/asm/Handler;->putExceptionTable(Lzeroaicy/org/objectweb/asm/Handler;Lzeroaicy/org/objectweb/asm/ByteVector;)V

    .line 2287
    invoke-virtual {p1, v9}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 2288
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->stackMapTableEntries:Lzeroaicy/org/objectweb/asm/ByteVector;

    if-eqz v0, :cond_17

    .line 2289
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->getMajorVersion()I

    move-result v0

    const/16 v1, 0x32

    if-ge v0, v1, :cond_16

    move v6, v7

    .line 2290
    :cond_16
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    if-eqz v6, :cond_23

    const-string v0, "StackMapTable"

    :goto_6
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

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->stackMapTableEntries:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v2, v2, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    invoke-virtual {v0, v1, v7, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByteArray([BII)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 2298
    :cond_17
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lineNumberTable:Lzeroaicy/org/objectweb/asm/ByteVector;

    if-eqz v0, :cond_18

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

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lineNumberTable:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v2, v2, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    invoke-virtual {v0, v1, v7, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByteArray([BII)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 2305
    :cond_18
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->localVariableTable:Lzeroaicy/org/objectweb/asm/ByteVector;

    if-eqz v0, :cond_19

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

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->localVariableTable:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v2, v2, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    invoke-virtual {v0, v1, v7, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByteArray([BII)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 2312
    :cond_19
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->localVariableTypeTable:Lzeroaicy/org/objectweb/asm/ByteVector;

    if-eqz v0, :cond_1a

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

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->localVariableTypeTable:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v2, v2, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    invoke-virtual {v0, v1, v7, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByteArray([BII)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 2319
    :cond_1a
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastCodeRuntimeVisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    if-eqz v0, :cond_1b

    .line 2320
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastCodeRuntimeVisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    const-string v2, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v1, v2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->putAnnotations(ILzeroaicy/org/objectweb/asm/ByteVector;)V

    .line 2323
    :cond_1b
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastCodeRuntimeInvisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    if-eqz v0, :cond_1c

    .line 2324
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastCodeRuntimeInvisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    const-string v2, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v1, v2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->putAnnotations(ILzeroaicy/org/objectweb/asm/ByteVector;)V

    .line 2327
    :cond_1c
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->firstCodeAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    if-eqz v0, :cond_1d

    .line 2328
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->firstCodeAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v2, v2, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v3, v3, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    iget v4, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxStack:I

    iget v5, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxLocals:I

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lzeroaicy/org/objectweb/asm/Attribute;->putAttributes(Lzeroaicy/org/objectweb/asm/SymbolTable;[BIIILzeroaicy/org/objectweb/asm/ByteVector;)V

    .line 2332
    :cond_1d
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->numberOfExceptions:I

    if-lez v0, :cond_1e

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
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->exceptionIndexTable:[I

    move v0, v7

    .line 2338
    :goto_7
    array-length v2, v1

    if-lt v0, v2, :cond_24

    .line 2341
    :cond_1e
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->accessFlags:I

    iget v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->signatureIndex:I

    invoke-static {v0, v1, v2, p1}, Lzeroaicy/org/objectweb/asm/Attribute;->putAttributes(Lzeroaicy/org/objectweb/asm/SymbolTable;IILzeroaicy/org/objectweb/asm/ByteVector;)V

    .line 2342
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastRuntimeVisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastRuntimeInvisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastRuntimeVisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    iget-object v4, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastRuntimeInvisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->putAnnotations(Lzeroaicy/org/objectweb/asm/SymbolTable;Lzeroaicy/org/objectweb/asm/AnnotationWriter;Lzeroaicy/org/objectweb/asm/AnnotationWriter;Lzeroaicy/org/objectweb/asm/AnnotationWriter;Lzeroaicy/org/objectweb/asm/AnnotationWriter;Lzeroaicy/org/objectweb/asm/ByteVector;)V

    .line 2349
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastRuntimeVisibleParameterAnnotations:[Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    if-eqz v0, :cond_1f

    .line 2350
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    const-string v1, "RuntimeVisibleParameterAnnotations"

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastRuntimeVisibleParameterAnnotations:[Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->visibleAnnotableParameterCount:I

    if-nez v0, :cond_25

    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastRuntimeVisibleParameterAnnotations:[Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    array-length v0, v0

    :goto_8
    invoke-static {v1, v2, v0, p1}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->putParameterAnnotations(I[Lzeroaicy/org/objectweb/asm/AnnotationWriter;ILzeroaicy/org/objectweb/asm/ByteVector;)V

    .line 2358
    :cond_1f
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastRuntimeInvisibleParameterAnnotations:[Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    if-eqz v0, :cond_20

    .line 2359
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    const-string v1, "RuntimeInvisibleParameterAnnotations"

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastRuntimeInvisibleParameterAnnotations:[Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->invisibleAnnotableParameterCount:I

    if-nez v0, :cond_26

    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastRuntimeInvisibleParameterAnnotations:[Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    array-length v0, v0

    :goto_9
    invoke-static {v1, v2, v0, p1}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->putParameterAnnotations(I[Lzeroaicy/org/objectweb/asm/AnnotationWriter;ILzeroaicy/org/objectweb/asm/ByteVector;)V

    .line 2367
    :cond_20
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->defaultValue:Lzeroaicy/org/objectweb/asm/ByteVector;

    if-eqz v0, :cond_21

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

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->defaultValue:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v2, v2, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    invoke-virtual {v0, v1, v7, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByteArray([BII)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 2373
    :cond_21
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->parameters:Lzeroaicy/org/objectweb/asm/ByteVector;

    if-eqz v0, :cond_22

    .line 2374
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    const-string v1, "MethodParameters"

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->parameters:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v1, v1, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putInt(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->parametersCount:I

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->parameters:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v1, v1, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->parameters:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v2, v2, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    invoke-virtual {v0, v1, v7, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByteArray([BII)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 2380
    :cond_22
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->firstAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    if-eqz v0, :cond_0

    .line 2381
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->firstAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0, v1, p1}, Lzeroaicy/org/objectweb/asm/Attribute;->putAttributes(Lzeroaicy/org/objectweb/asm/SymbolTable;Lzeroaicy/org/objectweb/asm/ByteVector;)V

    goto/16 :goto_2

    .line 2290
    :cond_23
    const-string v0, "StackMap"

    goto/16 :goto_6

    .line 2337
    :cond_24
    aget v2, v1, v0

    .line 2338
    invoke-virtual {p1, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_7

    .line 2350
    :cond_25
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->visibleAnnotableParameterCount:I

    goto/16 :goto_8

    .line 2359
    :cond_26
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->invisibleAnnotableParameterCount:I

    goto :goto_9

    :cond_27
    move v8, v0

    move v9, v1

    goto/16 :goto_5

    :cond_28
    move v1, v7

    goto/16 :goto_4

    :cond_29
    move v0, v7

    goto/16 :goto_3
.end method

.method setMethodAttributesSource(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 2066
    add-int/lit8 v0, p1, 0x6

    iput v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->sourceOffset:I

    .line 2067
    add-int/lit8 v0, p2, -0x6

    iput v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->sourceLength:I

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

    .line 683
    if-eqz p2, :cond_0

    .line 684
    iput p1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->visibleAnnotableParameterCount:I

    .line 686
    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->invisibleAnnotableParameterCount:I

    goto :goto_0
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 658
    if-eqz p2, :cond_0

    .line 659
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastRuntimeVisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    invoke-static {v0, p1, v1}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->create(Lzeroaicy/org/objectweb/asm/SymbolTable;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/AnnotationWriter;)Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    move-result-object v0

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastRuntimeVisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    .line 662
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastRuntimeInvisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    invoke-static {v0, p1, v1}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->create(Lzeroaicy/org/objectweb/asm/SymbolTable;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/AnnotationWriter;)Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    move-result-object v0

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastRuntimeInvisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    goto :goto_0
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
    new-instance v1, Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    const/4 v3, 0x0

    iget-object v4, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->defaultValue:Lzeroaicy/org/objectweb/asm/ByteVector;

    const/4 v0, 0x0

    check-cast v0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    invoke-direct {v1, v2, v3, v4, v0}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;-><init>(Lzeroaicy/org/objectweb/asm/SymbolTable;ZLzeroaicy/org/objectweb/asm/ByteVector;Lzeroaicy/org/objectweb/asm/AnnotationWriter;)V

    return-object v1
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

    if-eqz v0, :cond_0

    .line 718
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->firstCodeAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    iput-object v0, p1, Lzeroaicy/org/objectweb/asm/Attribute;->nextAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    .line 719
    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->firstCodeAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    .line 722
    :goto_0
    return-void

    .line 721
    :cond_0
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->firstAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    iput-object v0, p1, Lzeroaicy/org/objectweb/asm/Attribute;->nextAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    .line 722
    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->firstAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    goto :goto_0
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
    .registers 13
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

    const/4 v1, 0x1

    const/4 v0, -0x2

    const/4 v2, 0x0

    const/16 v7, 0x4a

    const/16 v6, 0x44

    .line 993
    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v3, v3, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    iput v3, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastBytecodeOffset:I

    .line 995
    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v3, p2, p3, p4}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v3

    .line 996
    iget-object v4, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v5, v3, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    invoke-virtual {v4, p1, v5}, Lzeroaicy/org/objectweb/asm/ByteVector;->put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 998
    iget-object v4, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    if-eqz v4, :cond_1

    .line 999
    iget v4, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->compute:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    iget v4, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->compute:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 1000
    :cond_0
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    iget-object v0, v0, Lzeroaicy/org/objectweb/asm/Label;->frame:Lzeroaicy/org/objectweb/asm/Frame;

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p1, v2, v3, v1}, Lzeroaicy/org/objectweb/asm/Frame;->execute(IILzeroaicy/org/objectweb/asm/Symbol;Lzeroaicy/org/objectweb/asm/SymbolTable;)V

    .line 1022
    :cond_1
    :goto_0
    return-void

    .line 1002
    :cond_2
    invoke-virtual {p4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1004
    packed-switch p1, :pswitch_data_0

    .line 1016
    iget v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->relativeStackSize:I

    if-eq v3, v6, :cond_3

    if-ne v3, v7, :cond_4

    :cond_3
    const/4 v0, -0x3

    :cond_4
    add-int/2addr v0, v1

    .line 1019
    :goto_1
    iget v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxRelativeStackSize:I

    if-le v0, v1, :cond_5

    .line 1020
    iput v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxRelativeStackSize:I

    .line 1022
    :cond_5
    iput v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->relativeStackSize:I

    goto :goto_0

    .line 1006
    :pswitch_0
    iget v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->relativeStackSize:I

    if-eq v3, v6, :cond_6

    if-ne v3, v7, :cond_b

    :cond_6
    const/4 v0, 0x2

    :goto_2
    add-int/2addr v0, v2

    .line 1007
    goto :goto_1

    .line 1009
    :pswitch_1
    iget v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->relativeStackSize:I

    if-eq v3, v6, :cond_7

    if-ne v3, v7, :cond_8

    :cond_7
    :goto_3
    add-int/2addr v0, v1

    .line 1010
    goto :goto_1

    .line 1009
    :cond_8
    const/4 v0, -0x1

    goto :goto_3

    .line 1012
    :pswitch_2
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->relativeStackSize:I

    if-eq v3, v6, :cond_9

    if-ne v3, v7, :cond_a

    :cond_9
    :goto_4
    add-int/2addr v0, v1

    .line 1013
    goto :goto_1

    :cond_a
    move v1, v2

    .line 1012
    goto :goto_4

    :cond_b
    move v0, v1

    goto :goto_2

    .line 1004
    nop

    :pswitch_data_0
    .packed-switch 0xb2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .registers 13
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

    const/16 v4, 0x40

    const/4 v3, 0x3

    const/4 v2, -0x1

    const/4 v6, 0x0

    .line 738
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->compute:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 858
    :cond_0
    :goto_0
    return-void

    .line 742
    :cond_1
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->compute:I

    if-ne v0, v3, :cond_5

    .line 743
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    iget-object v0, v0, Lzeroaicy/org/objectweb/asm/Label;->frame:Lzeroaicy/org/objectweb/asm/Frame;

    if-nez v0, :cond_3

    .line 747
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    new-instance v1, Lzeroaicy/org/objectweb/asm/CurrentFrame;

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    invoke-direct {v1, v2}, Lzeroaicy/org/objectweb/asm/CurrentFrame;-><init>(Lzeroaicy/org/objectweb/asm/Label;)V

    iput-object v1, v0, Lzeroaicy/org/objectweb/asm/Label;->frame:Lzeroaicy/org/objectweb/asm/Frame;

    .line 748
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    iget-object v0, v0, Lzeroaicy/org/objectweb/asm/Label;->frame:Lzeroaicy/org/objectweb/asm/Frame;

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->accessFlags:I

    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->descriptor:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, p2}, Lzeroaicy/org/objectweb/asm/Frame;->setInputFrameFromDescriptor(Lzeroaicy/org/objectweb/asm/SymbolTable;ILjava/lang/String;I)V

    .line 750
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    iget-object v0, v0, Lzeroaicy/org/objectweb/asm/Label;->frame:Lzeroaicy/org/objectweb/asm/Frame;

    invoke-virtual {v0, p0}, Lzeroaicy/org/objectweb/asm/Frame;->accept(Lzeroaicy/org/objectweb/asm/MethodWriter;)V

    .line 845
    :goto_1
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->compute:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 846
    iput p4, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->relativeStackSize:I

    .line 847
    :goto_2
    if-lt v6, p4, :cond_12

    .line 852
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->relativeStackSize:I

    iget v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxRelativeStackSize:I

    if-le v0, v1, :cond_2

    .line 853
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->relativeStackSize:I

    iput v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxRelativeStackSize:I

    .line 857
    :cond_2
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxStack:I

    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxStack:I

    .line 858
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxLocals:I

    iget v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentLocals:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxLocals:I

    goto :goto_0

    .line 752
    :cond_3
    if-ne p1, v2, :cond_4

    .line 753
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    iget-object v0, v0, Lzeroaicy/org/objectweb/asm/Label;->frame:Lzeroaicy/org/objectweb/asm/Frame;

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lzeroaicy/org/objectweb/asm/Frame;->setInputFrameFromApiFormat(Lzeroaicy/org/objectweb/asm/SymbolTable;I[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 759
    :cond_4
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    iget-object v0, v0, Lzeroaicy/org/objectweb/asm/Label;->frame:Lzeroaicy/org/objectweb/asm/Frame;

    invoke-virtual {v0, p0}, Lzeroaicy/org/objectweb/asm/Frame;->accept(Lzeroaicy/org/objectweb/asm/MethodWriter;)V

    goto :goto_1

    .line 761
    :cond_5
    if-ne p1, v2, :cond_9

    .line 762
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->previousFrame:[I

    if-nez v0, :cond_6

    .line 763
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->descriptor:Ljava/lang/String;

    invoke-static {v0}, Lzeroaicy/org/objectweb/asm/Type;->getArgumentsAndReturnSizes(Ljava/lang/String;)I

    move-result v0

    .line 764
    new-instance v1, Lzeroaicy/org/objectweb/asm/Frame;

    new-instance v2, Lzeroaicy/org/objectweb/asm/Label;

    invoke-direct {v2}, Lzeroaicy/org/objectweb/asm/Label;-><init>()V

    invoke-direct {v1, v2}, Lzeroaicy/org/objectweb/asm/Frame;-><init>(Lzeroaicy/org/objectweb/asm/Label;)V

    .line 765
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget v3, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->accessFlags:I

    iget-object v4, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->descriptor:Ljava/lang/String;

    shr-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, v2, v3, v4, v0}, Lzeroaicy/org/objectweb/asm/Frame;->setInputFrameFromDescriptor(Lzeroaicy/org/objectweb/asm/SymbolTable;ILjava/lang/String;I)V

    .line 767
    invoke-virtual {v1, p0}, Lzeroaicy/org/objectweb/asm/Frame;->accept(Lzeroaicy/org/objectweb/asm/MethodWriter;)V

    .line 769
    :cond_6
    iput p2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentLocals:I

    .line 770
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v0, v0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    invoke-virtual {p0, v0, p2, p4}, Lzeroaicy/org/objectweb/asm/MethodWriter;->visitFrameStart(III)I

    move-result v1

    move v0, v6

    .line 771
    :goto_3
    if-lt v0, p2, :cond_7

    move v0, v6

    .line 774
    :goto_4
    if-lt v0, p4, :cond_8

    .line 777
    invoke-virtual {p0}, Lzeroaicy/org/objectweb/asm/MethodWriter;->visitFrameEnd()V

    goto :goto_1

    .line 772
    :cond_7
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentFrame:[I

    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    aget-object v4, p3, v0

    invoke-static {v3, v4}, Lzeroaicy/org/objectweb/asm/Frame;->getAbstractTypeFromApiFormat(Lzeroaicy/org/objectweb/asm/SymbolTable;Ljava/lang/Object;)I

    move-result v3

    aput v3, v2, v1

    .line 771
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 775
    :cond_8
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentFrame:[I

    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    aget-object v4, p5, v0

    invoke-static {v3, v4}, Lzeroaicy/org/objectweb/asm/Frame;->getAbstractTypeFromApiFormat(Lzeroaicy/org/objectweb/asm/SymbolTable;Ljava/lang/Object;)I

    move-result v3

    aput v3, v2, v1

    .line 774
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 779
    :cond_9
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->getMajorVersion()I

    move-result v0

    const/16 v1, 0x32

    if-ge v0, v1, :cond_a

    .line 780
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Class versions V1_5 or less must use F_NEW frames."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 782
    :cond_a
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->stackMapTableEntries:Lzeroaicy/org/objectweb/asm/ByteVector;

    if-nez v0, :cond_c

    .line 784
    new-instance v0, Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lzeroaicy/org/objectweb/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->stackMapTableEntries:Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 785
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v0, v0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    .line 797
    :cond_b
    packed-switch p1, :pswitch_data_0

    .line 838
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 787
    :cond_c
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v0, v0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    iget v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->previousFrameOffset:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    .line 788
    if-gez v0, :cond_b

    .line 789
    if-eq p1, v3, :cond_0

    .line 792
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 799
    :pswitch_0
    iput p2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentLocals:I

    .line 800
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->stackMapTableEntries:Lzeroaicy/org/objectweb/asm/ByteVector;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move v0, v6

    .line 801
    :goto_5
    if-lt v0, p2, :cond_e

    .line 804
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->stackMapTableEntries:Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-virtual {v0, p4}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move v0, v6

    .line 805
    :goto_6
    if-lt v0, p4, :cond_f

    .line 841
    :cond_d
    :goto_7
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v0, v0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    iput v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->previousFrameOffset:I

    .line 842
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->stackMapTableNumberOfEntries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->stackMapTableNumberOfEntries:I

    goto/16 :goto_1

    .line 802
    :cond_e
    aget-object v1, p3, v0

    invoke-direct {p0, v1}, Lzeroaicy/org/objectweb/asm/MethodWriter;->putFrameType(Ljava/lang/Object;)V

    .line 801
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 806
    :cond_f
    aget-object v1, p5, v0

    invoke-direct {p0, v1}, Lzeroaicy/org/objectweb/asm/MethodWriter;->putFrameType(Ljava/lang/Object;)V

    .line 805
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 810
    :pswitch_1
    iget v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentLocals:I

    add-int/2addr v1, p2

    iput v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentLocals:I

    .line 811
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->stackMapTableEntries:Lzeroaicy/org/objectweb/asm/ByteVector;

    add-int/lit16 v2, p2, 0xfb

    invoke-virtual {v1, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move v0, v6

    .line 812
    :goto_8
    if-ge v0, p2, :cond_d

    .line 813
    aget-object v1, p3, v0

    invoke-direct {p0, v1}, Lzeroaicy/org/objectweb/asm/MethodWriter;->putFrameType(Ljava/lang/Object;)V

    .line 812
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 817
    :pswitch_2
    iget v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentLocals:I

    sub-int/2addr v1, p2

    iput v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentLocals:I

    .line 818
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->stackMapTableEntries:Lzeroaicy/org/objectweb/asm/ByteVector;

    rsub-int v2, p2, 0xfb

    invoke-virtual {v1, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    goto :goto_7

    .line 821
    :pswitch_3
    if-ge v0, v4, :cond_10

    .line 822
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->stackMapTableEntries:Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-virtual {v1, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    goto :goto_7

    .line 824
    :cond_10
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->stackMapTableEntries:Lzeroaicy/org/objectweb/asm/ByteVector;

    const/16 v2, 0xfb

    invoke-virtual {v1, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    goto :goto_7

    .line 828
    :pswitch_4
    if-ge v0, v4, :cond_11

    .line 829
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->stackMapTableEntries:Lzeroaicy/org/objectweb/asm/ByteVector;

    add-int/lit8 v0, v0, 0x40

    invoke-virtual {v1, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 835
    :goto_9
    aget-object v0, p5, v6

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/MethodWriter;->putFrameType(Ljava/lang/Object;)V

    goto :goto_7

    .line 831
    :cond_11
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->stackMapTableEntries:Lzeroaicy/org/objectweb/asm/ByteVector;

    const/16 v2, 0xf7

    invoke-virtual {v1, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    goto :goto_9

    .line 848
    :cond_12
    aget-object v0, p5, v6

    sget-object v1, Lzeroaicy/org/objectweb/asm/Opcodes;->LONG:Ljava/lang/Integer;

    if-eq v0, v1, :cond_13

    aget-object v0, p5, v6

    sget-object v1, Lzeroaicy/org/objectweb/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    if-ne v0, v1, :cond_14

    .line 849
    :cond_13
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->relativeStackSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->relativeStackSize:I

    .line 847
    :cond_14
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 797
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method visitFrameEnd()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1847
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->previousFrame:[I

    if-eqz v0, :cond_1

    .line 1848
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->stackMapTableEntries:Lzeroaicy/org/objectweb/asm/ByteVector;

    if-nez v0, :cond_0

    .line 1849
    new-instance v0, Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lzeroaicy/org/objectweb/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->stackMapTableEntries:Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 1851
    :cond_0
    invoke-direct {p0}, Lzeroaicy/org/objectweb/asm/MethodWriter;->putFrame()V

    .line 1852
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->stackMapTableNumberOfEntries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->stackMapTableNumberOfEntries:I

    .line 1854
    :cond_1
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentFrame:[I

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->previousFrame:[I

    .line 1855
    const/4 v0, 0x0

    check-cast v0, [I

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentFrame:[I

    return-void
.end method

.method visitFrameStart(III)I
    .registers 6

    .line 1821
    add-int/lit8 v0, p2, 0x3

    add-int/2addr v0, p3

    .line 1822
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentFrame:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentFrame:[I

    array-length v1, v1

    if-ge v1, v0, :cond_1

    .line 1823
    :cond_0
    new-array v0, v0, [I

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentFrame:[I

    .line 1825
    :cond_1
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentFrame:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 1826
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentFrame:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 1827
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentFrame:[I

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 1828
    const/4 v0, 0x3

    return v0
.end method

.method public visitIincInsn(II)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v1, 0x0

    const/16 v3, 0x84

    .line 1312
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v0, v0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    iput v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastBytecodeOffset:I

    .line 1314
    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    const/16 v0, 0x7f

    if-gt p2, v0, :cond_0

    const/16 v0, -0x80

    if-ge p2, v0, :cond_4

    .line 1315
    :cond_0
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    const/16 v2, 0xc4

    invoke-virtual {v0, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v3, p1}, Lzeroaicy/org/objectweb/asm/ByteVector;->put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 1320
    :goto_0
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    if-eqz v0, :cond_2

    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->compute:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->compute:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 1322
    :cond_1
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    iget-object v2, v0, Lzeroaicy/org/objectweb/asm/Label;->frame:Lzeroaicy/org/objectweb/asm/Frame;

    move-object v0, v1

    check-cast v0, Lzeroaicy/org/objectweb/asm/Symbol;

    check-cast v1, Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v2, v3, p1, v0, v1}, Lzeroaicy/org/objectweb/asm/Frame;->execute(IILzeroaicy/org/objectweb/asm/Symbol;Lzeroaicy/org/objectweb/asm/SymbolTable;)V

    .line 1324
    :cond_2
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->compute:I

    if-eqz v0, :cond_3

    .line 1325
    add-int/lit8 v0, p1, 0x1

    .line 1326
    iget v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxLocals:I

    if-le v0, v1, :cond_3

    .line 1327
    iput v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxLocals:I

    :cond_3
    return-void

    .line 1317
    :cond_4
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-virtual {v0, v3}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lzeroaicy/org/objectweb/asm/ByteVector;->put11(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    goto :goto_0
.end method

.method public visitInsn(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v1, 0x0

    .line 863
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v0, v0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    iput v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastBytecodeOffset:I

    .line 865
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 867
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    if-eqz v0, :cond_3

    .line 868
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->compute:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->compute:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    .line 869
    :cond_0
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    iget-object v2, v0, Lzeroaicy/org/objectweb/asm/Label;->frame:Lzeroaicy/org/objectweb/asm/Frame;

    const/4 v3, 0x0

    move-object v0, v1

    check-cast v0, Lzeroaicy/org/objectweb/asm/Symbol;

    check-cast v1, Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v2, p1, v3, v0, v1}, Lzeroaicy/org/objectweb/asm/Frame;->execute(IILzeroaicy/org/objectweb/asm/Symbol;Lzeroaicy/org/objectweb/asm/SymbolTable;)V

    .line 877
    :goto_0
    const/16 v0, 0xac

    if-lt p1, v0, :cond_1

    const/16 v0, 0xb1

    if-le p1, v0, :cond_2

    :cond_1
    const/16 v0, 0xbf

    if-ne p1, v0, :cond_3

    .line 878
    :cond_2
    invoke-direct {p0}, Lzeroaicy/org/objectweb/asm/MethodWriter;->endCurrentBasicBlockWithNoSuccessor()V

    :cond_3
    return-void

    .line 871
    :cond_4
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->relativeStackSize:I

    sget-object v1, Lzeroaicy/org/objectweb/asm/MethodWriter;->STACK_SIZE_DELTA:[I

    aget v1, v1, p1

    add-int/2addr v0, v1

    .line 872
    iget v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxRelativeStackSize:I

    if-le v0, v1, :cond_5

    .line 873
    iput v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxRelativeStackSize:I

    .line 875
    :cond_5
    iput v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->relativeStackSize:I

    goto :goto_0
.end method

.method public visitInsnAnnotation(ILzeroaicy/org/objectweb/asm/TypePath;Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;
    .registers 8
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const v1, -0xffff01

    .line 1408
    if-eqz p4, :cond_0

    .line 1409
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    and-int/2addr v1, p1

    iget v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastBytecodeOffset:I

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastCodeRuntimeVisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    invoke-static {v0, v1, p2, p3, v2}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->create(Lzeroaicy/org/objectweb/asm/SymbolTable;ILzeroaicy/org/objectweb/asm/TypePath;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/AnnotationWriter;)Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    move-result-object v0

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastCodeRuntimeVisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    .line 1417
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    and-int/2addr v1, p1

    iget v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastBytecodeOffset:I

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastCodeRuntimeInvisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    invoke-static {v0, v1, p2, p3, v2}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->create(Lzeroaicy/org/objectweb/asm/SymbolTable;ILzeroaicy/org/objectweb/asm/TypePath;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/AnnotationWriter;)Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    move-result-object v0

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastCodeRuntimeInvisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    goto :goto_0
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

    const/4 v1, 0x0

    .line 885
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v0, v0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    iput v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastBytecodeOffset:I

    .line 887
    const/16 v0, 0x11

    if-ne p1, v0, :cond_2

    .line 888
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-virtual {v0, p1, p2}, Lzeroaicy/org/objectweb/asm/ByteVector;->put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 893
    :goto_0
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    if-eqz v0, :cond_1

    .line 894
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->compute:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->compute:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 895
    :cond_0
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    iget-object v2, v0, Lzeroaicy/org/objectweb/asm/Label;->frame:Lzeroaicy/org/objectweb/asm/Frame;

    move-object v0, v1

    check-cast v0, Lzeroaicy/org/objectweb/asm/Symbol;

    check-cast v1, Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v2, p1, p2, v0, v1}, Lzeroaicy/org/objectweb/asm/Frame;->execute(IILzeroaicy/org/objectweb/asm/Symbol;Lzeroaicy/org/objectweb/asm/SymbolTable;)V

    .line 902
    :cond_1
    :goto_1
    return-void

    .line 890
    :cond_2
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-virtual {v0, p1, p2}, Lzeroaicy/org/objectweb/asm/ByteVector;->put11(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    goto :goto_0

    .line 896
    :cond_3
    const/16 v0, 0xbc

    if-eq p1, v0, :cond_1

    .line 898
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->relativeStackSize:I

    add-int/lit8 v0, v0, 0x1

    .line 899
    iget v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxRelativeStackSize:I

    if-le v0, v1, :cond_4

    .line 900
    iput v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxRelativeStackSize:I

    .line 902
    :cond_4
    iput v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->relativeStackSize:I

    goto :goto_1
.end method

.method public varargs visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/Handle;[Ljava/lang/Object;)V
    .registers 10
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

    const/16 v4, 0xba

    const/4 v3, 0x0

    .line 1070
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v0, v0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    iput v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastBytecodeOffset:I

    .line 1072
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p1, p2, p3, p4}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantInvokeDynamic(Ljava/lang/String;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/Handle;[Ljava/lang/Object;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v0

    .line 1075
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v2, v0, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    invoke-virtual {v1, v4, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 1076
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-virtual {v1, v3}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 1078
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    if-eqz v1, :cond_1

    .line 1079
    iget v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->compute:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->compute:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 1080
    :cond_0
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    iget-object v1, v1, Lzeroaicy/org/objectweb/asm/Label;->frame:Lzeroaicy/org/objectweb/asm/Frame;

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v1, v4, v3, v0, v2}, Lzeroaicy/org/objectweb/asm/Frame;->execute(IILzeroaicy/org/objectweb/asm/Symbol;Lzeroaicy/org/objectweb/asm/SymbolTable;)V

    .line 1088
    :cond_1
    :goto_0
    return-void

    .line 1082
    :cond_2
    invoke-virtual {v0}, Lzeroaicy/org/objectweb/asm/Symbol;->getArgumentsAndReturnSizes()I

    move-result v0

    .line 1083
    and-int/lit8 v1, v0, 0x3

    shr-int/lit8 v0, v0, 0x2

    sub-int v0, v1, v0

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->relativeStackSize:I

    add-int/2addr v0, v1

    .line 1085
    iget v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxRelativeStackSize:I

    if-le v0, v1, :cond_3

    .line 1086
    iput v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxRelativeStackSize:I

    .line 1088
    :cond_3
    iput v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->relativeStackSize:I

    goto :goto_0
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

    const/16 v9, 0xa8

    const/16 v8, 0xa7

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 1095
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v0, v0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    iput v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastBytecodeOffset:I

    .line 1098
    const/16 v0, 0xc8

    if-lt p1, v0, :cond_4

    add-int/lit8 v0, p1, -0x21

    move v3, v0

    .line 1101
    :goto_0
    iget-short v0, p2, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    iget v0, p2, Lzeroaicy/org/objectweb/asm/Label;->bytecodeOffset:I

    iget-object v5, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v5, v5, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    sub-int/2addr v0, v5

    const/16 v5, -0x8000

    if-ge v0, v5, :cond_8

    .line 1107
    if-ne v3, v8, :cond_5

    .line 1108
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    const/16 v5, 0xc8

    invoke-virtual {v0, v5}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move v0, v4

    .line 1128
    :goto_1
    iget-object v5, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v6, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v6, v6, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p2, v5, v6, v2}, Lzeroaicy/org/objectweb/asm/Label;->put(Lzeroaicy/org/objectweb/asm/ByteVector;IZ)V

    move v5, v0

    .line 1143
    :goto_2
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    if-eqz v0, :cond_3

    move-object v0, v1

    .line 1144
    check-cast v0, Lzeroaicy/org/objectweb/asm/Label;

    .line 1145
    iget v6, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->compute:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_a

    .line 1146
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    iget-object v6, v2, Lzeroaicy/org/objectweb/asm/Label;->frame:Lzeroaicy/org/objectweb/asm/Frame;

    move-object v2, v1

    check-cast v2, Lzeroaicy/org/objectweb/asm/Symbol;

    check-cast v1, Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v6, v3, v4, v2, v1}, Lzeroaicy/org/objectweb/asm/Frame;->execute(IILzeroaicy/org/objectweb/asm/Symbol;Lzeroaicy/org/objectweb/asm/SymbolTable;)V

    .line 1148
    invoke-virtual {p2}, Lzeroaicy/org/objectweb/asm/Label;->getCanonicalInstance()Lzeroaicy/org/objectweb/asm/Label;

    move-result-object v1

    iget-short v2, v1, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    or-int/lit8 v2, v2, 0x2

    int-to-short v2, v2

    iput-short v2, v1, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    .line 1150
    invoke-direct {p0, v4, p2}, Lzeroaicy/org/objectweb/asm/MethodWriter;->addSuccessorToCurrentBasicBlock(ILzeroaicy/org/objectweb/asm/Label;)V

    .line 1151
    if-eq v3, v8, :cond_0

    .line 1155
    new-instance v0, Lzeroaicy/org/objectweb/asm/Label;

    invoke-direct {v0}, Lzeroaicy/org/objectweb/asm/Label;-><init>()V

    .line 1187
    :cond_0
    :goto_3
    if-eqz v0, :cond_2

    .line 1188
    if-eqz v5, :cond_1

    .line 1189
    iget-short v1, v0, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    or-int/lit8 v1, v1, 0x2

    int-to-short v1, v1

    iput-short v1, v0, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    .line 1191
    :cond_1
    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/MethodWriter;->visitLabel(Lzeroaicy/org/objectweb/asm/Label;)V

    .line 1193
    :cond_2
    if-ne v3, v8, :cond_3

    .line 1194
    invoke-direct {p0}, Lzeroaicy/org/objectweb/asm/MethodWriter;->endCurrentBasicBlockWithNoSuccessor()V

    :cond_3
    return-void

    :cond_4
    move v3, p1

    .line 1098
    goto :goto_0

    .line 1109
    :cond_5
    if-ne v3, v9, :cond_6

    .line 1110
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    const/16 v5, 0xc9

    invoke-virtual {v0, v5}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move v0, v4

    goto :goto_1

    .line 1115
    :cond_6
    iget-object v5, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    const/16 v0, 0xc6

    if-lt v3, v0, :cond_7

    xor-int/lit8 v0, v3, 0x1

    :goto_4
    invoke-virtual {v5, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 1116
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 1123
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    const/16 v5, 0xdc

    invoke-virtual {v0, v5}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 1124
    iput-boolean v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->hasAsmInstructions:Z

    move v0, v2

    .line 1126
    goto :goto_1

    .line 1115
    :cond_7
    add-int/lit8 v0, v3, 0x1

    xor-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 1129
    :cond_8
    if-eq v3, p1, :cond_9

    .line 1132
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 1133
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v5, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v5, v5, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p2, v0, v5, v2}, Lzeroaicy/org/objectweb/asm/Label;->put(Lzeroaicy/org/objectweb/asm/ByteVector;IZ)V

    move v5, v4

    goto/16 :goto_2

    .line 1138
    :cond_9
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-virtual {v0, v3}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 1139
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v5, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v5, v5, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p2, v0, v5, v4}, Lzeroaicy/org/objectweb/asm/Label;->put(Lzeroaicy/org/objectweb/asm/ByteVector;IZ)V

    move v5, v4

    goto/16 :goto_2

    .line 1157
    :cond_a
    iget v6, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->compute:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_b

    .line 1158
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    iget-object v6, v2, Lzeroaicy/org/objectweb/asm/Label;->frame:Lzeroaicy/org/objectweb/asm/Frame;

    move-object v2, v1

    check-cast v2, Lzeroaicy/org/objectweb/asm/Symbol;

    check-cast v1, Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v6, v3, v4, v2, v1}, Lzeroaicy/org/objectweb/asm/Frame;->execute(IILzeroaicy/org/objectweb/asm/Symbol;Lzeroaicy/org/objectweb/asm/SymbolTable;)V

    goto :goto_3

    .line 1159
    :cond_b
    iget v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->compute:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_c

    .line 1161
    iget v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->relativeStackSize:I

    sget-object v2, Lzeroaicy/org/objectweb/asm/MethodWriter;->STACK_SIZE_DELTA:[I

    aget v2, v2, v3

    add-int/2addr v1, v2

    iput v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->relativeStackSize:I

    goto/16 :goto_3

    .line 1163
    :cond_c
    if-ne v3, v9, :cond_e

    .line 1165
    iget-short v0, p2, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_d

    .line 1166
    iget-short v0, p2, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    or-int/lit8 v0, v0, 0x20

    int-to-short v0, v0

    iput-short v0, p2, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    .line 1167
    iput-boolean v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->hasSubroutines:Z

    .line 1169
    :cond_d
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    iget-short v1, v0, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    or-int/lit8 v1, v1, 0x10

    int-to-short v1, v1

    iput-short v1, v0, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    .line 1176
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->relativeStackSize:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0, p2}, Lzeroaicy/org/objectweb/asm/MethodWriter;->addSuccessorToCurrentBasicBlock(ILzeroaicy/org/objectweb/asm/Label;)V

    .line 1178
    new-instance v0, Lzeroaicy/org/objectweb/asm/Label;

    invoke-direct {v0}, Lzeroaicy/org/objectweb/asm/Label;-><init>()V

    goto/16 :goto_3

    .line 1181
    :cond_e
    iget v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->relativeStackSize:I

    sget-object v2, Lzeroaicy/org/objectweb/asm/MethodWriter;->STACK_SIZE_DELTA:[I

    aget v2, v2, v3

    add-int/2addr v1, v2

    iput v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->relativeStackSize:I

    .line 1182
    iget v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->relativeStackSize:I

    invoke-direct {p0, v1, p2}, Lzeroaicy/org/objectweb/asm/MethodWriter;->addSuccessorToCurrentBasicBlock(ILzeroaicy/org/objectweb/asm/Label;)V

    goto/16 :goto_3
.end method

.method public visitLabel(Lzeroaicy/org/objectweb/asm/Label;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzeroaicy/org/objectweb/asm/Label;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v3, 0x0

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

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 1272
    :cond_0
    :goto_0
    return-void

    .line 1208
    :cond_1
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->compute:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    .line 1209
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    if-eqz v0, :cond_3

    .line 1210
    iget v0, p1, Lzeroaicy/org/objectweb/asm/Label;->bytecodeOffset:I

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    iget v1, v1, Lzeroaicy/org/objectweb/asm/Label;->bytecodeOffset:I

    if-ne v0, v1, :cond_2

    .line 1215
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    iget-short v1, v0, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    iget-short v2, p1, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    and-int/lit8 v2, v2, 0x2

    or-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    .line 1219
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    iget-object v0, v0, Lzeroaicy/org/objectweb/asm/Label;->frame:Lzeroaicy/org/objectweb/asm/Frame;

    iput-object v0, p1, Lzeroaicy/org/objectweb/asm/Label;->frame:Lzeroaicy/org/objectweb/asm/Frame;

    goto :goto_0

    .line 1225
    :cond_2
    invoke-direct {p0, v3, p1}, Lzeroaicy/org/objectweb/asm/MethodWriter;->addSuccessorToCurrentBasicBlock(ILzeroaicy/org/objectweb/asm/Label;)V

    .line 1228
    :cond_3
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    if-eqz v0, :cond_5

    .line 1229
    iget v0, p1, Lzeroaicy/org/objectweb/asm/Label;->bytecodeOffset:I

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    iget v1, v1, Lzeroaicy/org/objectweb/asm/Label;->bytecodeOffset:I

    if-ne v0, v1, :cond_4

    .line 1231
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    iget-short v1, v0, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    iget-short v2, p1, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    and-int/lit8 v2, v2, 0x2

    or-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    .line 1233
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    iget-object v0, v0, Lzeroaicy/org/objectweb/asm/Label;->frame:Lzeroaicy/org/objectweb/asm/Frame;

    iput-object v0, p1, Lzeroaicy/org/objectweb/asm/Label;->frame:Lzeroaicy/org/objectweb/asm/Frame;

    .line 1234
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    goto :goto_0

    .line 1237
    :cond_4
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    iput-object p1, v0, Lzeroaicy/org/objectweb/asm/Label;->nextBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    .line 1239
    :cond_5
    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    .line 1241
    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    .line 1243
    new-instance v0, Lzeroaicy/org/objectweb/asm/Frame;

    invoke-direct {v0, p1}, Lzeroaicy/org/objectweb/asm/Frame;-><init>(Lzeroaicy/org/objectweb/asm/Label;)V

    iput-object v0, p1, Lzeroaicy/org/objectweb/asm/Label;->frame:Lzeroaicy/org/objectweb/asm/Frame;

    goto :goto_0

    .line 1244
    :cond_6
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->compute:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    .line 1245
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    if-nez v0, :cond_7

    .line 1248
    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    goto :goto_0

    .line 1251
    :cond_7
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    iget-object v0, v0, Lzeroaicy/org/objectweb/asm/Label;->frame:Lzeroaicy/org/objectweb/asm/Frame;

    iput-object p1, v0, Lzeroaicy/org/objectweb/asm/Frame;->owner:Lzeroaicy/org/objectweb/asm/Label;

    goto :goto_0

    .line 1253
    :cond_8
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->compute:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    .line 1254
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    if-eqz v0, :cond_9

    .line 1256
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    iget v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxRelativeStackSize:I

    int-to-short v1, v1

    iput-short v1, v0, Lzeroaicy/org/objectweb/asm/Label;->outputStackMax:S

    .line 1257
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->relativeStackSize:I

    invoke-direct {p0, v0, p1}, Lzeroaicy/org/objectweb/asm/MethodWriter;->addSuccessorToCurrentBasicBlock(ILzeroaicy/org/objectweb/asm/Label;)V

    .line 1260
    :cond_9
    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    .line 1261
    iput v3, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->relativeStackSize:I

    .line 1262
    iput v3, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxRelativeStackSize:I

    .line 1264
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    if-eqz v0, :cond_a

    .line 1265
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    iput-object p1, v0, Lzeroaicy/org/objectweb/asm/Label;->nextBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    .line 1267
    :cond_a
    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    goto/16 :goto_0

    .line 1268
    :cond_b
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->compute:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    if-nez v0, :cond_0

    .line 1272
    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    goto/16 :goto_0
.end method

.method public visitLdcInsn(Ljava/lang/Object;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/16 v7, 0x12

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 1278
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v1, v1, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    iput v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastBytecodeOffset:I

    .line 1280
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v1, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstant(Ljava/lang/Object;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v3

    .line 1281
    iget v4, v3, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    .line 1282
    iget v1, v3, Lzeroaicy/org/objectweb/asm/Symbol;->tag:I

    const/4 v5, 0x5

    if-eq v1, v5, :cond_3

    iget v1, v3, Lzeroaicy/org/objectweb/asm/Symbol;->tag:I

    const/4 v5, 0x6

    if-eq v1, v5, :cond_3

    iget v1, v3, Lzeroaicy/org/objectweb/asm/Symbol;->tag:I

    const/16 v5, 0x11

    if-ne v1, v5, :cond_0

    iget-object v1, v3, Lzeroaicy/org/objectweb/asm/Symbol;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x4a

    if-eq v1, v5, :cond_3

    const/16 v5, 0x44

    if-eq v1, v5, :cond_3

    :cond_0
    move v1, v2

    .line 1289
    :goto_0
    if-eqz v1, :cond_4

    .line 1290
    iget-object v5, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    const/16 v6, 0x14

    invoke-virtual {v5, v6, v4}, Lzeroaicy/org/objectweb/asm/ByteVector;->put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 1297
    :goto_1
    iget-object v4, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    if-eqz v4, :cond_2

    .line 1298
    iget v4, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->compute:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    iget v4, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->compute:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_6

    .line 1299
    :cond_1
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    iget-object v0, v0, Lzeroaicy/org/objectweb/asm/Label;->frame:Lzeroaicy/org/objectweb/asm/Frame;

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0, v7, v2, v3, v1}, Lzeroaicy/org/objectweb/asm/Frame;->execute(IILzeroaicy/org/objectweb/asm/Symbol;Lzeroaicy/org/objectweb/asm/SymbolTable;)V

    .line 1305
    :cond_2
    :goto_2
    return-void

    :cond_3
    move v1, v0

    .line 1282
    goto :goto_0

    .line 1291
    :cond_4
    const/16 v5, 0x100

    if-lt v4, v5, :cond_5

    .line 1292
    iget-object v5, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    const/16 v6, 0x13

    invoke-virtual {v5, v6, v4}, Lzeroaicy/org/objectweb/asm/ByteVector;->put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    goto :goto_1

    .line 1294
    :cond_5
    iget-object v5, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-virtual {v5, v7, v4}, Lzeroaicy/org/objectweb/asm/ByteVector;->put11(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    goto :goto_1

    .line 1301
    :cond_6
    iget v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->relativeStackSize:I

    if-eqz v1, :cond_7

    const/4 v0, 0x2

    :cond_7
    add-int/2addr v0, v2

    .line 1302
    iget v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxRelativeStackSize:I

    if-le v0, v1, :cond_8

    .line 1303
    iput v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxRelativeStackSize:I

    .line 1305
    :cond_8
    iput v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->relativeStackSize:I

    goto :goto_2
.end method

.method public visitLineNumber(ILzeroaicy/org/objectweb/asm/Label;)V
    .registers 5
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

    if-nez v0, :cond_0

    .line 1537
    new-instance v0, Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lzeroaicy/org/objectweb/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lineNumberTable:Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 1539
    :cond_0
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lineNumberTableLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lineNumberTableLength:I

    .line 1540
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lineNumberTable:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v1, p2, Lzeroaicy/org/objectweb/asm/Label;->bytecodeOffset:I

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 1541
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lineNumberTable:Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    return-void
.end method

.method public visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/Label;Lzeroaicy/org/objectweb/asm/Label;I)V
    .registers 10
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

    .line 1463
    if-eqz p3, :cond_1

    .line 1464
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->localVariableTypeTable:Lzeroaicy/org/objectweb/asm/ByteVector;

    if-nez v0, :cond_0

    .line 1465
    new-instance v0, Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lzeroaicy/org/objectweb/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->localVariableTypeTable:Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 1467
    :cond_0
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->localVariableTypeTableLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->localVariableTypeTableLength:I

    .line 1468
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->localVariableTypeTable:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v1, p4, Lzeroaicy/org/objectweb/asm/Label;->bytecodeOffset:I

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p5, Lzeroaicy/org/objectweb/asm/Label;->bytecodeOffset:I

    iget v2, p4, Lzeroaicy/org/objectweb/asm/Label;->bytecodeOffset:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v1, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v1, p3}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p6}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 1475
    :cond_1
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->localVariableTable:Lzeroaicy/org/objectweb/asm/ByteVector;

    if-nez v0, :cond_2

    .line 1476
    new-instance v0, Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lzeroaicy/org/objectweb/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->localVariableTable:Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 1478
    :cond_2
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->localVariableTableLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->localVariableTableLength:I

    .line 1479
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->localVariableTable:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v1, p4, Lzeroaicy/org/objectweb/asm/Label;->bytecodeOffset:I

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p5, Lzeroaicy/org/objectweb/asm/Label;->bytecodeOffset:I

    iget v2, p4, Lzeroaicy/org/objectweb/asm/Label;->bytecodeOffset:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v1, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v1, p2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p6}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 1485
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->compute:I

    if-eqz v0, :cond_4

    .line 1486
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1487
    const/16 v1, 0x4a

    if-eq v0, v1, :cond_3

    const/16 v1, 0x44

    if-ne v0, v1, :cond_5

    :cond_3
    const/4 v0, 0x2

    :goto_0
    add-int/2addr v0, p6

    .line 1488
    iget v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxLocals:I

    if-le v0, v1, :cond_4

    .line 1489
    iput v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxLocals:I

    :cond_4
    return-void

    .line 1487
    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public visitLocalVariableAnnotation(ILzeroaicy/org/objectweb/asm/TypePath;[Lzeroaicy/org/objectweb/asm/Label;[Lzeroaicy/org/objectweb/asm/Label;[ILjava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;
    .registers 15
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 1505
    new-instance v2, Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-direct {v2}, Lzeroaicy/org/objectweb/asm/ByteVector;-><init>()V

    .line 1507
    ushr-int/lit8 v0, p1, 0x18

    invoke-virtual {v2, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    array-length v3, p3

    invoke-virtual {v0, v3}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move v0, v1

    .line 1508
    :goto_0
    array-length v3, p3

    if-lt v0, v3, :cond_0

    .line 1514
    invoke-static {p2, v2}, Lzeroaicy/org/objectweb/asm/TypePath;->put(Lzeroaicy/org/objectweb/asm/TypePath;Lzeroaicy/org/objectweb/asm/ByteVector;)V

    .line 1516
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p6}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 1517
    if-eqz p7, :cond_1

    .line 1518
    new-instance v0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastCodeRuntimeVisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    invoke-direct {v0, v1, v6, v2, v3}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;-><init>(Lzeroaicy/org/objectweb/asm/SymbolTable;ZLzeroaicy/org/objectweb/asm/ByteVector;Lzeroaicy/org/objectweb/asm/AnnotationWriter;)V

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastCodeRuntimeVisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    .line 1525
    :goto_1
    return-object v0

    .line 1509
    :cond_0
    aget-object v3, p3, v0

    iget v3, v3, Lzeroaicy/org/objectweb/asm/Label;->bytecodeOffset:I

    invoke-virtual {v2, v3}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v3

    aget-object v4, p4, v0

    iget v4, v4, Lzeroaicy/org/objectweb/asm/Label;->bytecodeOffset:I

    aget-object v5, p3, v0

    iget v5, v5, Lzeroaicy/org/objectweb/asm/Label;->bytecodeOffset:I

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v3

    aget v4, p5, v0

    invoke-virtual {v3, v4}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 1508
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1525
    :cond_1
    new-instance v0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastCodeRuntimeInvisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    invoke-direct {v0, v1, v6, v2, v3}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;-><init>(Lzeroaicy/org/objectweb/asm/SymbolTable;ZLzeroaicy/org/objectweb/asm/ByteVector;Lzeroaicy/org/objectweb/asm/AnnotationWriter;)V

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastCodeRuntimeInvisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    goto :goto_1
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

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 1349
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v0, v0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    iput v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastBytecodeOffset:I

    .line 1351
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    const/16 v2, 0xab

    invoke-virtual {v0, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v2

    const/4 v0, 0x0

    check-cast v0, [B

    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v3, v3, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    rem-int/lit8 v3, v3, 0x4

    rsub-int/lit8 v3, v3, 0x4

    rem-int/lit8 v3, v3, 0x4

    invoke-virtual {v2, v0, v1, v3}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByteArray([BII)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 1352
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastBytecodeOffset:I

    invoke-virtual {p1, v0, v2, v4}, Lzeroaicy/org/objectweb/asm/Label;->put(Lzeroaicy/org/objectweb/asm/ByteVector;IZ)V

    .line 1353
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    array-length v2, p3

    invoke-virtual {v0, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putInt(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move v0, v1

    .line 1354
    :goto_0
    array-length v1, p3

    if-lt v0, v1, :cond_0

    .line 1359
    invoke-direct {p0, p1, p3}, Lzeroaicy/org/objectweb/asm/MethodWriter;->visitSwitchInsn(Lzeroaicy/org/objectweb/asm/Label;[Lzeroaicy/org/objectweb/asm/Label;)V

    return-void

    .line 1355
    :cond_0
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    aget v2, p2, v0

    invoke-virtual {v1, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putInt(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 1356
    aget-object v1, p3, v0

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v3, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastBytecodeOffset:I

    invoke-virtual {v1, v2, v3, v4}, Lzeroaicy/org/objectweb/asm/Label;->put(Lzeroaicy/org/objectweb/asm/ByteVector;IZ)V

    .line 1354
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
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

    if-ne v0, v1, :cond_0

    .line 1547
    invoke-direct {p0}, Lzeroaicy/org/objectweb/asm/MethodWriter;->computeAllFrames()V

    .line 1554
    :goto_0
    return-void

    .line 1548
    :cond_0
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->compute:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1549
    invoke-direct {p0}, Lzeroaicy/org/objectweb/asm/MethodWriter;->computeMaxStackAndLocal()V

    goto :goto_0

    .line 1550
    :cond_1
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->compute:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1551
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxRelativeStackSize:I

    iput v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxStack:I

    goto :goto_0

    .line 1553
    :cond_2
    iput p1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxStack:I

    .line 1554
    iput p2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxLocals:I

    goto :goto_0
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 11
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

    const/16 v4, 0xb9

    const/4 v3, 0x0

    .line 1034
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v0, v0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    iput v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastBytecodeOffset:I

    .line 1036
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p2, p3, p4, p5}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v0

    .line 1037
    if-ne p1, v4, :cond_2

    .line 1038
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v2, v0, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    invoke-virtual {v1, v4, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v0}, Lzeroaicy/org/objectweb/asm/Symbol;->getArgumentsAndReturnSizes()I

    move-result v2

    shr-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2, v3}, Lzeroaicy/org/objectweb/asm/ByteVector;->put11(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 1044
    :goto_0
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    if-eqz v1, :cond_1

    .line 1045
    iget v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->compute:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->compute:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 1046
    :cond_0
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    iget-object v1, v1, Lzeroaicy/org/objectweb/asm/Label;->frame:Lzeroaicy/org/objectweb/asm/Frame;

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v1, p1, v3, v0, v2}, Lzeroaicy/org/objectweb/asm/Frame;->execute(IILzeroaicy/org/objectweb/asm/Symbol;Lzeroaicy/org/objectweb/asm/SymbolTable;)V

    .line 1059
    :cond_1
    :goto_1
    return-void

    .line 1041
    :cond_2
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v2, v0, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    invoke-virtual {v1, p1, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    goto :goto_0

    .line 1048
    :cond_3
    invoke-virtual {v0}, Lzeroaicy/org/objectweb/asm/Symbol;->getArgumentsAndReturnSizes()I

    move-result v0

    .line 1049
    and-int/lit8 v1, v0, 0x3

    shr-int/lit8 v0, v0, 0x2

    sub-int v0, v1, v0

    .line 1050
    const/16 v1, 0xb8

    if-ne p1, v1, :cond_5

    .line 1052
    iget v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->relativeStackSize:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 1056
    :goto_2
    iget v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxRelativeStackSize:I

    if-le v0, v1, :cond_4

    .line 1057
    iput v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxRelativeStackSize:I

    .line 1059
    :cond_4
    iput v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->relativeStackSize:I

    goto :goto_1

    .line 1054
    :cond_5
    iget v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->relativeStackSize:I

    add-int/2addr v0, v1

    goto :goto_2
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

    const/16 v3, 0xc5

    .line 1389
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v0, v0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    iput v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastBytecodeOffset:I

    .line 1391
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v0

    .line 1392
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v2, v0, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    invoke-virtual {v1, v3, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, p2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 1394
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    if-eqz v1, :cond_1

    .line 1395
    iget v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->compute:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->compute:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 1396
    :cond_0
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    iget-object v1, v1, Lzeroaicy/org/objectweb/asm/Label;->frame:Lzeroaicy/org/objectweb/asm/Frame;

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v1, v3, p2, v0, v2}, Lzeroaicy/org/objectweb/asm/Frame;->execute(IILzeroaicy/org/objectweb/asm/Symbol;Lzeroaicy/org/objectweb/asm/SymbolTable;)V

    .line 1400
    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->relativeStackSize:I

    rsub-int/lit8 v1, p2, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->relativeStackSize:I

    goto :goto_0
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

    if-nez v0, :cond_0

    .line 644
    new-instance v0, Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lzeroaicy/org/objectweb/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->parameters:Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 646
    :cond_0
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->parametersCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->parametersCount:I

    .line 647
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->parameters:Lzeroaicy/org/objectweb/asm/ByteVector;

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    return-void

    :cond_1
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public visitParameterAnnotation(ILjava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;
    .registers 7
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 693
    if-eqz p3, :cond_1

    .line 694
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastRuntimeVisibleParameterAnnotations:[Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    if-nez v0, :cond_0

    .line 695
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->descriptor:Ljava/lang/String;

    invoke-static {v0}, Lzeroaicy/org/objectweb/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lzeroaicy/org/objectweb/asm/Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastRuntimeVisibleParameterAnnotations:[Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    .line 698
    :cond_0
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastRuntimeVisibleParameterAnnotations:[Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastRuntimeVisibleParameterAnnotations:[Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    aget-object v2, v2, p1

    invoke-static {v0, p2, v2}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->create(Lzeroaicy/org/objectweb/asm/SymbolTable;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/AnnotationWriter;)Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    move-result-object v0

    aput-object v0, v1, p1

    .line 706
    :goto_0
    return-object v0

    .line 702
    :cond_1
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastRuntimeInvisibleParameterAnnotations:[Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    if-nez v0, :cond_2

    .line 703
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->descriptor:Ljava/lang/String;

    invoke-static {v0}, Lzeroaicy/org/objectweb/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lzeroaicy/org/objectweb/asm/Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastRuntimeInvisibleParameterAnnotations:[Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    .line 706
    :cond_2
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastRuntimeInvisibleParameterAnnotations:[Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastRuntimeInvisibleParameterAnnotations:[Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    aget-object v2, v2, p1

    invoke-static {v0, p2, v2}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->create(Lzeroaicy/org/objectweb/asm/SymbolTable;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/AnnotationWriter;)Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    move-result-object v0

    aput-object v0, v1, p1

    goto :goto_0
.end method

.method public varargs visitTableSwitchInsn(IILzeroaicy/org/objectweb/asm/Label;[Lzeroaicy/org/objectweb/asm/Label;)V
    .registers 10
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

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 1335
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v0, v0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    iput v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastBytecodeOffset:I

    .line 1337
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    const/16 v2, 0xaa

    invoke-virtual {v0, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v2

    const/4 v0, 0x0

    check-cast v0, [B

    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v3, v3, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    rem-int/lit8 v3, v3, 0x4

    rsub-int/lit8 v3, v3, 0x4

    rem-int/lit8 v3, v3, 0x4

    invoke-virtual {v2, v0, v1, v3}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByteArray([BII)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 1338
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastBytecodeOffset:I

    invoke-virtual {p3, v0, v2, v4}, Lzeroaicy/org/objectweb/asm/Label;->put(Lzeroaicy/org/objectweb/asm/ByteVector;IZ)V

    .line 1339
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putInt(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putInt(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move v0, v1

    .line 1341
    :goto_0
    array-length v1, p4

    if-lt v0, v1, :cond_0

    .line 1344
    invoke-direct {p0, p3, p4}, Lzeroaicy/org/objectweb/asm/MethodWriter;->visitSwitchInsn(Lzeroaicy/org/objectweb/asm/Label;[Lzeroaicy/org/objectweb/asm/Label;)V

    return-void

    .line 1340
    :cond_0
    aget-object v1, p4, v0

    .line 1341
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v3, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastBytecodeOffset:I

    invoke-virtual {v1, v2, v3, v4}, Lzeroaicy/org/objectweb/asm/Label;->put(Lzeroaicy/org/objectweb/asm/ByteVector;IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public visitTryCatchAnnotation(ILzeroaicy/org/objectweb/asm/TypePath;Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;
    .registers 7
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 1444
    if-eqz p4, :cond_0

    .line 1445
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastCodeRuntimeVisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    invoke-static {v0, p1, p2, p3, v1}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->create(Lzeroaicy/org/objectweb/asm/SymbolTable;ILzeroaicy/org/objectweb/asm/TypePath;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/AnnotationWriter;)Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    move-result-object v0

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastCodeRuntimeVisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    .line 1449
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastCodeRuntimeInvisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    invoke-static {v0, p1, p2, p3, v1}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->create(Lzeroaicy/org/objectweb/asm/SymbolTable;ILzeroaicy/org/objectweb/asm/TypePath;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/AnnotationWriter;)Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    move-result-object v0

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastCodeRuntimeInvisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    goto :goto_0
.end method

.method public visitTryCatchBlock(Lzeroaicy/org/objectweb/asm/Label;Lzeroaicy/org/objectweb/asm/Label;Lzeroaicy/org/objectweb/asm/Label;Ljava/lang/String;)V
    .registers 11
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

    .line 1430
    if-eqz p4, :cond_0

    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p4}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v0

    iget v4, v0, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    :goto_0
    new-instance v0, Lzeroaicy/org/objectweb/asm/Handler;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lzeroaicy/org/objectweb/asm/Handler;-><init>(Lzeroaicy/org/objectweb/asm/Label;Lzeroaicy/org/objectweb/asm/Label;Lzeroaicy/org/objectweb/asm/Label;ILjava/lang/String;)V

    .line 1433
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->firstHandler:Lzeroaicy/org/objectweb/asm/Handler;

    if-nez v1, :cond_1

    .line 1434
    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->firstHandler:Lzeroaicy/org/objectweb/asm/Handler;

    .line 1438
    :goto_1
    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastHandler:Lzeroaicy/org/objectweb/asm/Handler;

    return-void

    .line 1430
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 1436
    :cond_1
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastHandler:Lzeroaicy/org/objectweb/asm/Handler;

    iput-object v0, v1, Lzeroaicy/org/objectweb/asm/Handler;->nextHandler:Lzeroaicy/org/objectweb/asm/Handler;

    goto :goto_1
.end method

.method public visitTypeAnnotation(ILzeroaicy/org/objectweb/asm/TypePath;Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;
    .registers 7
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 670
    if-eqz p4, :cond_0

    .line 671
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastRuntimeVisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    invoke-static {v0, p1, p2, p3, v1}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->create(Lzeroaicy/org/objectweb/asm/SymbolTable;ILzeroaicy/org/objectweb/asm/TypePath;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/AnnotationWriter;)Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    move-result-object v0

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastRuntimeVisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    .line 675
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastRuntimeInvisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    invoke-static {v0, p1, p2, p3, v1}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->create(Lzeroaicy/org/objectweb/asm/SymbolTable;ILzeroaicy/org/objectweb/asm/TypePath;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/AnnotationWriter;)Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    move-result-object v0

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastRuntimeInvisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    goto :goto_0
.end method

.method public visitTypeInsn(ILjava/lang/String;)V
    .registers 7
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

    move-result-object v0

    .line 974
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v2, v0, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    invoke-virtual {v1, p1, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 976
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    if-eqz v1, :cond_1

    .line 977
    iget v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->compute:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->compute:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 978
    :cond_0
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    iget-object v1, v1, Lzeroaicy/org/objectweb/asm/Label;->frame:Lzeroaicy/org/objectweb/asm/Frame;

    iget v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastBytecodeOffset:I

    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v1, p1, v2, v0, v3}, Lzeroaicy/org/objectweb/asm/Frame;->execute(IILzeroaicy/org/objectweb/asm/Symbol;Lzeroaicy/org/objectweb/asm/SymbolTable;)V

    .line 985
    :cond_1
    :goto_0
    return-void

    .line 979
    :cond_2
    const/16 v0, 0xbb

    if-ne p1, v0, :cond_1

    .line 981
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->relativeStackSize:I

    add-int/lit8 v0, v0, 0x1

    .line 982
    iget v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxRelativeStackSize:I

    if-le v0, v1, :cond_3

    .line 983
    iput v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxRelativeStackSize:I

    .line 985
    :cond_3
    iput v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->relativeStackSize:I

    goto :goto_0
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

    const/4 v1, 0x0

    const/16 v5, 0xa9

    const/16 v4, 0x36

    const/4 v3, 0x4

    .line 909
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v0, v0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    iput v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->lastBytecodeOffset:I

    .line 911
    if-ge p2, v3, :cond_6

    if-eq p1, v5, :cond_6

    .line 912
    if-ge p1, v4, :cond_5

    .line 914
    add-int/lit8 v0, p1, -0x15

    shl-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1a

    add-int/2addr v0, p2

    .line 918
    :goto_0
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-virtual {v2, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 925
    :goto_1
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    if-eqz v0, :cond_1

    .line 926
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->compute:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->compute:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_8

    .line 927
    :cond_0
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    iget-object v2, v0, Lzeroaicy/org/objectweb/asm/Label;->frame:Lzeroaicy/org/objectweb/asm/Frame;

    move-object v0, v1

    check-cast v0, Lzeroaicy/org/objectweb/asm/Symbol;

    check-cast v1, Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v2, p1, p2, v0, v1}, Lzeroaicy/org/objectweb/asm/Frame;->execute(IILzeroaicy/org/objectweb/asm/Symbol;Lzeroaicy/org/objectweb/asm/SymbolTable;)V

    .line 943
    :cond_1
    :goto_2
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->compute:I

    if-eqz v0, :cond_3

    .line 944
    const/16 v0, 0x16

    if-eq p1, v0, :cond_2

    const/16 v0, 0x18

    if-eq p1, v0, :cond_2

    const/16 v0, 0x37

    if-eq p1, v0, :cond_2

    const/16 v0, 0x39

    if-ne p1, v0, :cond_b

    .line 949
    :cond_2
    add-int/lit8 v0, p2, 0x2

    .line 953
    :goto_3
    iget v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxLocals:I

    if-le v0, v1, :cond_3

    .line 954
    iput v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxLocals:I

    .line 957
    :cond_3
    if-lt p1, v4, :cond_4

    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->compute:I

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->firstHandler:Lzeroaicy/org/objectweb/asm/Handler;

    if-eqz v0, :cond_4

    .line 965
    new-instance v0, Lzeroaicy/org/objectweb/asm/Label;

    invoke-direct {v0}, Lzeroaicy/org/objectweb/asm/Label;-><init>()V

    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/MethodWriter;->visitLabel(Lzeroaicy/org/objectweb/asm/Label;)V

    :cond_4
    return-void

    .line 916
    :cond_5
    add-int/lit8 v0, p1, -0x36

    shl-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x3b

    add-int/2addr v0, p2

    goto :goto_0

    .line 919
    :cond_6
    const/16 v0, 0x100

    if-lt p2, v0, :cond_7

    .line 920
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    const/16 v2, 0xc4

    invoke-virtual {v0, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lzeroaicy/org/objectweb/asm/ByteVector;->put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    goto :goto_1

    .line 922
    :cond_7
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->code:Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-virtual {v0, p1, p2}, Lzeroaicy/org/objectweb/asm/ByteVector;->put11(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    goto :goto_1

    .line 929
    :cond_8
    if-ne p1, v5, :cond_9

    .line 931
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    iget-short v1, v0, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    or-int/lit8 v1, v1, 0x40

    int-to-short v1, v1

    iput-short v1, v0, Lzeroaicy/org/objectweb/asm/Label;->flags:S

    .line 932
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->currentBasicBlock:Lzeroaicy/org/objectweb/asm/Label;

    iget v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->relativeStackSize:I

    int-to-short v1, v1

    iput-short v1, v0, Lzeroaicy/org/objectweb/asm/Label;->outputStackSize:S

    .line 933
    invoke-direct {p0}, Lzeroaicy/org/objectweb/asm/MethodWriter;->endCurrentBasicBlockWithNoSuccessor()V

    goto :goto_2

    .line 935
    :cond_9
    iget v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->relativeStackSize:I

    sget-object v1, Lzeroaicy/org/objectweb/asm/MethodWriter;->STACK_SIZE_DELTA:[I

    aget v1, v1, p1

    add-int/2addr v0, v1

    .line 936
    iget v1, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxRelativeStackSize:I

    if-le v0, v1, :cond_a

    .line 937
    iput v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->maxRelativeStackSize:I

    .line 939
    :cond_a
    iput v0, p0, Lzeroaicy/org/objectweb/asm/MethodWriter;->relativeStackSize:I

    goto :goto_2

    .line 951
    :cond_b
    add-int/lit8 v0, p2, 0x1

    goto :goto_3
.end method
