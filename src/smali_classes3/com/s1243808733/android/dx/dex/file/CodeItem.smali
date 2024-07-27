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
    .registers 8

    const/4 v1, 0x0

    .line 78
    const/4 v0, 0x4

    const/4 v2, -0x1

    invoke-direct {p0, v0, v2}, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;-><init>(II)V

    .line 80
    if-nez p1, :cond_0

    .line 81
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ref == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    if-nez p2, :cond_1

    .line 85
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "code == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_1
    if-nez p4, :cond_2

    .line 89
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "throwsList == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_2
    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->ref:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    .line 93
    iput-object p2, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->code:Lcom/s1243808733/android/dx/dex/code/DalvCode;

    .line 94
    iput-boolean p3, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->isStatic:Z

    .line 95
    iput-object p4, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->throwsList:Lcom/s1243808733/android/dx/rop/type/TypeList;

    move-object v0, v1

    .line 96
    check-cast v0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->catches:Lcom/s1243808733/android/dx/dex/file/CatchStructs;

    .line 97
    check-cast v1, Lcom/s1243808733/android/dx/dex/file/DebugInfoItem;

    iput-object v1, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->debugInfo:Lcom/s1243808733/android/dx/dex/file/DebugInfoItem;

    return-void
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
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/dex/file/DexFile;",
            "Lcom/s1243808733/android/dx/util/AnnotatedOutput;",
            ")V"
        }
    .end annotation

    .line 291
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->code:Lcom/s1243808733/android/dx/dex/code/DalvCode;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/DalvCode;->getInsns()Lcom/s1243808733/android/dx/dex/code/DalvInsnList;

    move-result-object v0

    .line 294
    :try_start_0
    invoke-virtual {v0, p2}, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;->writeTo(Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    return-void

    .line 294
    :catch_0
    move-exception v0

    .line 296
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "...while writing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "instructions for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->ref:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->toHuman()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/s1243808733/android/dex/util/ExceptionWithContext;->withContext(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/s1243808733/android/dex/util/ExceptionWithContext;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public addContents(Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/dex/file/DexFile;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

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

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->code:Lcom/s1243808733/android/dx/dex/code/DalvCode;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/dex/code/DalvCode;->hasLocals()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 113
    :cond_0
    new-instance v2, Lcom/s1243808733/android/dx/dex/file/DebugInfoItem;

    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->code:Lcom/s1243808733/android/dx/dex/code/DalvCode;

    iget-boolean v4, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->isStatic:Z

    iget-object v5, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->ref:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    invoke-direct {v2, v3, v4, v5}, Lcom/s1243808733/android/dx/dex/file/DebugInfoItem;-><init>(Lcom/s1243808733/android/dx/dex/code/DalvCode;ZLcom/s1243808733/android/dx/rop/cst/CstMethodRef;)V

    iput-object v2, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->debugInfo:Lcom/s1243808733/android/dx/dex/file/DebugInfoItem;

    .line 114
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->debugInfo:Lcom/s1243808733/android/dx/dex/file/DebugInfoItem;

    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->add(Lcom/s1243808733/android/dx/dex/file/OffsettedItem;)V

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->code:Lcom/s1243808733/android/dx/dex/code/DalvCode;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/DalvCode;->hasAnyCatches()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 118
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->code:Lcom/s1243808733/android/dx/dex/code/DalvCode;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/DalvCode;->getCatchTypes()Ljava/util/HashSet;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 119
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 121
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/CatchStructs;

    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->code:Lcom/s1243808733/android/dx/dex/code/DalvCode;

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/dex/file/CatchStructs;-><init>(Lcom/s1243808733/android/dx/dex/code/DalvCode;)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->catches:Lcom/s1243808733/android/dx/dex/file/CatchStructs;

    .line 124
    :cond_2
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->code:Lcom/s1243808733/android/dx/dex/code/DalvCode;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/DalvCode;->getInsnConstants()Ljava/util/HashSet;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 125
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    .line 118
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/type/Type;

    .line 119
    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;->intern(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/dex/file/TypeIdItem;

    goto :goto_0

    .line 124
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/Constant;

    .line 125
    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/dex/file/DexFile;->internIfAppropriate(Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    goto :goto_1
.end method

.method public debugPrint(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 158
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->ref:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->toHuman()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->code:Lcom/s1243808733/android/dx/dex/code/DalvCode;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/DalvCode;->getInsns()Lcom/s1243808733/android/dx/dex/code/DalvInsnList;

    move-result-object v0

    .line 161
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "regs: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/file/CodeItem;->getRegistersSize()I

    move-result v6

    invoke-static {v6}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "; ins: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/file/CodeItem;->getInsSize()I

    move-result v4

    invoke-static {v4}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "; outs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/file/CodeItem;->getOutsSize()I

    move-result v2

    invoke-static {v2}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v0, p1, p2, p3}, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;->debugPrint(Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 167
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->catches:Lcom/s1243808733/android/dx/dex/file/CatchStructs;

    if-eqz v1, :cond_0

    .line 170
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 171
    const-string v1, "catches"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 172
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->catches:Lcom/s1243808733/android/dx/dex/file/CatchStructs;

    invoke-virtual {v1, p1, v0}, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->debugPrint(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 175
    :cond_0
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->debugInfo:Lcom/s1243808733/android/dx/dex/file/DebugInfoItem;

    if-eqz v1, :cond_1

    .line 176
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 177
    const-string v1, "debug info"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 178
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->debugInfo:Lcom/s1243808733/android/dx/dex/file/DebugInfoItem;

    invoke-virtual {v1, p1, v0}, Lcom/s1243808733/android/dx/dex/file/DebugInfoItem;->debugPrint(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_1
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
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 103
    sget-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_CODE_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    return-object v0
.end method

.method protected place0(Lcom/s1243808733/android/dx/dex/file/Section;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/dex/file/Section;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 185
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/Section;->getFile()Lcom/s1243808733/android/dx/dex/file/DexFile;

    move-result-object v0

    .line 186
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->code:Lcom/s1243808733/android/dx/dex/code/DalvCode;

    new-instance v2, Lcom/s1243808733/android/dx/dex/file/CodeItem$100000000;

    invoke-direct {v2, p0, v0}, Lcom/s1243808733/android/dx/dex/file/CodeItem$100000000;-><init>(Lcom/s1243808733/android/dx/dex/file/CodeItem;Lcom/s1243808733/android/dx/dex/file/DexFile;)V

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/dex/code/DalvCode;->assignIndices(Lcom/s1243808733/android/dx/dex/code/DalvCode$AssignIndicesCallback;)V

    .line 203
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->catches:Lcom/s1243808733/android/dx/dex/file/CatchStructs;

    if-eqz v1, :cond_1

    .line 204
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->catches:Lcom/s1243808733/android/dx/dex/file/CatchStructs;

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->encode(Lcom/s1243808733/android/dx/dex/file/DexFile;)V

    .line 205
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->catches:Lcom/s1243808733/android/dx/dex/file/CatchStructs;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->writeSize()I

    move-result v0

    .line 216
    :goto_0
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->code:Lcom/s1243808733/android/dx/dex/code/DalvCode;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/code/DalvCode;->getInsns()Lcom/s1243808733/android/dx/dex/code/DalvInsnList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;->codeSize()I

    move-result v1

    .line 217
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    .line 218
    add-int/lit8 v1, v1, 0x1

    .line 221
    :cond_0
    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/dex/file/CodeItem;->setWriteSize(I)V

    return-void

    .line 207
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toHuman()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->ref:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->toHuman()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 132
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "CodeItem{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/CodeItem;->toHuman()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected writeTo0(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/dex/file/DexFile;",
            "Lcom/s1243808733/android/dx/util/AnnotatedOutput;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 227
    invoke-interface {p2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v3

    .line 228
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/file/CodeItem;->getRegistersSize()I

    move-result v4

    .line 229
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/file/CodeItem;->getOutsSize()I

    move-result v5

    .line 230
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/file/CodeItem;->getInsSize()I

    move-result v6

    .line 231
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->code:Lcom/s1243808733/android/dx/dex/code/DalvCode;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/DalvCode;->getInsns()Lcom/s1243808733/android/dx/dex/code/DalvInsnList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;->codeSize()I

    move-result v7

    .line 232
    and-int/lit8 v0, v7, 0x1

    if-nez v0, :cond_5

    const/4 v0, 0x0

    .line 233
    :goto_0
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->catches:Lcom/s1243808733/android/dx/dex/file/CatchStructs;

    if-nez v1, :cond_6

    const/4 v1, 0x0

    .line 234
    :goto_1
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->debugInfo:Lcom/s1243808733/android/dx/dex/file/DebugInfoItem;

    if-nez v2, :cond_7

    const/4 v2, 0x0

    .line 236
    :goto_2
    if-eqz v3, :cond_0

    .line 237
    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/CodeItem;->offsetString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const/16 v11, 0x20

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    iget-object v10, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->ref:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    invoke-virtual {v10}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->toHuman()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v8, v9}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 238
    const/4 v8, 0x2

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "  registers_size: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-static {v4}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v8, v9}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 239
    const/4 v8, 0x2

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "  ins_size:       "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-static {v6}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v8, v9}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 240
    const/4 v8, 0x2

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "  outs_size:      "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-static {v5}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v8, v9}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 241
    const/4 v8, 0x2

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "  tries_size:     "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-static {v1}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v8, v9}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 242
    const/4 v8, 0x4

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "  debug_off:      "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-static {v2}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v8, v9}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 243
    const/4 v8, 0x4

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "  insns_size:     "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-static {v7}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v8, v9}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 246
    iget-object v8, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->throwsList:Lcom/s1243808733/android/dx/rop/type/TypeList;

    invoke-interface {v8}, Lcom/s1243808733/android/dx/rop/type/TypeList;->size()I

    move-result v8

    .line 247
    if-eqz v8, :cond_0

    .line 248
    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "  throws "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    iget-object v10, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->throwsList:Lcom/s1243808733/android/dx/rop/type/TypeList;

    invoke-static {v10}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->toHuman(Lcom/s1243808733/android/dx/rop/type/TypeList;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v8, v9}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 252
    :cond_0
    invoke-interface {p2, v4}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeShort(I)V

    .line 253
    invoke-interface {p2, v6}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeShort(I)V

    .line 254
    invoke-interface {p2, v5}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeShort(I)V

    .line 255
    invoke-interface {p2, v1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeShort(I)V

    .line 256
    invoke-interface {p2, v2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 257
    invoke-interface {p2, v7}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 259
    invoke-direct {p0, p1, p2}, Lcom/s1243808733/android/dx/dex/file/CodeItem;->writeCodes(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V

    .line 261
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->catches:Lcom/s1243808733/android/dx/dex/file/CatchStructs;

    if-eqz v1, :cond_3

    .line 262
    if-eqz v0, :cond_2

    .line 263
    if-eqz v3, :cond_1

    .line 264
    const/4 v0, 0x2

    const-string v1, "  padding: 0"

    invoke-interface {p2, v0, v1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 266
    :cond_1
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeShort(I)V

    .line 269
    :cond_2
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->catches:Lcom/s1243808733/android/dx/dex/file/CatchStructs;

    invoke-virtual {v0, p1, p2}, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->writeTo(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V

    .line 272
    :cond_3
    if-eqz v3, :cond_4

    .line 277
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->debugInfo:Lcom/s1243808733/android/dx/dex/file/DebugInfoItem;

    if-eqz v0, :cond_4

    .line 278
    const/4 v0, 0x0

    const-string v1, "  debug info"

    invoke-interface {p2, v0, v1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->debugInfo:Lcom/s1243808733/android/dx/dex/file/DebugInfoItem;

    const-string v1, "    "

    invoke-virtual {v0, p1, p2, v1}, Lcom/s1243808733/android/dx/dex/file/DebugInfoItem;->annotateTo(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;Ljava/lang/String;)V

    :cond_4
    return-void

    .line 232
    :cond_5
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 233
    :cond_6
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->catches:Lcom/s1243808733/android/dx/dex/file/CatchStructs;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/file/CatchStructs;->triesSize()I

    move-result v1

    goto/16 :goto_1

    .line 234
    :cond_7
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem;->debugInfo:Lcom/s1243808733/android/dx/dex/file/DebugInfoItem;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/dex/file/DebugInfoItem;->getAbsoluteOffset()I

    move-result v2

    goto/16 :goto_2
.end method
