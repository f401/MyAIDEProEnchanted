.class public final Lcom/s1243808733/android/dx/cf/code/Merger;
.super Ljava/lang/Object;
.source "Merger.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isPossiblyAssignableFrom(Lcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Z
    .registers 7

    .line 221
    invoke-interface {p0}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p0

    .line 222
    invoke-interface {p1}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p1

    .line 224
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/rop/type/Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    return v1

    .line 229
    :cond_10
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/type/Type;->getBasicType()I

    move-result v0

    .line 230
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/type/Type;->getBasicType()I

    move-result v2

    const/16 v3, 0xa

    const/16 v4, 0x9

    if-ne v0, v3, :cond_22

    .line 235
    sget-object p0, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    const/16 v0, 0x9

    :cond_22
    if-ne v2, v3, :cond_28

    .line 240
    sget-object p1, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    const/16 v2, 0x9

    :cond_28
    const/4 v3, 0x0

    if-ne v0, v4, :cond_74

    if-eq v2, v4, :cond_2e

    goto :goto_74

    .line 254
    :cond_2e
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->KNOWN_NULL:Lcom/s1243808733/android/dx/rop/type/Type;

    if-ne p0, v0, :cond_33

    return v3

    .line 261
    :cond_33
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->KNOWN_NULL:Lcom/s1243808733/android/dx/rop/type/Type;

    if-ne p1, v0, :cond_38

    return v1

    .line 267
    :cond_38
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    if-ne p0, v0, :cond_3d

    return v1

    .line 272
    :cond_3d
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/type/Type;->isArray()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 274
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/type/Type;->isArray()Z

    move-result v0

    if-nez v0, :cond_4a

    return v3

    .line 285
    :cond_4a
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/type/Type;->getComponentType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p0

    .line 286
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/type/Type;->getComponentType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p1

    .line 287
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/type/Type;->isArray()Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/type/Type;->isArray()Z

    move-result v0

    if-nez v0, :cond_4a

    .line 289
    :cond_5e
    invoke-static {p0, p1}, Lcom/s1243808733/android/dx/cf/code/Merger;->isPossiblyAssignableFrom(Lcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Z

    move-result p0

    return p0

    .line 290
    :cond_63
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/type/Type;->isArray()Z

    move-result p1

    if-eqz p1, :cond_73

    .line 295
    sget-object p1, Lcom/s1243808733/android/dx/rop/type/Type;->SERIALIZABLE:Lcom/s1243808733/android/dx/rop/type/Type;

    if-eq p0, p1, :cond_73

    sget-object p1, Lcom/s1243808733/android/dx/rop/type/Type;->CLONEABLE:Lcom/s1243808733/android/dx/rop/type/Type;

    if-ne p0, p1, :cond_72

    goto :goto_73

    :cond_72
    const/4 v1, 0x0

    :cond_73
    :goto_73
    return v1

    .line 249
    :cond_74
    :goto_74
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/type/Type;->isIntlike()Z

    move-result p0

    if-eqz p0, :cond_81

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/type/Type;->isIntlike()Z

    move-result p0

    if-eqz p0, :cond_81

    goto :goto_82

    :cond_81
    const/4 v1, 0x0

    :goto_82
    return v1
.end method

.method public static mergeLocals(Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;)Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;
    .registers 7

    if-ne p0, p1, :cond_3

    return-object p0

    .line 49
    :cond_3
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->getMaxLocals()I

    move-result v0

    .line 52
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->getMaxLocals()I

    move-result v1

    if-ne v1, v0, :cond_38

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v0, :cond_31

    .line 57
    invoke-virtual {p0, v2}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->getOrNull(I)Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v3

    .line 58
    invoke-virtual {p1, v2}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->getOrNull(I)Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v4

    .line 59
    invoke-static {v3, v4}, Lcom/s1243808733/android/dx/cf/code/Merger;->mergeType(Lcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v4

    if-eq v4, v3, :cond_2e

    if-nez v1, :cond_25

    .line 67
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->copy()Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    move-result-object v1

    :cond_25
    if-nez v4, :cond_2b

    .line 71
    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->invalidate(I)V

    goto :goto_2e

    .line 73
    :cond_2b
    invoke-virtual {v1, v2, v4}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->set(ILcom/s1243808733/android/dx/rop/type/TypeBearer;)V

    :cond_2e
    :goto_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_31
    if-nez v1, :cond_34

    return-object p0

    .line 82
    :cond_34
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->setImmutable()V

    return-object v1

    .line 53
    :cond_38
    new-instance p0, Lcom/s1243808733/android/dx/cf/code/SimException;

    const-string p1, "mismatched maxLocals values"

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;)V

    goto :goto_41

    :goto_40
    throw p0

    :goto_41
    goto :goto_40
.end method

.method public static mergeStack(Lcom/s1243808733/android/dx/cf/code/ExecutionStack;Lcom/s1243808733/android/dx/cf/code/ExecutionStack;)Lcom/s1243808733/android/dx/cf/code/ExecutionStack;
    .registers 8

    if-ne p0, p1, :cond_3

    return-object p0

    .line 101
    :cond_3
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->size()I

    move-result v0

    .line 104
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->size()I

    move-result v1

    if-ne v1, v0, :cond_70

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v0, :cond_69

    .line 109
    invoke-virtual {p0, v2}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peek(I)Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v3

    .line 110
    invoke-virtual {p1, v2}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peek(I)Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v4

    .line 111
    invoke-static {v3, v4}, Lcom/s1243808733/android/dx/cf/code/Merger;->mergeType(Lcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v5

    if-eq v5, v3, :cond_66

    if-nez v1, :cond_25

    .line 119
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->copy()Lcom/s1243808733/android/dx/cf/code/ExecutionStack;

    move-result-object v1

    :cond_25
    if-eqz v5, :cond_2b

    .line 127
    :try_start_27
    invoke-virtual {v1, v2, v5}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->change(ILcom/s1243808733/android/dx/rop/type/TypeBearer;)V

    goto :goto_66

    .line 124
    :cond_2b
    new-instance p0, Lcom/s1243808733/android/dx/cf/code/SimException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "incompatible: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_4a
    .catch Lcom/s1243808733/android/dx/cf/code/SimException; {:try_start_27 .. :try_end_4a} :catch_4a

    .line 127
    :catch_4a
    move-exception p0

    .line 130
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "...while merging stack["

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/cf/code/SimException;->addContext(Ljava/lang/String;)V

    .line 131
    throw p0

    :cond_66
    :goto_66
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_69
    if-nez v1, :cond_6c

    return-object p0

    .line 140
    :cond_6c
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->setImmutable()V

    return-object v1

    .line 105
    :cond_70
    new-instance p0, Lcom/s1243808733/android/dx/cf/code/SimException;

    const-string p1, "mismatched stack depths"

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;)V

    goto :goto_79

    :goto_78
    throw p0

    :goto_79
    goto :goto_78
.end method

.method public static mergeType(Lcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/type/TypeBearer;
    .registers 4

    if-eqz p0, :cond_65

    .line 152
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_65

    :cond_9
    const/4 v0, 0x0

    if-nez p1, :cond_d

    return-object v0

    .line 157
    :cond_d
    invoke-interface {p0}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p0

    .line 158
    invoke-interface {p1}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p1

    if-ne p0, p1, :cond_18

    return-object p0

    .line 162
    :cond_18
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/type/Type;->isReference()Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/type/Type;->isReference()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 163
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->KNOWN_NULL:Lcom/s1243808733/android/dx/rop/type/Type;

    if-ne p0, v0, :cond_29

    return-object p1

    .line 169
    :cond_29
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->KNOWN_NULL:Lcom/s1243808733/android/dx/rop/type/Type;

    if-ne p1, v0, :cond_2e

    return-object p0

    .line 175
    :cond_2e
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/type/Type;->isArray()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/type/Type;->isArray()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 177
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/type/Type;->getComponentType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p0

    .line 178
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/type/Type;->getComponentType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p1

    .line 177
    invoke-static {p0, p1}, Lcom/s1243808733/android/dx/cf/code/Merger;->mergeType(Lcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object p0

    if-nez p0, :cond_4b

    .line 184
    sget-object p0, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    return-object p0

    .line 186
    :cond_4b
    check-cast p0, Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/type/Type;->getArrayType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p0

    return-object p0

    .line 193
    :cond_52
    sget-object p0, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    return-object p0

    .line 195
    :cond_55
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/type/Type;->isIntlike()Z

    move-result p0

    if-eqz p0, :cond_64

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/type/Type;->isIntlike()Z

    move-result p0

    if-eqz p0, :cond_64

    .line 200
    sget-object p0, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    return-object p0

    :cond_64
    return-object v0

    :cond_65
    :goto_65
    return-object p0
.end method
