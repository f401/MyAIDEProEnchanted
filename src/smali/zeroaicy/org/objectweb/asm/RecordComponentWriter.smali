.class final Lzeroaicy/org/objectweb/asm/RecordComponentWriter;
.super Lzeroaicy/org/objectweb/asm/RecordComponentVisitor;
.source "RecordComponentWriter.java"


# instance fields
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
.method constructor <init>(Lzeroaicy/org/objectweb/asm/SymbolTable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 97
    const/high16 v0, 0x90000

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/RecordComponentVisitor;-><init>(I)V

    .line 98
    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    .line 99
    invoke-virtual {p1, p2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->nameIndex:I

    .line 100
    invoke-virtual {p1, p3}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->descriptorIndex:I

    if-eqz p4, :cond_1b

    .line 102
    invoke-virtual {p1, p4}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->signatureIndex:I

    :cond_1b
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

    .line 223
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->firstAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    invoke-virtual {p1, v0}, Lzeroaicy/org/objectweb/asm/Attribute$Set;->addAttributes(Lzeroaicy/org/objectweb/asm/Attribute;)V

    return-void
.end method

.method computeRecordComponentInfoSize()I
    .registers 6

    .line 161
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    const/4 v1, 0x0

    iget v2, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->signatureIndex:I

    invoke-static {v0, v1, v2}, Lzeroaicy/org/objectweb/asm/Attribute;->computeAttributesSize(Lzeroaicy/org/objectweb/asm/SymbolTable;II)I

    move-result v0

    .line 162
    add-int/lit8 v0, v0, 0x6

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->lastRuntimeVisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->lastRuntimeInvisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->lastRuntimeVisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    iget-object v4, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->lastRuntimeInvisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    invoke-static {v1, v2, v3, v4}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->computeAnnotationsSize(Lzeroaicy/org/objectweb/asm/AnnotationWriter;Lzeroaicy/org/objectweb/asm/AnnotationWriter;Lzeroaicy/org/objectweb/asm/AnnotationWriter;Lzeroaicy/org/objectweb/asm/AnnotationWriter;)I

    move-result v1

    add-int/2addr v0, v1

    .line 168
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->firstAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    if-eqz v1, :cond_23

    .line 169
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v1, v2}, Lzeroaicy/org/objectweb/asm/Attribute;->computeAttributesSize(Lzeroaicy/org/objectweb/asm/SymbolTable;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_23
    return v0
.end method

.method putRecordComponentInfo(Lzeroaicy/org/objectweb/asm/ByteVector;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzeroaicy/org/objectweb/asm/ByteVector;",
            ")V"
        }
    .end annotation

    .line 181
    iget v0, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->nameIndex:I

    invoke-virtual {p1, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->descriptorIndex:I

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 185
    iget v0, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->signatureIndex:I

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 188
    :goto_13
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->lastRuntimeVisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    if-eqz v2, :cond_19

    add-int/lit8 v0, v0, 0x1

    .line 191
    :cond_19
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->lastRuntimeInvisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    if-eqz v2, :cond_1f

    add-int/lit8 v0, v0, 0x1

    .line 194
    :cond_1f
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->lastRuntimeVisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    if-eqz v2, :cond_25

    add-int/lit8 v0, v0, 0x1

    .line 197
    :cond_25
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->lastRuntimeInvisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    if-eqz v2, :cond_2b

    add-int/lit8 v0, v0, 0x1

    .line 200
    :cond_2b
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->firstAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    if-eqz v2, :cond_34

    .line 201
    invoke-virtual {v2}, Lzeroaicy/org/objectweb/asm/Attribute;->getAttributeCount()I

    move-result v2

    add-int/2addr v0, v2

    .line 203
    :cond_34
    invoke-virtual {p1, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 204
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget v2, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->signatureIndex:I

    invoke-static {v0, v1, v2, p1}, Lzeroaicy/org/objectweb/asm/Attribute;->putAttributes(Lzeroaicy/org/objectweb/asm/SymbolTable;IILzeroaicy/org/objectweb/asm/ByteVector;)V

    .line 205
    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget-object v4, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->lastRuntimeVisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    iget-object v5, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->lastRuntimeInvisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    iget-object v6, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->lastRuntimeVisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    iget-object v7, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->lastRuntimeInvisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    move-object v8, p1

    invoke-static/range {v3 .. v8}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->putAnnotations(Lzeroaicy/org/objectweb/asm/SymbolTable;Lzeroaicy/org/objectweb/asm/AnnotationWriter;Lzeroaicy/org/objectweb/asm/AnnotationWriter;Lzeroaicy/org/objectweb/asm/AnnotationWriter;Lzeroaicy/org/objectweb/asm/AnnotationWriter;Lzeroaicy/org/objectweb/asm/ByteVector;)V

    .line 212
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->firstAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    if-eqz v0, :cond_55

    .line 213
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0, v1, p1}, Lzeroaicy/org/objectweb/asm/Attribute;->putAttributes(Lzeroaicy/org/objectweb/asm/SymbolTable;Lzeroaicy/org/objectweb/asm/ByteVector;)V

    :cond_55
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    if-eqz p2, :cond_d

    .line 113
    iget-object p2, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->lastRuntimeVisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    invoke-static {p2, p1, v0}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->create(Lzeroaicy/org/objectweb/asm/SymbolTable;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/AnnotationWriter;)Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    move-result-object p1

    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->lastRuntimeVisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    return-object p1

    .line 116
    :cond_d
    iget-object p2, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->lastRuntimeInvisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    invoke-static {p2, p1, v0}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->create(Lzeroaicy/org/objectweb/asm/SymbolTable;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/AnnotationWriter;)Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    move-result-object p1

    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->lastRuntimeInvisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

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

    .line 138
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->firstAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    iput-object v0, p1, Lzeroaicy/org/objectweb/asm/Attribute;->nextAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    .line 139
    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->firstAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

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

    .line 125
    iget-object p4, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->lastRuntimeVisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    invoke-static {p4, p1, p2, p3, v0}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->create(Lzeroaicy/org/objectweb/asm/SymbolTable;ILzeroaicy/org/objectweb/asm/TypePath;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/AnnotationWriter;)Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    move-result-object p1

    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->lastRuntimeVisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    return-object p1

    .line 129
    :cond_d
    iget-object p4, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->lastRuntimeInvisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    invoke-static {p4, p1, p2, p3, v0}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->create(Lzeroaicy/org/objectweb/asm/SymbolTable;ILzeroaicy/org/objectweb/asm/TypePath;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/AnnotationWriter;)Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    move-result-object p1

    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->lastRuntimeInvisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    return-object p1
.end method
