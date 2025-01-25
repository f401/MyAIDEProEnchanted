.class public final Lcom/s1243808733/android/dx/dex/file/CodeItem;
.super Lcom/s1243808733/android/dx/dex/file/OffsettedItem;
.source "CodeItem.java"


# static fields
.field private static final ALIGNMENT:I = 0x4

.field private static final HEADER_SIZE:I = 0x10


# instance fields
.field private catches:Lcom/s1243808733/android/dx/dex/file/CatchStructs;

.field private final code:Lcom/s1243808733/android/dx/dex/code/DalvCode;

.field private debugInfo:Lcom/s1243808733/android/dx/dex/file/DebugInfoItem;

.field private final isStatic:Z

.field private final ref:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

.field private final throwsList:Lcom/s1243808733/android/dx/rop/type/TypeList;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;Lcom/s1243808733/android/dx/dex/code/DalvCode;ZLcom/s1243808733/android/dx/rop/type/TypeList;)V
    .registers 7

    .line 78
    const/4 v0, 0x4

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;-><init>(II)V

    if-eqz p1, :cond_29

    if-eqz p2, :cond_21

    if-eqz p4, :cond_19

    .line 92
    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->ref:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    .line 93
    iput-object p2, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->code:Lcom/s1243808733/android/dx/dex/code/DalvCode;

    .line 94
    iput-boolean p3, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->isStatic:Z

    .line 95
    iput-object p4, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->throwsList:Lcom/s1243808733/android/dx/rop/type/TypeList;

    .line 96
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->catches:Lcom/s1243808733/android/dx/dex/file/CatchStructs;

    .line 97
    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->debugInfo:Lcom/s1243808733/android/dx/dex/file/DebugInfoItem;

    return-void

    .line 89
    :cond_19
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "throwsList == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 85
    :cond_21
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "code == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 81
    :cond_29
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "ref == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getInsSize()I
    .registers 3

    .line 307
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->ref:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    iget-boolean v1, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->isStatic:Z

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->getParameterWordCount(Z)I

    move-result v0

    return v0
.end method

.method private getOutsSize()I
    .registers 2

    .line 316
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->code:Lcom/s1243808733/android/dx/dex/code/DalvCode;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/DalvCode;->getInsns()Lcom/s1243808733/android/dx/dex/code/DalvInsnList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;->getOutsSize()I

    move-result v0

    return v0
.end method

.method private getRegistersSize()I
    .registers 2

    .line 325
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->code:Lcom/s1243808733/android/dx/dex/code/DalvCode;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/DalvCode;->getInsns()Lcom/s1243808733/android/dx/dex/code/DalvInsnList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;->getRegistersSize()I

    move-result v0

    return v0
.end method

