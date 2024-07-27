.class public final Lcom/s1243808733/android/dx/dex/code/DalvInsnList;
.super Lcom/s1243808733/android/dx/util/FixedSizeList;
.source "DalvInsnList.java"


# instance fields
.field private final regCount:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 78
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/util/FixedSizeList;-><init>(I)V

    .line 79
    iput p2, p0, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;->regCount:I

    return-void
.end method

.method public static makeImmutable(Ljava/util/ArrayList;I)Lcom/s1243808733/android/dx/dex/code/DalvInsnList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/s1243808733/android/dx/dex/code/DalvInsn;",
            ">;I)",
            "Lcom/s1243808733/android/dx/dex/code/DalvInsnList;"
        }
    .end annotation

    .line 59
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 60
    new-instance v3, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;

    invoke-direct {v3, v2, p1}, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;-><init>(II)V

    .line 62
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 66
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;->setImmutable()V

    .line 67
    return-object v3

    .line 63
    :cond_0
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    invoke-virtual {v3, v1, v0}, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;->set(ILcom/s1243808733/android/dx/dex/code/DalvInsn;)V

    .line 62
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public codeSize()I
    .registers 2

    .line 112
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;->size()I

    move-result v0

    .line 114
    if-nez v0, :cond_0

    .line 115
    const/4 v0, 0x0

    .line 119
    :goto_0
    return v0

    .line 118
    :cond_0
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;->get(I)Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getNextAddress()I

    move-result v0

    goto :goto_0
.end method

