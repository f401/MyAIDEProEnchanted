.class final Lzeroaicy/org/objectweb/asm/AnnotationWriter;
.super Lzeroaicy/org/objectweb/asm/AnnotationVisitor;
.source "AnnotationWriter.java"


# instance fields
.field private final annotation:Lzeroaicy/org/objectweb/asm/ByteVector;

.field private nextAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

.field private numElementValuePairs:I

.field private final numElementValuePairsOffset:I

.field private final previousAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

.field private final symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

.field private final useNamedValues:Z


# direct methods
.method constructor <init>(Lzeroaicy/org/objectweb/asm/SymbolTable;ZLzeroaicy/org/objectweb/asm/ByteVector;Lzeroaicy/org/objectweb/asm/AnnotationWriter;)V
    .locals 1

    .line 115
    const/high16 v0, 0x90000

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/AnnotationVisitor;-><init>(I)V

    .line 116
    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    .line 117
    iput-boolean p2, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->useNamedValues:Z

    .line 118
    iput-object p3, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->annotation:Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 120
    iget v0, p3, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    if-nez v0, :cond_1

    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->numElementValuePairsOffset:I

    .line 121
    iput-object p4, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->previousAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    if-eqz p4, :cond_0

    .line 123
    iput-object p0, p4, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->nextAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    :cond_0
    return-void

    .line 120
    :cond_1
    iget v0, p3, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v0, v0, -0x2

    goto :goto_0
.end method

