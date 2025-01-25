.class final Lzeroaicy/org/objectweb/asm/ModuleWriter;
.super Lzeroaicy/org/objectweb/asm/ModuleVisitor;
.source "ModuleWriter.java"


# instance fields
.field private final exports:Lzeroaicy/org/objectweb/asm/ByteVector;

.field private exportsCount:I

.field private mainClassIndex:I

.field private final moduleFlags:I

.field private final moduleNameIndex:I

.field private final moduleVersionIndex:I

.field private final opens:Lzeroaicy/org/objectweb/asm/ByteVector;

.field private opensCount:I

.field private packageCount:I

.field private final packageIndex:Lzeroaicy/org/objectweb/asm/ByteVector;

.field private final provides:Lzeroaicy/org/objectweb/asm/ByteVector;

.field private providesCount:I

.field private final requires:Lzeroaicy/org/objectweb/asm/ByteVector;

.field private requiresCount:I

.field private final symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

.field private usesCount:I

.field private final usesIndex:Lzeroaicy/org/objectweb/asm/ByteVector;


# direct methods
.method constructor <init>(Lzeroaicy/org/objectweb/asm/SymbolTable;III)V
    .registers 6

    .line 97
    const/high16 v0, 0x90000

    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/ModuleVisitor;-><init>(I)V

    .line 98
    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    .line 99
    iput p2, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->moduleNameIndex:I

    .line 100
    iput p3, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->moduleFlags:I

    .line 101
    iput p4, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->moduleVersionIndex:I

    .line 102
    new-instance p1, Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-direct {p1}, Lzeroaicy/org/objectweb/asm/ByteVector;-><init>()V

    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->requires:Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 103
    new-instance p1, Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-direct {p1}, Lzeroaicy/org/objectweb/asm/ByteVector;-><init>()V

    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->exports:Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 104
    new-instance p1, Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-direct {p1}, Lzeroaicy/org/objectweb/asm/ByteVector;-><init>()V

    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->opens:Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 105
    new-instance p1, Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-direct {p1}, Lzeroaicy/org/objectweb/asm/ByteVector;-><init>()V

    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->usesIndex:Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 106
    new-instance p1, Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-direct {p1}, Lzeroaicy/org/objectweb/asm/ByteVector;-><init>()V

    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->provides:Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 107
    new-instance p1, Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-direct {p1}, Lzeroaicy/org/objectweb/asm/ByteVector;-><init>()V

    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->packageIndex:Lzeroaicy/org/objectweb/asm/ByteVector;

    return-void
.end method


