.class public Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;
.super Lcom/s1243808733/android/dx/cf/direct/AttributeFactory;
.source "StdAttributeFactory.java"


# static fields
.field public static final THE_ONE:Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    new-instance v0, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;-><init>()V

    sput-object v0, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->THE_ONE:Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/s1243808733/android/dx/cf/direct/AttributeFactory;-><init>()V

    return-void
.end method

.method private annotationDefault(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;
    .locals 2

    const/4 v0, 0x2

    if-ge p3, v0, :cond_0

    .line 208
    invoke-static {}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->throwSeverelyTruncated()Lcom/s1243808733/android/dx/cf/iface/Attribute;

    .line 211
    :cond_0
    new-instance v0, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;-><init>(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)V

    .line 213
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->parseValueAttribute()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    .line 215
    new-instance v1, Lcom/s1243808733/android/dx/cf/attrib/AttAnnotationDefault;

    invoke-direct {v1, v0, p3}, Lcom/s1243808733/android/dx/cf/attrib/AttAnnotationDefault;-><init>(Lcom/s1243808733/android/dx/rop/cst/Constant;I)V

    return-object v1
.end method

.method private bootstrapMethods(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;
    .locals 8

    const/4 v3, 0x2

    if-ge p3, v3, :cond_0

    .line 224
    invoke-static {}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->throwSeverelyTruncated()Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    .line 240
    :goto_0
    return-object v0

    .line 227
    :cond_0
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getBytes()Lcom/s1243808733/android/dx/util/ByteArray;

    move-result-object v1

    .line 228
    invoke-virtual {v1, p2}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v4

    if-eqz p4, :cond_1

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "num_boostrap_methods: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 231
    invoke-static {v4}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 230
    invoke-interface {p4, v1, p2, v3, v0}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 237
    :cond_1
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getConstantPool()Lcom/s1243808733/android/dx/rop/cst/ConstantPool;

    move-result-object v2

    .line 238
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getThisClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v3

    .line 237
    add-int/lit8 v5, p2, 0x2

    add-int/lit8 v6, p3, -0x2

    move-object v0, p0

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->parseBootstrapMethods(Lcom/s1243808733/android/dx/util/ByteArray;Lcom/s1243808733/android/dx/rop/cst/ConstantPool;Lcom/s1243808733/android/dx/rop/cst/CstType;IIILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList;

    move-result-object v1

    .line 240
    new-instance v0, Lcom/s1243808733/android/dx/cf/attrib/AttBootstrapMethods;

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/cf/attrib/AttBootstrapMethods;-><init>(Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList;)V

    goto :goto_0
.end method

.method private code(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;
    .locals 17

    const/16 v2, 0xc

    move/from16 v0, p3

    if-ge v0, v2, :cond_0

    .line 249
    invoke-static {}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->throwSeverelyTruncated()Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v3

    .line 344
    :goto_0
    return-object v3

    .line 252
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getBytes()Lcom/s1243808733/android/dx/util/ByteArray;

    move-result-object v8

    .line 253
    invoke-virtual/range {p1 .. p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getConstantPool()Lcom/s1243808733/android/dx/rop/cst/ConstantPool;

    move-result-object v11

    .line 254
    move/from16 v0, p2

    invoke-virtual {v8, v0}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v12

    add-int/lit8 v2, p2, 0x2

    .line 255
    invoke-virtual {v8, v2}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v13

    add-int/lit8 v3, p2, 0x4

    .line 256
    invoke-virtual {v8, v3}, Lcom/s1243808733/android/dx/util/ByteArray;->getInt(I)I

    move-result v4

    if-eqz p4, :cond_1

    .line 260
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "max_stack: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    invoke-static {v12}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 260
    const/4 v6, 0x2

    move-object/from16 v0, p4

    move/from16 v1, p2

    invoke-interface {v0, v8, v1, v6, v5}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 262
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "max_locals: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 263
    invoke-static {v13}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 262
    const/4 v6, 0x2

    move-object/from16 v0, p4

    invoke-interface {v0, v8, v2, v6, v5}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 264
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "code_length: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 265
    invoke-static {v4}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 264
    const/4 v5, 0x4

    move-object/from16 v0, p4

    invoke-interface {v0, v8, v3, v5, v2}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    :cond_1
    add-int/lit8 v2, p2, 0x8

    add-int/lit8 v3, p3, -0x8

    add-int/lit8 v5, v4, 0x4

    if-ge v3, v5, :cond_2

    .line 272
    invoke-static {}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->throwTruncated()Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v3

    goto :goto_0

    :cond_2
    add-int v5, v2, v4

    .line 278
    new-instance v14, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;

    invoke-virtual {v8, v2, v5}, Lcom/s1243808733/android/dx/util/ByteArray;->slice(II)Lcom/s1243808733/android/dx/util/ByteArray;

    move-result-object v2

    invoke-direct {v14, v2, v11}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;-><init>(Lcom/s1243808733/android/dx/util/ByteArray;Lcom/s1243808733/android/dx/rop/cst/ConstantPool;)V

    if-eqz p4, :cond_3

    .line 282
    new-instance v2, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;

    invoke-virtual {v14}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->getBytes()Lcom/s1243808733/android/dx/util/ByteArray;

    move-result-object v6

    move-object/from16 v0, p4

    invoke-direct {v2, v6, v0}, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;-><init>(Lcom/s1243808733/android/dx/util/ByteArray;Lcom/s1243808733/android/dx/cf/iface/ParseObserver;)V

    invoke-virtual {v14, v2}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->forEach(Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;)V

    .line 286
    :cond_3
    invoke-virtual {v8, v5}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v15

    if-nez v15, :cond_5

    .line 288
    sget-object v2, Lcom/s1243808733/android/dx/cf/code/ByteCatchList;->EMPTY:Lcom/s1243808733/android/dx/cf/code/ByteCatchList;

    .line 289
    :goto_1
    if-eqz p4, :cond_4

    .line 292
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "exception_table_length: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 294
    invoke-static {v15}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 292
    const/4 v7, 0x2

    move-object/from16 v0, p4

    invoke-interface {v0, v8, v5, v7, v6}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    :cond_4
    add-int/lit8 v5, v5, 0x2

    sub-int/2addr v3, v4

    add-int/lit8 v4, v3, -0x2

    mul-int/lit8 v3, v15, 0x8

    add-int/lit8 v3, v3, 0x2

    if-ge v4, v3, :cond_6

    .line 301
    invoke-static {}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->throwTruncated()Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v3

    goto/16 :goto_0

    .line 289
    :cond_5
    new-instance v2, Lcom/s1243808733/android/dx/cf/code/ByteCatchList;

    invoke-direct {v2, v15}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList;-><init>(I)V

    goto :goto_1

    .line 301
    :cond_6
    const/4 v3, 0x0

    move v9, v4

    move v10, v5

    :goto_2
    if-ge v3, v15, :cond_b

    if-eqz p4, :cond_7

    .line 306
    const/4 v4, 0x1

    move-object/from16 v0, p4

    invoke-interface {v0, v4}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->changeIndent(I)V

    .line 309
    :cond_7
    invoke-virtual {v8, v10}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v4

    .line 310
    add-int/lit8 v5, v10, 0x2

    invoke-virtual {v8, v5}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v5

    .line 311
    add-int/lit8 v6, v10, 0x4

    invoke-virtual {v8, v6}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v6

    .line 312
    add-int/lit8 v7, v10, 0x6

    invoke-virtual {v8, v7}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v7

    .line 313
    invoke-interface {v11, v7}, Lcom/s1243808733/android/dx/rop/cst/ConstantPool;->get0Ok(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v7

    check-cast v7, Lcom/s1243808733/android/dx/rop/cst/CstType;

    .line 314
    invoke-virtual/range {v2 .. v7}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList;->set(IIIILcom/s1243808733/android/dx/rop/cst/CstType;)V

    if-eqz p4, :cond_8

    .line 316
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 317
    invoke-static {v4}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".."

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    invoke-static {v6}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v7, :cond_a

    .line 319
    const-string v4, "<any>"

    .line 320
    :goto_3
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 316
    const/16 v5, 0x8

    move-object/from16 v0, p4

    invoke-interface {v0, v8, v10, v5, v4}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    :cond_8
    add-int/lit8 v5, v10, 0x8

    add-int/lit8 v4, v9, -0x8

    if-eqz p4, :cond_9

    .line 326
    const/4 v6, -0x1

    move-object/from16 v0, p4

    invoke-interface {v0, v6}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->changeIndent(I)V

    :cond_9
    add-int/lit8 v3, v3, 0x1

    move v9, v4

    move v10, v5

    goto/16 :goto_2

    .line 320
    :cond_a
    invoke-virtual {v7}, Lcom/s1243808733/android/dx/rop/cst/CstType;->toHuman()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 330
    :cond_b
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList;->setImmutable()V

    .line 332
    new-instance v3, Lcom/s1243808733/android/dx/cf/direct/AttributeListParser;

    const/4 v4, 0x3

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-direct {v3, v0, v4, v10, v1}, Lcom/s1243808733/android/dx/cf/direct/AttributeListParser;-><init>(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/direct/AttributeFactory;)V

    .line 334
    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Lcom/s1243808733/android/dx/cf/direct/AttributeListParser;->setObserver(Lcom/s1243808733/android/dx/cf/iface/ParseObserver;)V

    .line 336
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/cf/direct/AttributeListParser;->getList()Lcom/s1243808733/android/dx/cf/iface/StdAttributeList;

    move-result-object v8

    .line 337
    invoke-virtual {v8}, Lcom/s1243808733/android/dx/cf/iface/StdAttributeList;->setImmutable()V

    .line 339
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/cf/direct/AttributeListParser;->getEndOffset()I

    move-result v3

    sub-int/2addr v3, v10

    if-eq v3, v9, :cond_c

    .line 341
    sub-int v2, v10, p2

    add-int/2addr v2, v3

    invoke-static {v2}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->throwBadLength(I)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v3

    goto/16 :goto_0

    .line 344
    :cond_c
    new-instance v3, Lcom/s1243808733/android/dx/cf/attrib/AttCode;

    move v4, v12

    move v5, v13

    move-object v6, v14

    move-object v7, v2

    invoke-direct/range {v3 .. v8}, Lcom/s1243808733/android/dx/cf/attrib/AttCode;-><init>(IILcom/s1243808733/android/dx/cf/code/BytecodeArray;Lcom/s1243808733/android/dx/cf/code/ByteCatchList;Lcom/s1243808733/android/dx/cf/iface/AttributeList;)V

    goto/16 :goto_0
.end method

.method private constantValue(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;
    .locals 6

    const/4 v5, 0x2

    if-eq p3, v5, :cond_0

    .line 353
    invoke-static {v5}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->throwBadLength(I)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    .line 363
    :goto_0
    return-object v0

    .line 356
    :cond_0
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getBytes()Lcom/s1243808733/android/dx/util/ByteArray;

    move-result-object v2

    .line 357
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getConstantPool()Lcom/s1243808733/android/dx/rop/cst/ConstantPool;

    move-result-object v0

    .line 358
    invoke-virtual {v2, p2}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v1

    .line 359
    invoke-interface {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/ConstantPool;->get(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/TypedConstant;

    .line 360
    new-instance v1, Lcom/s1243808733/android/dx/cf/attrib/AttConstantValue;

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dx/cf/attrib/AttConstantValue;-><init>(Lcom/s1243808733/android/dx/rop/cst/TypedConstant;)V

    if-eqz p4, :cond_1

    .line 363
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "value: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v2, p2, v5, v0}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private deprecated(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;
    .locals 1

    if-eqz p3, :cond_0

    .line 375
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->throwBadLength(I)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    .line 378
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/s1243808733/android/dx/cf/attrib/AttDeprecated;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/cf/attrib/AttDeprecated;-><init>()V

    goto :goto_0
.end method

.method private enclosingMethod(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;
    .locals 8

    const/4 v0, 0x4

    const/4 v7, 0x2

    if-eq p3, v0, :cond_0

    .line 387
    invoke-static {v0}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->throwBadLength(I)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    .line 390
    :cond_0
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getBytes()Lcom/s1243808733/android/dx/util/ByteArray;

    move-result-object v2

    .line 391
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getConstantPool()Lcom/s1243808733/android/dx/rop/cst/ConstantPool;

    move-result-object v1

    .line 393
    invoke-virtual {v2, p2}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v0

    .line 394
    invoke-interface {v1, v0}, Lcom/s1243808733/android/dx/rop/cst/ConstantPool;->get(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstType;

    add-int/lit8 v3, p2, 0x2

    .line 396
    invoke-virtual {v2, v3}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v4

    .line 397
    invoke-interface {v1, v4}, Lcom/s1243808733/android/dx/rop/cst/ConstantPool;->get0Ok(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/rop/cst/CstNat;

    .line 399
    new-instance v4, Lcom/s1243808733/android/dx/cf/attrib/AttEnclosingMethod;

    invoke-direct {v4, v0, v1}, Lcom/s1243808733/android/dx/cf/attrib/AttEnclosingMethod;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/rop/cst/CstNat;)V

    if-eqz p4, :cond_1

    .line 402
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "class: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v2, p2, v7, v0}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "method: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 404
    invoke-static {v1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->stringOrNone(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 403
    invoke-interface {p4, v2, v3, v7, v0}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    :cond_1
    return-object v4
.end method

.method private exceptions(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;
    .locals 5

    const/4 v4, 0x2

    if-ge p3, v4, :cond_0

    .line 416
    invoke-static {}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->throwSeverelyTruncated()Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    .line 435
    :goto_0
    return-object v0

    .line 419
    :cond_0
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getBytes()Lcom/s1243808733/android/dx/util/ByteArray;

    move-result-object v0

    .line 420
    invoke-virtual {v0, p2}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v1

    if-eqz p4, :cond_1

    .line 423
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "number_of_exceptions: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 424
    invoke-static {v1}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 423
    invoke-interface {p4, v0, p2, v4, v2}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    :cond_1
    mul-int/lit8 v0, v1, 0x2

    add-int/lit8 v2, p3, -0x2

    if-eq v2, v0, :cond_2

    .line 431
    add-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->throwBadLength(I)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    .line 434
    :cond_2
    add-int/lit8 v0, p2, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->makeTypeList(II)Lcom/s1243808733/android/dx/rop/type/TypeList;

    move-result-object v1

    .line 435
    new-instance v0, Lcom/s1243808733/android/dx/cf/attrib/AttExceptions;

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/cf/attrib/AttExceptions;-><init>(Lcom/s1243808733/android/dx/rop/type/TypeList;)V

    goto :goto_0
.end method

.method private innerClasses(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;
    .locals 17

    const/4 v2, 0x2

    move/from16 v0, p3

    if-ge v0, v2, :cond_0

    .line 444
    invoke-static {}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->throwSeverelyTruncated()Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v2

    .line 492
    :goto_0
    return-object v2

    .line 447
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getBytes()Lcom/s1243808733/android/dx/util/ByteArray;

    move-result-object v9

    .line 448
    invoke-virtual/range {p1 .. p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getConstantPool()Lcom/s1243808733/android/dx/rop/cst/ConstantPool;

    move-result-object v10

    .line 449
    move/from16 v0, p2

    invoke-virtual {v9, v0}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v11

    if-eqz p4, :cond_1

    .line 452
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "number_of_classes: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 453
    invoke-static {v11}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 452
    const/4 v3, 0x2

    move-object/from16 v0, p4

    move/from16 v1, p2

    invoke-interface {v0, v9, v1, v3, v2}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    :cond_1
    add-int/lit8 v4, p2, 0x2

    mul-int/lit8 v2, v11, 0x8

    add-int/lit8 v3, p3, -0x2

    if-eq v3, v2, :cond_2

    .line 460
    add-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->throwBadLength(I)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    .line 463
    :cond_2
    new-instance v2, Lcom/s1243808733/android/dx/cf/attrib/InnerClassList;

    invoke-direct {v2, v11}, Lcom/s1243808733/android/dx/cf/attrib/InnerClassList;-><init>(I)V

    const/4 v3, 0x0

    move v8, v4

    :goto_1
    if-ge v3, v11, :cond_4

    .line 466
    invoke-virtual {v9, v8}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v4

    add-int/lit8 v12, v8, 0x2

    .line 467
    invoke-virtual {v9, v12}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v5

    add-int/lit8 v13, v8, 0x4

    .line 468
    invoke-virtual {v9, v13}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v6

    add-int/lit8 v14, v8, 0x6

    .line 469
    invoke-virtual {v9, v14}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v7

    .line 470
    invoke-interface {v10, v4}, Lcom/s1243808733/android/dx/rop/cst/ConstantPool;->get(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v4

    check-cast v4, Lcom/s1243808733/android/dx/rop/cst/CstType;

    .line 471
    invoke-interface {v10, v5}, Lcom/s1243808733/android/dx/rop/cst/ConstantPool;->get0Ok(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v5

    check-cast v5, Lcom/s1243808733/android/dx/rop/cst/CstType;

    .line 472
    invoke-interface {v10, v6}, Lcom/s1243808733/android/dx/rop/cst/ConstantPool;->get0Ok(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v6

    check-cast v6, Lcom/s1243808733/android/dx/rop/cst/CstString;

    .line 473
    invoke-virtual/range {v2 .. v7}, Lcom/s1243808733/android/dx/cf/attrib/InnerClassList;->set(ILcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/rop/cst/CstString;I)V

    if-eqz p4, :cond_3

    .line 475
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "inner_class: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 477
    invoke-static {v4}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->stringOrNone(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 475
    const/4 v15, 0x2

    move-object/from16 v0, p4

    invoke-interface {v0, v9, v8, v15, v4}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 478
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v15, "  outer_class: "

    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 480
    invoke-static {v5}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->stringOrNone(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 478
    const/4 v5, 0x2

    move-object/from16 v0, p4

    invoke-interface {v0, v9, v12, v5, v4}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 481
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "  name: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 483
    invoke-static {v6}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->stringOrNone(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 481
    const/4 v5, 0x2

    move-object/from16 v0, p4

    invoke-interface {v0, v9, v13, v5, v4}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 484
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "  access_flags: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 486
    invoke-static {v7}, Lcom/s1243808733/android/dx/rop/code/AccessFlags;->innerClassString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 484
    const/4 v5, 0x2

    move-object/from16 v0, p4

    invoke-interface {v0, v9, v14, v5, v4}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    :cond_3
    add-int/lit8 v4, v8, 0x8

    add-int/lit8 v3, v3, 0x1

    move v8, v4

    goto/16 :goto_1

    .line 491
    :cond_4
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/cf/attrib/InnerClassList;->setImmutable()V

    .line 492
    new-instance v3, Lcom/s1243808733/android/dx/cf/attrib/AttInnerClasses;

    invoke-direct {v3, v2}, Lcom/s1243808733/android/dx/cf/attrib/AttInnerClasses;-><init>(Lcom/s1243808733/android/dx/cf/attrib/InnerClassList;)V

    move-object v2, v3

    goto/16 :goto_0
.end method

.method private lineNumberTable(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;
    .locals 8

    const/4 v4, 0x2

    if-ge p3, v4, :cond_0

    .line 501
    invoke-static {}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->throwSeverelyTruncated()Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    .line 533
    :goto_0
    return-object v0

    .line 504
    :cond_0
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getBytes()Lcom/s1243808733/android/dx/util/ByteArray;

    move-result-object v2

    .line 505
    invoke-virtual {v2, p2}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v3

    if-eqz p4, :cond_1

    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "line_number_table_length: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 509
    invoke-static {v3}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 508
    invoke-interface {p4, v2, p2, v4, v0}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    :cond_1
    add-int/lit8 v1, p2, 0x2

    mul-int/lit8 v0, v3, 0x4

    add-int/lit8 v4, p3, -0x2

    if-eq v4, v0, :cond_2

    .line 516
    add-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->throwBadLength(I)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    .line 519
    :cond_2
    new-instance v4, Lcom/s1243808733/android/dx/cf/code/LineNumberList;

    invoke-direct {v4, v3}, Lcom/s1243808733/android/dx/cf/code/LineNumberList;-><init>(I)V

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_4

    .line 522
    invoke-virtual {v2, v1}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v5

    .line 523
    add-int/lit8 v6, v1, 0x2

    invoke-virtual {v2, v6}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v6

    .line 524
    invoke-virtual {v4, v0, v5, v6}, Lcom/s1243808733/android/dx/cf/code/LineNumberList;->set(III)V

    if-eqz p4, :cond_3

    .line 526
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 527
    invoke-static {v5}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 526
    const/4 v6, 0x4

    invoke-interface {p4, v2, v1, v6, v5}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    :cond_3
    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 532
    :cond_4
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/cf/code/LineNumberList;->setImmutable()V

    .line 533
    new-instance v0, Lcom/s1243808733/android/dx/cf/attrib/AttLineNumberTable;

    invoke-direct {v0, v4}, Lcom/s1243808733/android/dx/cf/attrib/AttLineNumberTable;-><init>(Lcom/s1243808733/android/dx/cf/code/LineNumberList;)V

    goto :goto_0
.end method

.method private localVariableTable(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;
    .locals 6

    const/4 v3, 0x2

    if-ge p3, v3, :cond_0

    .line 542
    invoke-static {}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->throwSeverelyTruncated()Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    .line 556
    :goto_0
    return-object v0

    .line 545
    :cond_0
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getBytes()Lcom/s1243808733/android/dx/util/ByteArray;

    move-result-object v0

    .line 546
    invoke-virtual {v0, p2}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v4

    if-eqz p4, :cond_1

    .line 549
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "local_variable_table_length: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 550
    invoke-static {v4}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 549
    invoke-interface {p4, v0, p2, v3, v1}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 554
    :cond_1
    add-int/lit8 v1, p2, 0x2

    add-int v2, p2, p3

    invoke-virtual {v0, v1, v2}, Lcom/s1243808733/android/dx/util/ByteArray;->slice(II)Lcom/s1243808733/android/dx/util/ByteArray;

    move-result-object v1

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getConstantPool()Lcom/s1243808733/android/dx/rop/cst/ConstantPool;

    move-result-object v2

    .line 553
    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->parseLocalVariables(Lcom/s1243808733/android/dx/util/ByteArray;Lcom/s1243808733/android/dx/rop/cst/ConstantPool;Lcom/s1243808733/android/dx/cf/iface/ParseObserver;IZ)Lcom/s1243808733/android/dx/cf/code/LocalVariableList;

    move-result-object v1

    .line 556
    new-instance v0, Lcom/s1243808733/android/dx/cf/attrib/AttLocalVariableTable;

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/cf/attrib/AttLocalVariableTable;-><init>(Lcom/s1243808733/android/dx/cf/code/LocalVariableList;)V

    goto :goto_0
.end method

.method private localVariableTypeTable(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;
    .locals 6

    const/4 v3, 0x2

    if-ge p3, v3, :cond_0

    .line 565
    invoke-static {}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->throwSeverelyTruncated()Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    .line 579
    :goto_0
    return-object v0

    .line 568
    :cond_0
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getBytes()Lcom/s1243808733/android/dx/util/ByteArray;

    move-result-object v0

    .line 569
    invoke-virtual {v0, p2}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v4

    if-eqz p4, :cond_1

    .line 572
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "local_variable_type_table_length: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 573
    invoke-static {v4}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 572
    invoke-interface {p4, v0, p2, v3, v1}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 577
    :cond_1
    add-int/lit8 v1, p2, 0x2

    add-int v2, p2, p3

    invoke-virtual {v0, v1, v2}, Lcom/s1243808733/android/dx/util/ByteArray;->slice(II)Lcom/s1243808733/android/dx/util/ByteArray;

    move-result-object v1

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getConstantPool()Lcom/s1243808733/android/dx/rop/cst/ConstantPool;

    move-result-object v2

    .line 576
    const/4 v5, 0x1

    move-object v0, p0

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->parseLocalVariables(Lcom/s1243808733/android/dx/util/ByteArray;Lcom/s1243808733/android/dx/rop/cst/ConstantPool;Lcom/s1243808733/android/dx/cf/iface/ParseObserver;IZ)Lcom/s1243808733/android/dx/cf/code/LocalVariableList;

    move-result-object v1

    .line 579
    new-instance v0, Lcom/s1243808733/android/dx/cf/attrib/AttLocalVariableTypeTable;

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/cf/attrib/AttLocalVariableTypeTable;-><init>(Lcom/s1243808733/android/dx/cf/code/LocalVariableList;)V

    goto :goto_0
.end method

.method private parseBootstrapMethods(Lcom/s1243808733/android/dx/util/ByteArray;Lcom/s1243808733/android/dx/rop/cst/ConstantPool;Lcom/s1243808733/android/dx/rop/cst/CstType;IIILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/s1243808733/android/dx/cf/iface/ParseException;
        }
    .end annotation

    .line 819
    new-instance v6, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList;

    move/from16 v0, p4

    invoke-direct {v6, v0}, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList;-><init>(I)V

    const/4 v2, 0x0

    move v5, v2

    :goto_0
    move/from16 v0, p4

    if-ge v5, v0, :cond_5

    const/4 v2, 0x4

    move/from16 v0, p6

    if-ge v0, v2, :cond_0

    .line 822
    invoke-static {}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->throwTruncated()Lcom/s1243808733/android/dx/cf/iface/Attribute;

    .line 825
    :cond_0
    move/from16 v0, p5

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v7

    add-int/lit8 v2, p5, 0x2

    .line 826
    invoke-virtual {p1, v2}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v8

    if-eqz p7, :cond_1

    .line 829
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "bootstrap_method_ref: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p7

    move/from16 v1, p5

    invoke-interface {v0, p1, v1, v4, v3}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 830
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "num_bootstrap_arguments: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 831
    invoke-static {v8}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 830
    const/4 v4, 0x2

    move-object/from16 v0, p7

    invoke-interface {v0, p1, v2, v4, v3}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    :cond_1
    add-int/lit8 v3, p5, 0x4

    add-int/lit8 v4, p6, -0x4

    mul-int/lit8 v2, v8, 0x2

    if-ge v4, v2, :cond_2

    .line 837
    invoke-static {}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->throwTruncated()Lcom/s1243808733/android/dx/cf/iface/Attribute;

    .line 840
    :cond_2
    new-instance v9, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodArgumentsList;

    invoke-direct {v9, v8}, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodArgumentsList;-><init>(I)V

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v8, :cond_4

    .line 842
    invoke-virtual {p1, v3}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v10

    if-eqz p7, :cond_3

    .line 844
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "bootstrap_arguments["

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 845
    invoke-static {v10}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 844
    const/4 v12, 0x2

    move-object/from16 v0, p7

    invoke-interface {v0, p1, v3, v12, v11}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 847
    :cond_3
    invoke-interface {p2, v10}, Lcom/s1243808733/android/dx/rop/cst/ConstantPool;->get(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v10

    invoke-virtual {v9, v2, v10}, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodArgumentsList;->set(ILcom/s1243808733/android/dx/rop/cst/Constant;)V

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v4, v4, -0x2

    goto :goto_1

    .line 849
    :cond_4
    invoke-virtual {v9}, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodArgumentsList;->setImmutable()V

    .line 850
    invoke-interface {p2, v7}, Lcom/s1243808733/android/dx/rop/cst/ConstantPool;->get(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v2

    .line 851
    check-cast v2, Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;

    move-object/from16 v0, p3

    invoke-virtual {v6, v5, v0, v2, v9}, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList;->set(ILcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;Lcom/s1243808733/android/dx/cf/code/BootstrapMethodArgumentsList;)V

    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move/from16 p5, v3

    move/from16 p6, v4

    goto/16 :goto_0

    .line 853
    :cond_5
    invoke-virtual {v6}, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList;->setImmutable()V

    if-eqz p6, :cond_6

    .line 856
    invoke-static/range {p6 .. p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->throwBadLength(I)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    :cond_6
    return-object v6
.end method

.method private parseLocalVariables(Lcom/s1243808733/android/dx/util/ByteArray;Lcom/s1243808733/android/dx/rop/cst/ConstantPool;Lcom/s1243808733/android/dx/cf/iface/ParseObserver;IZ)Lcom/s1243808733/android/dx/cf/code/LocalVariableList;
    .locals 11

    .line 596
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/util/ByteArray;->size()I

    move-result v1

    mul-int/lit8 v2, p4, 0xa

    if-eq v1, v2, :cond_0

    .line 598
    add-int/lit8 v1, v2, 0x2

    invoke-static {v1}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->throwBadLength(I)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    .line 601
    :cond_0
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/util/ByteArray;->makeDataInputStream()Lcom/s1243808733/android/dx/util/ByteArray$MyDataInputStream;

    move-result-object v10

    .line 602
    new-instance v1, Lcom/s1243808733/android/dx/cf/code/LocalVariableList;

    invoke-direct {v1, p4}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p4, :cond_3

    .line 606
    :try_start_0
    invoke-virtual {v10}, Lcom/s1243808733/android/dx/util/ByteArray$MyDataInputStream;->readUnsignedShort()I

    move-result v3

    .line 607
    invoke-virtual {v10}, Lcom/s1243808733/android/dx/util/ByteArray$MyDataInputStream;->readUnsignedShort()I

    move-result v4

    .line 608
    invoke-virtual {v10}, Lcom/s1243808733/android/dx/util/ByteArray$MyDataInputStream;->readUnsignedShort()I

    move-result v5

    .line 609
    invoke-virtual {v10}, Lcom/s1243808733/android/dx/util/ByteArray$MyDataInputStream;->readUnsignedShort()I

    move-result v6

    .line 610
    invoke-virtual {v10}, Lcom/s1243808733/android/dx/util/ByteArray$MyDataInputStream;->readUnsignedShort()I

    move-result v8

    .line 611
    invoke-interface {p2, v5}, Lcom/s1243808733/android/dx/rop/cst/ConstantPool;->get(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v5

    check-cast v5, Lcom/s1243808733/android/dx/rop/cst/CstString;

    .line 612
    invoke-interface {p2, v6}, Lcom/s1243808733/android/dx/rop/cst/ConstantPool;->get(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-object v9, v0

    if-eqz p5, :cond_2

    const/4 v6, 0x0

    move-object v7, v9

    .line 622
    :goto_1
    invoke-virtual/range {v1 .. v8}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList;->set(IIILcom/s1243808733/android/dx/rop/cst/CstString;Lcom/s1243808733/android/dx/rop/cst/CstString;Lcom/s1243808733/android/dx/rop/cst/CstString;I)V

    if-eqz p3, :cond_1

    .line 626
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    add-int/2addr v3, v4

    invoke-static {v3}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    invoke-static {v8}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    invoke-virtual {v9}, Lcom/s1243808733/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 626
    mul-int/lit8 v4, v2, 0xa

    const/16 v5, 0xa

    invoke-interface {p3, p1, v4, v5, v3}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 622
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 612
    :cond_2
    const/4 v7, 0x0

    move-object v6, v9

    goto :goto_1

    .line 622
    :catch_0
    move-exception v1

    .line 633
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "shouldn\'t happen"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 636
    :cond_3
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList;->setImmutable()V

    return-object v1
.end method

.method private runtimeInvisibleAnnotations(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;
    .locals 2

    const/4 v0, 0x2

    if-ge p3, v0, :cond_0

    .line 646
    invoke-static {}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->throwSeverelyTruncated()Lcom/s1243808733/android/dx/cf/iface/Attribute;

    .line 649
    :cond_0
    new-instance v0, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;-><init>(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)V

    .line 651
    sget-object v1, Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;->BUILD:Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;

    .line 652
    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->parseAnnotationAttribute(Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;)Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    move-result-object v0

    .line 654
    new-instance v1, Lcom/s1243808733/android/dx/cf/attrib/AttRuntimeInvisibleAnnotations;

    invoke-direct {v1, v0, p3}, Lcom/s1243808733/android/dx/cf/attrib/AttRuntimeInvisibleAnnotations;-><init>(Lcom/s1243808733/android/dx/rop/annotation/Annotations;I)V

    return-object v1
.end method

.method private runtimeInvisibleParameterAnnotations(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;
    .locals 2

    const/4 v0, 0x2

    if-ge p3, v0, :cond_0

    .line 680
    invoke-static {}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->throwSeverelyTruncated()Lcom/s1243808733/android/dx/cf/iface/Attribute;

    .line 683
    :cond_0
    new-instance v0, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;-><init>(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)V

    .line 685
    sget-object v1, Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;->BUILD:Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;

    .line 686
    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->parseParameterAttribute(Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;)Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;

    move-result-object v0

    .line 688
    new-instance v1, Lcom/s1243808733/android/dx/cf/attrib/AttRuntimeInvisibleParameterAnnotations;

    invoke-direct {v1, v0, p3}, Lcom/s1243808733/android/dx/cf/attrib/AttRuntimeInvisibleParameterAnnotations;-><init>(Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;I)V

    return-object v1
.end method

.method private runtimeVisibleAnnotations(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;
    .locals 2

    const/4 v0, 0x2

    if-ge p3, v0, :cond_0

    .line 663
    invoke-static {}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->throwSeverelyTruncated()Lcom/s1243808733/android/dx/cf/iface/Attribute;

    .line 666
    :cond_0
    new-instance v0, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;-><init>(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)V

    .line 668
    sget-object v1, Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;->RUNTIME:Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;

    .line 669
    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->parseAnnotationAttribute(Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;)Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    move-result-object v0

    .line 671
    new-instance v1, Lcom/s1243808733/android/dx/cf/attrib/AttRuntimeVisibleAnnotations;

    invoke-direct {v1, v0, p3}, Lcom/s1243808733/android/dx/cf/attrib/AttRuntimeVisibleAnnotations;-><init>(Lcom/s1243808733/android/dx/rop/annotation/Annotations;I)V

    return-object v1
.end method

.method private runtimeVisibleParameterAnnotations(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;
    .locals 2

    const/4 v0, 0x2

    if-ge p3, v0, :cond_0

    .line 697
    invoke-static {}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->throwSeverelyTruncated()Lcom/s1243808733/android/dx/cf/iface/Attribute;

    .line 700
    :cond_0
    new-instance v0, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;-><init>(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)V

    .line 702
    sget-object v1, Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;->RUNTIME:Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;

    .line 703
    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->parseParameterAttribute(Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;)Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;

    move-result-object v0

    .line 705
    new-instance v1, Lcom/s1243808733/android/dx/cf/attrib/AttRuntimeVisibleParameterAnnotations;

    invoke-direct {v1, v0, p3}, Lcom/s1243808733/android/dx/cf/attrib/AttRuntimeVisibleParameterAnnotations;-><init>(Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;I)V

    return-object v1
.end method

.method private signature(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;
    .locals 6

    const/4 v5, 0x2

    if-eq p3, v5, :cond_0

    .line 714
    invoke-static {v5}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->throwBadLength(I)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    .line 717
    :cond_0
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getBytes()Lcom/s1243808733/android/dx/util/ByteArray;

    move-result-object v1

    .line 718
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getConstantPool()Lcom/s1243808733/android/dx/rop/cst/ConstantPool;

    move-result-object v0

    .line 719
    invoke-virtual {v1, p2}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v2

    .line 720
    invoke-interface {v0, v2}, Lcom/s1243808733/android/dx/rop/cst/ConstantPool;->get(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstString;

    .line 721
    new-instance v2, Lcom/s1243808733/android/dx/cf/attrib/AttSignature;

    invoke-direct {v2, v0}, Lcom/s1243808733/android/dx/cf/attrib/AttSignature;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstString;)V

    if-eqz p4, :cond_1

    .line 724
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "signature: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v1, p2, v5, v0}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    :cond_1
    return-object v2
.end method

.method private sourceDebugExtension(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;
    .locals 5

    .line 735
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getBytes()Lcom/s1243808733/android/dx/util/ByteArray;

    move-result-object v0

    add-int v1, p2, p3

    invoke-virtual {v0, p2, v1}, Lcom/s1243808733/android/dx/util/ByteArray;->slice(II)Lcom/s1243808733/android/dx/util/ByteArray;

    move-result-object v0

    .line 736
    new-instance v1, Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dx/rop/cst/CstString;-><init>(Lcom/s1243808733/android/dx/util/ByteArray;)V

    .line 737
    new-instance v2, Lcom/s1243808733/android/dx/cf/attrib/AttSourceDebugExtension;

    invoke-direct {v2, v1}, Lcom/s1243808733/android/dx/cf/attrib/AttSourceDebugExtension;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstString;)V

    if-eqz p4, :cond_0

    .line 740
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/cst/CstString;->getString()Ljava/lang/String;

    move-result-object v1

    .line 741
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sourceDebugExtension: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v0, p2, p3, v1}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    :cond_0
    return-object v2
.end method

.method private sourceFile(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;
    .locals 6

    const/4 v5, 0x2

    if-eq p3, v5, :cond_0

    .line 753
    invoke-static {v5}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->throwBadLength(I)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    .line 756
    :cond_0
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getBytes()Lcom/s1243808733/android/dx/util/ByteArray;

    move-result-object v1

    .line 757
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getConstantPool()Lcom/s1243808733/android/dx/rop/cst/ConstantPool;

    move-result-object v0

    .line 758
    invoke-virtual {v1, p2}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v2

    .line 759
    invoke-interface {v0, v2}, Lcom/s1243808733/android/dx/rop/cst/ConstantPool;->get(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstString;

    .line 760
    new-instance v2, Lcom/s1243808733/android/dx/cf/attrib/AttSourceFile;

    invoke-direct {v2, v0}, Lcom/s1243808733/android/dx/cf/attrib/AttSourceFile;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstString;)V

    if-eqz p4, :cond_1

    .line 763
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "source: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v1, p2, v5, v0}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    :cond_1
    return-object v2
.end method

.method private synthetic(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;
    .locals 1

    if-eqz p3, :cond_0

    .line 775
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->throwBadLength(I)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    .line 778
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/s1243808733/android/dx/cf/attrib/AttSynthetic;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/cf/attrib/AttSynthetic;-><init>()V

    goto :goto_0
.end method

.method private static throwBadLength(I)Lcom/s1243808733/android/dx/cf/iface/Attribute;
    .locals 2

    .line 812
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bad attribute length; expected length "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 813
    invoke-static {p0}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/s1243808733/android/dx/cf/iface/ParseException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dx/cf/iface/ParseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static throwSeverelyTruncated()Lcom/s1243808733/android/dx/cf/iface/Attribute;
    .locals 2

    .line 789
    new-instance v0, Lcom/s1243808733/android/dx/cf/iface/ParseException;

    const-string v1, "severely truncated attribute"

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/cf/iface/ParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static throwTruncated()Lcom/s1243808733/android/dx/cf/iface/Attribute;
    .locals 2

    .line 800
    new-instance v0, Lcom/s1243808733/android/dx/cf/iface/ParseException;

    const-string v1, "truncated attribute"

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/cf/iface/ParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected parse0(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;ILjava/lang/String;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;
    .locals 1

    .line 86
    if-eqz p2, :cond_14

    const/4 v0, 0x1

    if-eq p2, v0, :cond_e

    const/4 v0, 0x2

    if-eq p2, v0, :cond_4

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    .line 199
    :cond_0
    invoke-super/range {p0 .. p6}, Lcom/s1243808733/android/dx/cf/direct/AttributeFactory;->parse0(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;ILjava/lang/String;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    :goto_0
    return-object v0

    .line 185
    :cond_1
    const-string v0, "LineNumberTable"

    if-ne p3, v0, :cond_2

    .line 186
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->lineNumberTable(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    goto :goto_0

    .line 188
    :cond_2
    const-string v0, "LocalVariableTable"

    if-ne p3, v0, :cond_3

    .line 189
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->localVariableTable(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    goto :goto_0

    .line 191
    :cond_3
    const-string v0, "LocalVariableTypeTable"

    if-ne p3, v0, :cond_0

    .line 192
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->localVariableTypeTable(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    goto :goto_0

    .line 146
    :cond_4
    const-string v0, "AnnotationDefault"

    if-ne p3, v0, :cond_5

    .line 147
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->annotationDefault(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    goto :goto_0

    .line 149
    :cond_5
    const-string v0, "Code"

    if-ne p3, v0, :cond_6

    .line 150
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->code(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    goto :goto_0

    :cond_6
    const-string v0, "Deprecated"

    if-ne p3, v0, :cond_7

    .line 153
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->deprecated(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    goto :goto_0

    .line 155
    :cond_7
    const-string v0, "Exceptions"

    if-ne p3, v0, :cond_8

    .line 156
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->exceptions(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    goto :goto_0

    :cond_8
    const-string v0, "RuntimeInvisibleAnnotations"

    if-ne p3, v0, :cond_9

    .line 159
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->runtimeInvisibleAnnotations(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    goto :goto_0

    :cond_9
    const-string v0, "RuntimeVisibleAnnotations"

    if-ne p3, v0, :cond_a

    .line 163
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->runtimeVisibleAnnotations(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    goto :goto_0

    .line 166
    :cond_a
    const-string v0, "RuntimeInvisibleParameterAnnotations"

    if-ne p3, v0, :cond_b

    .line 168
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->runtimeInvisibleParameterAnnotations(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    goto :goto_0

    .line 171
    :cond_b
    const-string v0, "RuntimeVisibleParameterAnnotations"

    if-ne p3, v0, :cond_c

    .line 173
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->runtimeVisibleParameterAnnotations(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    goto :goto_0

    :cond_c
    const-string v0, "Signature"

    if-ne p3, v0, :cond_d

    .line 177
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->signature(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    goto :goto_0

    :cond_d
    const-string v0, "Synthetic"

    if-ne p3, v0, :cond_0

    .line 180
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->synthetic(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    goto :goto_0

    .line 123
    :cond_e
    const-string v0, "ConstantValue"

    if-ne p3, v0, :cond_f

    .line 124
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->constantValue(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    goto :goto_0

    :cond_f
    const-string v0, "Deprecated"

    if-ne p3, v0, :cond_10

    .line 127
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->deprecated(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    goto/16 :goto_0

    :cond_10
    const-string v0, "RuntimeInvisibleAnnotations"

    if-ne p3, v0, :cond_11

    .line 130
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->runtimeInvisibleAnnotations(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    goto/16 :goto_0

    :cond_11
    const-string v0, "RuntimeVisibleAnnotations"

    if-ne p3, v0, :cond_12

    .line 134
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->runtimeVisibleAnnotations(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    goto/16 :goto_0

    :cond_12
    const-string v0, "Signature"

    if-ne p3, v0, :cond_13

    .line 138
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->signature(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    goto/16 :goto_0

    :cond_13
    const-string v0, "Synthetic"

    if-ne p3, v0, :cond_0

    .line 141
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->synthetic(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    goto/16 :goto_0

    .line 88
    :cond_14
    const-string v0, "BootstrapMethods"

    if-ne p3, v0, :cond_15

    .line 89
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->bootstrapMethods(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    goto/16 :goto_0

    :cond_15
    const-string v0, "Deprecated"

    if-ne p3, v0, :cond_16

    .line 92
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->deprecated(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    goto/16 :goto_0

    .line 94
    :cond_16
    const-string v0, "EnclosingMethod"

    if-ne p3, v0, :cond_17

    .line 95
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->enclosingMethod(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    goto/16 :goto_0

    .line 97
    :cond_17
    const-string v0, "InnerClasses"

    if-ne p3, v0, :cond_18

    .line 98
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->innerClasses(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    goto/16 :goto_0

    :cond_18
    const-string v0, "RuntimeInvisibleAnnotations"

    if-ne p3, v0, :cond_19

    .line 101
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->runtimeInvisibleAnnotations(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    goto/16 :goto_0

    :cond_19
    const-string v0, "RuntimeVisibleAnnotations"

    if-ne p3, v0, :cond_1a

    .line 105
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->runtimeVisibleAnnotations(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    goto/16 :goto_0

    :cond_1a
    const-string v0, "Synthetic"

    if-ne p3, v0, :cond_1b

    .line 109
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->synthetic(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    goto/16 :goto_0

    :cond_1b
    const-string v0, "Signature"

    if-ne p3, v0, :cond_1c

    .line 112
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->signature(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    goto/16 :goto_0

    .line 114
    :cond_1c
    const-string v0, "SourceDebugExtension"

    if-ne p3, v0, :cond_1d

    .line 115
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->sourceDebugExtension(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    goto/16 :goto_0

    .line 117
    :cond_1d
    const-string v0, "SourceFile"

    if-ne p3, v0, :cond_0

    .line 118
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->sourceFile(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    goto/16 :goto_0
.end method
