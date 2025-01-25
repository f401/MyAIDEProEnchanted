.class public Lcom/s1243808733/android/dx/dex/cf/CfTranslator;
.super Ljava/lang/Object;
.source "CfTranslator.java"


# static fields
.field private static final DEBUG:Z = false


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static coerceConstant(Lcom/s1243808733/android/dx/rop/cst/TypedConstant;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/cst/TypedConstant;
    .registers 4

    .line 241
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/TypedConstant;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    .line 243
    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/rop/type/Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-object p0

    .line 247
    :cond_b
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/type/Type;->getBasicType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_59

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4e

    const/4 v1, 0x3

    if-eq v0, v1, :cond_43

    const/16 v1, 0x8

    if-ne v0, v1, :cond_27

    .line 258
    check-cast p0, Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->getValue()I

    move-result p0

    invoke-static {p0}, Lcom/s1243808733/android/dx/rop/cst/CstShort;->make(I)Lcom/s1243808733/android/dx/rop/cst/CstShort;

    move-result-object p0

    return-object p0

    .line 261
    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "can\'t coerce "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " to "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 255
    :cond_43
    check-cast p0, Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->getValue()I

    move-result p0

    invoke-static {p0}, Lcom/s1243808733/android/dx/rop/cst/CstChar;->make(I)Lcom/s1243808733/android/dx/rop/cst/CstChar;

    move-result-object p0

    return-object p0

    .line 252
    :cond_4e
    check-cast p0, Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->getValue()I

    move-result p0

    invoke-static {p0}, Lcom/s1243808733/android/dx/rop/cst/CstByte;->make(I)Lcom/s1243808733/android/dx/rop/cst/CstByte;

    move-result-object p0

    return-object p0

    .line 249
    :cond_59
    check-cast p0, Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->getValue()I

    move-result p0

    invoke-static {p0}, Lcom/s1243808733/android/dx/rop/cst/CstBoolean;->make(I)Lcom/s1243808733/android/dx/rop/cst/CstBoolean;

    move-result-object p0

    return-object p0
.end method

.method private static processFields(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;Lcom/s1243808733/android/dx/dex/file/ClassDefItem;Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .registers 11

    .line 196
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getThisClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v0

    .line 197
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getFields()Lcom/s1243808733/android/dx/cf/iface/FieldList;

    move-result-object p0

    .line 198
    invoke-interface {p0}, Lcom/s1243808733/android/dx/cf/iface/FieldList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_8c

    .line 201
    invoke-interface {p0, v2}, Lcom/s1243808733/android/dx/cf/iface/FieldList;->get(I)Lcom/s1243808733/android/dx/cf/iface/Field;

    move-result-object v3

    .line 203
    :try_start_13
    new-instance v4, Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    invoke-interface {v3}, Lcom/s1243808733/android/dx/cf/iface/Field;->getNat()Lcom/s1243808733/android/dx/rop/cst/CstNat;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/rop/cst/CstNat;)V

    .line 204
    invoke-interface {v3}, Lcom/s1243808733/android/dx/cf/iface/Field;->getAccessFlags()I

    move-result v5

    .line 206
    invoke-static {v5}, Lcom/s1243808733/android/dx/rop/code/AccessFlags;->isStatic(I)Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 207
    invoke-interface {v3}, Lcom/s1243808733/android/dx/cf/iface/Field;->getConstantValue()Lcom/s1243808733/android/dx/rop/cst/TypedConstant;

    move-result-object v6

    .line 208
    new-instance v7, Lcom/s1243808733/android/dx/dex/file/EncodedField;

    invoke-direct {v7, v4, v5}, Lcom/s1243808733/android/dx/dex/file/EncodedField;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;I)V

    if-eqz v6, :cond_39

    .line 210
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/s1243808733/android/dx/dex/cf/CfTranslator;->coerceConstant(Lcom/s1243808733/android/dx/rop/cst/TypedConstant;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/cst/TypedConstant;

    move-result-object v6

    .line 212
    :cond_39
    invoke-virtual {p1, v7, v6}, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->addStaticField(Lcom/s1243808733/android/dx/dex/file/EncodedField;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    goto :goto_45

    .line 214
    :cond_3d
    new-instance v6, Lcom/s1243808733/android/dx/dex/file/EncodedField;

    invoke-direct {v6, v4, v5}, Lcom/s1243808733/android/dx/dex/file/EncodedField;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;I)V

    .line 215
    invoke-virtual {p1, v6}, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->addInstanceField(Lcom/s1243808733/android/dx/dex/file/EncodedField;)V

    .line 219
    :goto_45
    invoke-interface {v3}, Lcom/s1243808733/android/dx/cf/iface/Field;->getAttributes()Lcom/s1243808733/android/dx/cf/iface/AttributeList;

    move-result-object v5

    invoke-static {v5}, Lcom/s1243808733/android/dx/dex/cf/AttributeTranslator;->getAnnotations(Lcom/s1243808733/android/dx/cf/iface/AttributeList;)Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    move-result-object v5

    .line 220
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->size()I

    move-result v6

    if-eqz v6, :cond_56

    .line 221
    invoke-virtual {p1, v4, v5, p2}, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->addFieldAnnotations(Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;Lcom/s1243808733/android/dx/rop/annotation/Annotations;Lcom/s1243808733/android/dx/dex/file/DexFile;)V

    .line 223
    :cond_56
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getFieldIds()Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;->intern(Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;)Lcom/s1243808733/android/dx/dex/file/FieldIdItem;
    :try_end_5d
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_5d} :catch_60

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :catch_60
    move-exception p0

    .line 225
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "...while processing "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/s1243808733/android/dx/cf/iface/Field;->getName()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object p2

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-interface {v3}, Lcom/s1243808733/android/dx/cf/iface/Field;->getDescriptor()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object p2

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 227
    invoke-static {p0, p1}, Lcom/s1243808733/android/dex/util/ExceptionWithContext;->withContext(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/s1243808733/android/dex/util/ExceptionWithContext;

    move-result-object p0

    throw p0

    :cond_8c
    return-void
.end method

.method private static processMethods(Lcom/s1243808733/android/dx/command/dexer/DxContext;Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;Lcom/s1243808733/android/dx/dex/cf/CfOptions;Lcom/s1243808733/android/dx/dex/DexOptions;Lcom/s1243808733/android/dx/dex/file/ClassDefItem;Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .registers 34

    .line 279
    move-object/from16 v0, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    invoke-virtual/range {p1 .. p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getThisClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v13

    .line 280
    invoke-virtual/range {p1 .. p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getMethods()Lcom/s1243808733/android/dx/cf/iface/MethodList;

    move-result-object v14

    .line 281
    invoke-interface {v14}, Lcom/s1243808733/android/dx/cf/iface/MethodList;->size()I

    move-result v15

    const/16 v16, 0x0

    const/4 v8, 0x0

    :goto_19
    if-ge v8, v15, :cond_19e

    .line 284
    invoke-interface {v14, v8}, Lcom/s1243808733/android/dx/cf/iface/MethodList;->get(I)Lcom/s1243808733/android/dx/cf/iface/Method;

    move-result-object v7

    .line 286
    :try_start_1f
    new-instance v6, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    invoke-interface {v7}, Lcom/s1243808733/android/dx/cf/iface/Method;->getNat()Lcom/s1243808733/android/dx/rop/cst/CstNat;

    move-result-object v1

    invoke-direct {v6, v13, v1}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/rop/cst/CstNat;)V

    .line 287
    invoke-interface {v7}, Lcom/s1243808733/android/dx/cf/iface/Method;->getAccessFlags()I

    move-result v17

    .line 288
    invoke-static/range {v17 .. v17}, Lcom/s1243808733/android/dx/rop/code/AccessFlags;->isStatic(I)Z

    move-result v5

    .line 289
    invoke-static/range {v17 .. v17}, Lcom/s1243808733/android/dx/rop/code/AccessFlags;->isPrivate(I)Z

    move-result v18

    .line 290
    invoke-static/range {v17 .. v17}, Lcom/s1243808733/android/dx/rop/code/AccessFlags;->isNative(I)Z

    move-result v19

    .line 291
    invoke-static/range {v17 .. v17}, Lcom/s1243808733/android/dx/rop/code/AccessFlags;->isAbstract(I)Z

    move-result v1

    .line 292
    invoke-virtual {v6}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->isInstanceInit()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_4d

    .line 293
    invoke-virtual {v6}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->isClassInit()Z

    move-result v2

    if-eqz v2, :cond_4a

    goto :goto_4d

    :cond_4a
    const/16 v20, 0x0

    goto :goto_4f

    :cond_4d
    :goto_4d
    const/16 v20, 0x1

    :goto_4f
    if-nez v19, :cond_102

    if-eqz v1, :cond_60

    move/from16 v27, v5

    move-object v0, v6

    move-object/from16 v25, v7

    move/from16 v22, v8

    move/from16 v21, v15

    move-object/from16 v15, p1

    goto/16 :goto_10d

    .line 300
    :cond_60
    new-instance v1, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;

    iget v4, v9, Lcom/s1243808733/android/dx/dex/cf/CfOptions;->positionInfo:I

    if-eq v4, v3, :cond_67

    goto :goto_68

    :cond_67
    const/4 v3, 0x0

    :goto_68
    iget-boolean v4, v9, Lcom/s1243808733/android/dx/dex/cf/CfOptions;->localInfo:Z

    move/from16 v21, v15

    move-object/from16 v15, p1

    invoke-direct {v1, v7, v15, v3, v4}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;-><init>(Lcom/s1243808733/android/dx/cf/iface/Method;Lcom/s1243808733/android/dx/cf/iface/ClassFile;ZZ)V

    .line 307
    sget-object v3, Lcom/s1243808733/android/dx/rop/code/DexTranslationAdvice;->THE_ONE:Lcom/s1243808733/android/dx/rop/code/DexTranslationAdvice;

    .line 309
    invoke-static {v1, v3, v14, v10}, Lcom/s1243808733/android/dx/cf/code/Ropper;->convert(Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;Lcom/s1243808733/android/dx/rop/code/TranslationAdvice;Lcom/s1243808733/android/dx/cf/iface/MethodList;Lcom/s1243808733/android/dx/dex/DexOptions;)Lcom/s1243808733/android/dx/rop/code/RopMethod;

    move-result-object v4

    .line 313
    move/from16 v22, v8

    invoke-virtual {v6, v5}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->getParameterWordCount(Z)I

    move-result v8

    .line 315
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 316
    invoke-virtual {v13}, Lcom/s1243808733/android/dx/rop/cst/CstType;->getClassType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v24

    move-object/from16 v25, v6

    invoke-virtual/range {v24 .. v24}, Lcom/s1243808733/android/dx/rop/type/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    invoke-interface {v7}, Lcom/s1243808733/android/dx/cf/iface/Method;->getName()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v6

    invoke-virtual {v6}, Lcom/s1243808733/android/dx/rop/cst/CstString;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 319
    iget-boolean v6, v9, Lcom/s1243808733/android/dx/dex/cf/CfOptions;->optimize:Z

    if-eqz v6, :cond_c1

    iget-object v6, v0, Lcom/s1243808733/android/dx/command/dexer/DxContext;->optimizerOptions:Lcom/s1243808733/android/dx/dex/cf/OptimizerOptions;

    .line 320
    invoke-virtual {v6, v2}, Lcom/s1243808733/android/dx/dex/cf/OptimizerOptions;->shouldOptimize(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c1

    .line 326
    iget-boolean v2, v9, Lcom/s1243808733/android/dx/dex/cf/CfOptions;->localInfo:Z

    invoke-static {v4, v8, v5, v2, v3}, Lcom/s1243808733/android/dx/ssa/Optimizer;->optimize(Lcom/s1243808733/android/dx/rop/code/RopMethod;IZZLcom/s1243808733/android/dx/rop/code/TranslationAdvice;)Lcom/s1243808733/android/dx/rop/code/RopMethod;

    move-result-object v2

    .line 334
    iget-boolean v3, v9, Lcom/s1243808733/android/dx/dex/cf/CfOptions;->statistics:Z

    if-eqz v3, :cond_be

    .line 335
    iget-object v3, v0, Lcom/s1243808733/android/dx/command/dexer/DxContext;->codeStatistics:Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;

    invoke-virtual {v3, v4, v2}, Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;->updateRopStatistics(Lcom/s1243808733/android/dx/rop/code/RopMethod;Lcom/s1243808733/android/dx/rop/code/RopMethod;)V

    :cond_be
    move-object v6, v4

    move-object v4, v2

    goto :goto_c2

    :cond_c1
    const/4 v6, 0x0

    .line 342
    :goto_c2
    iget-boolean v2, v9, Lcom/s1243808733/android/dx/dex/cf/CfOptions;->localInfo:Z

    if-eqz v2, :cond_cc

    .line 343
    invoke-static {v4}, Lcom/s1243808733/android/dx/rop/code/LocalVariableExtractor;->extract(Lcom/s1243808733/android/dx/rop/code/RopMethod;)Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;

    move-result-object v2

    move-object v3, v2

    goto :goto_cd

    :cond_cc
    const/4 v3, 0x0

    .line 346
    :goto_cd
    iget v2, v9, Lcom/s1243808733/android/dx/dex/cf/CfOptions;->positionInfo:I

    invoke-static {v4, v2, v3, v8, v10}, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->translate(Lcom/s1243808733/android/dx/rop/code/RopMethod;ILcom/s1243808733/android/dx/rop/code/LocalVariableInfo;ILcom/s1243808733/android/dx/dex/DexOptions;)Lcom/s1243808733/android/dx/dex/code/DalvCode;

    move-result-object v23

    .line 349
    iget-boolean v2, v9, Lcom/s1243808733/android/dx/dex/cf/CfOptions;->statistics:Z

    if-eqz v2, :cond_f9

    if-eqz v6, :cond_f9

    .line 351
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->getCode()Lcom/s1243808733/android/dx/cf/code/BytecodeArray;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->size()I

    move-result v24
    :try_end_e1
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_e1} :catch_170

    .line 350
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v26, v3

    move-object/from16 v3, p3

    move/from16 v27, v5

    move-object v5, v6

    move-object/from16 v0, v25

    move-object/from16 v6, v26

    move-object/from16 v25, v7

    move v7, v8

    move/from16 v8, v24

    :try_start_f5
    invoke-static/range {v1 .. v8}, Lcom/s1243808733/android/dx/dex/cf/CfTranslator;->updateDexStatistics(Lcom/s1243808733/android/dx/command/dexer/DxContext;Lcom/s1243808733/android/dx/dex/cf/CfOptions;Lcom/s1243808733/android/dx/dex/DexOptions;Lcom/s1243808733/android/dx/rop/code/RopMethod;Lcom/s1243808733/android/dx/rop/code/RopMethod;Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;II)V

    goto :goto_ff

    .line 349
    :cond_f9
    move/from16 v27, v5

    move-object/from16 v0, v25

    move-object/from16 v25, v7

    .line 350
    :goto_ff
    move-object/from16 v2, v23

    goto :goto_10e

    .line 293
    :cond_102
    move/from16 v27, v5

    move-object v0, v6

    move-object/from16 v25, v7

    move/from16 v22, v8

    move/from16 v21, v15

    move-object/from16 v15, p1

    .line 350
    :goto_10d
    const/4 v2, 0x0

    .line 356
    :goto_10e
    invoke-static/range {v17 .. v17}, Lcom/s1243808733/android/dx/rop/code/AccessFlags;->isSynchronized(I)Z

    move-result v1

    if-eqz v1, :cond_11c

    const/high16 v1, 0x20000

    or-int v17, v17, v1

    if-nez v19, :cond_11c

    and-int/lit8 v17, v17, -0x21

    :cond_11c
    if-eqz v20, :cond_122

    const/high16 v1, 0x10000

    or-int v17, v17, v1

    :cond_122
    move/from16 v1, v17

    .line 372
    invoke-static/range {v25 .. v25}, Lcom/s1243808733/android/dx/dex/cf/AttributeTranslator;->getExceptions(Lcom/s1243808733/android/dx/cf/iface/Method;)Lcom/s1243808733/android/dx/rop/type/TypeList;

    move-result-object v3

    .line 373
    new-instance v4, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;ILcom/s1243808733/android/dx/dex/code/DalvCode;Lcom/s1243808733/android/dx/rop/type/TypeList;)V

    .line 376
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->isInstanceInit()Z

    move-result v1

    if-nez v1, :cond_142

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->isClassInit()Z

    move-result v1

    if-nez v1, :cond_142

    if-nez v27, :cond_142

    if-eqz v18, :cond_13e

    goto :goto_142

    .line 380
    :cond_13e
    invoke-virtual {v11, v4}, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->addVirtualMethod(Lcom/s1243808733/android/dx/dex/file/EncodedMethod;)V

    goto :goto_145

    .line 378
    :cond_142
    :goto_142
    invoke-virtual {v11, v4}, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->addDirectMethod(Lcom/s1243808733/android/dx/dex/file/EncodedMethod;)V

    .line 384
    :goto_145
    invoke-static/range {v25 .. v25}, Lcom/s1243808733/android/dx/dex/cf/AttributeTranslator;->getMethodAnnotations(Lcom/s1243808733/android/dx/cf/iface/Method;)Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    move-result-object v1

    .line 385
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->size()I

    move-result v2

    if-eqz v2, :cond_152

    .line 386
    invoke-virtual {v11, v0, v1, v12}, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->addMethodAnnotations(Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;Lcom/s1243808733/android/dx/rop/annotation/Annotations;Lcom/s1243808733/android/dx/dex/file/DexFile;)V

    .line 390
    :cond_152
    invoke-static/range {v25 .. v25}, Lcom/s1243808733/android/dx/dex/cf/AttributeTranslator;->getParameterAnnotations(Lcom/s1243808733/android/dx/cf/iface/Method;)Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;

    move-result-object v1

    .line 391
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;->size()I

    move-result v2

    if-eqz v2, :cond_15f

    .line 392
    invoke-virtual {v11, v0, v1, v12}, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->addParameterAnnotations(Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;Lcom/s1243808733/android/dx/dex/file/DexFile;)V

    .line 394
    :cond_15f
    invoke-virtual/range {p5 .. p5}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getMethodIds()Lcom/s1243808733/android/dx/dex/file/MethodIdsSection;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/dex/file/MethodIdsSection;->intern(Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;)Lcom/s1243808733/android/dx/dex/file/MethodIdItem;
    :try_end_166
    .catch Ljava/lang/RuntimeException; {:try_start_f5 .. :try_end_166} :catch_16e

    add-int/lit8 v8, v22, 0x1

    move-object/from16 v0, p0

    move/from16 v15, v21

    goto/16 :goto_19

    :catch_16e
    move-exception v0

    goto :goto_173

    :catch_170
    move-exception v0

    move-object/from16 v25, v7

    .line 396
    :goto_173
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "...while processing "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {v25 .. v25}, Lcom/s1243808733/android/dx/cf/iface/Method;->getName()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    invoke-interface/range {v25 .. v25}, Lcom/s1243808733/android/dx/cf/iface/Method;->getDescriptor()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 398
    invoke-static {v0, v1}, Lcom/s1243808733/android/dex/util/ExceptionWithContext;->withContext(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/s1243808733/android/dex/util/ExceptionWithContext;

    move-result-object v0

    throw v0

    :cond_19e
    return-void
.end method

.method public static translate(Lcom/s1243808733/android/dx/command/dexer/DxContext;Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;[BLcom/s1243808733/android/dx/dex/cf/CfOptions;Lcom/s1243808733/android/dx/dex/DexOptions;Lcom/s1243808733/android/dx/dex/file/DexFile;)Lcom/s1243808733/android/dx/dex/file/ClassDefItem;
    .registers 6

    .line 102
    :try_start_0
    invoke-static/range {p0 .. p5}, Lcom/s1243808733/android/dx/dex/cf/CfTranslator;->translate0(Lcom/s1243808733/android/dx/command/dexer/DxContext;Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;[BLcom/s1243808733/android/dx/dex/cf/CfOptions;Lcom/s1243808733/android/dx/dex/DexOptions;Lcom/s1243808733/android/dx/dex/file/DexFile;)Lcom/s1243808733/android/dx/dex/file/ClassDefItem;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    .line 104
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "...while processing "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 105
    invoke-static {p0, p1}, Lcom/s1243808733/android/dex/util/ExceptionWithContext;->withContext(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/s1243808733/android/dex/util/ExceptionWithContext;

    move-result-object p0

    throw p0
.end method

.method private static translate0(Lcom/s1243808733/android/dx/command/dexer/DxContext;Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;[BLcom/s1243808733/android/dx/dex/cf/CfOptions;Lcom/s1243808733/android/dx/dex/DexOptions;Lcom/s1243808733/android/dx/dex/file/DexFile;)Lcom/s1243808733/android/dx/dex/file/ClassDefItem;
    .registers 20

    .line 126
    move-object v6, p1

    move-object/from16 v2, p3

    move-object/from16 v5, p5

    move-object v0, p0

    iget-object v1, v0, Lcom/s1243808733/android/dx/command/dexer/DxContext;->optimizerOptions:Lcom/s1243808733/android/dx/dex/cf/OptimizerOptions;

    iget-object v3, v2, Lcom/s1243808733/android/dx/dex/cf/CfOptions;->optimizeListFile:Ljava/lang/String;

    iget-object v4, v2, Lcom/s1243808733/android/dx/dex/cf/CfOptions;->dontOptimizeListFile:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/s1243808733/android/dx/dex/cf/OptimizerOptions;->loadOptimizeLists(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getThisClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v8

    .line 132
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getAccessFlags()I

    move-result v1

    .line 133
    iget v3, v2, Lcom/s1243808733/android/dx/dex/cf/CfOptions;->positionInfo:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1f

    const/4 v3, 0x0

    move-object v12, v3

    goto :goto_24

    .line 134
    :cond_1f
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getSourceFile()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v3

    move-object v12, v3

    .line 135
    :goto_24
    nop

    .line 137
    new-instance v13, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;

    and-int/lit8 v9, v1, -0x21

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getSuperclass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v10

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getInterfaces()Lcom/s1243808733/android/dx/rop/type/TypeList;

    move-result-object v11

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstType;ILcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/rop/type/TypeList;Lcom/s1243808733/android/dx/rop/cst/CstString;)V

    .line 140
    invoke-static {p1, v2}, Lcom/s1243808733/android/dx/dex/cf/AttributeTranslator;->getClassAnnotations(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;Lcom/s1243808733/android/dx/dex/cf/CfOptions;)Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    move-result-object v1

    .line 141
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->size()I

    move-result v3

    if-eqz v3, :cond_42

    .line 142
    invoke-virtual {v13, v1, v5}, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->setClassAnnotations(Lcom/s1243808733/android/dx/rop/annotation/Annotations;Lcom/s1243808733/android/dx/dex/file/DexFile;)V

    .line 145
    :cond_42
    invoke-virtual/range {p5 .. p5}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getFieldIds()Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;

    move-result-object v7

    .line 146
    invoke-virtual/range {p5 .. p5}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getMethodIds()Lcom/s1243808733/android/dx/dex/file/MethodIdsSection;

    move-result-object v8

    .line 147
    invoke-virtual/range {p5 .. p5}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getMethodHandles()Lcom/s1243808733/android/dx/dex/file/MethodHandlesSection;

    move-result-object v9

    .line 148
    invoke-virtual/range {p5 .. p5}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getCallSiteIds()Lcom/s1243808733/android/dx/dex/file/CallSiteIdsSection;

    move-result-object v10

    .line 149
    invoke-static {p1, v13, v5}, Lcom/s1243808733/android/dx/dex/cf/CfTranslator;->processFields(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;Lcom/s1243808733/android/dx/dex/file/ClassDefItem;Lcom/s1243808733/android/dx/dex/file/DexFile;)V

    .line 150
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object v4, v13

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lcom/s1243808733/android/dx/dex/cf/CfTranslator;->processMethods(Lcom/s1243808733/android/dx/command/dexer/DxContext;Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;Lcom/s1243808733/android/dx/dex/cf/CfOptions;Lcom/s1243808733/android/dx/dex/DexOptions;Lcom/s1243808733/android/dx/dex/file/ClassDefItem;Lcom/s1243808733/android/dx/dex/file/DexFile;)V

    .line 153
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getConstantPool()Lcom/s1243808733/android/dx/rop/cst/ConstantPool;

    move-result-object v0

    .line 154
    invoke-interface {v0}, Lcom/s1243808733/android/dx/rop/cst/ConstantPool;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_6a
    if-ge v2, v1, :cond_f3

    .line 157
    invoke-interface {v0, v2}, Lcom/s1243808733/android/dx/rop/cst/ConstantPool;->getOrNull(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v3

    .line 158
    instance-of v4, v3, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    if-eqz v4, :cond_7b

    .line 159
    check-cast v3, Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;

    invoke-virtual {v8, v3}, Lcom/s1243808733/android/dx/dex/file/MethodIdsSection;->intern(Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;)Lcom/s1243808733/android/dx/dex/file/MethodIdItem;

    goto/16 :goto_ef

    .line 160
    :cond_7b
    instance-of v4, v3, Lcom/s1243808733/android/dx/rop/cst/CstInterfaceMethodRef;

    if-eqz v4, :cond_89

    .line 161
    check-cast v3, Lcom/s1243808733/android/dx/rop/cst/CstInterfaceMethodRef;

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/cst/CstInterfaceMethodRef;->toMethodRef()Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/s1243808733/android/dx/dex/file/MethodIdsSection;->intern(Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;)Lcom/s1243808733/android/dx/dex/file/MethodIdItem;

    goto :goto_ef

    .line 162
    :cond_89
    instance-of v4, v3, Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    if-eqz v4, :cond_93

    .line 163
    check-cast v3, Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    invoke-virtual {v7, v3}, Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;->intern(Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;)Lcom/s1243808733/android/dx/dex/file/FieldIdItem;

    goto :goto_ef

    .line 164
    :cond_93
    instance-of v4, v3, Lcom/s1243808733/android/dx/rop/cst/CstEnumRef;

    if-eqz v4, :cond_a1

    .line 165
    check-cast v3, Lcom/s1243808733/android/dx/rop/cst/CstEnumRef;

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/cst/CstEnumRef;->getFieldRef()Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;->intern(Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;)Lcom/s1243808733/android/dx/dex/file/FieldIdItem;

    goto :goto_ef

    .line 166
    :cond_a1
    instance-of v4, v3, Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;

    if-eqz v4, :cond_ab

    .line 167
    check-cast v3, Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;

    invoke-virtual {v9, v3}, Lcom/s1243808733/android/dx/dex/file/MethodHandlesSection;->intern(Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;)V

    goto :goto_ef

    .line 168
    :cond_ab
    instance-of v4, v3, Lcom/s1243808733/android/dx/rop/cst/CstInvokeDynamic;

    if-eqz v4, :cond_ef

    .line 169
    check-cast v3, Lcom/s1243808733/android/dx/rop/cst/CstInvokeDynamic;

    .line 170
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/cst/CstInvokeDynamic;->getBootstrapMethodIndex()I

    move-result v4

    .line 171
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getBootstrapMethods()Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList;->get(I)Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList$Item;

    move-result-object v4

    .line 173
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList$Item;->getBootstrapMethodHandle()Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;

    move-result-object v5

    .line 174
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/cst/CstInvokeDynamic;->getNat()Lcom/s1243808733/android/dx/rop/cst/CstNat;

    move-result-object v11

    .line 175
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList$Item;->getBootstrapMethodArguments()Lcom/s1243808733/android/dx/cf/code/BootstrapMethodArgumentsList;

    move-result-object v4

    .line 173
    invoke-static {v5, v11, v4}, Lcom/s1243808733/android/dx/rop/cst/CstCallSite;->make(Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;Lcom/s1243808733/android/dx/rop/cst/CstNat;Lcom/s1243808733/android/dx/cf/code/BootstrapMethodArgumentsList;)Lcom/s1243808733/android/dx/rop/cst/CstCallSite;

    move-result-object v4

    .line 176
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getThisClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/s1243808733/android/dx/rop/cst/CstInvokeDynamic;->setDeclaringClass(Lcom/s1243808733/android/dx/rop/cst/CstType;)V

    .line 177
    invoke-virtual {v3, v4}, Lcom/s1243808733/android/dx/rop/cst/CstInvokeDynamic;->setCallSite(Lcom/s1243808733/android/dx/rop/cst/CstCallSite;)V

    .line 178
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/cst/CstInvokeDynamic;->getReferences()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_df
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ef

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/s1243808733/android/dx/rop/cst/CstCallSiteRef;

    .line 179
    invoke-virtual {v10, v4}, Lcom/s1243808733/android/dx/dex/file/CallSiteIdsSection;->intern(Lcom/s1243808733/android/dx/rop/cst/CstCallSiteRef;)V

    goto :goto_df

    :cond_ef
    :goto_ef
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6a

    :cond_f3
    return-object v13
.end method

.method private static updateDexStatistics(Lcom/s1243808733/android/dx/command/dexer/DxContext;Lcom/s1243808733/android/dx/dex/cf/CfOptions;Lcom/s1243808733/android/dx/dex/DexOptions;Lcom/s1243808733/android/dx/rop/code/RopMethod;Lcom/s1243808733/android/dx/rop/code/RopMethod;Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;II)V
    .registers 9

    .line 417
    iget v0, p1, Lcom/s1243808733/android/dx/dex/cf/CfOptions;->positionInfo:I

    invoke-static {p3, v0, p5, p6, p2}, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->translate(Lcom/s1243808733/android/dx/rop/code/RopMethod;ILcom/s1243808733/android/dx/rop/code/LocalVariableInfo;ILcom/s1243808733/android/dx/dex/DexOptions;)Lcom/s1243808733/android/dx/dex/code/DalvCode;

    move-result-object p3

    .line 419
    iget p1, p1, Lcom/s1243808733/android/dx/dex/cf/CfOptions;->positionInfo:I

    invoke-static {p4, p1, p5, p6, p2}, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->translate(Lcom/s1243808733/android/dx/rop/code/RopMethod;ILcom/s1243808733/android/dx/rop/code/LocalVariableInfo;ILcom/s1243808733/android/dx/dex/DexOptions;)Lcom/s1243808733/android/dx/dex/code/DalvCode;

    move-result-object p1

    .line 427
    new-instance p2, Lcom/s1243808733/android/dx/dex/cf/CfTranslator$1;

    invoke-direct {p2}, Lcom/s1243808733/android/dx/dex/cf/CfTranslator$1;-><init>()V

    .line 436
    invoke-virtual {p3, p2}, Lcom/s1243808733/android/dx/dex/code/DalvCode;->assignIndices(Lcom/s1243808733/android/dx/dex/code/DalvCode$AssignIndicesCallback;)V

    .line 437
    invoke-virtual {p1, p2}, Lcom/s1243808733/android/dx/dex/code/DalvCode;->assignIndices(Lcom/s1243808733/android/dx/dex/code/DalvCode$AssignIndicesCallback;)V

    .line 439
    iget-object p2, p0, Lcom/s1243808733/android/dx/command/dexer/DxContext;->codeStatistics:Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;

    invoke-virtual {p2, p1, p3}, Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;->updateDexStatistics(Lcom/s1243808733/android/dx/dex/code/DalvCode;Lcom/s1243808733/android/dx/dex/code/DalvCode;)V

    .line 440
    iget-object p0, p0, Lcom/s1243808733/android/dx/command/dexer/DxContext;->codeStatistics:Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;

    invoke-virtual {p0, p7}, Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;->updateOriginalByteCount(I)V

    return-void
.end method
