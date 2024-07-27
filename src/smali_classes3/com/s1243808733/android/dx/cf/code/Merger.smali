.class public final Lcom/s1243808733/android/dx/cf/code/Merger;
.super Ljava/lang/Object;
.source "Merger.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isPossiblyAssignableFrom(Lcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Z
    .registers 10

    const/16 v7, 0xa

    const/4 v0, 0x1

    const/16 v5, 0x9

    const/4 v1, 0x0

    .line 221
    invoke-interface {p0}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v3

    .line 222
    invoke-interface {p1}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v2

    .line 224
    invoke-virtual {v3, v2}, Lcom/s1243808733/android/dx/rop/type/Type;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 302
    :cond_0
    :goto_0
    return v0

    .line 229
    :cond_1
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/type/Type;->getBasicType()I

    move-result v6

    .line 230
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/type/Type;->getBasicType()I

    move-result v4

    .line 234
    if-ne v6, v7, :cond_2

    .line 235
    sget-object v3, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    move v6, v5

    .line 239
    :cond_2
    if-ne v4, v7, :cond_3

    .line 240
    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    move v4, v5

    .line 244
    :cond_3
    if-ne v6, v5, :cond_4

    if-eq v4, v5, :cond_6

    .line 249
    :cond_4
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/type/Type;->isIntlike()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/type/Type;->isIntlike()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0

    .line 254
    :cond_6
    sget-object v4, Lcom/s1243808733/android/dx/rop/type/Type;->KNOWN_NULL:Lcom/s1243808733/android/dx/rop/type/Type;

    if-ne v3, v4, :cond_7

    move v0, v1

    .line 260
    goto :goto_0

    .line 261
    :cond_7
    sget-object v4, Lcom/s1243808733/android/dx/rop/type/Type;->KNOWN_NULL:Lcom/s1243808733/android/dx/rop/type/Type;

    if-eq v2, v4, :cond_0

    .line 267
    sget-object v4, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    if-eq v3, v4, :cond_0

    .line 272
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/type/Type;->isArray()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 274
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/type/Type;->isArray()Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    .line 276
    goto :goto_0

    :cond_8
    move-object v0, v2

    move-object v1, v3

    .line 285
    :cond_9
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/type/Type;->getComponentType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    .line 286
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->getComponentType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    .line 284
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/type/Type;->isArray()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->isArray()Z

    move-result v2

    if-nez v2, :cond_9

    .line 289
    :cond_a
    invoke-static {v1, v0}, Lcom/s1243808733/android/dx/cf/code/Merger;->isPossiblyAssignableFrom(Lcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Z

    move-result v0

    goto :goto_0

    .line 290
    :cond_b
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/type/Type;->isArray()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 295
    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->SERIALIZABLE:Lcom/s1243808733/android/dx/rop/type/Type;

    if-eq v3, v2, :cond_0

    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->CLONEABLE:Lcom/s1243808733/android/dx/rop/type/Type;

    if-eq v3, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static mergeLocals(Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;)Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;
    .registers 7

    .line 44
    if-ne p0, p1, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-object p0

    .line 49
    :cond_1
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->getMaxLocals()I

    move-result v2

    .line 50
    const/4 v0, 0x0

    check-cast v0, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    .line 52
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->getMaxLocals()I

    move-result v1

    if-eq v1, v2, :cond_2

    .line 53
    new-instance v0, Lcom/s1243808733/android/dx/cf/code/SimException;

    const-string v1, "mismatched maxLocals values"

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-lt v1, v2, :cond_3

    .line 78
    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->setImmutable()V

    move-object p0, v0

    .line 83
    goto :goto_0

    .line 57
    :cond_3
    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->getOrNull(I)Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v3

    .line 58
    invoke-virtual {p1, v1}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->getOrNull(I)Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v4

    .line 59
    invoke-static {v3, v4}, Lcom/s1243808733/android/dx/cf/code/Merger;->mergeType(Lcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v4

    .line 60
    if-eq v4, v3, :cond_5

    .line 66
    if-nez v0, :cond_4

    .line 67
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->copy()Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    move-result-object v0

    .line 70
    :cond_4
    if-nez v4, :cond_6

    .line 71
    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->invalidate(I)V

    .line 56
    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 73
    :cond_6
    invoke-virtual {v0, v1, v4}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->set(ILcom/s1243808733/android/dx/rop/type/TypeBearer;)V

    goto :goto_2
.end method

.method public static mergeStack(Lcom/s1243808733/android/dx/cf/code/ExecutionStack;Lcom/s1243808733/android/dx/cf/code/ExecutionStack;)Lcom/s1243808733/android/dx/cf/code/ExecutionStack;
    .registers 10

    .line 96
    if-ne p0, p1, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-object p0

    .line 101
    :cond_1
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->size()I

    move-result v2

    .line 102
    const/4 v0, 0x0

    check-cast v0, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;

    .line 104
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->size()I

    move-result v1

    if-eq v1, v2, :cond_2

    .line 105
    new-instance v0, Lcom/s1243808733/android/dx/cf/code/SimException;

    const-string v1, "mismatched stack depths"

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-lt v1, v2, :cond_3

    .line 136
    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->setImmutable()V

    move-object p0, v0

    .line 141
    goto :goto_0

    .line 109
    :cond_3
    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peek(I)Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v3

    .line 110
    invoke-virtual {p1, v1}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peek(I)Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v4

    .line 111
    invoke-static {v3, v4}, Lcom/s1243808733/android/dx/cf/code/Merger;->mergeType(Lcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v5

    .line 112
    if-eq v5, v3, :cond_6

    .line 118
    if-nez v0, :cond_4

    .line 119
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->copy()Lcom/s1243808733/android/dx/cf/code/ExecutionStack;

    move-result-object v0

    .line 123
    :cond_4
    if-nez v5, :cond_5

    .line 124
    :try_start_0
    new-instance v0, Lcom/s1243808733/android/dx/cf/code/SimException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "incompatible: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/s1243808733/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/s1243808733/android/dx/cf/code/SimException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :catch_0
    move-exception v0

    .line 130
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "...while merging stack["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {v1}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/cf/code/SimException;->addContext(Ljava/lang/String;)V

    .line 131
    throw v0

    .line 127
    :cond_5
    :try_start_1
    invoke-virtual {v0, v1, v5}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->change(ILcom/s1243808733/android/dx/rop/type/TypeBearer;)V
    :try_end_1
    .catch Lcom/s1243808733/android/dx/cf/code/SimException; {:try_start_1 .. :try_end_1} :catch_0

    .line 108
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1
.end method

.method public static mergeType(Lcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/type/TypeBearer;
    .registers 5

    const/4 v0, 0x0

    .line 152
    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move-object v0, p0

    .line 202
    :goto_0
    return-object v0

    .line 154
    :cond_1
    if-nez p1, :cond_2

    .line 155
    check-cast v0, Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    goto :goto_0

    .line 157
    :cond_2
    invoke-interface {p0}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p0

    .line 158
    invoke-interface {p1}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    .line 160
    if-ne p0, v1, :cond_3

    move-object v0, p0

    .line 161
    goto :goto_0

    .line 162
    :cond_3
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/type/Type;->isReference()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/type/Type;->isReference()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 163
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->KNOWN_NULL:Lcom/s1243808733/android/dx/rop/type/Type;

    if-ne p0, v0, :cond_4

    move-object v0, v1

    .line 168
    goto :goto_0

    .line 169
    :cond_4
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->KNOWN_NULL:Lcom/s1243808733/android/dx/rop/type/Type;

    if-ne v1, v0, :cond_5

    move-object v0, p0

    .line 174
    goto :goto_0

    .line 175
    :cond_5
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/type/Type;->isArray()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/type/Type;->isArray()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 176
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/type/Type;->getComponentType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/type/Type;->getComponentType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/cf/code/Merger;->mergeType(Lcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v0

    .line 179
    if-nez v0, :cond_6

    .line 184
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    goto :goto_0

    .line 186
    :cond_6
    check-cast v0, Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->getArrayType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    goto :goto_0

    .line 193
    :cond_7
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    goto :goto_0

    .line 195
    :cond_8
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/type/Type;->isIntlike()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/type/Type;->isIntlike()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 200
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    goto :goto_0

    .line 202
    :cond_9
    check-cast v0, Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    goto :goto_0
.end method
