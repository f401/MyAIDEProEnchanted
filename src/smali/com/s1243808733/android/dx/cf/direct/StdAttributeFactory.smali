.class public Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;
.super Lcom/s1243808733/android/dx/cf/direct/AttributeFactory;
.source "StdAttributeFactory.java"


# static fields
.field public static final THE_ONE:Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 72
    new-instance v0, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;-><init>()V

    sput-object v0, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->THE_ONE:Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 78
    invoke-direct {p0}, Lcom/s1243808733/android/dx/cf/direct/AttributeFactory;-><init>()V

    return-void
.end method

.method private annotationDefault(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;
    .registers 6

    const/4 v0, 0x2

    if-ge p3, v0, :cond_6

    .line 208
    invoke-static {}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->throwSeverelyTruncated()Lcom/s1243808733/android/dx/cf/iface/Attribute;

    .line 211
    :cond_6
    new-instance v0, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;-><init>(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)V

    .line 213
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->parseValueAttribute()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object p1

    .line 215
    new-instance p2, Lcom/s1243808733/android/dx/cf/attrib/AttAnnotationDefault;

    invoke-direct {p2, p1, p3}, Lcom/s1243808733/android/dx/cf/attrib/AttAnnotationDefault;-><init>(Lcom/s1243808733/android/dx/rop/cst/Constant;I)V

    return-object p2
.end method

.method private bootstrapMethods(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;
    .registers 13

    const/4 v0, 0x2

    if-ge p3, v0, :cond_8

    .line 224
    invoke-static {}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->throwSeverelyTruncated()Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object p1

    return-object p1

    .line 227
    :cond_8
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getBytes()Lcom/s1243808733/android/dx/util/ByteArray;

    move-result-object v1

    .line 228
    invoke-virtual {v1, p2}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v4

    if-eqz p4, :cond_27

    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "num_boostrap_methods: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 231
    invoke-static {v4}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 230
    invoke-interface {p4, v1, p2, v0, v2}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 237
    :cond_27
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

    move-result-object p1

    .line 240
    new-instance p2, Lcom/s1243808733/android/dx/cf/attrib/AttBootstrapMethods;

    invoke-direct {p2, p1}, Lcom/s1243808733/android/dx/cf/attrib/AttBootstrapMethods;-><init>(Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList;)V

    return-object p2
.end method

.method private code(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;
    .registers 27

    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p4

    const/16 v3, 0xc

    if-ge v1, v3, :cond_f

    .line 249
    invoke-static {}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->throwSeverelyTruncated()Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    return-object v0

    .line 252
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getBytes()Lcom/s1243808733/android/dx/util/ByteArray;

    move-result-object v3

    .line 253
    invoke-virtual/range {p1 .. p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getConstantPool()Lcom/s1243808733/android/dx/rop/cst/ConstantPool;

    move-result-object v4

    .line 254
    invoke-virtual {v3, v0}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v6

    add-int/lit8 v5, v0, 0x2

    .line 255
    invoke-virtual {v3, v5}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v7

    add-int/lit8 v8, v0, 0x4

    .line 256
    invoke-virtual {v3, v8}, Lcom/s1243808733/android/dx/util/ByteArray;->getInt(I)I

    move-result v9

    const/4 v10, 0x2

    if-eqz v2, :cond_6a

    .line 260
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "max_stack: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    invoke-static {v6}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 260
    invoke-interface {v2, v3, v0, v10, v11}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 262
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "max_locals: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 263
    invoke-static {v7}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 262
    invoke-interface {v2, v3, v5, v10, v11}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 264
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v11, "code_length: "

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 265
    invoke-static {v9}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 264
    const/4 v11, 0x4

    invoke-interface {v2, v3, v8, v11, v5}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    :cond_6a
    add-int/lit8 v5, v0, 0x8

    add-int/lit8 v1, v1, -0x8

    add-int/lit8 v8, v9, 0x4

    if-ge v1, v8, :cond_77

    .line 272
    invoke-static {}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->throwTruncated()Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    return-object v0

    :cond_77
    add-int v8, v5, v9

    .line 278
    nop

    .line 279
    new-instance v11, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;

    invoke-virtual {v3, v5, v8}, Lcom/s1243808733/android/dx/util/ByteArray;->slice(II)Lcom/s1243808733/android/dx/util/ByteArray;

    move-result-object v5

    invoke-direct {v11, v5, v4}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;-><init>(Lcom/s1243808733/android/dx/util/ByteArray;Lcom/s1243808733/android/dx/rop/cst/ConstantPool;)V

    if-eqz v2, :cond_91

    .line 282
    new-instance v5, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;

    invoke-virtual {v11}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->getBytes()Lcom/s1243808733/android/dx/util/ByteArray;

    move-result-object v12

    invoke-direct {v5, v12, v2}, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;-><init>(Lcom/s1243808733/android/dx/util/ByteArray;Lcom/s1243808733/android/dx/cf/iface/ParseObserver;)V

    invoke-virtual {v11, v5}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->forEach(Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;)V

    .line 286
    :cond_91
    invoke-virtual {v3, v8}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v5

    if-nez v5, :cond_9a

    .line 288
    sget-object v12, Lcom/s1243808733/android/dx/cf/code/ByteCatchList;->EMPTY:Lcom/s1243808733/android/dx/cf/code/ByteCatchList;

    goto :goto_9f

    .line 289
    :cond_9a
    new-instance v12, Lcom/s1243808733/android/dx/cf/code/ByteCatchList;

    invoke-direct {v12, v5}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList;-><init>(I)V

    :goto_9f
    if-eqz v2, :cond_b6

    .line 292
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "exception_table_length: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 294
    invoke-static {v5}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 292
    invoke-interface {v2, v3, v8, v10, v13}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    :cond_b6
    add-int/2addr v8, v10

    sub-int/2addr v1, v9

    sub-int/2addr v1, v10

    mul-int/lit8 v9, v5, 0x8

    add-int/2addr v9, v10

    if-ge v1, v9, :cond_c3

    .line 301
    invoke-static {}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->throwTruncated()Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    return-object v0

    :cond_c3
    const/4 v9, 0x0

    :goto_c4
    if-ge v9, v5, :cond_143

    if-eqz v2, :cond_cc

    .line 306
    const/4 v10, 0x1

    invoke-interface {v2, v10}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->changeIndent(I)V

    .line 309
    :cond_cc
    invoke-virtual {v3, v8}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v10

    .line 310
    add-int/lit8 v13, v8, 0x2

    invoke-virtual {v3, v13}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v19

    .line 311
    add-int/lit8 v13, v8, 0x4

    invoke-virtual {v3, v13}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v20

    .line 312
    add-int/lit8 v13, v8, 0x6

    invoke-virtual {v3, v13}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v13

    .line 313
    invoke-interface {v4, v13}, Lcom/s1243808733/android/dx/rop/cst/ConstantPool;->get0Ok(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v13

    move-object/from16 v21, v13

    check-cast v21, Lcom/s1243808733/android/dx/rop/cst/CstType;

    .line 314
    move-object v13, v12

    move v14, v9

    move v15, v10

    move/from16 v16, v19

    move/from16 v17, v20

    move-object/from16 v18, v21

    invoke-virtual/range {v13 .. v18}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList;->set(IIIILcom/s1243808733/android/dx/rop/cst/CstType;)V

    if-eqz v2, :cond_136

    .line 316
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 317
    invoke-static {v10}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ".."

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " -> "

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    invoke-static/range {v20 .. v20}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v21, :cond_126

    .line 319
    const-string v10, "<any>"

    goto :goto_12a

    .line 320
    :cond_126
    invoke-virtual/range {v21 .. v21}, Lcom/s1243808733/android/dx/rop/cst/CstType;->toHuman()Ljava/lang/String;

    move-result-object v10

    :goto_12a
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 316
    const/16 v13, 0x8

    invoke-interface {v2, v3, v8, v13, v10}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    :cond_136
    add-int/lit8 v8, v8, 0x8

    add-int/lit8 v1, v1, -0x8

    if-eqz v2, :cond_140

    .line 326
    const/4 v10, -0x1

    invoke-interface {v2, v10}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->changeIndent(I)V

    :cond_140
    add-int/lit8 v9, v9, 0x1

    goto :goto_c4

    .line 330
    :cond_143
    invoke-virtual {v12}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList;->setImmutable()V

    .line 332
    new-instance v3, Lcom/s1243808733/android/dx/cf/direct/AttributeListParser;

    const/4 v4, 0x3

    move-object/from16 v13, p0

    move-object/from16 v5, p1

    invoke-direct {v3, v5, v4, v8, v13}, Lcom/s1243808733/android/dx/cf/direct/AttributeListParser;-><init>(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/direct/AttributeFactory;)V

    .line 334
    invoke-virtual {v3, v2}, Lcom/s1243808733/android/dx/cf/direct/AttributeListParser;->setObserver(Lcom/s1243808733/android/dx/cf/iface/ParseObserver;)V

    .line 336
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/cf/direct/AttributeListParser;->getList()Lcom/s1243808733/android/dx/cf/iface/StdAttributeList;

    move-result-object v10

    .line 337
    invoke-virtual {v10}, Lcom/s1243808733/android/dx/cf/iface/StdAttributeList;->setImmutable()V

    .line 339
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/cf/direct/AttributeListParser;->getEndOffset()I

    move-result v2

    sub-int/2addr v2, v8

    if-eq v2, v1, :cond_168

    .line 341
    sub-int/2addr v8, v0

    add-int/2addr v2, v8

    invoke-static {v2}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->throwBadLength(I)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    return-object v0

    .line 344
    :cond_168
    new-instance v0, Lcom/s1243808733/android/dx/cf/attrib/AttCode;

    move-object v5, v0

    move-object v8, v11

    move-object v9, v12

    invoke-direct/range {v5 .. v10}, Lcom/s1243808733/android/dx/cf/attrib/AttCode;-><init>(IILcom/s1243808733/android/dx/cf/code/BytecodeArray;Lcom/s1243808733/android/dx/cf/code/ByteCatchList;Lcom/s1243808733/android/dx/cf/iface/AttributeList;)V

    return-object v0
.end method

.method private constantValue(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;
    .registers 9

    const/4 v0, 0x2

    if-eq p3, v0, :cond_8

    .line 353
    invoke-static {v0}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->throwBadLength(I)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object p1

    return-object p1

    .line 356
    :cond_8
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getBytes()Lcom/s1243808733/android/dx/util/ByteArray;

    move-result-object p3

    .line 357
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getConstantPool()Lcom/s1243808733/android/dx/rop/cst/ConstantPool;

    move-result-object p1

    .line 358
    invoke-virtual {p3, p2}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v1

    .line 359
    invoke-interface {p1, v1}, Lcom/s1243808733/android/dx/rop/cst/ConstantPool;->get(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/TypedConstant;

    .line 360
    new-instance v1, Lcom/s1243808733/android/dx/cf/attrib/AttConstantValue;

    invoke-direct {v1, p1}, Lcom/s1243808733/android/dx/cf/attrib/AttConstantValue;-><init>(Lcom/s1243808733/android/dx/rop/cst/TypedConstant;)V

    if-eqz p4, :cond_32

    .line 363
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p3, p2, v0, p1}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    :cond_32
    return-object v1
.end method

.method private deprecated(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;
    .registers 5

    if-eqz p3, :cond_8

    .line 375
    const/4 p1, 0x0

    invoke-static {p1}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->throwBadLength(I)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object p1

    return-object p1

    .line 378
    :cond_8
    new-instance p1, Lcom/s1243808733/android/dx/cf/attrib/AttDeprecated;

    invoke-direct {p1}, Lcom/s1243808733/android/dx/cf/attrib/AttDeprecated;-><init>()V

    return-object p1
.end method

.method private enclosingMethod(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;
    .registers 10

    const/4 v0, 0x4

    if-eq p3, v0, :cond_6

    .line 387
    invoke-static {v0}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->throwBadLength(I)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    .line 390
    :cond_6
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getBytes()Lcom/s1243808733/android/dx/util/ByteArray;

    move-result-object p3

    .line 391
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getConstantPool()Lcom/s1243808733/android/dx/rop/cst/ConstantPool;

    move-result-object p1

    .line 393
    invoke-virtual {p3, p2}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v0

    .line 394
    invoke-interface {p1, v0}, Lcom/s1243808733/android/dx/rop/cst/ConstantPool;->get(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstType;

    add-int/lit8 v1, p2, 0x2

    .line 396
    invoke-virtual {p3, v1}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v2

    .line 397
    invoke-interface {p1, v2}, Lcom/s1243808733/android/dx/rop/cst/ConstantPool;->get0Ok(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstNat;

    .line 399
    new-instance v2, Lcom/s1243808733/android/dx/cf/attrib/AttEnclosingMethod;

    invoke-direct {v2, v0, p1}, Lcom/s1243808733/android/dx/cf/attrib/AttEnclosingMethod;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/rop/cst/CstNat;)V

    if-eqz p4, :cond_52

    .line 402
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "class: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    invoke-interface {p4, p3, p2, v3, v0}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 403
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "method: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 404
    invoke-static {p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->stringOrNone(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 403
    invoke-interface {p4, p3, v1, v3, p1}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    :cond_52
    return-object v2
.end method

.method private exceptions(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;
    .registers 10

    const/4 v0, 0x2

    if-ge p3, v0, :cond_8

    .line 416
    invoke-static {}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->throwSeverelyTruncated()Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object p1

    return-object p1

    .line 419
    :cond_8
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getBytes()Lcom/s1243808733/android/dx/util/ByteArray;

    move-result-object v1

    .line 420
    invoke-virtual {v1, p2}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v2

    if-eqz p4, :cond_27

    .line 423
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "number_of_exceptions: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 424
    invoke-static {v2}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 423
    invoke-interface {p4, v1, p2, v0, v3}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    :cond_27
    mul-int/lit8 p4, v2, 0x2

    sub-int/2addr p3, v0

    if-eq p3, p4, :cond_30

    .line 431
    add-int/2addr p4, v0

    invoke-static {p4}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->throwBadLength(I)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    .line 434
    :cond_30
    add-int/2addr p2, v0

    invoke-virtual {p1, p2, v2}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->makeTypeList(II)Lcom/s1243808733/android/dx/rop/type/TypeList;

    move-result-object p1

    .line 435
    new-instance p2, Lcom/s1243808733/android/dx/cf/attrib/AttExceptions;

    invoke-direct {p2, p1}, Lcom/s1243808733/android/dx/cf/attrib/AttExceptions;-><init>(Lcom/s1243808733/android/dx/rop/type/TypeList;)V

    return-object p2
.end method

.method private innerClasses(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;
    .registers 26

    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p4

    const/4 v3, 0x2

    if-ge v1, v3, :cond_e

    .line 444
    invoke-static {}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->throwSeverelyTruncated()Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    return-object v0

    .line 447
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getBytes()Lcom/s1243808733/android/dx/util/ByteArray;

    move-result-object v4

    .line 448
    invoke-virtual/range {p1 .. p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getConstantPool()Lcom/s1243808733/android/dx/rop/cst/ConstantPool;

    move-result-object v5

    .line 449
    invoke-virtual {v4, v0}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v6

    if-eqz v2, :cond_31

    .line 452
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "number_of_classes: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 453
    invoke-static {v6}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 452
    invoke-interface {v2, v4, v0, v3, v7}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    :cond_31
    add-int/2addr v0, v3

    mul-int/lit8 v7, v6, 0x8

    sub-int/2addr v1, v3

    if-eq v1, v7, :cond_3b

    .line 460
    add-int/2addr v7, v3

    invoke-static {v7}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->throwBadLength(I)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    .line 463
    :cond_3b
    new-instance v1, Lcom/s1243808733/android/dx/cf/attrib/InnerClassList;

    invoke-direct {v1, v6}, Lcom/s1243808733/android/dx/cf/attrib/InnerClassList;-><init>(I)V

    const/4 v7, 0x0

    :goto_41
    if-ge v7, v6, :cond_de

    .line 466
    invoke-virtual {v4, v0}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v8

    add-int/lit8 v14, v0, 0x2

    .line 467
    invoke-virtual {v4, v14}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v9

    add-int/lit8 v15, v0, 0x4

    .line 468
    invoke-virtual {v4, v15}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v10

    add-int/lit8 v13, v0, 0x6

    .line 469
    invoke-virtual {v4, v13}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v16

    .line 470
    invoke-interface {v5, v8}, Lcom/s1243808733/android/dx/rop/cst/ConstantPool;->get(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v8

    move-object/from16 v17, v8

    check-cast v17, Lcom/s1243808733/android/dx/rop/cst/CstType;

    .line 471
    invoke-interface {v5, v9}, Lcom/s1243808733/android/dx/rop/cst/ConstantPool;->get0Ok(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v8

    move-object/from16 v18, v8

    check-cast v18, Lcom/s1243808733/android/dx/rop/cst/CstType;

    .line 472
    invoke-interface {v5, v10}, Lcom/s1243808733/android/dx/rop/cst/ConstantPool;->get0Ok(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v8

    move-object/from16 v19, v8

    check-cast v19, Lcom/s1243808733/android/dx/rop/cst/CstString;

    .line 473
    move-object v8, v1

    move v9, v7

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move-object/from16 v12, v19

    move/from16 v20, v13

    move/from16 v13, v16

    invoke-virtual/range {v8 .. v13}, Lcom/s1243808733/android/dx/cf/attrib/InnerClassList;->set(ILcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/rop/cst/CstString;I)V

    if-eqz v2, :cond_d8

    .line 475
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "inner_class: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 477
    invoke-static/range {v17 .. v17}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->stringOrNone(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 475
    invoke-interface {v2, v4, v0, v3, v8}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 478
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "  outer_class: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 480
    invoke-static/range {v18 .. v18}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->stringOrNone(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 478
    invoke-interface {v2, v4, v14, v3, v8}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 481
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "  name: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 483
    invoke-static/range {v19 .. v19}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->stringOrNone(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 481
    invoke-interface {v2, v4, v15, v3, v8}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 484
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "  access_flags: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 486
    invoke-static/range {v16 .. v16}, Lcom/s1243808733/android/dx/rop/code/AccessFlags;->innerClassString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 484
    move/from16 v9, v20

    invoke-interface {v2, v4, v9, v3, v8}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    :cond_d8
    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_41

    .line 491
    :cond_de
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/cf/attrib/InnerClassList;->setImmutable()V

    .line 492
    new-instance v0, Lcom/s1243808733/android/dx/cf/attrib/AttInnerClasses;

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/cf/attrib/AttInnerClasses;-><init>(Lcom/s1243808733/android/dx/cf/attrib/InnerClassList;)V

    return-object v0
.end method

.method private lineNumberTable(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;
    .registers 10

    const/4 v0, 0x2

    if-ge p3, v0, :cond_8

    .line 501
    invoke-static {}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->throwSeverelyTruncated()Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object p1

    return-object p1

    .line 504
    :cond_8
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getBytes()Lcom/s1243808733/android/dx/util/ByteArray;

    move-result-object p1

    .line 505
    invoke-virtual {p1, p2}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v1

    if-eqz p4, :cond_27

    .line 508
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "line_number_table_length: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 509
    invoke-static {v1}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 508
    invoke-interface {p4, p1, p2, v0, v2}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    :cond_27
    add-int/2addr p2, v0

    mul-int/lit8 v2, v1, 0x4

    sub-int/2addr p3, v0

    if-eq p3, v2, :cond_31

    .line 516
    add-int/2addr v2, v0

    invoke-static {v2}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->throwBadLength(I)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    .line 519
    :cond_31
    new-instance p3, Lcom/s1243808733/android/dx/cf/code/LineNumberList;

    invoke-direct {p3, v1}, Lcom/s1243808733/android/dx/cf/code/LineNumberList;-><init>(I)V

    const/4 v0, 0x0

    :goto_37
    if-ge v0, v1, :cond_69

    .line 522
    invoke-virtual {p1, p2}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v2

    .line 523
    add-int/lit8 v3, p2, 0x2

    invoke-virtual {p1, v3}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v3

    .line 524
    invoke-virtual {p3, v0, v2, v3}, Lcom/s1243808733/android/dx/cf/code/LineNumberList;->set(III)V

    if-eqz p4, :cond_64

    .line 526
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 527
    invoke-static {v2}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 526
    const/4 v3, 0x4

    invoke-interface {p4, p1, p2, v3, v2}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    :cond_64
    add-int/lit8 p2, p2, 0x4

    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    .line 532
    :cond_69
    invoke-virtual {p3}, Lcom/s1243808733/android/dx/cf/code/LineNumberList;->setImmutable()V

    .line 533
    new-instance p1, Lcom/s1243808733/android/dx/cf/attrib/AttLineNumberTable;

    invoke-direct {p1, p3}, Lcom/s1243808733/android/dx/cf/attrib/AttLineNumberTable;-><init>(Lcom/s1243808733/android/dx/cf/code/LineNumberList;)V

    return-object p1
.end method

.method private localVariableTable(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;
    .registers 13

    const/4 v0, 0x2

    if-ge p3, v0, :cond_8

    .line 542
    invoke-static {}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->throwSeverelyTruncated()Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object p1

    return-object p1

    .line 545
    :cond_8
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getBytes()Lcom/s1243808733/android/dx/util/ByteArray;

    move-result-object v1

    .line 546
    invoke-virtual {v1, p2}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v6

    if-eqz p4, :cond_27

    .line 549
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "local_variable_table_length: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 550
    invoke-static {v6}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 549
    invoke-interface {p4, v1, p2, v0, v2}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 554
    :cond_27
    add-int/lit8 v0, p2, 0x2

    add-int/2addr p2, p3

    invoke-virtual {v1, v0, p2}, Lcom/s1243808733/android/dx/util/ByteArray;->slice(II)Lcom/s1243808733/android/dx/util/ByteArray;

    move-result-object v3

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getConstantPool()Lcom/s1243808733/android/dx/rop/cst/ConstantPool;

    move-result-object v4

    .line 553
    const/4 v7, 0x0

    move-object v2, p0

    move-object v5, p4

    invoke-direct/range {v2 .. v7}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->parseLocalVariables(Lcom/s1243808733/android/dx/util/ByteArray;Lcom/s1243808733/android/dx/rop/cst/ConstantPool;Lcom/s1243808733/android/dx/cf/iface/ParseObserver;IZ)Lcom/s1243808733/android/dx/cf/code/LocalVariableList;

    move-result-object p1

    .line 556
    new-instance p2, Lcom/s1243808733/android/dx/cf/attrib/AttLocalVariableTable;

    invoke-direct {p2, p1}, Lcom/s1243808733/android/dx/cf/attrib/AttLocalVariableTable;-><init>(Lcom/s1243808733/android/dx/cf/code/LocalVariableList;)V

    return-object p2
.end method

.method private localVariableTypeTable(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;
    .registers 13

    const/4 v0, 0x2

    if-ge p3, v0, :cond_8

    .line 565
    invoke-static {}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->throwSeverelyTruncated()Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object p1

    return-object p1

    .line 568
    :cond_8
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getBytes()Lcom/s1243808733/android/dx/util/ByteArray;

    move-result-object v1

    .line 569
    invoke-virtual {v1, p2}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v6

    if-eqz p4, :cond_27

    .line 572
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "local_variable_type_table_length: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 573
    invoke-static {v6}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 572
    invoke-interface {p4, v1, p2, v0, v2}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 577
    :cond_27
    add-int/lit8 v0, p2, 0x2

    add-int/2addr p2, p3

    invoke-virtual {v1, v0, p2}, Lcom/s1243808733/android/dx/util/ByteArray;->slice(II)Lcom/s1243808733/android/dx/util/ByteArray;

    move-result-object v3

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getConstantPool()Lcom/s1243808733/android/dx/rop/cst/ConstantPool;

    move-result-object v4

    .line 576
    const/4 v7, 0x1

    move-object v2, p0

    move-object v5, p4

    invoke-direct/range {v2 .. v7}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->parseLocalVariables(Lcom/s1243808733/android/dx/util/ByteArray;Lcom/s1243808733/android/dx/rop/cst/ConstantPool;Lcom/s1243808733/android/dx/cf/iface/ParseObserver;IZ)Lcom/s1243808733/android/dx/cf/code/LocalVariableList;

    move-result-object p1

    .line 579
    new-instance p2, Lcom/s1243808733/android/dx/cf/attrib/AttLocalVariableTypeTable;

    invoke-direct {p2, p1}, Lcom/s1243808733/android/dx/cf/attrib/AttLocalVariableTypeTable;-><init>(Lcom/s1243808733/android/dx/cf/code/LocalVariableList;)V

    return-object p2
.end method

.method private parseBootstrapMethods(Lcom/s1243808733/android/dx/util/ByteArray;Lcom/s1243808733/android/dx/rop/cst/ConstantPool;Lcom/s1243808733/android/dx/rop/cst/CstType;IIILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList;
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/s1243808733/android/dx/cf/iface/ParseException;
        }
    .end annotation

    .line 819
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p4

    move-object/from16 v3, p7

    new-instance v4, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList;

    invoke-direct {v4, v2}, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList;-><init>(I)V

    move/from16 v6, p5

    move/from16 v7, p6

    const/4 v8, 0x0

    :goto_12
    if-ge v8, v2, :cond_a7

    const/4 v9, 0x4

    if-ge v7, v9, :cond_1a

    .line 822
    invoke-static {}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->throwTruncated()Lcom/s1243808733/android/dx/cf/iface/Attribute;

    .line 825
    :cond_1a
    invoke-virtual {v0, v6}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v9

    add-int/lit8 v10, v6, 0x2

    .line 826
    invoke-virtual {v0, v10}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v11

    const/4 v12, 0x2

    if-eqz v3, :cond_51

    .line 829
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "bootstrap_method_ref: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v0, v6, v12, v13}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 830
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "num_bootstrap_arguments: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 831
    invoke-static {v11}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 830
    invoke-interface {v3, v0, v10, v12, v13}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    :cond_51
    add-int/lit8 v6, v6, 0x4

    add-int/lit8 v7, v7, -0x4

    mul-int/lit8 v10, v11, 0x2

    if-ge v7, v10, :cond_5c

    .line 837
    invoke-static {}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->throwTruncated()Lcom/s1243808733/android/dx/cf/iface/Attribute;

    .line 840
    :cond_5c
    new-instance v10, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodArgumentsList;

    invoke-direct {v10, v11}, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodArgumentsList;-><init>(I)V

    const/4 v13, 0x0

    :goto_62
    if-ge v13, v11, :cond_95

    .line 842
    invoke-virtual {v0, v6}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v14

    if-eqz v3, :cond_87

    .line 844
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v5, "bootstrap_arguments["

    invoke-direct {v15, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 845
    invoke-static {v14}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 844
    invoke-interface {v3, v0, v6, v12, v5}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 847
    :cond_87
    invoke-interface {v1, v14}, Lcom/s1243808733/android/dx/rop/cst/ConstantPool;->get(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v5

    invoke-virtual {v10, v13, v5}, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodArgumentsList;->set(ILcom/s1243808733/android/dx/rop/cst/Constant;)V

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v6, v6, 0x2

    add-int/lit8 v7, v7, -0x2

    goto :goto_62

    .line 849
    :cond_95
    invoke-virtual {v10}, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodArgumentsList;->setImmutable()V

    .line 850
    invoke-interface {v1, v9}, Lcom/s1243808733/android/dx/rop/cst/ConstantPool;->get(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v5

    .line 851
    check-cast v5, Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;

    move-object/from16 v9, p3

    invoke-virtual {v4, v8, v9, v5, v10}, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList;->set(ILcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;Lcom/s1243808733/android/dx/cf/code/BootstrapMethodArgumentsList;)V

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_12

    .line 853
    :cond_a7
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList;->setImmutable()V

    if-eqz v7, :cond_af

    .line 856
    invoke-static {v7}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->throwBadLength(I)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    :cond_af
    return-object v4
.end method

.method private parseLocalVariables(Lcom/s1243808733/android/dx/util/ByteArray;Lcom/s1243808733/android/dx/rop/cst/ConstantPool;Lcom/s1243808733/android/dx/cf/iface/ParseObserver;IZ)Lcom/s1243808733/android/dx/cf/code/LocalVariableList;
    .registers 26

    .line 596
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move/from16 v2, p4

    const-string v3, " "

    invoke-virtual/range {p1 .. p1}, Lcom/s1243808733/android/dx/util/ByteArray;->size()I

    move-result v4

    mul-int/lit8 v5, v2, 0xa

    if-eq v4, v5, :cond_15

    .line 598
    add-int/lit8 v5, v5, 0x2

    invoke-static {v5}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->throwBadLength(I)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    .line 601
    :cond_15
    invoke-virtual/range {p1 .. p1}, Lcom/s1243808733/android/dx/util/ByteArray;->makeDataInputStream()Lcom/s1243808733/android/dx/util/ByteArray$MyDataInputStream;

    move-result-object v4

    .line 602
    new-instance v13, Lcom/s1243808733/android/dx/cf/code/LocalVariableList;

    invoke-direct {v13, v2}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList;-><init>(I)V

    const/4 v5, 0x0

    const/4 v14, 0x0

    :goto_20
    if-ge v14, v2, :cond_b3

    .line 606
    :try_start_22
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/util/ByteArray$MyDataInputStream;->readUnsignedShort()I

    move-result v15

    .line 607
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/util/ByteArray$MyDataInputStream;->readUnsignedShort()I

    move-result v16

    .line 608
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/util/ByteArray$MyDataInputStream;->readUnsignedShort()I

    move-result v5

    .line 609
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/util/ByteArray$MyDataInputStream;->readUnsignedShort()I

    move-result v6

    .line 610
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/util/ByteArray$MyDataInputStream;->readUnsignedShort()I

    move-result v17

    .line 611
    invoke-interface {v0, v5}, Lcom/s1243808733/android/dx/rop/cst/ConstantPool;->get(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v5

    move-object/from16 v18, v5

    check-cast v18, Lcom/s1243808733/android/dx/rop/cst/CstString;

    .line 612
    invoke-interface {v0, v6}, Lcom/s1243808733/android/dx/rop/cst/ConstantPool;->get(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v5

    move-object/from16 v19, v5

    check-cast v19, Lcom/s1243808733/android/dx/rop/cst/CstString;

    const/4 v5, 0x0

    if-eqz p5, :cond_4d

    move-object v10, v5

    move-object/from16 v11, v19

    goto :goto_50

    :cond_4d
    move-object v11, v5

    move-object/from16 v10, v19

    .line 622
    :goto_50
    move-object v5, v13

    move v6, v14

    move v7, v15

    move/from16 v8, v16

    move-object/from16 v9, v18

    move/from16 v12, v17

    invoke-virtual/range {v5 .. v12}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList;->set(IIILcom/s1243808733/android/dx/rop/cst/CstString;Lcom/s1243808733/android/dx/rop/cst/CstString;Lcom/s1243808733/android/dx/rop/cst/CstString;I)V

    if-eqz v1, :cond_a4

    .line 626
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v15}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    add-int v15, v15, v16

    invoke-static {v15}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    invoke-static/range {v17 .. v17}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v18 .. v18}, Lcom/s1243808733/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    invoke-virtual/range {v19 .. v19}, Lcom/s1243808733/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 626
    mul-int/lit8 v6, v14, 0xa

    const/16 v7, 0xa

    move-object/from16 v8, p1

    invoke-interface {v1, v8, v6, v7, v5}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_a3} :catch_aa

    goto :goto_a6

    .line 622
    :cond_a4
    move-object/from16 v8, p1

    .line 626
    :goto_a6
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_20

    :catch_aa
    move-exception v0

    .line 633
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "shouldn\'t happen"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 636
    :cond_b3
    invoke-virtual {v13}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList;->setImmutable()V

    return-object v13
.end method

.method private runtimeInvisibleAnnotations(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;
    .registers 6

    const/4 v0, 0x2

    if-ge p3, v0, :cond_6

    .line 646
    invoke-static {}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->throwSeverelyTruncated()Lcom/s1243808733/android/dx/cf/iface/Attribute;

    .line 649
    :cond_6
    new-instance v0, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;-><init>(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)V

    .line 651
    sget-object p1, Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;->BUILD:Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;

    .line 652
    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->parseAnnotationAttribute(Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;)Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    move-result-object p1

    .line 654
    new-instance p2, Lcom/s1243808733/android/dx/cf/attrib/AttRuntimeInvisibleAnnotations;

    invoke-direct {p2, p1, p3}, Lcom/s1243808733/android/dx/cf/attrib/AttRuntimeInvisibleAnnotations;-><init>(Lcom/s1243808733/android/dx/rop/annotation/Annotations;I)V

    return-object p2
.end method

.method private runtimeInvisibleParameterAnnotations(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;
    .registers 6

    const/4 v0, 0x2

    if-ge p3, v0, :cond_6

    .line 680
    invoke-static {}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->throwSeverelyTruncated()Lcom/s1243808733/android/dx/cf/iface/Attribute;

    .line 683
    :cond_6
    new-instance v0, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;-><init>(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)V

    .line 685
    sget-object p1, Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;->BUILD:Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;

    .line 686
    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->parseParameterAttribute(Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;)Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;

    move-result-object p1

    .line 688
    new-instance p2, Lcom/s1243808733/android/dx/cf/attrib/AttRuntimeInvisibleParameterAnnotations;

    invoke-direct {p2, p1, p3}, Lcom/s1243808733/android/dx/cf/attrib/AttRuntimeInvisibleParameterAnnotations;-><init>(Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;I)V

    return-object p2
.end method

.method private runtimeVisibleAnnotations(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;
    .registers 6

    const/4 v0, 0x2

    if-ge p3, v0, :cond_6

    .line 663
    invoke-static {}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->throwSeverelyTruncated()Lcom/s1243808733/android/dx/cf/iface/Attribute;

    .line 666
    :cond_6
    new-instance v0, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;-><init>(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)V

    .line 668
    sget-object p1, Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;->RUNTIME:Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;

    .line 669
    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->parseAnnotationAttribute(Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;)Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    move-result-object p1

    .line 671
    new-instance p2, Lcom/s1243808733/android/dx/cf/attrib/AttRuntimeVisibleAnnotations;

    invoke-direct {p2, p1, p3}, Lcom/s1243808733/android/dx/cf/attrib/AttRuntimeVisibleAnnotations;-><init>(Lcom/s1243808733/android/dx/rop/annotation/Annotations;I)V

    return-object p2
.end method

.method private runtimeVisibleParameterAnnotations(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;
    .registers 6

    const/4 v0, 0x2

    if-ge p3, v0, :cond_6

    .line 697
    invoke-static {}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->throwSeverelyTruncated()Lcom/s1243808733/android/dx/cf/iface/Attribute;

    .line 700
    :cond_6
    new-instance v0, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;-><init>(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)V

    .line 702
    sget-object p1, Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;->RUNTIME:Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;

    .line 703
    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->parseParameterAttribute(Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;)Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;

    move-result-object p1

    .line 705
    new-instance p2, Lcom/s1243808733/android/dx/cf/attrib/AttRuntimeVisibleParameterAnnotations;

    invoke-direct {p2, p1, p3}, Lcom/s1243808733/android/dx/cf/attrib/AttRuntimeVisibleParameterAnnotations;-><init>(Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;I)V

    return-object p2
.end method

.method private signature(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;
    .registers 9

    const/4 v0, 0x2

    if-eq p3, v0, :cond_6

    .line 714
    invoke-static {v0}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->throwBadLength(I)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    .line 717
    :cond_6
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getBytes()Lcom/s1243808733/android/dx/util/ByteArray;

    move-result-object p3

    .line 718
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getConstantPool()Lcom/s1243808733/android/dx/rop/cst/ConstantPool;

    move-result-object p1

    .line 719
    invoke-virtual {p3, p2}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v1

    .line 720
    invoke-interface {p1, v1}, Lcom/s1243808733/android/dx/rop/cst/ConstantPool;->get(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstString;

    .line 721
    new-instance v1, Lcom/s1243808733/android/dx/cf/attrib/AttSignature;

    invoke-direct {v1, p1}, Lcom/s1243808733/android/dx/cf/attrib/AttSignature;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstString;)V

    if-eqz p4, :cond_30

    .line 724
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "signature: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p3, p2, v0, p1}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    :cond_30
    return-object v1
.end method

.method private sourceDebugExtension(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;
    .registers 9

    .line 735
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getBytes()Lcom/s1243808733/android/dx/util/ByteArray;

    move-result-object p1

    add-int v0, p2, p3

    invoke-virtual {p1, p2, v0}, Lcom/s1243808733/android/dx/util/ByteArray;->slice(II)Lcom/s1243808733/android/dx/util/ByteArray;

    move-result-object p1

    .line 736
    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-direct {v0, p1}, Lcom/s1243808733/android/dx/rop/cst/CstString;-><init>(Lcom/s1243808733/android/dx/util/ByteArray;)V

    .line 737
    new-instance v1, Lcom/s1243808733/android/dx/cf/attrib/AttSourceDebugExtension;

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dx/cf/attrib/AttSourceDebugExtension;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstString;)V

    if-eqz p4, :cond_2b

    .line 740
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstString;->getString()Ljava/lang/String;

    move-result-object v0

    .line 741
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sourceDebugExtension: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, p1, p2, p3, v0}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    :cond_2b
    return-object v1
.end method

.method private sourceFile(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;
    .registers 9

    const/4 v0, 0x2

    if-eq p3, v0, :cond_6

    .line 753
    invoke-static {v0}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->throwBadLength(I)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    .line 756
    :cond_6
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getBytes()Lcom/s1243808733/android/dx/util/ByteArray;

    move-result-object p3

    .line 757
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getConstantPool()Lcom/s1243808733/android/dx/rop/cst/ConstantPool;

    move-result-object p1

    .line 758
    invoke-virtual {p3, p2}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v1

    .line 759
    invoke-interface {p1, v1}, Lcom/s1243808733/android/dx/rop/cst/ConstantPool;->get(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstString;

    .line 760
    new-instance v1, Lcom/s1243808733/android/dx/cf/attrib/AttSourceFile;

    invoke-direct {v1, p1}, Lcom/s1243808733/android/dx/cf/attrib/AttSourceFile;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstString;)V

    if-eqz p4, :cond_30

    .line 763
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "source: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p3, p2, v0, p1}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    :cond_30
    return-object v1
.end method

.method private synthetic(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;
    .registers 5

    if-eqz p3, :cond_8

    .line 775
    const/4 p1, 0x0

    invoke-static {p1}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->throwBadLength(I)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object p1

    return-object p1

    .line 778
    :cond_8
    new-instance p1, Lcom/s1243808733/android/dx/cf/attrib/AttSynthetic;

    invoke-direct {p1}, Lcom/s1243808733/android/dx/cf/attrib/AttSynthetic;-><init>()V

    return-object p1
.end method

.method private static throwBadLength(I)Lcom/s1243808733/android/dx/cf/iface/Attribute;
    .registers 3

    .line 812
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bad attribute length; expected length "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 813
    invoke-static {p0}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Lcom/s1243808733/android/dx/cf/iface/ParseException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/cf/iface/ParseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static throwSeverelyTruncated()Lcom/s1243808733/android/dx/cf/iface/Attribute;
    .registers 2

    .line 789
    new-instance v0, Lcom/s1243808733/android/dx/cf/iface/ParseException;

    const-string v1, "severely truncated attribute"

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/cf/iface/ParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static throwTruncated()Lcom/s1243808733/android/dx/cf/iface/Attribute;
    .registers 2

    .line 800
    new-instance v0, Lcom/s1243808733/android/dx/cf/iface/ParseException;

    const-string v1, "truncated attribute"

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/cf/iface/ParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected parse0(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;ILjava/lang/String;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;
    .registers 13

    .line 86
    const-string v0, "Synthetic"

    const-string v1, "Signature"

    const-string v2, "RuntimeVisibleAnnotations"

    const-string v3, "RuntimeInvisibleAnnotations"

    const-string v4, "Deprecated"

    if-eqz p2, :cond_ae

    const/4 v5, 0x1

    if-eq p2, v5, :cond_82

    const/4 v5, 0x2

    if-eq p2, v5, :cond_32

    const/4 v0, 0x3

    if-eq p2, v0, :cond_17

    goto/16 :goto_fe

    .line 185
    :cond_17
    const-string v0, "LineNumberTable"

    if-ne p3, v0, :cond_20

    .line 186
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->lineNumberTable(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object p1

    return-object p1

    .line 188
    :cond_20
    const-string v0, "LocalVariableTable"

    if-ne p3, v0, :cond_29

    .line 189
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->localVariableTable(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object p1

    return-object p1

    .line 191
    :cond_29
    const-string v0, "LocalVariableTypeTable"

    if-ne p3, v0, :cond_fe

    .line 192
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->localVariableTypeTable(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object p1

    return-object p1

    .line 146
    :cond_32
    const-string v5, "AnnotationDefault"

    if-ne p3, v5, :cond_3b

    .line 147
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->annotationDefault(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object p1

    return-object p1

    .line 149
    :cond_3b
    const-string v5, "Code"

    if-ne p3, v5, :cond_44

    .line 150
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->code(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object p1

    return-object p1

    :cond_44
    if-ne p3, v4, :cond_4b

    .line 153
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->deprecated(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object p1

    return-object p1

    .line 155
    :cond_4b
    const-string v4, "Exceptions"

    if-ne p3, v4, :cond_54

    .line 156
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->exceptions(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object p1

    return-object p1

    :cond_54
    if-ne p3, v3, :cond_5b

    .line 159
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->runtimeInvisibleAnnotations(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object p1

    return-object p1

    :cond_5b
    if-ne p3, v2, :cond_62

    .line 163
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->runtimeVisibleAnnotations(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object p1

    return-object p1

    .line 166
    :cond_62
    const-string v2, "RuntimeInvisibleParameterAnnotations"

    if-ne p3, v2, :cond_6b

    .line 168
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->runtimeInvisibleParameterAnnotations(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object p1

    return-object p1

    .line 171
    :cond_6b
    const-string v2, "RuntimeVisibleParameterAnnotations"

    if-ne p3, v2, :cond_74

    .line 173
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->runtimeVisibleParameterAnnotations(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object p1

    return-object p1

    :cond_74
    if-ne p3, v1, :cond_7b

    .line 177
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->signature(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object p1

    return-object p1

    :cond_7b
    if-ne p3, v0, :cond_fe

    .line 180
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->synthetic(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object p1

    return-object p1

    .line 123
    :cond_82
    const-string v5, "ConstantValue"

    if-ne p3, v5, :cond_8b

    .line 124
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->constantValue(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object p1

    return-object p1

    :cond_8b
    if-ne p3, v4, :cond_92

    .line 127
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->deprecated(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object p1

    return-object p1

    :cond_92
    if-ne p3, v3, :cond_99

    .line 130
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->runtimeInvisibleAnnotations(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object p1

    return-object p1

    :cond_99
    if-ne p3, v2, :cond_a0

    .line 134
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->runtimeVisibleAnnotations(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object p1

    return-object p1

    :cond_a0
    if-ne p3, v1, :cond_a7

    .line 138
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->signature(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object p1

    return-object p1

    :cond_a7
    if-ne p3, v0, :cond_fe

    .line 141
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->synthetic(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object p1

    return-object p1

    .line 88
    :cond_ae
    const-string v5, "BootstrapMethods"

    if-ne p3, v5, :cond_b7

    .line 89
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->bootstrapMethods(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object p1

    return-object p1

    :cond_b7
    if-ne p3, v4, :cond_be

    .line 92
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->deprecated(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object p1

    return-object p1

    .line 94
    :cond_be
    const-string v4, "EnclosingMethod"

    if-ne p3, v4, :cond_c7

    .line 95
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->enclosingMethod(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object p1

    return-object p1

    .line 97
    :cond_c7
    const-string v4, "InnerClasses"

    if-ne p3, v4, :cond_d0

    .line 98
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->innerClasses(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object p1

    return-object p1

    :cond_d0
    if-ne p3, v3, :cond_d7

    .line 101
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->runtimeInvisibleAnnotations(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object p1

    return-object p1

    :cond_d7
    if-ne p3, v2, :cond_de

    .line 105
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->runtimeVisibleAnnotations(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object p1

    return-object p1

    :cond_de
    if-ne p3, v0, :cond_e5

    .line 109
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->synthetic(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object p1

    return-object p1

    :cond_e5
    if-ne p3, v1, :cond_ec

    .line 112
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->signature(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object p1

    return-object p1

    .line 114
    :cond_ec
    const-string v0, "SourceDebugExtension"

    if-ne p3, v0, :cond_f5

    .line 115
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->sourceDebugExtension(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object p1

    return-object p1

    .line 117
    :cond_f5
    const-string v0, "SourceFile"

    if-ne p3, v0, :cond_fe

    .line 118
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->sourceFile(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object p1

    return-object p1

    .line 199
    :cond_fe
    :goto_fe
    invoke-super/range {p0 .. p6}, Lcom/s1243808733/android/dx/cf/direct/AttributeFactory;->parse0(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;ILjava/lang/String;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object p1

    return-object p1
.end method