.method public debugPrint(Ljava/io/OutputStream;Ljava/lang/String;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 277
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 278
    invoke-virtual {p0, v0, p2, p3}, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;->debugPrint(Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 281
    :try_start_0
    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    return-void

    .line 281
    :catch_0
    move-exception v0

    .line 283
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public debugPrint(Ljava/io/Writer;Ljava/lang/String;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Writer;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 243
    new-instance v2, Lcom/s1243808733/android/dx/util/IndentingWriter;

    invoke-direct {v2, p1, v0, p2}, Lcom/s1243808733/android/dx/util/IndentingWriter;-><init>(Ljava/io/Writer;ILjava/lang/String;)V

    .line 244
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;->size()I

    move-result v3

    move v1, v0

    .line 247
    :goto_0
    if-lt v1, v3, :cond_0

    .line 262
    :try_start_0
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/util/IndentingWriter;->flush()V

    .line 264
    return-void

    .line 248
    :cond_0
    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;->get0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    .line 249
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->codeSize()I

    move-result v4

    if-nez v4, :cond_1

    if-eqz p3, :cond_3

    .line 252
    :cond_1
    const-string v4, ""

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, p3}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->listingString(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    .line 257
    :goto_1
    if-eqz v0, :cond_2

    .line 258
    invoke-virtual {v2, v0}, Lcom/s1243808733/android/dx/util/IndentingWriter;->write(Ljava/lang/String;)V

    .line 247
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 254
    :cond_3
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 262
    :catch_0
    move-exception v0

    .line 264
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public get(I)Lcom/s1243808733/android/dx/dex/code/DalvInsn;
    .registers 3

    .line 91
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;->get0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    return-object v0
.end method

.method public getOutsSize()I
    .registers 9

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 191
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;->size()I

    move-result v6

    move v5, v2

    move v4, v2

    .line 194
    :goto_0
    if-lt v5, v6, :cond_0

    .line 231
    return v4

    .line 195
    :cond_0
    invoke-virtual {p0, v5}, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;->get0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    .line 198
    instance-of v1, v0, Lcom/s1243808733/android/dx/dex/code/CstInsn;

    if-eqz v1, :cond_3

    move-object v1, v0

    .line 199
    check-cast v1, Lcom/s1243808733/android/dx/dex/code/CstInsn;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/code/CstInsn;->getConstant()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v1

    .line 200
    instance-of v7, v1, Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;

    if-eqz v7, :cond_2

    .line 201
    check-cast v1, Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;

    .line 202
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getOpcode()Lcom/s1243808733/android/dx/dex/code/Dop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/Dop;->getFamily()I

    move-result v0

    const/16 v7, 0x71

    if-eq v0, v7, :cond_1

    move v0, v2

    .line 204
    :goto_1
    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;->getParameterWordCount(Z)I

    move-result v0

    .line 226
    :goto_2
    if-le v0, v4, :cond_6

    .line 194
    :goto_3
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v4, v0

    goto :goto_0

    :cond_1
    move v0, v3

    .line 202
    goto :goto_1

    .line 205
    :cond_2
    instance-of v0, v1, Lcom/s1243808733/android/dx/rop/cst/CstCallSiteRef;

    if-eqz v0, :cond_7

    .line 206
    check-cast v1, Lcom/s1243808733/android/dx/rop/cst/CstCallSiteRef;

    .line 207
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/cst/CstCallSiteRef;->getPrototype()Lcom/s1243808733/android/dx/rop/type/Prototype;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Prototype;->getParameterTypes()Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->getWordCount()I

    move-result v0

    goto :goto_2

    .line 209
    :cond_3
    instance-of v1, v0, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;

    if-eqz v1, :cond_5

    .line 210
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getOpcode()Lcom/s1243808733/android/dx/dex/code/Dop;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/code/Dop;->getFamily()I

    move-result v1

    const/16 v7, 0xfa

    if-eq v1, v7, :cond_4

    .line 211
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Expecting invoke-polymorphic"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_4
    check-cast v0, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;

    .line 219
    invoke-virtual {v0, v3}, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->getConstant(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;

    .line 220
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;->getPrototype()Lcom/s1243808733/android/dx/rop/type/Prototype;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Prototype;->getParameterTypes()Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->getWordCount()I

    move-result v0

    .line 221
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    move v0, v4

    .line 223
    goto :goto_3

    :cond_6
    move v0, v4

    goto :goto_3

    :cond_7
    move v0, v2

    goto :goto_2
.end method

.method public getRegistersSize()I
    .registers 2

    .line 180
    iget v0, p0, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;->regCount:I

    return v0
.end method

.method public set(ILcom/s1243808733/android/dx/dex/code/DalvInsn;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/s1243808733/android/dx/dex/code/DalvInsn;",
            ")V"
        }
    .end annotation

    .line 101
    invoke-virtual {p0, p1, p2}, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;->set0(ILjava/lang/Object;)V

    return-void
.end method

.method public writeTo(Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/util/AnnotatedOutput;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    .line 129
    invoke-interface {p1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->getCursor()I

    move-result v3

    .line 130
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;->size()I

    move-result v4

    .line 132
    invoke-interface {p1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-interface {p1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->isVerbose()Z

    move-result v5

    move v2, v1

    .line 135
    :goto_0
    if-lt v2, v4, :cond_1

    .line 155
    :cond_0
    :goto_1
    if-lt v1, v4, :cond_6

    .line 166
    invoke-interface {p1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->getCursor()I

    move-result v0

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    .line 167
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;->codeSize()I

    move-result v1

    if-eq v0, v1, :cond_7

    .line 168
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "write length mismatch; expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;->codeSize()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " but actually wrote "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 136
    :cond_1
    invoke-virtual {p0, v2}, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;->get0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    .line 137
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->codeSize()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    .line 138
    if-nez v6, :cond_2

    if-eqz v5, :cond_4

    .line 141
    :cond_2
    const-string v7, "  "

    invoke-interface {p1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->getAnnotationWidth()I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {v0, v7, v8, v9}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->listingString(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    .line 147
    :goto_2
    if-eqz v0, :cond_5

    .line 148
    invoke-interface {p1, v6, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 135
    :cond_3
    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 144
    :cond_4
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    goto :goto_2

    .line 149
    :cond_5
    if-eqz v6, :cond_3

    .line 150
    const-string v0, ""

    invoke-interface {p1, v6, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    goto :goto_3

    .line 156
    :cond_6
    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;->get0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    .line 158
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->writeTo(Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    .line 158
    :catch_0
    move-exception v1

    .line 160
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "...while writing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/s1243808733/android/dex/util/ExceptionWithContext;->withContext(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/s1243808733/android/dex/util/ExceptionWithContext;

    move-result-object v0

    throw v0

    .line 168
    :cond_7
    return-void
.end method
