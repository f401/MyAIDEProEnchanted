.class final Lzeroaicy/org/objectweb/asm/FieldWriter;
.super Lzeroaicy/org/objectweb/asm/FieldVisitor;
.source "FieldWriter.java"


# instance fields
.field private final accessFlags:I

.field private constantValueIndex:I

.field private final descriptorIndex:I

.field private firstAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

.field private lastRuntimeInvisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

.field private lastRuntimeInvisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

.field private lastRuntimeVisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

.field private lastRuntimeVisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

.field private final nameIndex:I

.field private signatureIndex:I

.field private final symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;


# direct methods
.method constructor <init>(Lzeroaicy/org/objectweb/asm/SymbolTable;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 8

    .line 127
    const/high16 v0, 0x90000

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/FieldVisitor;-><init>(I)V

    .line 128
    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    .line 129
    iput p2, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->accessFlags:I

    .line 130
    invoke-virtual {p1, p3}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->nameIndex:I

    .line 131
    invoke-virtual {p1, p4}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->descriptorIndex:I

    if-eqz p5, :cond_1d

    .line 133
    invoke-virtual {p1, p5}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->signatureIndex:I

    :cond_1d
    if-eqz p6, :cond_27

    .line 136
    invoke-virtual {p1, p6}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstant(Ljava/lang/Object;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p1

    iget p1, p1, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    iput p1, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->constantValueIndex:I

    :cond_27
    return-void
.end method


# virtual methods
.method final collectAttributePrototypes(Lzeroaicy/org/objectweb/asm/Attribute$Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzeroaicy/org/objectweb/asm/Attribute$Set;",
            ")V"
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->firstAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    invoke-virtual {p1, v0}, Lzeroaicy/org/objectweb/asm/Attribute$Set;->addAttributes(Lzeroaicy/org/objectweb/asm/Attribute;)V

    return-void
.end method

.method computeFieldInfoSize()I
    .registers 6

    .line 195
    iget v0, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->constantValueIndex:I

    if-eqz v0, :cond_e

    .line 197
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    const-string v1, "ConstantValue"

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    const/16 v0, 0x10

    goto :goto_10

    :cond_e
    const/16 v0, 0x8

    .line 200
    :goto_10
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget v2, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->accessFlags:I

    iget v3, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->signatureIndex:I

    invoke-static {v1, v2, v3}, Lzeroaicy/org/objectweb/asm/Attribute;->computeAttributesSize(Lzeroaicy/org/objectweb/asm/SymbolTable;II)I

    move-result v1

    .line 201
    add-int/2addr v0, v1

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->lastRuntimeVisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->lastRuntimeInvisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->lastRuntimeVisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    iget-object v4, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->lastRuntimeInvisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    invoke-static {v1, v2, v3, v4}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->computeAnnotationsSize(Lzeroaicy/org/objectweb/asm/AnnotationWriter;Lzeroaicy/org/objectweb/asm/AnnotationWriter;Lzeroaicy/org/objectweb/asm/AnnotationWriter;Lzeroaicy/org/objectweb/asm/AnnotationWriter;)I

    move-result v1

    add-int/2addr v0, v1

    .line 207
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->firstAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    if-eqz v1, :cond_33

    .line 208
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v1, v2}, Lzeroaicy/org/objectweb/asm/Attribute;->computeAttributesSize(Lzeroaicy/org/objectweb/asm/SymbolTable;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_33
    return v0
.end method

.method putFieldInfo(Lzeroaicy/org/objectweb/asm/ByteVector;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzeroaicy/org/objectweb/asm/ByteVector;",
            ")V"
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

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

    .line 223
    :goto_15
    xor-int/lit8 v1, v1, -0x1

    iget v4, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->accessFlags:I

    and-int/2addr v1, v4

    invoke-virtual {p1, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v1

    iget v4, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->nameIndex:I

    invoke-virtual {v1, v4}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v1

    iget v4, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->descriptorIndex:I

    invoke-virtual {v1, v4}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 227
    iget v1, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->constantValueIndex:I

    if-eqz v1, :cond_2e

    const/4 v2, 0x1

    .line 230
    :cond_2e
    iget v1, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->accessFlags:I

    and-int/lit16 v3, v1, 0x1000

    if-eqz v3, :cond_38

    if-eqz v0, :cond_38

    add-int/lit8 v2, v2, 0x1

    .line 233
    :cond_38
    iget v0, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->signatureIndex:I

    if-eqz v0, :cond_3e

    add-int/lit8 v2, v2, 0x1

    :cond_3e
    const/high16 v0, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_45

    add-int/lit8 v2, v2, 0x1

    .line 239
    :cond_45
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->lastRuntimeVisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    if-eqz v0, :cond_4b

    add-int/lit8 v2, v2, 0x1

    .line 242
    :cond_4b
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->lastRuntimeInvisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    if-eqz v0, :cond_51

    add-int/lit8 v2, v2, 0x1

    .line 245
    :cond_51
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->lastRuntimeVisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    if-eqz v0, :cond_57

    add-int/lit8 v2, v2, 0x1

    .line 248
    :cond_57
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->lastRuntimeInvisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    if-eqz v0, :cond_5d

    add-int/lit8 v2, v2, 0x1

    .line 251
    :cond_5d
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->firstAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    if-eqz v0, :cond_66

    .line 252
    invoke-virtual {v0}, Lzeroaicy/org/objectweb/asm/Attribute;->getAttributeCount()I

    move-result v0

    add-int/2addr v2, v0

    .line 254
    :cond_66
    invoke-virtual {p1, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 257
    iget v0, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->constantValueIndex:I

    if-eqz v0, :cond_83

    .line 258
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    const-string v1, "ConstantValue"

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putInt(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->constantValueIndex:I

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 263
    :cond_83
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget v1, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->accessFlags:I

    iget v2, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->signatureIndex:I

    invoke-static {v0, v1, v2, p1}, Lzeroaicy/org/objectweb/asm/Attribute;->putAttributes(Lzeroaicy/org/objectweb/asm/SymbolTable;IILzeroaicy/org/objectweb/asm/ByteVector;)V

    .line 264
    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget-object v4, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->lastRuntimeVisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    iget-object v5, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->lastRuntimeInvisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    iget-object v6, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->lastRuntimeVisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    iget-object v7, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->lastRuntimeInvisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    move-object v8, p1

    invoke-static/range {v3 .. v8}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->putAnnotations(Lzeroaicy/org/objectweb/asm/SymbolTable;Lzeroaicy/org/objectweb/asm/AnnotationWriter;Lzeroaicy/org/objectweb/asm/AnnotationWriter;Lzeroaicy/org/objectweb/asm/AnnotationWriter;Lzeroaicy/org/objectweb/asm/AnnotationWriter;Lzeroaicy/org/objectweb/asm/ByteVector;)V

    .line 271
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->firstAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    if-eqz v0, :cond_a3

    .line 272
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0, v1, p1}, Lzeroaicy/org/objectweb/asm/Attribute;->putAttributes(Lzeroaicy/org/objectweb/asm/SymbolTable;Lzeroaicy/org/objectweb/asm/ByteVector;)V

    :cond_a3
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    if-eqz p2, :cond_d

    .line 147
    iget-object p2, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->lastRuntimeVisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    invoke-static {p2, p1, v0}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->create(Lzeroaicy/org/objectweb/asm/SymbolTable;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/AnnotationWriter;)Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    move-result-object p1

    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->lastRuntimeVisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    return-object p1

    .line 150
    :cond_d
    iget-object p2, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->lastRuntimeInvisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    invoke-static {p2, p1, v0}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->create(Lzeroaicy/org/objectweb/asm/SymbolTable;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/AnnotationWriter;)Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    move-result-object p1

    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->lastRuntimeInvisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    return-object p1
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

    .line 172
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->firstAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    iput-object v0, p1, Lzeroaicy/org/objectweb/asm/Attribute;->nextAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    .line 173
    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->firstAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

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

.method public visitTypeAnnotation(ILzeroaicy/org/objectweb/asm/TypePath;Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;
    .registers 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    if-eqz p4, :cond_d

    .line 159
    iget-object p4, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->lastRuntimeVisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    invoke-static {p4, p1, p2, p3, v0}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->create(Lzeroaicy/org/objectweb/asm/SymbolTable;ILzeroaicy/org/objectweb/asm/TypePath;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/AnnotationWriter;)Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    move-result-object p1

    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->lastRuntimeVisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    return-object p1

    .line 163
    :cond_d
    iget-object p4, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->lastRuntimeInvisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    invoke-static {p4, p1, p2, p3, v0}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->create(Lzeroaicy/org/objectweb/asm/SymbolTable;ILzeroaicy/org/objectweb/asm/TypePath;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/AnnotationWriter;)Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    move-result-object p1

    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->lastRuntimeInvisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    return-object p1
.end method
