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
    .registers 6

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
    iget p1, p3, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    if-nez p1, :cond_11

    const/4 p1, -0x1

    goto :goto_15

    :cond_11
    iget p1, p3, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    add-int/lit8 p1, p1, -0x2

    :goto_15
    iput p1, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->numElementValuePairsOffset:I

    .line 121
    iput-object p4, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->previousAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    if-eqz p4, :cond_1d

    .line 123
    iput-object p0, p4, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->nextAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    :cond_1d
    return-void
.end method

.method static computeAnnotationsSize(Lzeroaicy/org/objectweb/asm/AnnotationWriter;Lzeroaicy/org/objectweb/asm/AnnotationWriter;Lzeroaicy/org/objectweb/asm/AnnotationWriter;Lzeroaicy/org/objectweb/asm/AnnotationWriter;)I
    .registers 5

    if-eqz p0, :cond_9

    .line 374
    const-string v0, "RuntimeVisibleAnnotations"

    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->computeAnnotationsSize(Ljava/lang/String;)I

    move-result p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    if-eqz p1, :cond_13

    .line 379
    const-string v0, "RuntimeInvisibleAnnotations"

    invoke-virtual {p1, v0}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->computeAnnotationsSize(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p0, p1

    :cond_13
    if-eqz p2, :cond_1c

    .line 384
    const-string p1, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {p2, p1}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->computeAnnotationsSize(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p0, p1

    :cond_1c
    if-eqz p3, :cond_25

    .line 389
    const-string p1, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {p3, p1}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->computeAnnotationsSize(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p0, p1

    :cond_25
    return p0
.end method

.method static computeParameterAnnotationsSize(Ljava/lang/String;[Lzeroaicy/org/objectweb/asm/AnnotationWriter;I)I
    .registers 7

    mul-int/lit8 v0, p2, 0x2

    add-int/lit8 v0, v0, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-lt v2, p2, :cond_9

    return v0

    .line 498
    :cond_9
    aget-object v3, p1, v2

    if-nez v3, :cond_f

    const/4 v3, 0x0

    goto :goto_15

    .line 499
    :cond_f
    invoke-virtual {v3, p0}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->computeAnnotationsSize(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, -0x8

    :goto_15
    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_6
.end method

.method static create(Lzeroaicy/org/objectweb/asm/SymbolTable;ILzeroaicy/org/objectweb/asm/TypePath;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/AnnotationWriter;)Lzeroaicy/org/objectweb/asm/AnnotationWriter;
    .registers 6

    .line 175
    new-instance v0, Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lzeroaicy/org/objectweb/asm/ByteVector;-><init>()V

    .line 177
    invoke-static {p1, v0}, Lzeroaicy/org/objectweb/asm/TypeReference;->putTarget(ILzeroaicy/org/objectweb/asm/ByteVector;)V

    .line 178
    invoke-static {p2, v0}, Lzeroaicy/org/objectweb/asm/TypePath;->put(Lzeroaicy/org/objectweb/asm/TypePath;Lzeroaicy/org/objectweb/asm/ByteVector;)V

    .line 180
    invoke-virtual {p0, p3}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 181
    new-instance p1, Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2, v0, p4}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;-><init>(Lzeroaicy/org/objectweb/asm/SymbolTable;ZLzeroaicy/org/objectweb/asm/ByteVector;Lzeroaicy/org/objectweb/asm/AnnotationWriter;)V

    return-object p1
.end method

.method static create(Lzeroaicy/org/objectweb/asm/SymbolTable;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/AnnotationWriter;)Lzeroaicy/org/objectweb/asm/AnnotationWriter;
    .registers 5

    .line 143
    new-instance v0, Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lzeroaicy/org/objectweb/asm/ByteVector;-><init>()V

    .line 145
    invoke-virtual {p0, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 146
    new-instance p1, Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    const/4 v1, 0x1

    invoke-direct {p1, p0, v1, v0, p2}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;-><init>(Lzeroaicy/org/objectweb/asm/SymbolTable;ZLzeroaicy/org/objectweb/asm/ByteVector;Lzeroaicy/org/objectweb/asm/AnnotationWriter;)V

    return-object p1
.end method

.method static putAnnotations(Lzeroaicy/org/objectweb/asm/SymbolTable;Lzeroaicy/org/objectweb/asm/AnnotationWriter;Lzeroaicy/org/objectweb/asm/AnnotationWriter;Lzeroaicy/org/objectweb/asm/AnnotationWriter;Lzeroaicy/org/objectweb/asm/AnnotationWriter;Lzeroaicy/org/objectweb/asm/ByteVector;)V
    .registers 7
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

    if-eqz p1, :cond_b

    .line 456
    const-string v0, "RuntimeVisibleAnnotations"

    invoke-virtual {p0, v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0, p5}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->putAnnotations(ILzeroaicy/org/objectweb/asm/ByteVector;)V

    :cond_b
    if-eqz p2, :cond_16

    .line 460
    const-string p1, "RuntimeInvisibleAnnotations"

    invoke-virtual {p0, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1, p5}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->putAnnotations(ILzeroaicy/org/objectweb/asm/ByteVector;)V

    :cond_16
    if-eqz p3, :cond_21

    .line 464
    const-string p1, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {p0, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p3, p1, p5}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->putAnnotations(ILzeroaicy/org/objectweb/asm/ByteVector;)V

    :cond_21
    if-eqz p4, :cond_2c

    .line 468
    const-string p1, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {p0, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p4, p0, p5}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->putAnnotations(ILzeroaicy/org/objectweb/asm/ByteVector;)V

    :cond_2c
    return-void
.end method

.method static putParameterAnnotations(I[Lzeroaicy/org/objectweb/asm/AnnotationWriter;ILzeroaicy/org/objectweb/asm/ByteVector;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lzeroaicy/org/objectweb/asm/AnnotationWriter;",
            "I",
            "Lzeroaicy/org/objectweb/asm/ByteVector;",
            ")V"
        }
    .end annotation

    mul-int/lit8 v0, p2, 0x2

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    const/4 v3, 0x0

    if-lt v2, p2, :cond_40

    .line 530
    invoke-virtual {p3, p0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 531
    invoke-virtual {p3, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putInt(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 532
    invoke-virtual {p3, p2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    const/4 v4, 0x0

    :goto_13
    if-lt v4, p2, :cond_16

    return-void

    .line 534
    :cond_16
    aget-object p0, p1, v4

    .line 535
    move-object v0, v3

    check-cast v0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    move-object v2, v3

    const/4 v0, 0x0

    :goto_1d
    if-nez p0, :cond_35

    .line 544
    invoke-virtual {p3, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    :goto_22
    if-nez v2, :cond_27

    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 547
    :cond_27
    iget-object p0, v2, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->annotation:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object p0, p0, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    iget-object v0, v2, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->annotation:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v0, v0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    invoke-virtual {p3, p0, v1, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByteArray([BII)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 549
    iget-object v2, v2, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->nextAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    goto :goto_22

    .line 539
    :cond_35
    invoke-virtual {p0}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->visitEnd()V

    add-int/lit8 v0, v0, 0x1

    .line 542
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->previousAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    move-object v6, v2

    move-object v2, p0

    move-object p0, v6

    goto :goto_1d

    .line 526
    :cond_40
    aget-object v4, p1, v2

    if-nez v4, :cond_46

    const/4 v3, 0x0

    goto :goto_4f

    .line 527
    :cond_46
    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->computeAnnotationsSize(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, -0x8

    :goto_4f
    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_6
.end method


# virtual methods
.method computeAnnotationsSize(Ljava/lang/String;)I
    .registers 4

    if-eqz p1, :cond_7

    .line 334
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    :cond_7
    const/16 p1, 0x8

    move-object v0, p0

    :goto_a
    if-nez v0, :cond_d

    return p1

    .line 340
    :cond_d
    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->annotation:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v1, v1, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    add-int/2addr p1, v1

    .line 341
    iget-object v0, v0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->previousAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    goto :goto_a
.end method

.method putAnnotations(ILzeroaicy/org/objectweb/asm/ByteVector;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lzeroaicy/org/objectweb/asm/ByteVector;",
            ")V"
        }
    .end annotation

    .line 409
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    const/4 v1, 0x2

    const/4 v2, 0x0

    move-object v1, v0

    const/4 v3, 0x2

    const/4 v4, 0x0

    move-object v0, p0

    :goto_a
    if-nez v0, :cond_26

    .line 418
    invoke-virtual {p2, p1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 419
    invoke-virtual {p2, v3}, Lzeroaicy/org/objectweb/asm/ByteVector;->putInt(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 420
    invoke-virtual {p2, v4}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    :goto_15
    if-nez v1, :cond_18

    return-void

    .line 423
    :cond_18
    iget-object p1, v1, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->annotation:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object p1, p1, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    iget-object v0, v1, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->annotation:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v0, v0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    invoke-virtual {p2, p1, v2, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByteArray([BII)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 424
    iget-object v1, v1, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->nextAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    goto :goto_15

    .line 412
    :cond_26
    invoke-virtual {v0}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->visitEnd()V

    .line 413
    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->annotation:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v1, v1, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    add-int/2addr v3, v1

    add-int/lit8 v4, v4, 0x1

    .line 416
    iget-object v1, v0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->previousAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_a
.end method

.method public visit(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 9
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

    .line 193
    iget v0, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->numElementValuePairs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->numElementValuePairs:I

    .line 194
    iget-boolean v0, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->useNamedValues:Z

    if-eqz v0, :cond_15

    .line 195
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->annotation:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v1, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 197
    :cond_15
    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_2a

    .line 198
    iget-object p1, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->annotation:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p2

    const/16 v0, 0x73

    invoke-virtual {p1, v0, p2}, Lzeroaicy/org/objectweb/asm/ByteVector;->put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    goto/16 :goto_1ed

    .line 199
    :cond_2a
    instance-of p1, p2, Ljava/lang/Byte;

    const/16 v0, 0x42

    if-eqz p1, :cond_45

    .line 200
    iget-object p1, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->annotation:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result p2

    invoke-virtual {v1, p2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantInteger(I)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p2

    iget p2, p2, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    invoke-virtual {p1, v0, p2}, Lzeroaicy/org/objectweb/asm/ByteVector;->put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    goto/16 :goto_1ed

    .line 201
    :cond_45
    instance-of p1, p2, Ljava/lang/Boolean;

    const/16 v1, 0x5a

    if-eqz p1, :cond_60

    .line 202
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 203
    iget-object p2, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->annotation:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantInteger(I)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p1

    iget p1, p1, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    invoke-virtual {p2, v1, p1}, Lzeroaicy/org/objectweb/asm/ByteVector;->put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    goto/16 :goto_1ed

    .line 204
    :cond_60
    instance-of p1, p2, Ljava/lang/Character;

    const/16 v2, 0x43

    if-eqz p1, :cond_7b

    .line 205
    iget-object p1, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->annotation:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    check-cast p2, Ljava/lang/Character;

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result p2

    invoke-virtual {v0, p2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantInteger(I)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p2

    iget p2, p2, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    invoke-virtual {p1, v2, p2}, Lzeroaicy/org/objectweb/asm/ByteVector;->put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    goto/16 :goto_1ed

    .line 206
    :cond_7b
    instance-of p1, p2, Ljava/lang/Short;

    const/16 v3, 0x53

    if-eqz p1, :cond_96

    .line 207
    iget-object p1, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->annotation:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result p2

    invoke-virtual {v0, p2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantInteger(I)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p2

    iget p2, p2, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    invoke-virtual {p1, v3, p2}, Lzeroaicy/org/objectweb/asm/ByteVector;->put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    goto/16 :goto_1ed

    .line 208
    :cond_96
    instance-of p1, p2, Lzeroaicy/org/objectweb/asm/Type;

    if-eqz p1, :cond_af

    .line 209
    iget-object p1, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->annotation:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    check-cast p2, Lzeroaicy/org/objectweb/asm/Type;

    invoke-virtual {p2}, Lzeroaicy/org/objectweb/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p2

    const/16 v0, 0x63

    invoke-virtual {p1, v0, p2}, Lzeroaicy/org/objectweb/asm/ByteVector;->put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    goto/16 :goto_1ed

    .line 210
    :cond_af
    instance-of p1, p2, [B

    const/16 v4, 0x5b

    const/4 v5, 0x0

    if-eqz p1, :cond_d6

    .line 211
    move-object p1, p2

    check-cast p1, [B

    .line 212
    iget-object p2, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->annotation:Lzeroaicy/org/objectweb/asm/ByteVector;

    array-length v1, p1

    invoke-virtual {p2, v4, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 214
    :goto_bf
    array-length p2, p1

    if-lt v5, p2, :cond_c4

    goto/16 :goto_1ed

    .line 213
    :cond_c4
    aget-byte p2, p1, v5

    .line 214
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->annotation:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v2, p2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantInteger(I)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p2

    iget p2, p2, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    invoke-virtual {v1, v0, p2}, Lzeroaicy/org/objectweb/asm/ByteVector;->put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    add-int/lit8 v5, v5, 0x1

    goto :goto_bf

    .line 216
    :cond_d6
    instance-of p1, p2, [Z

    if-eqz p1, :cond_fa

    .line 217
    move-object p1, p2

    check-cast p1, [Z

    .line 218
    iget-object p2, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->annotation:Lzeroaicy/org/objectweb/asm/ByteVector;

    array-length v0, p1

    invoke-virtual {p2, v4, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 220
    :goto_e3
    array-length p2, p1

    if-lt v5, p2, :cond_e8

    goto/16 :goto_1ed

    .line 219
    :cond_e8
    aget-boolean p2, p1, v5

    .line 220
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->annotation:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v2, p2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantInteger(I)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p2

    iget p2, p2, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    invoke-virtual {v0, v1, p2}, Lzeroaicy/org/objectweb/asm/ByteVector;->put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    add-int/lit8 v5, v5, 0x1

    goto :goto_e3

    .line 222
    :cond_fa
    instance-of p1, p2, [S

    if-eqz p1, :cond_11e

    .line 223
    move-object p1, p2

    check-cast p1, [S

    .line 224
    iget-object p2, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->annotation:Lzeroaicy/org/objectweb/asm/ByteVector;

    array-length v0, p1

    invoke-virtual {p2, v4, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 226
    :goto_107
    array-length p2, p1

    if-lt v5, p2, :cond_10c

    goto/16 :goto_1ed

    .line 225
    :cond_10c
    aget-short p2, p1, v5

    .line 226
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->annotation:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v1, p2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantInteger(I)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p2

    iget p2, p2, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    invoke-virtual {v0, v3, p2}, Lzeroaicy/org/objectweb/asm/ByteVector;->put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    add-int/lit8 v5, v5, 0x1

    goto :goto_107

    .line 228
    :cond_11e
    instance-of p1, p2, [C

    if-eqz p1, :cond_142

    .line 229
    move-object p1, p2

    check-cast p1, [C

    .line 230
    iget-object p2, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->annotation:Lzeroaicy/org/objectweb/asm/ByteVector;

    array-length v0, p1

    invoke-virtual {p2, v4, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 232
    :goto_12b
    array-length p2, p1

    if-lt v5, p2, :cond_130

    goto/16 :goto_1ed

    .line 231
    :cond_130
    aget-char p2, p1, v5

    .line 232
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->annotation:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v1, p2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantInteger(I)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p2

    iget p2, p2, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    invoke-virtual {v0, v2, p2}, Lzeroaicy/org/objectweb/asm/ByteVector;->put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    add-int/lit8 v5, v5, 0x1

    goto :goto_12b

    .line 234
    :cond_142
    instance-of p1, p2, [I

    if-eqz p1, :cond_168

    .line 235
    move-object p1, p2

    check-cast p1, [I

    .line 236
    iget-object p2, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->annotation:Lzeroaicy/org/objectweb/asm/ByteVector;

    array-length v0, p1

    invoke-virtual {p2, v4, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 238
    :goto_14f
    array-length p2, p1

    if-lt v5, p2, :cond_154

    goto/16 :goto_1ed

    .line 237
    :cond_154
    aget p2, p1, v5

    .line 238
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->annotation:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v1, p2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantInteger(I)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p2

    iget p2, p2, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    const/16 v1, 0x49

    invoke-virtual {v0, v1, p2}, Lzeroaicy/org/objectweb/asm/ByteVector;->put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    add-int/lit8 v5, v5, 0x1

    goto :goto_14f

    .line 240
    :cond_168
    instance-of p1, p2, [J

    if-eqz p1, :cond_18e

    .line 241
    move-object p1, p2

    check-cast p1, [J

    .line 242
    iget-object p2, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->annotation:Lzeroaicy/org/objectweb/asm/ByteVector;

    array-length v0, p1

    invoke-virtual {p2, v4, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 244
    :goto_175
    array-length p2, p1

    if-lt v5, p2, :cond_17a

    goto/16 :goto_1ed

    .line 243
    :cond_17a
    aget-wide v0, p1, v5

    .line 244
    iget-object p2, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->annotation:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v2, v0, v1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantLong(J)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v0

    iget v0, v0, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    const/16 v1, 0x4a

    invoke-virtual {p2, v1, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    add-int/lit8 v5, v5, 0x1

    goto :goto_175

    .line 246
    :cond_18e
    instance-of p1, p2, [F

    if-eqz p1, :cond_1b3

    .line 247
    move-object p1, p2

    check-cast p1, [F

    .line 248
    iget-object p2, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->annotation:Lzeroaicy/org/objectweb/asm/ByteVector;

    array-length v0, p1

    invoke-virtual {p2, v4, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 250
    :goto_19b
    array-length p2, p1

    if-lt v5, p2, :cond_19f

    goto :goto_1ed

    .line 249
    :cond_19f
    aget p2, p1, v5

    .line 250
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->annotation:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v1, p2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantFloat(F)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p2

    iget p2, p2, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    const/16 v1, 0x46

    invoke-virtual {v0, v1, p2}, Lzeroaicy/org/objectweb/asm/ByteVector;->put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    add-int/lit8 v5, v5, 0x1

    goto :goto_19b

    .line 252
    :cond_1b3
    instance-of p1, p2, [D

    if-eqz p1, :cond_1d8

    .line 253
    move-object p1, p2

    check-cast p1, [D

    .line 254
    iget-object p2, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->annotation:Lzeroaicy/org/objectweb/asm/ByteVector;

    array-length v0, p1

    invoke-virtual {p2, v4, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 256
    :goto_1c0
    array-length p2, p1

    if-lt v5, p2, :cond_1c4

    goto :goto_1ed

    .line 255
    :cond_1c4
    aget-wide v0, p1, v5

    .line 256
    iget-object p2, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->annotation:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v2, v0, v1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantDouble(D)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v0

    iget v0, v0, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    const/16 v1, 0x44

    invoke-virtual {p2, v1, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1c0

    .line 259
    :cond_1d8
    iget-object p1, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {p1, p2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstant(Ljava/lang/Object;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p1

    .line 260
    iget-object p2, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->annotation:Lzeroaicy/org/objectweb/asm/ByteVector;

    const-string v0, ".s.IFJDCS"

    iget v1, p1, Lzeroaicy/org/objectweb/asm/Symbol;->tag:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iget p1, p1, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    invoke-virtual {p2, v0, p1}, Lzeroaicy/org/objectweb/asm/ByteVector;->put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    :goto_1ed
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;
    .registers 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 281
    iget v0, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->numElementValuePairs:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->numElementValuePairs:I

    .line 282
    iget-boolean v0, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->useNamedValues:Z

    if-eqz v0, :cond_15

    .line 283
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->annotation:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v2, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 286
    :cond_15
    iget-object p1, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->annotation:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p2

    const/16 v0, 0x40

    invoke-virtual {p1, v0, p2}, Lzeroaicy/org/objectweb/asm/ByteVector;->put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 287
    iget-object p1, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget-object p2, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->annotation:Lzeroaicy/org/objectweb/asm/ByteVector;

    const/4 v0, 0x0

    move-object v2, v0

    check-cast v2, Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    new-instance v2, Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    invoke-direct {v2, p1, v1, p2, v0}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;-><init>(Lzeroaicy/org/objectweb/asm/SymbolTable;ZLzeroaicy/org/objectweb/asm/ByteVector;Lzeroaicy/org/objectweb/asm/AnnotationWriter;)V

    return-object v2
.end method

.method public visitArray(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;
    .registers 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 294
    iget v0, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->numElementValuePairs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->numElementValuePairs:I

    .line 295
    iget-boolean v0, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->useNamedValues:Z

    if-eqz v0, :cond_15

    .line 296
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->annotation:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v1, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 305
    :cond_15
    iget-object p1, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->annotation:Lzeroaicy/org/objectweb/asm/ByteVector;

    const/16 v0, 0x5b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 306
    iget-object p1, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->annotation:Lzeroaicy/org/objectweb/asm/ByteVector;

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    new-instance v3, Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    invoke-direct {v3, p1, v1, v0, v2}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;-><init>(Lzeroaicy/org/objectweb/asm/SymbolTable;ZLzeroaicy/org/objectweb/asm/ByteVector;Lzeroaicy/org/objectweb/asm/AnnotationWriter;)V

    return-object v3
.end method

.method public visitEnd()V
    .registers 5
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

    if-eq v0, v1, :cond_17

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

    :cond_17
    return-void
.end method

.method public visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
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

    if-eqz v0, :cond_15

    .line 270
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->annotation:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v1, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 272
    :cond_15
    iget-object p1, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->annotation:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p2

    const/16 v0, 0x65

    invoke-virtual {p1, v0, p2}, Lzeroaicy/org/objectweb/asm/ByteVector;->put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object p1

    iget-object p2, p0, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {p2, p3}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    return-void
.end method
