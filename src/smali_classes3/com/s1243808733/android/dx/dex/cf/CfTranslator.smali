.class public Lcom/s1243808733/android/dx/dex/cf/CfTranslator;
.super Ljava/lang/Object;
.source "CfTranslator.java"


# static fields
.field private static final DEBUG:Z


# direct methods
.method constructor <init>()V
    .registers 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static coerceConstant(Lcom/s1243808733/android/dx/rop/cst/TypedConstant;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/cst/TypedConstant;
    .registers 7

    .line 241
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/TypedConstant;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    .line 243
    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/rop/type/Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    :goto_0
    return-object p0

    .line 247
    :cond_0
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/type/Type;->getBasicType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 261
    :pswitch_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "can\'t coerce "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :pswitch_1
    check-cast p0, Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->getValue()I

    move-result v0

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/cst/CstBoolean;->make(I)Lcom/s1243808733/android/dx/rop/cst/CstBoolean;

    move-result-object p0

    goto :goto_0

    .line 252
    :pswitch_2
    check-cast p0, Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->getValue()I

    move-result v0

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/cst/CstByte;->make(I)Lcom/s1243808733/android/dx/rop/cst/CstByte;

    move-result-object p0

    goto :goto_0

    .line 255
    :pswitch_3
    check-cast p0, Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->getValue()I

    move-result v0

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/cst/CstChar;->make(I)Lcom/s1243808733/android/dx/rop/cst/CstChar;

    move-result-object p0

    goto :goto_0

    .line 258
    :pswitch_4
    check-cast p0, Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->getValue()I

    move-result v0

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/cst/CstShort;->make(I)Lcom/s1243808733/android/dx/rop/cst/CstShort;

    move-result-object p0

    goto :goto_0

    .line 247
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private static processFields(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;Lcom/s1243808733/android/dx/dex/file/ClassDefItem;Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;",
            "Lcom/s1243808733/android/dx/dex/file/ClassDefItem;",
            "Lcom/s1243808733/android/dx/dex/file/DexFile;",
            ")V"
        }
    .end annotation

    .line 196
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getThisClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v2

    .line 197
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getFields()Lcom/s1243808733/android/dx/cf/iface/FieldList;

    move-result-object v3

    .line 198
    invoke-interface {v3}, Lcom/s1243808733/android/dx/cf/iface/FieldList;->size()I

    move-result v4

    .line 200
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v4, :cond_0

    return-void

    .line 201
    :cond_0
    invoke-interface {v3, v0}, Lcom/s1243808733/android/dx/cf/iface/FieldList;->get(I)Lcom/s1243808733/android/dx/cf/iface/Field;

    move-result-object v5

    .line 203
    :try_start_0
    new-instance v6, Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    invoke-interface {v5}, Lcom/s1243808733/android/dx/cf/iface/Field;->getNat()Lcom/s1243808733/android/dx/rop/cst/CstNat;

    move-result-object v1

    invoke-direct {v6, v2, v1}, Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/rop/cst/CstNat;)V

    .line 204
    invoke-interface {v5}, Lcom/s1243808733/android/dx/cf/iface/Field;->getAccessFlags()I

    move-result v7

    .line 206
    invoke-static {v7}, Lcom/s1243808733/android/dx/rop/code/AccessFlags;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 207
    invoke-interface {v5}, Lcom/s1243808733/android/dx/cf/iface/Field;->getConstantValue()Lcom/s1243808733/android/dx/rop/cst/TypedConstant;

    move-result-object v1

    .line 208
    new-instance v8, Lcom/s1243808733/android/dx/dex/file/EncodedField;

    invoke-direct {v8, v6, v7}, Lcom/s1243808733/android/dx/dex/file/EncodedField;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;I)V

    .line 209
    if-eqz v1, :cond_1

    .line 210
    invoke-virtual {v6}, Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/s1243808733/android/dx/dex/cf/CfTranslator;->coerceConstant(Lcom/s1243808733/android/dx/rop/cst/TypedConstant;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/cst/TypedConstant;

    move-result-object v1

    .line 212
    :cond_1
    invoke-virtual {p1, v8, v1}, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->addStaticField(Lcom/s1243808733/android/dx/dex/file/EncodedField;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    .line 218
    :goto_1
    invoke-interface {v5}, Lcom/s1243808733/android/dx/cf/iface/Field;->getAttributes()Lcom/s1243808733/android/dx/cf/iface/AttributeList;

    move-result-object v1

    invoke-static {v1}, Lcom/s1243808733/android/dx/dex/cf/AttributeTranslator;->getAnnotations(Lcom/s1243808733/android/dx/cf/iface/AttributeList;)Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    move-result-object v1

    .line 220
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->size()I

    move-result v7

    if-eqz v7, :cond_2

    .line 221
    invoke-virtual {p1, v6, v1, p2}, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->addFieldAnnotations(Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;Lcom/s1243808733/android/dx/rop/annotation/Annotations;Lcom/s1243808733/android/dx/dex/file/DexFile;)V

    .line 223
    :cond_2
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getFieldIds()Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;->intern(Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;)Lcom/s1243808733/android/dx/dex/file/FieldIdItem;

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 214
    :cond_3
    new-instance v1, Lcom/s1243808733/android/dx/dex/file/EncodedField;

    invoke-direct {v1, v6, v7}, Lcom/s1243808733/android/dx/dex/file/EncodedField;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;I)V

    .line 215
    invoke-virtual {p1, v1}, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->addInstanceField(Lcom/s1243808733/android/dx/dex/file/EncodedField;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 223
    :catch_0
    move-exception v0

    .line 225
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "...while processing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-interface {v5}, Lcom/s1243808733/android/dx/cf/iface/Field;->getName()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v4

    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-interface {v5}, Lcom/s1243808733/android/dx/cf/iface/Field;->getDescriptor()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 227
    invoke-static {v0, v1}, Lcom/s1243808733/android/dex/util/ExceptionWithContext;->withContext(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/s1243808733/android/dex/util/ExceptionWithContext;

    move-result-object v0

    throw v0
.end method

.method private static processMethods(Lcom/s1243808733/android/dx/command/dexer/DxContext;Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;Lcom/s1243808733/android/dx/dex/cf/CfOptions;Lcom/s1243808733/android/dx/dex/DexOptions;Lcom/s1243808733/android/dx/dex/file/ClassDefItem;Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/command/dexer/DxContext;",
            "Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;",
            "Lcom/s1243808733/android/dx/dex/cf/CfOptions;",
            "Lcom/s1243808733/android/dx/dex/DexOptions;",
            "Lcom/s1243808733/android/dx/dex/file/ClassDefItem;",
            "Lcom/s1243808733/android/dx/dex/file/DexFile;",
            ")V"
        }
    .end annotation

    .line 279
    invoke-virtual/range {p1 .. p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getThisClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v15

    .line 280
    invoke-virtual/range {p1 .. p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getMethods()Lcom/s1243808733/android/dx/cf/iface/MethodList;

    move-result-object v16

    .line 281
    invoke-interface/range {v16 .. v16}, Lcom/s1243808733/android/dx/cf/iface/MethodList;->size()I

    move-result v17

    .line 283
    const/4 v3, 0x0

    move v14, v3

    :goto_0
    move/from16 v0, v17

    if-lt v14, v0, :cond_0

    return-void

    .line 284
    :cond_0
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Lcom/s1243808733/android/dx/cf/iface/MethodList;->get(I)Lcom/s1243808733/android/dx/cf/iface/Method;

    move-result-object v18

    .line 286
    :try_start_0
    new-instance v19, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    invoke-interface/range {v18 .. v18}, Lcom/s1243808733/android/dx/cf/iface/Method;->getNat()Lcom/s1243808733/android/dx/rop/cst/CstNat;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-direct {v0, v15, v3}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/rop/cst/CstNat;)V

    .line 287
    invoke-interface/range {v18 .. v18}, Lcom/s1243808733/android/dx/cf/iface/Method;->getAccessFlags()I

    move-result v11

    .line 288
    invoke-static {v11}, Lcom/s1243808733/android/dx/rop/code/AccessFlags;->isStatic(I)Z

    move-result v20

    .line 289
    invoke-static {v11}, Lcom/s1243808733/android/dx/rop/code/AccessFlags;->isPrivate(I)Z

    move-result v21

    .line 290
    invoke-static {v11}, Lcom/s1243808733/android/dx/rop/code/AccessFlags;->isNative(I)Z

    move-result v22

    .line 291
    invoke-static {v11}, Lcom/s1243808733/android/dx/rop/code/AccessFlags;->isAbstract(I)Z

    move-result v4

    .line 292
    invoke-virtual/range {v19 .. v19}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->isInstanceInit()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual/range {v19 .. v19}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->isClassInit()Z

    move-result v3

    if-nez v3, :cond_7

    const/4 v3, 0x0

    move v13, v3

    .line 294
    :goto_1
    if-nez v22, :cond_1

    if-eqz v4, :cond_8

    .line 298
    :cond_1
    const/4 v3, 0x0

    check-cast v3, Lcom/s1243808733/android/dx/dex/code/DalvCode;

    move-object v4, v3

    .line 356
    :goto_2
    invoke-static {v11}, Lcom/s1243808733/android/dx/rop/code/AccessFlags;->isSynchronized(I)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 357
    const/high16 v3, 0x20000

    or-int/2addr v3, v11

    .line 363
    if-nez v22, :cond_2

    .line 364
    and-int/lit8 v3, v3, -0x21

    .line 368
    :cond_2
    :goto_3
    if-eqz v13, :cond_3

    .line 369
    const/high16 v5, 0x10000

    or-int/2addr v3, v5

    .line 372
    :cond_3
    invoke-static/range {v18 .. v18}, Lcom/s1243808733/android/dx/dex/cf/AttributeTranslator;->getExceptions(Lcom/s1243808733/android/dx/cf/iface/Method;)Lcom/s1243808733/android/dx/rop/type/TypeList;

    move-result-object v5

    .line 373
    new-instance v6, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;

    move-object/from16 v0, v19

    invoke-direct {v6, v0, v3, v4, v5}, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;ILcom/s1243808733/android/dx/dex/code/DalvCode;Lcom/s1243808733/android/dx/rop/type/TypeList;)V

    .line 376
    invoke-virtual/range {v19 .. v19}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->isInstanceInit()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual/range {v19 .. v19}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->isClassInit()Z

    move-result v3

    if-nez v3, :cond_4

    if-nez v20, :cond_4

    if-eqz v21, :cond_c

    .line 378
    :cond_4
    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->addDirectMethod(Lcom/s1243808733/android/dx/dex/file/EncodedMethod;)V

    .line 383
    :goto_4
    invoke-static/range {v18 .. v18}, Lcom/s1243808733/android/dx/dex/cf/AttributeTranslator;->getMethodAnnotations(Lcom/s1243808733/android/dx/cf/iface/Method;)Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    move-result-object v3

    .line 385
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->size()I

    move-result v4

    if-eqz v4, :cond_5

    .line 386
    move-object/from16 v0, p4

    move-object/from16 v1, v19

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v3, v2}, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->addMethodAnnotations(Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;Lcom/s1243808733/android/dx/rop/annotation/Annotations;Lcom/s1243808733/android/dx/dex/file/DexFile;)V

    .line 389
    :cond_5
    invoke-static/range {v18 .. v18}, Lcom/s1243808733/android/dx/dex/cf/AttributeTranslator;->getParameterAnnotations(Lcom/s1243808733/android/dx/cf/iface/Method;)Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;

    move-result-object v3

    .line 391
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;->size()I

    move-result v4

    if-eqz v4, :cond_6

    .line 392
    move-object/from16 v0, p4

    move-object/from16 v1, v19

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v3, v2}, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->addParameterAnnotations(Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;Lcom/s1243808733/android/dx/dex/file/DexFile;)V

    .line 394
    :cond_6
    invoke-virtual/range {p5 .. p5}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getMethodIds()Lcom/s1243808733/android/dx/dex/file/MethodIdsSection;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/s1243808733/android/dx/dex/file/MethodIdsSection;->intern(Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;)Lcom/s1243808733/android/dx/dex/file/MethodIdItem;

    .line 283
    add-int/lit8 v3, v14, 0x1

    move v14, v3

    goto/16 :goto_0

    .line 292
    :cond_7
    const/4 v3, 0x1

    move v13, v3

    goto :goto_1

    .line 300
    :cond_8
    new-instance v5, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;

    move-object/from16 v0, p2

    iget v3, v0, Lcom/s1243808733/android/dx/dex/cf/CfOptions;->positionInfo:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_b

    const/4 v3, 0x0

    :goto_5
    move-object/from16 v0, p2

    iget-boolean v4, v0, Lcom/s1243808733/android/dx/dex/cf/CfOptions;->localInfo:Z

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v5, v0, v1, v3, v4}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;-><init>(Lcom/s1243808733/android/dx/cf/iface/Method;Lcom/s1243808733/android/dx/cf/iface/ClassFile;ZZ)V

    .line 305
    sget-object v6, Lcom/s1243808733/android/dx/rop/code/DexTranslationAdvice;->THE_ONE:Lcom/s1243808733/android/dx/rop/code/DexTranslationAdvice;

    .line 309
    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-static {v5, v6, v0, v1}, Lcom/s1243808733/android/dx/cf/code/Ropper;->convert(Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;Lcom/s1243808733/android/dx/rop/code/TranslationAdvice;Lcom/s1243808733/android/dx/cf/iface/MethodList;Lcom/s1243808733/android/dx/dex/DexOptions;)Lcom/s1243808733/android/dx/rop/code/RopMethod;

    move-result-object v4

    .line 310
    const/4 v3, 0x0

    check-cast v3, Lcom/s1243808733/android/dx/rop/code/RopMethod;

    .line 311
    invoke-virtual/range {v19 .. v20}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->getParameterWordCount(Z)I

    move-result v9

    .line 315
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v15}, Lcom/s1243808733/android/dx/rop/cst/CstType;->getClassType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v10

    invoke-virtual {v10}, Lcom/s1243808733/android/dx/rop/type/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v10, "."

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-interface/range {v18 .. v18}, Lcom/s1243808733/android/dx/cf/iface/Method;->getName()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v8

    invoke-virtual {v8}, Lcom/s1243808733/android/dx/rop/cst/CstString;->getString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 319
    move-object/from16 v0, p2

    iget-boolean v8, v0, Lcom/s1243808733/android/dx/dex/cf/CfOptions;->optimize:Z

    if-eqz v8, :cond_f

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/s1243808733/android/dx/command/dexer/DxContext;->optimizerOptions:Lcom/s1243808733/android/dx/dex/cf/OptimizerOptions;

    invoke-virtual {v8, v7}, Lcom/s1243808733/android/dx/dex/cf/OptimizerOptions;->shouldOptimize(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 326
    move-object/from16 v0, p2

    iget-boolean v3, v0, Lcom/s1243808733/android/dx/dex/cf/CfOptions;->localInfo:Z

    move/from16 v0, v20

    invoke-static {v4, v9, v0, v3, v6}, Lcom/s1243808733/android/dx/ssa/Optimizer;->optimize(Lcom/s1243808733/android/dx/rop/code/RopMethod;IZZLcom/s1243808733/android/dx/rop/code/TranslationAdvice;)Lcom/s1243808733/android/dx/rop/code/RopMethod;

    move-result-object v6

    .line 334
    move-object/from16 v0, p2

    iget-boolean v3, v0, Lcom/s1243808733/android/dx/dex/cf/CfOptions;->statistics:Z

    if-eqz v3, :cond_9

    .line 335
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/s1243808733/android/dx/command/dexer/DxContext;->codeStatistics:Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;

    invoke-virtual {v3, v4, v6}, Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;->updateRopStatistics(Lcom/s1243808733/android/dx/rop/code/RopMethod;Lcom/s1243808733/android/dx/rop/code/RopMethod;)V

    :cond_9
    move-object v7, v4

    .line 340
    :goto_6
    const/4 v3, 0x0

    check-cast v3, Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;

    .line 342
    move-object/from16 v0, p2

    iget-boolean v4, v0, Lcom/s1243808733/android/dx/dex/cf/CfOptions;->localInfo:Z

    if-eqz v4, :cond_e

    .line 343
    invoke-static {v6}, Lcom/s1243808733/android/dx/rop/code/LocalVariableExtractor;->extract(Lcom/s1243808733/android/dx/rop/code/RopMethod;)Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;

    move-result-object v8

    .line 346
    :goto_7
    move-object/from16 v0, p2

    iget v3, v0, Lcom/s1243808733/android/dx/dex/cf/CfOptions;->positionInfo:I

    move-object/from16 v0, p3

    invoke-static {v6, v3, v8, v9, v0}, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->translate(Lcom/s1243808733/android/dx/rop/code/RopMethod;ILcom/s1243808733/android/dx/rop/code/LocalVariableInfo;ILcom/s1243808733/android/dx/dex/DexOptions;)Lcom/s1243808733/android/dx/dex/code/DalvCode;

    move-result-object v12

    .line 349
    move-object/from16 v0, p2

    iget-boolean v3, v0, Lcom/s1243808733/android/dx/dex/cf/CfOptions;->statistics:Z

    if-eqz v3, :cond_a

    if-eqz v7, :cond_a

    .line 350
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->getCode()Lcom/s1243808733/android/dx/cf/code/BytecodeArray;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->size()I

    move-result v10

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v10}, Lcom/s1243808733/android/dx/dex/cf/CfTranslator;->updateDexStatistics(Lcom/s1243808733/android/dx/command/dexer/DxContext;Lcom/s1243808733/android/dx/dex/cf/CfOptions;Lcom/s1243808733/android/dx/dex/DexOptions;Lcom/s1243808733/android/dx/rop/code/RopMethod;Lcom/s1243808733/android/dx/rop/code/RopMethod;Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;II)V

    :cond_a
    move-object v4, v12

    goto/16 :goto_2

    .line 300
    :cond_b
    const/4 v3, 0x1

    goto/16 :goto_5

    .line 380
    :cond_c
    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->addVirtualMethod(Lcom/s1243808733/android/dx/dex/file/EncodedMethod;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    .line 394
    :catch_0
    move-exception v3

    .line 396
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "...while processing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-interface/range {v18 .. v18}, Lcom/s1243808733/android/dx/cf/iface/Method;->getName()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v7

    invoke-virtual {v7}, Lcom/s1243808733/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-interface/range {v18 .. v18}, Lcom/s1243808733/android/dx/cf/iface/Method;->getDescriptor()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v5

    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 398
    invoke-static {v3, v4}, Lcom/s1243808733/android/dex/util/ExceptionWithContext;->withContext(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/s1243808733/android/dex/util/ExceptionWithContext;

    move-result-object v3

    throw v3

    :cond_d
    move v3, v11

    goto/16 :goto_3

    :cond_e
    move-object v8, v3

    goto/16 :goto_7

    :cond_f
    move-object v7, v3

    move-object v6, v4

    goto/16 :goto_6
.end method

.method public static translate(Lcom/s1243808733/android/dx/command/dexer/DxContext;Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;[BLcom/s1243808733/android/dx/dex/cf/CfOptions;Lcom/s1243808733/android/dx/dex/DexOptions;Lcom/s1243808733/android/dx/dex/file/DexFile;)Lcom/s1243808733/android/dx/dex/file/ClassDefItem;
    .registers 9

    .line 102
    :try_start_0
    invoke-static/range {p0 .. p5}, Lcom/s1243808733/android/dx/dex/cf/CfTranslator;->translate0(Lcom/s1243808733/android/dx/command/dexer/DxContext;Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;[BLcom/s1243808733/android/dx/dex/cf/CfOptions;Lcom/s1243808733/android/dx/dex/DexOptions;Lcom/s1243808733/android/dx/dex/file/DexFile;)Lcom/s1243808733/android/dx/dex/file/ClassDefItem;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 104
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "...while processing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-static {v0, v1}, Lcom/s1243808733/android/dex/util/ExceptionWithContext;->withContext(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/s1243808733/android/dex/util/ExceptionWithContext;

    move-result-object v0

    throw v0
.end method

.method private static translate0(Lcom/s1243808733/android/dx/command/dexer/DxContext;Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;[BLcom/s1243808733/android/dx/dex/cf/CfOptions;Lcom/s1243808733/android/dx/dex/DexOptions;Lcom/s1243808733/android/dx/dex/file/DexFile;)Lcom/s1243808733/android/dx/dex/file/ClassDefItem;
    .registers 19

    .line 126
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/DxContext;->optimizerOptions:Lcom/s1243808733/android/dx/dex/cf/OptimizerOptions;

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/s1243808733/android/dx/dex/cf/CfOptions;->optimizeListFile:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/s1243808733/android/dx/dex/cf/CfOptions;->dontOptimizeListFile:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/s1243808733/android/dx/dex/cf/OptimizerOptions;->loadOptimizeLists(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getThisClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v2

    .line 132
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getAccessFlags()I

    move-result v3

    .line 133
    move-object/from16 v0, p3

    iget v1, v0, Lcom/s1243808733/android/dx/dex/cf/CfOptions;->positionInfo:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    const/4 v1, 0x0

    check-cast v1, Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-object v6, v1

    .line 135
    :goto_0
    new-instance v1, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;

    and-int/lit8 v3, v3, -0x21

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getSuperclass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v4

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getInterfaces()Lcom/s1243808733/android/dx/rop/type/TypeList;

    move-result-object v5

    invoke-direct/range {v1 .. v6}, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstType;ILcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/rop/type/TypeList;Lcom/s1243808733/android/dx/rop/cst/CstString;)V

    .line 139
    move-object/from16 v0, p3

    invoke-static {p1, v0}, Lcom/s1243808733/android/dx/dex/cf/AttributeTranslator;->getClassAnnotations(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;Lcom/s1243808733/android/dx/dex/cf/CfOptions;)Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    move-result-object v2

    .line 141
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 142
    move-object/from16 v0, p5

    invoke-virtual {v1, v2, v0}, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;->setClassAnnotations(Lcom/s1243808733/android/dx/rop/annotation/Annotations;Lcom/s1243808733/android/dx/dex/file/DexFile;)V

    .line 145
    :cond_0
    invoke-virtual/range {p5 .. p5}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getFieldIds()Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;

    move-result-object v8

    .line 146
    invoke-virtual/range {p5 .. p5}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getMethodIds()Lcom/s1243808733/android/dx/dex/file/MethodIdsSection;

    move-result-object v9

    .line 147
    invoke-virtual/range {p5 .. p5}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getMethodHandles()Lcom/s1243808733/android/dx/dex/file/MethodHandlesSection;

    move-result-object v10

    .line 148
    invoke-virtual/range {p5 .. p5}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getCallSiteIds()Lcom/s1243808733/android/dx/dex/file/CallSiteIdsSection;

    move-result-object v11

    .line 149
    move-object/from16 v0, p5

    invoke-static {p1, v1, v0}, Lcom/s1243808733/android/dx/dex/cf/CfTranslator;->processFields(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;Lcom/s1243808733/android/dx/dex/file/ClassDefItem;Lcom/s1243808733/android/dx/dex/file/DexFile;)V

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object v6, v1

    move-object/from16 v7, p5

    .line 150
    invoke-static/range {v2 .. v7}, Lcom/s1243808733/android/dx/dex/cf/CfTranslator;->processMethods(Lcom/s1243808733/android/dx/command/dexer/DxContext;Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;Lcom/s1243808733/android/dx/dex/cf/CfOptions;Lcom/s1243808733/android/dx/dex/DexOptions;Lcom/s1243808733/android/dx/dex/file/ClassDefItem;Lcom/s1243808733/android/dx/dex/file/DexFile;)V

    .line 153
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getConstantPool()Lcom/s1243808733/android/dx/rop/cst/ConstantPool;

    move-result-object v4

    .line 154
    invoke-interface {v4}, Lcom/s1243808733/android/dx/rop/cst/ConstantPool;->size()I

    move-result v5

    .line 156
    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-lt v3, v5, :cond_2

    .line 184
    return-object v1

    .line 133
    :cond_1
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getSourceFile()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v6

    goto :goto_0

    .line 157
    :cond_2
    invoke-interface {v4, v3}, Lcom/s1243808733/android/dx/rop/cst/ConstantPool;->getOrNull(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v2

    .line 158
    instance-of v6, v2, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    if-eqz v6, :cond_4

    .line 159
    check-cast v2, Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;

    invoke-virtual {v9, v2}, Lcom/s1243808733/android/dx/dex/file/MethodIdsSection;->intern(Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;)Lcom/s1243808733/android/dx/dex/file/MethodIdItem;

    .line 156
    :cond_3
    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    .line 160
    :cond_4
    instance-of v6, v2, Lcom/s1243808733/android/dx/rop/cst/CstInterfaceMethodRef;

    if-eqz v6, :cond_5

    .line 161
    check-cast v2, Lcom/s1243808733/android/dx/rop/cst/CstInterfaceMethodRef;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/cst/CstInterfaceMethodRef;->toMethodRef()Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/s1243808733/android/dx/dex/file/MethodIdsSection;->intern(Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;)Lcom/s1243808733/android/dx/dex/file/MethodIdItem;

    goto :goto_2

    .line 162
    :cond_5
    instance-of v6, v2, Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    if-eqz v6, :cond_6

    .line 163
    check-cast v2, Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    invoke-virtual {v8, v2}, Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;->intern(Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;)Lcom/s1243808733/android/dx/dex/file/FieldIdItem;

    goto :goto_2

    .line 164
    :cond_6
    instance-of v6, v2, Lcom/s1243808733/android/dx/rop/cst/CstEnumRef;

    if-eqz v6, :cond_7

    .line 165
    check-cast v2, Lcom/s1243808733/android/dx/rop/cst/CstEnumRef;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/cst/CstEnumRef;->getFieldRef()Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;->intern(Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;)Lcom/s1243808733/android/dx/dex/file/FieldIdItem;

    goto :goto_2

    .line 166
    :cond_7
    instance-of v6, v2, Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;

    if-eqz v6, :cond_8

    .line 167
    check-cast v2, Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;

    invoke-virtual {v10, v2}, Lcom/s1243808733/android/dx/dex/file/MethodHandlesSection;->intern(Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;)V

    goto :goto_2

    .line 168
    :cond_8
    instance-of v6, v2, Lcom/s1243808733/android/dx/rop/cst/CstInvokeDynamic;

    if-eqz v6, :cond_3

    .line 169
    check-cast v2, Lcom/s1243808733/android/dx/rop/cst/CstInvokeDynamic;

    .line 170
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/cst/CstInvokeDynamic;->getBootstrapMethodIndex()I

    move-result v6

    .line 171
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getBootstrapMethods()Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList;->get(I)Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList$Item;

    move-result-object v6

    .line 172
    invoke-virtual {v6}, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList$Item;->getBootstrapMethodHandle()Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;

    move-result-object v7

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/cst/CstInvokeDynamic;->getNat()Lcom/s1243808733/android/dx/rop/cst/CstNat;

    move-result-object v12

    invoke-virtual {v6}, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList$Item;->getBootstrapMethodArguments()Lcom/s1243808733/android/dx/cf/code/BootstrapMethodArgumentsList;

    move-result-object v6

    invoke-static {v7, v12, v6}, Lcom/s1243808733/android/dx/rop/cst/CstCallSite;->make(Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;Lcom/s1243808733/android/dx/rop/cst/CstNat;Lcom/s1243808733/android/dx/cf/code/BootstrapMethodArgumentsList;)Lcom/s1243808733/android/dx/rop/cst/CstCallSite;

    move-result-object v6

    .line 176
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getThisClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/s1243808733/android/dx/rop/cst/CstInvokeDynamic;->setDeclaringClass(Lcom/s1243808733/android/dx/rop/cst/CstType;)V

    .line 177
    invoke-virtual {v2, v6}, Lcom/s1243808733/android/dx/rop/cst/CstInvokeDynamic;->setCallSite(Lcom/s1243808733/android/dx/rop/cst/CstCallSite;)V

    .line 178
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/cst/CstInvokeDynamic;->getReferences()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 179
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 178
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/s1243808733/android/dx/rop/cst/CstCallSiteRef;

    .line 179
    invoke-virtual {v11, v2}, Lcom/s1243808733/android/dx/dex/file/CallSiteIdsSection;->intern(Lcom/s1243808733/android/dx/rop/cst/CstCallSiteRef;)V

    goto :goto_3
.end method

.method private static updateDexStatistics(Lcom/s1243808733/android/dx/command/dexer/DxContext;Lcom/s1243808733/android/dx/dex/cf/CfOptions;Lcom/s1243808733/android/dx/dex/DexOptions;Lcom/s1243808733/android/dx/rop/code/RopMethod;Lcom/s1243808733/android/dx/rop/code/RopMethod;Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;II)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/command/dexer/DxContext;",
            "Lcom/s1243808733/android/dx/dex/cf/CfOptions;",
            "Lcom/s1243808733/android/dx/dex/DexOptions;",
            "Lcom/s1243808733/android/dx/rop/code/RopMethod;",
            "Lcom/s1243808733/android/dx/rop/code/RopMethod;",
            "Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;",
            "II)V"
        }
    .end annotation

    .line 417
    iget v0, p1, Lcom/s1243808733/android/dx/dex/cf/CfOptions;->positionInfo:I

    invoke-static {p3, v0, p5, p6, p2}, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->translate(Lcom/s1243808733/android/dx/rop/code/RopMethod;ILcom/s1243808733/android/dx/rop/code/LocalVariableInfo;ILcom/s1243808733/android/dx/dex/DexOptions;)Lcom/s1243808733/android/dx/dex/code/DalvCode;

    move-result-object v0

    .line 419
    iget v1, p1, Lcom/s1243808733/android/dx/dex/cf/CfOptions;->positionInfo:I

    invoke-static {p4, v1, p5, p6, p2}, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->translate(Lcom/s1243808733/android/dx/rop/code/RopMethod;ILcom/s1243808733/android/dx/rop/code/LocalVariableInfo;ILcom/s1243808733/android/dx/dex/DexOptions;)Lcom/s1243808733/android/dx/dex/code/DalvCode;

    move-result-object v1

    .line 427
    new-instance v2, Lcom/s1243808733/android/dx/dex/cf/CfTranslator$100000000;

    invoke-direct {v2}, Lcom/s1243808733/android/dx/dex/cf/CfTranslator$100000000;-><init>()V

    .line 436
    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/dex/code/DalvCode;->assignIndices(Lcom/s1243808733/android/dx/dex/code/DalvCode$AssignIndicesCallback;)V

    .line 437
    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/dex/code/DalvCode;->assignIndices(Lcom/s1243808733/android/dx/dex/code/DalvCode$AssignIndicesCallback;)V

    .line 439
    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dexer/DxContext;->codeStatistics:Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;

    invoke-virtual {v2, v1, v0}, Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;->updateDexStatistics(Lcom/s1243808733/android/dx/dex/code/DalvCode;Lcom/s1243808733/android/dx/dex/code/DalvCode;)V

    .line 440
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/DxContext;->codeStatistics:Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;

    invoke-virtual {v0, p7}, Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;->updateOriginalByteCount(I)V

    return-void
.end method