.method private writeCodes(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
    .registers 4

    .line 291
    iget-object p1, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->code:Lcom/s1243808733/android/dx/dex/code/DalvCode;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/DalvCode;->getInsns()Lcom/s1243808733/android/dx/dex/code/DalvInsnList;

    move-result-object p1

    .line 294
    :try_start_6
    invoke-virtual {p1, p2}, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;->writeTo(Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p1

    .line 296
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "...while writing instructions for "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->ref:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    .line 297
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->toHuman()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 296
    invoke-static {p1, p2}, Lcom/s1243808733/android/dex/util/ExceptionWithContext;->withContext(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/s1243808733/android/dex/util/ExceptionWithContext;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public addContents(Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .registers 8

    .line 109
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getByteData()Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    move-result-object v0

    .line 110
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getTypeIds()Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;

    move-result-object v1

    .line 112
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->code:Lcom/s1243808733/android/dx/dex/code/DalvCode;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/dex/code/DalvCode;->hasPositions()Z

    move-result v2

    if-nez v2, :cond_18

    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->code:Lcom/s1243808733/android/dx/dex/code/DalvCode;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/dex/code/DalvCode;->hasLocals()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 113
    :cond_18
    new-instance v2, Lcom/s1243808733/android/dx/dex/file/DebugInfoItem;

    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->code:Lcom/s1243808733/android/dx/dex/code/DalvCode;

    iget-boolean v4, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->isStatic:Z

    iget-object v5, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->ref:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    invoke-direct {v2, v3, v4, v5}, Lcom/s1243808733/android/dx/dex/file/DebugInfoItem;-><init>(Lcom/s1243808733/android/dx/dex/code/DalvCode;ZLcom/s1243808733/android/dx/rop/cst/CstMethodRef;)V

    iput-object v2, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->debugInfo:Lcom/s1243808733/android/dx/dex/file/DebugInfoItem;

    .line 114
    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->add(Lcom/s1243808733/android/dx/dex/file/OffsettedItem;)V

    .line 117
    :cond_28
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->code:Lcom/s1243808733/android/dx/dex/code/DalvCode;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/DalvCode;->hasAnyCatches()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 118
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->code:Lcom/s1243808733/android/dx/dex/code/DalvCode;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/DalvCode;->getCatchTypes()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/s1243808733/android/dx/rop/type/Type;

    .line 119
    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;->intern(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/dex/file/TypeIdItem;

    goto :goto_3a

    .line 121
    :cond_4a
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;

    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->code:Lcom/s1243808733/android/dx/dex/code/DalvCode;

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/dex/file/CatchStructs;-><init>(Lcom/s1243808733/android/dx/dex/code/DalvCode;)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->catches:Lcom/s1243808733/android/dx/dex/file/CatchStructs;

    .line 124
    :cond_53
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->code:Lcom/s1243808733/android/dx/dex/code/DalvCode;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/DalvCode;->getInsnConstants()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/rop/cst/Constant;

    .line 125
    invoke-virtual {p1, v1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->internIfAppropriate(Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    goto :goto_5d

    :cond_6d
    return-void
.end method

.method public debugPrint(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 7

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->ref:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->toHuman()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->code:Lcom/s1243808733/android/dx/dex/code/DalvCode;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/DalvCode;->getInsns()Lcom/s1243808733/android/dx/dex/code/DalvInsnList;

    move-result-object v0

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "regs: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/file/CodeItem;->getRegistersSize()I

    move-result v2

    invoke-static {v2}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; ins: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/file/CodeItem;->getInsSize()I

    move-result v2

    invoke-static {v2}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; outs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/file/CodeItem;->getOutsSize()I

    move-result v2

    invoke-static {v2}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 161
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v0, p1, p2, p3}, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;->debugPrint(Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 167
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 169
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->catches:Lcom/s1243808733/android/dx/dex/file/CatchStructs;

    if-eqz v0, :cond_7e

    .line 170
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 171
    const-string v0, "catches"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->catches:Lcom/s1243808733/android/dx/dex/file/CatchStructs;

    invoke-virtual {v0, p1, p3}, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->debugPrint(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 175
    :cond_7e
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->debugInfo:Lcom/s1243808733/android/dx/dex/file/DebugInfoItem;

    if-eqz v0, :cond_8f

    .line 176
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 177
    const-string p2, "debug info"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 178
    iget-object p2, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->debugInfo:Lcom/s1243808733/android/dx/dex/file/DebugInfoItem;

    invoke-virtual {p2, p1, p3}, Lcom/s1243808733/android/dx/dex/file/DebugInfoItem;->debugPrint(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_8f
    return-void
.end method

.method public getRef()Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;
    .registers 2

    .line 147
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->ref:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    return-object v0
.end method

.method public itemType()Lcom/s1243808733/android/dx/dex/file/ItemType;
    .registers 2

    .line 103
    sget-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_CODE_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    return-object v0
.end method

.method protected place0(Lcom/s1243808733/android/dx/dex/file/Section;I)V
    .registers 4

    .line 185
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/Section;->getFile()Lcom/s1243808733/android/dx/dex/file/DexFile;

    move-result-object p1

    .line 192
    iget-object p2, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->code:Lcom/s1243808733/android/dx/dex/code/DalvCode;

    new-instance v0, Lcom/s1243808733/android/dx/dex/file/CodeItem$1;

    invoke-direct {v0, p0, p1}, Lcom/s1243808733/android/dx/dex/file/CodeItem$1;-><init>(Lcom/s1243808733/android/dx/dex/file/CodeItem;Lcom/s1243808733/android/dx/dex/file/DexFile;)V

    invoke-virtual {p2, v0}, Lcom/s1243808733/android/dx/dex/code/DalvCode;->assignIndices(Lcom/s1243808733/android/dx/dex/code/DalvCode$AssignIndicesCallback;)V

    .line 203
    iget-object p2, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->catches:Lcom/s1243808733/android/dx/dex/file/CatchStructs;

    if-eqz p2, :cond_1c

    .line 204
    invoke-virtual {p2, p1}, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->encode(Lcom/s1243808733/android/dx/dex/file/DexFile;)V

    .line 205
    iget-object p1, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->catches:Lcom/s1243808733/android/dx/dex/file/CatchStructs;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->writeSize()I

    move-result p1

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x0

    .line 216
    :goto_1d
    iget-object p2, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->code:Lcom/s1243808733/android/dx/dex/code/DalvCode;

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/dex/code/DalvCode;->getInsns()Lcom/s1243808733/android/dx/dex/code/DalvInsnList;

    move-result-object p2

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;->codeSize()I

    move-result p2

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_2d

    add-int/lit8 p2, p2, 0x1

    .line 221
    :cond_2d
    mul-int/lit8 p2, p2, 0x2

    add-int/lit8 p2, p2, 0x10

    add-int/2addr p2, p1

    invoke-virtual {p0, p2}, Lcom/s1243808733/android/dx/dex/file/CodeItem;->setWriteSize(I)V

    return-void
.end method

.method public toHuman()Ljava/lang/String;
    .registers 2

    .line 138
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->ref:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->toHuman()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CodeItem{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/CodeItem;->toHuman()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected writeTo0(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
    .registers 16

    .line 227
    invoke-interface {p2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v0

    .line 228
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/file/CodeItem;->getRegistersSize()I

    move-result v1

    .line 229
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/file/CodeItem;->getOutsSize()I

    move-result v2

    .line 230
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/file/CodeItem;->getInsSize()I

    move-result v3

    .line 231
    iget-object v4, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->code:Lcom/s1243808733/android/dx/dex/code/DalvCode;

    invoke-virtual {v4}, Lcom/s1243808733/android/dx/dex/code/DalvCode;->getInsns()Lcom/s1243808733/android/dx/dex/code/DalvInsnList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;->codeSize()I

    move-result v4

    and-int/lit8 v5, v4, 0x1

    const/4 v6, 0x0

    if-eqz v5, :cond_21

    const/4 v5, 0x1

    goto :goto_22

    :cond_21
    const/4 v5, 0x0

    .line 233
    :goto_22
    iget-object v7, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->catches:Lcom/s1243808733/android/dx/dex/file/CatchStructs;

    if-nez v7, :cond_28

    const/4 v7, 0x0

    goto :goto_2c

    :cond_28
    invoke-virtual {v7}, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->triesSize()I

    move-result v7

    .line 234
    :goto_2c
    iget-object v8, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->debugInfo:Lcom/s1243808733/android/dx/dex/file/DebugInfoItem;

    if-nez v8, :cond_32

    const/4 v8, 0x0

    goto :goto_36

    :cond_32
    invoke-virtual {v8}, Lcom/s1243808733/android/dx/dex/file/DebugInfoItem;->getAbsoluteOffset()I

    move-result v8

    :goto_36
    const/4 v9, 0x2

    if-eqz v0, :cond_f8

    .line 237
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/CodeItem;->offsetString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v11, 0x20

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->ref:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    invoke-virtual {v11}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->toHuman()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p2, v6, v10}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 238
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "  registers_size: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p2, v9, v10}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 239
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "  ins_size:       "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p2, v9, v10}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 240
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "  outs_size:      "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p2, v9, v10}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 241
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "  tries_size:     "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p2, v9, v10}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 242
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "  debug_off:      "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x4

    invoke-interface {p2, v11, v10}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 243
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v12, "  insns_size:     "

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p2, v11, v10}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 246
    iget-object v10, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->throwsList:Lcom/s1243808733/android/dx/rop/type/TypeList;

    invoke-interface {v10}, Lcom/s1243808733/android/dx/rop/type/TypeList;->size()I

    move-result v10

    if-eqz v10, :cond_f8

    .line 248
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "  throws "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->throwsList:Lcom/s1243808733/android/dx/rop/type/TypeList;

    invoke-static {v11}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->toHuman(Lcom/s1243808733/android/dx/rop/type/TypeList;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p2, v6, v10}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 252
    :cond_f8
    invoke-interface {p2, v1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeShort(I)V

    .line 253
    invoke-interface {p2, v3}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeShort(I)V

    .line 254
    invoke-interface {p2, v2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeShort(I)V

    .line 255
    invoke-interface {p2, v7}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeShort(I)V

    .line 256
    invoke-interface {p2, v8}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 257
    invoke-interface {p2, v4}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 259
    invoke-direct {p0, p1, p2}, Lcom/s1243808733/android/dx/dex/file/CodeItem;->writeCodes(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V

    .line 261
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->catches:Lcom/s1243808733/android/dx/dex/file/CatchStructs;

    if-eqz v1, :cond_122

    if-eqz v5, :cond_11d

    if-eqz v0, :cond_11a

    .line 264
    const-string v1, "  padding: 0"

    invoke-interface {p2, v9, v1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 266
    :cond_11a
    invoke-interface {p2, v6}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeShort(I)V

    .line 269
    :cond_11d
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->catches:Lcom/s1243808733/android/dx/dex/file/CatchStructs;

    invoke-virtual {v1, p1, p2}, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->writeTo(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V

    :cond_122
    if-eqz v0, :cond_134

    .line 277
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->debugInfo:Lcom/s1243808733/android/dx/dex/file/DebugInfoItem;

    if-eqz v0, :cond_134

    .line 278
    const-string v0, "  debug info"

    invoke-interface {p2, v6, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->debugInfo:Lcom/s1243808733/android/dx/dex/file/DebugInfoItem;

    const-string v1, "    "

    invoke-virtual {v0, p1, p2, v1}, Lcom/s1243808733/android/dx/dex/file/DebugInfoItem;->annotateTo(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;Ljava/lang/String;)V

    :cond_134
    return-void
.end method