# virtual methods
.method computeAttributesSize()I
    .registers 4

    .line 196
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    const-string v1, "Module"

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    .line 198
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->requires:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v0, v0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v0, v0, 0x16

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->exports:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v1, v1, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->opens:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v1, v1, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->usesIndex:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v1, v1, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->provides:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v1, v1, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    add-int/2addr v0, v1

    .line 200
    iget v1, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->packageCount:I

    if-lez v1, :cond_33

    .line 201
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    const-string v2, "ModulePackages"

    invoke-virtual {v1, v2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    .line 203
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->packageIndex:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v1, v1, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 205
    :cond_33
    iget v1, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->mainClassIndex:I

    if-lez v1, :cond_40

    .line 206
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    const-string v2, "ModuleMainClass"

    invoke-virtual {v1, v2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x8

    :cond_40
    return v0
.end method

.method getAttributeCount()I
    .registers 5

    .line 186
    iget v0, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->packageCount:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    iget v3, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->mainClassIndex:I

    if-lez v3, :cond_e

    const/4 v2, 0x1

    :cond_e
    add-int/2addr v0, v1

    add-int/2addr v0, v2

    return v0
.end method

.method putAttributes(Lzeroaicy/org/objectweb/asm/ByteVector;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzeroaicy/org/objectweb/asm/ByteVector;",
            ")V"
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->requires:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v0, v0, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->exports:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v1, v1, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->opens:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v2, v2, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->usesIndex:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v3, v3, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    iget-object v4, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->provides:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v4, v4, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    .line 223
    iget-object v5, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    const-string v6, "Module"

    invoke-virtual {v5, v6}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1, v5}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v5

    add-int/lit8 v0, v0, 0x10

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    add-int/2addr v0, v3

    add-int/2addr v0, v4

    invoke-virtual {v5, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putInt(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->moduleNameIndex:I

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->moduleFlags:I

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->moduleVersionIndex:I

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->requiresCount:I

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->requires:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v1, v1, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->requires:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v2, v2, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByteArray([BII)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->exportsCount:I

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->exports:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v1, v1, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->exports:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v2, v2, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    invoke-virtual {v0, v1, v3, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByteArray([BII)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->opensCount:I

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->opens:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v1, v1, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->opens:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v2, v2, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    invoke-virtual {v0, v1, v3, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByteArray([BII)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->usesCount:I

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->usesIndex:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v1, v1, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->usesIndex:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v2, v2, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    invoke-virtual {v0, v1, v3, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByteArray([BII)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->providesCount:I

    invoke-virtual {v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->provides:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v1, v1, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->provides:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v2, v2, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    invoke-virtual {v0, v1, v3, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByteArray([BII)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 239
    iget v0, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->packageCount:I

    const/4 v1, 0x2

    if-lez v0, :cond_c1

    .line 240
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    const-string v2, "ModulePackages"

    invoke-virtual {v0, v2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->packageIndex:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v2, v2, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putInt(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget v2, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->packageCount:I

    invoke-virtual {v0, v2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->packageIndex:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v2, v2, Lzeroaicy/org/objectweb/asm/ByteVector;->data:[B

    iget-object v4, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->packageIndex:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget v4, v4, Lzeroaicy/org/objectweb/asm/ByteVector;->length:I

    invoke-virtual {v0, v2, v3, v4}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByteArray([BII)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 246
    :cond_c1
    iget v0, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->mainClassIndex:I

    if-lez v0, :cond_da

    .line 247
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    const-string v2, "ModuleMainClass"

    invoke-virtual {v0, v2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object p1

    invoke-virtual {p1, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putInt(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object p1

    iget v0, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->mainClassIndex:I

    invoke-virtual {p1, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    :cond_da
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

.method public varargs visitExport(Ljava/lang/String;I[Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 132
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->exports:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v1, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantPackage(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p1

    iget p1, p1, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object p1

    invoke-virtual {p1, p2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    const/4 p1, 0x0

    if-nez p3, :cond_1a

    .line 134
    iget-object p2, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->exports:Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-virtual {p2, p1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    goto :goto_23

    .line 136
    :cond_1a
    iget-object p2, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->exports:Lzeroaicy/org/objectweb/asm/ByteVector;

    array-length v0, p3

    invoke-virtual {p2, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 138
    :goto_20
    array-length p2, p3

    if-lt p1, p2, :cond_2a

    .line 141
    :goto_23
    iget p1, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->exportsCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->exportsCount:I

    return-void

    .line 137
    :cond_2a
    aget-object p2, p3, p1

    .line 138
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->exports:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v1, p2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantModule(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p2

    iget p2, p2, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    invoke-virtual {v0, p2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    add-int/lit8 p1, p1, 0x1

    goto :goto_20
.end method

.method public visitMainClass(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 112
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p1

    iget p1, p1, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    iput p1, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->mainClassIndex:I

    return-void
.end method

.method public varargs visitOpen(Ljava/lang/String;I[Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 146
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->opens:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v1, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantPackage(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p1

    iget p1, p1, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object p1

    invoke-virtual {p1, p2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    const/4 p1, 0x0

    if-nez p3, :cond_1a

    .line 148
    iget-object p2, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->opens:Lzeroaicy/org/objectweb/asm/ByteVector;

    invoke-virtual {p2, p1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    goto :goto_23

    .line 150
    :cond_1a
    iget-object p2, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->opens:Lzeroaicy/org/objectweb/asm/ByteVector;

    array-length v0, p3

    invoke-virtual {p2, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 152
    :goto_20
    array-length p2, p3

    if-lt p1, p2, :cond_2a

    .line 155
    :goto_23
    iget p1, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->opensCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->opensCount:I

    return-void

    .line 151
    :cond_2a
    aget-object p2, p3, p1

    .line 152
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->opens:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v1, p2}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantModule(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p2

    iget p2, p2, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    invoke-virtual {v0, p2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    add-int/lit8 p1, p1, 0x1

    goto :goto_20
.end method

.method public visitPackage(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 117
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->packageIndex:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v1, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantPackage(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p1

    iget p1, p1, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 118
    iget p1, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->packageCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->packageCount:I

    return-void
.end method

.method public varargs visitProvide(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 166
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->provides:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v1, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p1

    iget p1, p1, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 167
    iget-object p1, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->provides:Lzeroaicy/org/objectweb/asm/ByteVector;

    array-length v0, p2

    invoke-virtual {p1, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    const/4 p1, 0x0

    .line 169
    :goto_14
    array-length v0, p2

    if-lt p1, v0, :cond_1e

    .line 171
    iget p1, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->providesCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->providesCount:I

    return-void

    .line 168
    :cond_1e
    aget-object v0, p2, p1

    .line 169
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->provides:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v2, v0}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object v0

    iget v0, v0, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    invoke-virtual {v1, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    add-int/lit8 p1, p1, 0x1

    goto :goto_14
.end method

.method public visitRequire(Ljava/lang/String;ILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 123
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->requires:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v1, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantModule(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p1

    iget p1, p1, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object p1

    invoke-virtual {p1, p2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    move-result-object p1

    if-nez p3, :cond_16

    const/4 p2, 0x0

    goto :goto_1c

    :cond_16
    iget-object p2, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {p2, p3}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p2

    :goto_1c
    invoke-virtual {p1, p2}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 127
    iget p1, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->requiresCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->requiresCount:I

    return-void
.end method

.method public visitUse(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 160
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->usesIndex:Lzeroaicy/org/objectweb/asm/ByteVector;

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->symbolTable:Lzeroaicy/org/objectweb/asm/SymbolTable;

    invoke-virtual {v1, p1}, Lzeroaicy/org/objectweb/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Symbol;

    move-result-object p1

    iget p1, p1, Lzeroaicy/org/objectweb/asm/Symbol;->index:I

    invoke-virtual {v0, p1}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 161
    iget p1, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->usesCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lzeroaicy/org/objectweb/asm/ModuleWriter;->usesCount:I

    return-void
.end method
