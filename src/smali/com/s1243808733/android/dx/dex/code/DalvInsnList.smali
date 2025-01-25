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
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/s1243808733/android/dx/dex/code/DalvInsn;",
            ">;I)",
            "Lcom/s1243808733/android/dx/dex/code/DalvInsnList;"
        }
    .end annotation

    .line 59
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 60
    new-instance v1, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;

    invoke-direct {v1, v0, p1}, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;-><init>(II)V

    const/4 p1, 0x0

    :goto_a
    if-ge p1, v0, :cond_18

    .line 63
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    invoke-virtual {v1, p1, v2}, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;->set(ILcom/s1243808733/android/dx/dex/code/DalvInsn;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_a

    .line 66
    :cond_18
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;->setImmutable()V

    return-object v1
.end method


# virtual methods
.method public codeSize()I
    .registers 2

    .line 112
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;->size()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    .line 118
    :cond_8
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;->get(I)Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getNextAddress()I

    move-result v0

    return v0
.end method

.method public debugPrint(Ljava/io/OutputStream;Ljava/lang/String;Z)V
    .registers 5

    .line 277
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 278
    invoke-virtual {p0, v0, p2, p3}, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;->debugPrint(Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 281
    :try_start_8
    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p1

    .line 283
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public debugPrint(Ljava/io/Writer;Ljava/lang/String;Z)V
    .registers 8

    .line 243
    new-instance v0, Lcom/s1243808733/android/dx/util/IndentingWriter;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Lcom/s1243808733/android/dx/util/IndentingWriter;-><init>(Ljava/io/Writer;ILjava/lang/String;)V

    .line 244
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_b
    if-ge p2, p1, :cond_2c

    .line 248
    :try_start_d
    invoke-virtual {p0, p2}, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;->get0(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    .line 251
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->codeSize()I

    move-result v3

    if-nez v3, :cond_1e

    if-eqz p3, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 v2, 0x0

    goto :goto_24

    .line 252
    :cond_1e
    :goto_1e
    const-string v3, ""

    invoke-virtual {v2, v3, v1, p3}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->listingString(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v2

    :goto_24
    if-eqz v2, :cond_29

    .line 258
    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/util/IndentingWriter;->write(Ljava/lang/String;)V

    :cond_29
    add-int/lit8 p2, p2, 0x1

    goto :goto_b

    .line 262
    :cond_2c
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/IndentingWriter;->flush()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_2f} :catch_30

    return-void

    :catch_30
    move-exception p1

    .line 264
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_38

    :goto_37
    throw p2

    :goto_38
    goto :goto_37
.end method

.method public get(I)Lcom/s1243808733/android/dx/dex/code/DalvInsn;
    .registers 2

    .line 91
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;->get0(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    return-object p1
.end method

.method public getOutsSize()I
    .registers 9

    .line 191
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_7
    if-ge v2, v0, :cond_7d

    .line 195
    invoke-virtual {p0, v2}, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;->get0(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    .line 198
    instance-of v5, v4, Lcom/s1243808733/android/dx/dex/code/CstInsn;

    const/4 v6, 0x1

    if-eqz v5, :cond_49

    .line 199
    move-object v5, v4

    check-cast v5, Lcom/s1243808733/android/dx/dex/code/CstInsn;

    invoke-virtual {v5}, Lcom/s1243808733/android/dx/dex/code/CstInsn;->getConstant()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v5

    .line 200
    instance-of v7, v5, Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;

    if-eqz v7, :cond_34

    .line 201
    check-cast v5, Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;

    .line 203
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getOpcode()Lcom/s1243808733/android/dx/dex/code/Dop;

    move-result-object v4

    invoke-virtual {v4}, Lcom/s1243808733/android/dx/dex/code/Dop;->getFamily()I

    move-result v4

    const/16 v7, 0x71

    if-ne v4, v7, :cond_2e

    goto :goto_2f

    :cond_2e
    const/4 v6, 0x0

    .line 204
    :goto_2f
    invoke-virtual {v5, v6}, Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;->getParameterWordCount(Z)I

    move-result v4

    goto :goto_6e

    .line 205
    :cond_34
    instance-of v4, v5, Lcom/s1243808733/android/dx/rop/cst/CstCallSiteRef;

    if-eqz v4, :cond_47

    .line 206
    check-cast v5, Lcom/s1243808733/android/dx/rop/cst/CstCallSiteRef;

    .line 207
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/cst/CstCallSiteRef;->getPrototype()Lcom/s1243808733/android/dx/rop/type/Prototype;

    move-result-object v4

    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/type/Prototype;->getParameterTypes()Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->getWordCount()I

    move-result v4

    goto :goto_6e

    :cond_47
    const/4 v4, 0x0

    goto :goto_6e

    .line 209
    :cond_49
    instance-of v5, v4, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;

    if-eqz v5, :cond_7a

    .line 210
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getOpcode()Lcom/s1243808733/android/dx/dex/code/Dop;

    move-result-object v5

    invoke-virtual {v5}, Lcom/s1243808733/android/dx/dex/code/Dop;->getFamily()I

    move-result v5

    const/16 v7, 0xfa

    if-ne v5, v7, :cond_72

    .line 213
    check-cast v4, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;

    .line 219
    invoke-virtual {v4, v6}, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->getConstant(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v4

    check-cast v4, Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;

    .line 220
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;->getPrototype()Lcom/s1243808733/android/dx/rop/type/Prototype;

    move-result-object v4

    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/type/Prototype;->getParameterTypes()Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->getWordCount()I

    move-result v4

    add-int/2addr v4, v6

    :goto_6e
    if-le v4, v3, :cond_7a

    move v3, v4

    goto :goto_7a

    .line 211
    :cond_72
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Expecting invoke-polymorphic"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7a
    :goto_7a
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_7d
    return v3
.end method

.method public getRegistersSize()I
    .registers 2

    .line 180
    iget v0, p0, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;->regCount:I

    return v0
.end method

.method public set(ILcom/s1243808733/android/dx/dex/code/DalvInsn;)V
    .registers 3

    .line 101
    invoke-virtual {p0, p1, p2}, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;->set0(ILjava/lang/Object;)V

    return-void
.end method

.method public writeTo(Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
    .registers 12

    .line 129
    invoke-interface {p1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->getCursor()I

    move-result v0

    .line 130
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;->size()I

    move-result v1

    .line 132
    invoke-interface {p1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_44

    .line 133
    invoke-interface {p1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->isVerbose()Z

    move-result v2

    const/4 v4, 0x0

    :goto_14
    if-ge v4, v1, :cond_44

    .line 136
    invoke-virtual {p0, v4}, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;->get0(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    .line 137
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->codeSize()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_29

    if-eqz v2, :cond_27

    goto :goto_29

    :cond_27
    const/4 v5, 0x0

    goto :goto_34

    .line 141
    :cond_29
    :goto_29
    const-string v7, "  "

    invoke-interface {p1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->getAnnotationWidth()I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {v5, v7, v8, v9}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->listingString(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v5

    :goto_34
    if-eqz v5, :cond_3a

    .line 148
    invoke-interface {p1, v6, v5}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    goto :goto_41

    :cond_3a
    if-eqz v6, :cond_41

    .line 150
    const-string v5, ""

    invoke-interface {p1, v6, v5}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    :cond_41
    :goto_41
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_44
    :goto_44
    if-ge v3, v1, :cond_66

    .line 156
    invoke-virtual {p0, v3}, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;->get0(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    .line 158
    :try_start_4c
    invoke-virtual {v2, p1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->writeTo(Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
    :try_end_4f
    .catch Ljava/lang/RuntimeException; {:try_start_4c .. :try_end_4f} :catch_52

    add-int/lit8 v3, v3, 0x1

    goto :goto_44

    :catch_52
    move-exception p1

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "...while writing "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/s1243808733/android/dex/util/ExceptionWithContext;->withContext(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/s1243808733/android/dex/util/ExceptionWithContext;

    move-result-object p1

    throw p1

    .line 166
    :cond_66
    invoke-interface {p1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->getCursor()I

    move-result p1

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    .line 167
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;->codeSize()I

    move-result v0

    if-ne p1, v0, :cond_74

    return-void

    .line 168
    :cond_74
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "write length mismatch; expected "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;->codeSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " but actually wrote "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_95

    :goto_94
    throw p1

    :goto_95
    goto :goto_94
.end method
