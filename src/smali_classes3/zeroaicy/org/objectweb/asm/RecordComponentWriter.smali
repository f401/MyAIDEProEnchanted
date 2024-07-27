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

    move-result v0

    iput v0, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->nameIndex:I

    .line 100
    invoke-virtual {p1, p3}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->descriptorIndex:I

    .line 101
    if-eqz p4, :cond_0

    .line 102
    invoke-virtual {p1, p4}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->signatureIndex:I

    :cond_0
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

    .line 160
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

    if-eqz v1, :cond_0

    .line 169
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->firstAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v1, v2}, Lzeroaicy/org/objectweb/asm/Attribute;->computeAttributesSize(Lzeroaicy/org/objectweb/asm/SymbolTable;)I

    move-result v1

    add-int/2addr v0, v1

    .line 171
    :cond_0
    return v0
.end method

.method putRecordComponentInfo(Lzeroaicy/org/objectweb/asm/ByteVector;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzeroaicy/org/objectweb/asm/ByteVector;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    .line 181
    iget v0, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->nameIndex:I

    invoke-virtual {p1, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget v2, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->descriptorIndex:I

    invoke-virtual {v0, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 185
    iget v0, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->signatureIndex:I

    if-eqz v0, :cond_6

    .line 186
    const/4 v0, 0x1

    .line 188
    :goto_0
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->lastRuntimeVisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    if-eqz v2, :cond_0

    .line 189
    add-int/lit8 v0, v0, 0x1

    .line 191
    :cond_0
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->lastRuntimeInvisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    if-eqz v2, :cond_1

    .line 192
    add-int/lit8 v0, v0, 0x1

    .line 194
    :cond_1
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->lastRuntimeVisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    if-eqz v2, :cond_2

    .line 195
    add-int/lit8 v0, v0, 0x1

    .line 197
    :cond_2
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->lastRuntimeInvisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    if-eqz v2, :cond_3

    .line 198
    add-int/lit8 v0, v0, 0x1

    .line 200
    :cond_3
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->firstAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    if-eqz v2, :cond_4

    .line 201
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->firstAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    invoke-virtual {v2}, Lzeroaicy/org/objectweb/asm/Attribute;->getAttributeCount()I

    move-result v2

    add-int/2addr v0, v2

    .line 203
    :cond_4
    invoke-virtual {p1, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 204
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget v2, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->signatureIndex:I

    invoke-static {v0, v1, v2, p1}, Lzeroaicy/org/objectweb/asm/Attribute;->putAttributes(Lzeroaicy/org/objectweb/asm/SymbolTable;IILzeroaicy/org/objectweb/asm/ByteVector;)V

    .line 205
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->lastRuntimeVisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->lastRuntimeInvisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->lastRuntimeVisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    iget-object v4, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->lastRuntimeInvisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->putAnnotations(Lzeroaicy/org/objectweb/asm/SymbolTable;Lzeroaicy/org/objectweb/asm/AnnotationWriter;Lzeroaicy/org/objectweb/asm/AnnotationWriter;Lzeroaicy/org/objectweb/asm/AnnotationWriter;Lzeroaicy/org/objectweb/asm/AnnotationWriter;Lzeroaicy/org/objectweb/asm/ByteVector;)V

    .line 212
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->firstAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    if-eqz v0, :cond_5

    .line 213
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->firstAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0, v1, p1}, Lzeroaicy/org/objectweb/asm/Attribute;->putAttributes(Lzeroaicy/org/objectweb/asm/SymbolTable;Lzeroaicy/org/objectweb/asm/ByteVector;)V

    :cond_5
    return-void

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lzeroaicy/org/objectweb/asm/AnnotationVisitor;
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 112
    if-eqz p2, :cond_0

    .line 113
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->lastRuntimeVisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    invoke-static {v0, p1, v1}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->create(Lzeroaicy/org/objectweb/asm/SymbolTable;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/AnnotationWriter;)Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    move-result-object v0

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->lastRuntimeVisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    .line 116
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->lastRuntimeInvisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    invoke-static {v0, p1, v1}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->create(Lzeroaicy/org/objectweb/asm/SymbolTable;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/AnnotationWriter;)Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    move-result-object v0

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->lastRuntimeInvisibleAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

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
    .registers 7
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 124
    if-eqz p4, :cond_0

    .line 125
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->lastRuntimeVisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    invoke-static {v0, p1, p2, p3, v1}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->create(Lzeroaicy/org/objectweb/asm/SymbolTable;ILzeroaicy/org/objectweb/asm/TypePath;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/AnnotationWriter;)Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    move-result-object v0

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->lastRuntimeVisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    .line 129
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->lastRuntimeInvisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    invoke-static {v0, p1, p2, p3, v1}, Lzeroaicy/org/objectweb/asm/AnnotationWriter;->create(Lzeroaicy/org/objectweb/asm/SymbolTable;ILzeroaicy/org/objectweb/asm/TypePath;Ljava/lang/String;Lzeroaicy/org/objectweb/asm/AnnotationWriter;)Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    move-result-object v0

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/RecordComponentWriter;->lastRuntimeInvisibleTypeAnnotation:Lzeroaicy/org/objectweb/asm/AnnotationWriter;

    goto :goto_0
.end method
