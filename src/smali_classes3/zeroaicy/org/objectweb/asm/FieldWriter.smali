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

    move-result v0

    iput v0, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->nameIndex:I

    .line 131
    invoke-virtual {p1, p4}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->descriptorIndex:I

    .line 132
    if-eqz p5, :cond_0

    .line 133
    invoke-virtual {p1, p5}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->signatureIndex:I

    .line 135
    :cond_0
    if-eqz p6, :cond_1

    .line 136
    invoke-virtual {p1, p6}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstant(Ljava/lang/Object;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v0

    iget v0, v0, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    iput v0, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->constantValueIndex:I

    :cond_1
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

    .line 193
    const/16 v0, 0x8

    .line 195
    iget v1, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->constantValueIndex:I

    if-eqz v1, :cond_0

    .line 197
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    const-string v1, "ConstantValue"

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    .line 198
    const/16 v0, 0x10

    .line 200
    :cond_0
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

    if-eqz v1, :cond_1

    .line 208
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->firstAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v1, v2}, Lzeroaicy/org/objectweb/asm/Attribute;->computeAttributesSize(Lzeroaicy/org/objectweb/asm/SymbolTable;)I

    move-result v1

    add-int/2addr v0, v1

    .line 210
    :cond_1
    return v0
.end method

.method putFieldInfo(Lzeroaicy/org/objectweb/asm/ByteVector;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzeroaicy/org/objectweb/asm/ByteVector;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 220
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->getMajorVersion()I

    move-result v0

    const/16 v3, 0x31

    if-lt v0, v3, :cond_b

    move v3, v1

    .line 222
    :goto_0
    if-eqz v3, :cond_c

    const/16 v0, 0x1000

    .line 223
    :goto_1
    xor-int/lit8 v0, v0, -0x1

    iget v4, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->accessFlags:I

    and-int/2addr v0, v4

    invoke-virtual {p1, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget v4, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->nameIndex:I

    invoke-virtual {v0, v4}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget v4, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->descriptorIndex:I

    invoke-virtual {v0, v4}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 227
    iget v0, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->constantValueIndex:I

    if-eqz v0, :cond_0

    move v1, v2

    .line 230
    :cond_0
    iget v0, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->accessFlags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    .line 231
    add-int/lit8 v1, v1, 0x1

    .line 233
    :cond_1
    iget v0, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->signatureIndex:I

    if-eqz v0, :cond_2

    .line 234
    add-int/lit8 v1, v1, 0x1

    .line 236
    :cond_2
    iget v0, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->accessFlags:I

    const/high16 v2, 0x20000

    and-int/2addr v0, v2

    if-eqz v0, :cond_3

    .line 237
    add-int/lit8 v1, v1, 0x1

    .line 239
    :cond_3
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->lastRuntimeVisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    if-eqz v0, :cond_4

    .line 240
    add-int/lit8 v1, v1, 0x1

    .line 242
    :cond_4
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->lastRuntimeInvisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    if-eqz v0, :cond_5

    .line 243
    add-int/lit8 v1, v1, 0x1

    .line 245
    :cond_5
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->lastRuntimeVisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    if-eqz v0, :cond_6

    .line 246
    add-int/lit8 v1, v1, 0x1

    .line 248
    :cond_6
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->lastRuntimeInvisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    if-eqz v0, :cond_7

    .line 249
    add-int/lit8 v1, v1, 0x1

    .line 251
    :cond_7
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->firstAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    if-eqz v0, :cond_8

    .line 252
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->firstAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    invoke-virtual {v0}, Lzeroaicy/org/objectweb/asm/Attribute;->getAttributeCount()I

    move-result v0

    add-int/2addr v1, v0

    .line 254
    :cond_8
    invoke-virtual {p1, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 257
    iget v0, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->constantValueIndex:I

    if-eqz v0, :cond_9

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
    :cond_9
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget v1, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->accessFlags:I

    iget v2, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->signatureIndex:I

    invoke-static {v0, v1, v2, p1}, Lzeroaicy/org/objectweb/asm/Attribute;->putAttributes(Lzeroaicy/org/objectweb/asm/SymbolTable;IILzeroaicy/org/objectweb/asm/ByteVector;)V

    .line 264
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->lastRuntimeVisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->lastRuntimeInvisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->lastRuntimeVisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    iget-object v4, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->lastRuntimeInvisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->putAnnotations(Lzeroaicy/org/objectweb/asm/SymbolTable;Lzeroaicy/org/objectweb/asm/AnnotationWriter;Lzeroaicy/org/objectweb/asm/AnnotationWriter;Lzeroaicy/org/objectweb/asm/AnnotationWriter;Lzeroaicy/org/objectweb/asm/AnnotationWriter;Lzeroaicy/org/objectweb/asm/ByteVector;)V

    .line 271
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->firstAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    if-eqz v0, :cond_a

    .line 272
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->firstAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0, v1, p1}, Lzeroaicy/org/objectweb/asm/Attribute;->putAttributes(Lzeroaicy/org/objectweb/asm/SymbolTable;Lzeroaicy/org/objectweb/asm/ByteVector;)V

    :cond_a
    return-void

    :cond_b
    move v3, v2

    .line 220
    goto/16 :goto_0

    :cond_c
    move v0, v1

    .line 222
    goto/16 :goto_1
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 146
    if-eqz p2, :cond_0

    .line 147
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->lastRuntimeVisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    invoke-static {v0, p1, v1}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->create(Lzeroaicy/org/objectweb/asm/SymbolTable;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/AnnotationWriter;)Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    move-result-object v0

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->lastRuntimeVisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    .line 150
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->lastRuntimeInvisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    invoke-static {v0, p1, v1}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->create(Lzeroaicy/org/objectweb/asm/SymbolTable;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/AnnotationWriter;)Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    move-result-object v0

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->lastRuntimeInvisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    goto :goto_0
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
    .registers 7
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 158
    if-eqz p4, :cond_0

    .line 159
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->lastRuntimeVisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    invoke-static {v0, p1, p2, p3, v1}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->create(Lzeroaicy/org/objectweb/asm/SymbolTable;ILzeroaicy/org/objectweb/asm/TypePath;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/AnnotationWriter;)Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    move-result-object v0

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->lastRuntimeVisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    .line 163
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->lastRuntimeInvisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    invoke-static {v0, p1, p2, p3, v1}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->create(Lzeroaicy/org/objectweb/asm/SymbolTable;ILzeroaicy/org/objectweb/asm/TypePath;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/AnnotationWriter;)Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    move-result-object v0

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/FieldWriter;->lastRuntimeInvisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    goto :goto_0
.end method