.method static computeAnnotationsSize(Lzeroaicy/org/objectweb/asm/AnnotationWriter;Lzeroaicy/org/objectweb/asm/AnnotationWriter;Lzeroaicy/org/objectweb/asm/AnnotationWriter;Lzeroaicy/org/objectweb/asm/AnnotationWriter;)I
    .locals 2

    if-eqz p0, :cond_3

    .line 374
    const-string v0, "RuntimeVisibleAnnotations"

    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->computeAnnotationsSize(Ljava/lang/String;)I

    move-result v0

    :goto_0
    if-eqz p1, :cond_0

    .line 379
    const-string v1, "RuntimeInvisibleAnnotations"

    invoke-virtual {p1, v1}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->computeAnnotationsSize(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    if-eqz p2, :cond_1

    .line 384
    const-string v1, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {p2, v1}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->computeAnnotationsSize(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    if-eqz p3, :cond_2

    .line 389
    const-string v1, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {p3, v1}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->computeAnnotationsSize(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    return v0

    .line 374
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static computeParameterAnnotationsSize(Ljava/lang/String;[Lzeroaicy/org/objectweb/asm/AnnotationWriter;I)I
    .locals 4

    const/4 v1, 0x0

    mul-int/lit8 v0, p2, 0x2

    add-int/lit8 v0, v0, 0x7

    move v2, v0

    move v3, v1

    :goto_0
    if-lt v3, p2, :cond_0

    return v2

    .line 498
    :cond_0
    aget-object v0, p1, v3

    if-nez v0, :cond_1

    move v0, v1

    .line 499
    :goto_1
    add-int/2addr v0, v2

    add-int/lit8 v3, v3, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p0}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->computeAnnotationsSize(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x8

    goto :goto_1
.end method

.method static create(Lzeroaicy/org/objectweb/asm/SymbolTable;ILzeroaicy/org/objectweb/asm/TypePath;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/AnnotationWriter;)Lzeroaicy/org/objectweb/asm/AnnotationWriter;
    .locals 3

    .line 175
    new-instance v0, Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lzeroaicy/org/objectweb/asm/ByteVector;-><init>()V

    .line 177
    invoke-static {p1, v0}, Lzeroaicy/org/objectweb/asm/TypeReference;->putTarget(ILzeroaicy/org/objectweb/asm/ByteVector;)V

    .line 178
    invoke-static {p2, v0}, Lzeroaicy/org/objectweb/asm/TypePath;->put(Lzeroaicy/org/objectweb/asm/TypePath;Lzeroaicy/org/objectweb/asm/ByteVector;)V

    .line 180
    invoke-virtual {p0, p3}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 181
    new-instance v1, Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2, v0, p4}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;-><init>(Lzeroaicy/org/objectweb/asm/SymbolTable;ZLzeroaicy/org/objectweb/asm/ByteVector;Lzeroaicy/org/objectweb/asm/AnnotationWriter;)V

    return-object v1
.end method

.method static create(Lzeroaicy/org/objectweb/asm/SymbolTable;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/AnnotationWriter;)Lzeroaicy/org/objectweb/asm/AnnotationWriter;
    .locals 3

    .line 143
    new-instance v0, Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lzeroaicy/org/objectweb/asm/ByteVector;-><init>()V

    .line 145
    invoke-virtual {p0, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 146
    new-instance v1, Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2, v0, p2}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;-><init>(Lzeroaicy/org/objectweb/asm/SymbolTable;ZLzeroaicy/org/objectweb/asm/ByteVector;Lzeroaicy/org/objectweb/asm/AnnotationWriter;)V

    return-object v1
.end method

.method static putAnnotations(Lzeroaicy/org/objectweb/asm/SymbolTable;Lzeroaicy/org/objectweb/asm/AnnotationWriter;Lzeroaicy/org/objectweb/asm/AnnotationWriter;Lzeroaicy/org/objectweb/asm/AnnotationWriter;Lzeroaicy/org/objectweb/asm/AnnotationWriter;Lzeroaicy/org/objectweb/asm/ByteVector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzeroaicy/org/objectweb/asm/SymbolTable;",
            "Lzeroaicy/org/objectweb/asm/AnnotationWriter;",
            "Lzeroaicy/org/objectweb/asm/AnnotationWriter;",
            "Lzeroaicy/org/objectweb/asm/AnnotationWriter;",
            "Lzeroaicy/org/objectweb/asm/AnnotationWriter;",
            "Lzeroaicy/org/objectweb/asm/ByteVector;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 456
    const-string v0, "RuntimeVisibleAnnotations"

    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0, p5}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->putAnnotations(ILzeroaicy/org/objectweb/asm/ByteVector;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 460
    const-string v0, "RuntimeInvisibleAnnotations"

    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0, p5}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->putAnnotations(ILzeroaicy/org/objectweb/asm/ByteVector;)V

    :cond_1
    if-eqz p3, :cond_2

    .line 464
    const-string v0, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v0, p5}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->putAnnotations(ILzeroaicy/org/objectweb/asm/ByteVector;)V

    :cond_2
    if-eqz p4, :cond_3

    .line 468
    const-string v0, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p4, v0, p5}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->putAnnotations(ILzeroaicy/org/objectweb/asm/ByteVector;)V

    :cond_3
    return-void
.end method

.method static putParameterAnnotations(I[Lzeroaicy/org/objectweb/asm/AnnotationWriter;ILzeroaicy/org/objectweb/asm/ByteVector;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lzeroaicy/org/objectweb/asm/AnnotationWriter;",
            "I",
            "Lzeroaicy/org/objectweb/asm/ByteVector;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    mul-int/lit8 v0, p2, 0x2

    add-int/lit8 v0, v0, 0x1

    move v3, v0

    move v4, v2

    :goto_0
    if-lt v4, p2, :cond_3

    .line 530
    invoke-virtual {p3, p0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 531
    invoke-virtual {p3, v3}, Lzeroaicy/org/objectweb/asm/ByteVector;->putInt(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 532
    invoke-virtual {p3, p2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move v6, v2

    :goto_1
    if-lt v6, p2, :cond_0

    return-void

    .line 534
    :cond_0
    aget-object v3, p1, v6

    move-object v0, v1

    .line 535
    check-cast v0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    move-object v0, v1

    move v5, v2

    :goto_2
    if-nez v3, :cond_2

    .line 544
    invoke-virtual {p3, v5}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    :goto_3
    if-nez v0, :cond_1

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    .line 547
    :cond_1
    iget-object v3, v0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->annotation:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v3, v3, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    iget-object v4, v0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->annotation:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v4, v4, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    invoke-virtual {p3, v3, v2, v4}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByteArray([BII)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 549
    iget-object v0, v0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->nextAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    goto :goto_3

    .line 539
    :cond_2
    invoke-virtual {v3}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->visitEnd()V

    add-int/lit8 v5, v5, 0x1

    .line 542
    iget-object v4, v3, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->previousAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    move-object v0, v3

    move-object v3, v4

    goto :goto_2

    .line 526
    :cond_3
    aget-object v5, p1, v4

    if-nez v5, :cond_4

    move v0, v2

    .line 527
    :goto_4
    add-int/2addr v0, v3

    add-int/lit8 v4, v4, 0x1

    move v3, v0

    goto :goto_0

    :cond_4
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v1}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->computeAnnotationsSize(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x8

    goto :goto_4
.end method


# virtual methods
.method computeAnnotationsSize(Ljava/lang/String;)I
    .locals 2

    if-eqz p1, :cond_0

    .line 334
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    :cond_0
    const/16 v0, 0x8

    :goto_0
    if-nez p0, :cond_1

    return v0

    .line 340
    :cond_1
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->annotation:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v1, v1, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    add-int/2addr v0, v1

    .line 341
    iget-object p0, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->previousAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    goto :goto_0
.end method

.method putAnnotations(ILzeroaicy/org/objectweb/asm/ByteVector;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lzeroaicy/org/objectweb/asm/ByteVector;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 409
    move-object v0, v1

    check-cast v0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    const/4 v2, 0x2

    move-object v0, p0

    move v3, v4

    :goto_0
    if-nez v0, :cond_1

    .line 418
    invoke-virtual {p2, p1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 419
    invoke-virtual {p2, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putInt(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 420
    invoke-virtual {p2, v3}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    :goto_1
    if-nez v1, :cond_0

    return-void

    .line 423
    :cond_0
    iget-object v0, v1, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->annotation:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v0, v0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    iget-object v2, v1, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->annotation:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v2, v2, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    invoke-virtual {p2, v0, v4, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByteArray([BII)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 424
    iget-object v1, v1, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->nextAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    goto :goto_1

    .line 412
    :cond_1
    invoke-virtual {v0}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->visitEnd()V

    .line 413
    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->annotation:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v1, v1, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    add-int/2addr v2, v1

    add-int/lit8 v3, v3, 0x1

    .line 416
    iget-object p0, v0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->previousAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    move-object v1, v0

    move-object v0, p0

    goto :goto_0
.end method

.method public visit(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/16 v6, 0x53

    const/16 v5, 0x43

    const/16 v4, 0x42

    const/16 v3, 0x5b

    const/4 v0, 0x0

    .line 193
    iget v1, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->numElementValuePairs:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->numElementValuePairs:I

    .line 194
    iget-boolean v1, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->useNamedValues:Z

    if-eqz v1, :cond_0

    .line 195
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->annotation:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v2, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 197
    :cond_0
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 198
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->annotation:Lzeroaicy/org/objectweb/asm/ByteVector;

    const/16 v1, 0x73

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v2, p2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 260
    :cond_1
    :goto_0
    return-void

    .line 199
    :cond_2
    instance-of v1, p2, Ljava/lang/Byte;

    if-eqz v1, :cond_3

    .line 200
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->annotation:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    invoke-virtual {v1, v2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantInteger(I)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v1

    iget v1, v1, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    invoke-virtual {v0, v4, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    goto :goto_0

    .line 201
    :cond_3
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    .line 202
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 203
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->annotation:Lzeroaicy/org/objectweb/asm/ByteVector;

    const/16 v2, 0x5a

    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v3, v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantInteger(I)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v0

    iget v0, v0, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    invoke-virtual {v1, v2, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    goto :goto_0

    .line 204
    :cond_4
    instance-of v1, p2, Ljava/lang/Character;

    if-eqz v1, :cond_5

    .line 205
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->annotation:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    check-cast p2, Ljava/lang/Character;

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-virtual {v1, v2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantInteger(I)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v1

    iget v1, v1, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    invoke-virtual {v0, v5, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    goto :goto_0

    .line 206
    :cond_5
    instance-of v1, p2, Ljava/lang/Short;

    if-eqz v1, :cond_6

    .line 207
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->annotation:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    invoke-virtual {v1, v2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantInteger(I)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v1

    iget v1, v1, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    invoke-virtual {v0, v6, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    goto :goto_0

    .line 208
    :cond_6
    instance-of v1, p2, Lzeroaicy/org/objectweb/asm/Type;

    if-eqz v1, :cond_7

    .line 209
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->annotation:Lzeroaicy/org/objectweb/asm/ByteVector;

    const/16 v1, 0x63

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    check-cast p2, Lzeroaicy/org/objectweb/asm/Type;

    invoke-virtual {p2}, Lzeroaicy/org/objectweb/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    goto :goto_0

    .line 210
    :cond_7
    instance-of v1, p2, [B

    if-eqz v1, :cond_8

    .line 211
    check-cast p2, [B

    .line 212
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->annotation:Lzeroaicy/org/objectweb/asm/ByteVector;

    array-length v2, p2

    invoke-virtual {v1, v3, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 214
    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 213
    aget-byte v1, p2, v0

    .line 214
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->annotation:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v3, v1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantInteger(I)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v1

    iget v1, v1, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    invoke-virtual {v2, v4, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 216
    :cond_8
    instance-of v1, p2, [Z

    if-eqz v1, :cond_9

    .line 217
    check-cast p2, [Z

    .line 218
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->annotation:Lzeroaicy/org/objectweb/asm/ByteVector;

    array-length v2, p2

    invoke-virtual {v1, v3, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 220
    :goto_2
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 219
    aget-boolean v1, p2, v0

    .line 220
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->annotation:Lzeroaicy/org/objectweb/asm/ByteVector;

    const/16 v3, 0x5a

    iget-object v4, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v4, v1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantInteger(I)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v1

    iget v1, v1, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    invoke-virtual {v2, v3, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 222
    :cond_9
    instance-of v1, p2, [S

    if-eqz v1, :cond_a

    .line 223
    check-cast p2, [S

    .line 224
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->annotation:Lzeroaicy/org/objectweb/asm/ByteVector;

    array-length v2, p2

    invoke-virtual {v1, v3, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 226
    :goto_3
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 225
    aget-short v1, p2, v0

    .line 226
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->annotation:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v3, v1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantInteger(I)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v1

    iget v1, v1, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    invoke-virtual {v2, v6, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 228
    :cond_a
    instance-of v1, p2, [C

    if-eqz v1, :cond_b

    .line 229
    check-cast p2, [C

    .line 230
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->annotation:Lzeroaicy/org/objectweb/asm/ByteVector;

    array-length v2, p2

    invoke-virtual {v1, v3, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 232
    :goto_4
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 231
    aget-char v1, p2, v0

    .line 232
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->annotation:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v3, v1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantInteger(I)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v1

    iget v1, v1, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    invoke-virtual {v2, v5, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 234
    :cond_b
    instance-of v1, p2, [I

    if-eqz v1, :cond_c

    .line 235
    check-cast p2, [I

    .line 236
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->annotation:Lzeroaicy/org/objectweb/asm/ByteVector;

    array-length v2, p2

    invoke-virtual {v1, v3, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 238
    :goto_5
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 237
    aget v1, p2, v0

    .line 238
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->annotation:Lzeroaicy/org/objectweb/asm/ByteVector;

    const/16 v3, 0x49

    iget-object v4, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v4, v1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantInteger(I)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v1

    iget v1, v1, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    invoke-virtual {v2, v3, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 240
    :cond_c
    instance-of v1, p2, [J

    if-eqz v1, :cond_d

    .line 241
    check-cast p2, [J

    .line 242
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->annotation:Lzeroaicy/org/objectweb/asm/ByteVector;

    array-length v2, p2

    invoke-virtual {v1, v3, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 244
    :goto_6
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 243
    aget-wide v2, p2, v0

    .line 244
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->annotation:Lzeroaicy/org/objectweb/asm/ByteVector;

    const/16 v4, 0x4a

    iget-object v5, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v5, v2, v3}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantLong(J)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v2

    iget v2, v2, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    invoke-virtual {v1, v4, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 246
    :cond_d
    instance-of v1, p2, [F

    if-eqz v1, :cond_e

    .line 247
    check-cast p2, [F

    .line 248
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->annotation:Lzeroaicy/org/objectweb/asm/ByteVector;

    array-length v2, p2

    invoke-virtual {v1, v3, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 250
    :goto_7
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 249
    aget v1, p2, v0

    .line 250
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->annotation:Lzeroaicy/org/objectweb/asm/ByteVector;

    const/16 v3, 0x46

    iget-object v4, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v4, v1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantFloat(F)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v1

    iget v1, v1, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    invoke-virtual {v2, v3, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 252
    :cond_e
    instance-of v1, p2, [D

    if-eqz v1, :cond_f

    .line 253
    check-cast p2, [D

    .line 254
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->annotation:Lzeroaicy/org/objectweb/asm/ByteVector;

    array-length v2, p2

    invoke-virtual {v1, v3, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 256
    :goto_8
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 255
    aget-wide v2, p2, v0

    .line 256
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->annotation:Lzeroaicy/org/objectweb/asm/ByteVector;

    const/16 v4, 0x44

    iget-object v5, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v5, v2, v3}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantDouble(D)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v2

    iget v2, v2, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    invoke-virtual {v1, v4, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 259
    :cond_f
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstant(Ljava/lang/Object;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v0

    .line 260
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->annotation:Lzeroaicy/org/objectweb/asm/ByteVector;

    const-string v2, ".s.IFJDCS"

    iget v3, v0, Lzeroaicy/org/objectweb/asm/Symbol;->tag:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget v0, v0, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    invoke-virtual {v1, v2, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    goto/16 :goto_0
.end method

.method public visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;
    .locals 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v1, 0x0

    .line 281
    iget v0, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->numElementValuePairs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->numElementValuePairs:I

    .line 282
    iget-boolean v0, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->useNamedValues:Z

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->annotation:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v2, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 286
    :cond_0
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->annotation:Lzeroaicy/org/objectweb/asm/ByteVector;

    const/16 v2, 0x40

    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v3, p2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lzeroaicy/org/objectweb/asm/ByteVector;->put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 287
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->annotation:Lzeroaicy/org/objectweb/asm/ByteVector;

    move-object v0, v1

    check-cast v0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    new-instance v0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    const/4 v4, 0x1

    invoke-direct {v0, v2, v4, v3, v1}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;-><init>(Lzeroaicy/org/objectweb/asm/SymbolTable;ZLzeroaicy/org/objectweb/asm/ByteVector;Lzeroaicy/org/objectweb/asm/AnnotationWriter;)V

    return-object v0
.end method

.method public visitArray(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;
    .locals 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 294
    iget v0, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->numElementValuePairs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->numElementValuePairs:I

    .line 295
    iget-boolean v0, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->useNamedValues:Z

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->annotation:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v2, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 305
    :cond_0
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->annotation:Lzeroaicy/org/objectweb/asm/ByteVector;

    const/16 v2, 0x5b

    invoke-virtual {v0, v2, v4}, Lzeroaicy/org/objectweb/asm/ByteVector;->put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 306
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->annotation:Lzeroaicy/org/objectweb/asm/ByteVector;

    move-object v0, v1

    check-cast v0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    new-instance v0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    invoke-direct {v0, v2, v4, v3, v1}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;-><init>(Lzeroaicy/org/objectweb/asm/SymbolTable;ZLzeroaicy/org/objectweb/asm/ByteVector;Lzeroaicy/org/objectweb/asm/AnnotationWriter;)V

    return-object v0
.end method

.method public visitEnd()V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 311
    iget v0, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->numElementValuePairsOffset:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 312
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->annotation:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v0, v0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    .line 313
    iget v1, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->numElementValuePairsOffset:I

    iget v2, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->numElementValuePairs:I

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    int-to-byte v2, v2

    .line 314
    add-int/lit8 v1, v1, 0x1

    aput-byte v2, v0, v1

    :cond_0
    return-void
.end method

.method public visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 268
    iget v0, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->numElementValuePairs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->numElementValuePairs:I

    .line 269
    iget-boolean v0, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->useNamedValues:Z

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->annotation:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v1, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 272
    :cond_0
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->annotation:Lzeroaicy/org/objectweb/asm/ByteVector;

    const/16 v1, 0x65

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v2, p2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v1, p3}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    return-void
.end method
