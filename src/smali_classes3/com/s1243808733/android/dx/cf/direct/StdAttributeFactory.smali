.class public Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;
.super Lcom/s1243808733/android/dx/cf/direct/AttributeFactory;
.source "StdAttributeFactory.java"


# static fields
.field public static final THE_ONE:Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;


# direct methods
.method static final constructor <clinit>()V
    .registers 1

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
    .registers 7

    .line 207
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
    .registers 13

    const/4 v3, 0x2

    .line 223
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

    .line 229
    if-eqz p4, :cond_1

    .line 230
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "num_boostrap_methods: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {v4}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v1, p2, v3, v0}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 234
    :cond_1
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getConstantPool()Lcom/s1243808733/android/dx/rop/cst/ConstantPool;

    move-result-object v2

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getThisClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v3

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
    .registers 27

    .line 248
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

    .line 255
    add-int/lit8 v2, p2, 0x2

    invoke-virtual {v8, v2}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v13

    .line 256
    add-int/lit8 v2, p2, 0x4

    invoke-virtual {v8, v2}, Lcom/s1243808733/android/dx/util/ByteArray;->getInt(I)I

    move-result v3

    .line 259
    if-eqz p4, :cond_1

    .line 260
    const/4 v2, 0x2

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "max_stack: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-static {v12}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    move/from16 v1, p2

    invoke-interface {v0, v8, v1, v2, v4}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 262
    add-int/lit8 v2, p2, 0x2

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "max_locals: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-static {v13}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-interface {v0, v8, v2, v4, v5}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 264
    add-int/lit8 v2, p2, 0x4

    const/4 v4, 0x4

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "code_length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-static {v3}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-interface {v0, v8, v2, v4, v5}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 268
    :cond_1
    add-int/lit8 v2, p2, 0x8

    .line 269
    add-int/lit8 v4, p3, -0x8

    .line 271
    add-int/lit8 v5, v3, 0x4

    if-ge v4, v5, :cond_2

    .line 272
    invoke-static {}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->throwTruncated()Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v3

    goto/16 :goto_0

    .line 276
    :cond_2
    add-int v5, v2, v3

    .line 277
    new-instance v14, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;

    add-int v6, v3, v2

    invoke-virtual {v8, v2, v6}, Lcom/s1243808733/android/dx/util/ByteArray;->slice(II)Lcom/s1243808733/android/dx/util/ByteArray;

    move-result-object v2

    invoke-direct {v14, v2, v11}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;-><init>(Lcom/s1243808733/android/dx/util/ByteArray;Lcom/s1243808733/android/dx/rop/cst/ConstantPool;)V

    .line 281
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

    .line 287
    if-nez v15, :cond_5

    sget-object v2, Lcom/s1243808733/android/dx/cf/code/ByteCatchList;->EMPTY:Lcom/s1243808733/android/dx/cf/code/ByteCatchList;

    .line 291
    :goto_1
    if-eqz p4, :cond_4

    .line 292
    const/4 v6, 0x2

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "exception_table_length: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-static {v15}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p4

    invoke-interface {v0, v8, v5, v6, v7}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 297
    :cond_4
    sub-int v3, v4, v3

    add-int/lit8 v4, v3, -0x2

    .line 300
    mul-int/lit8 v3, v15, 0x8

    add-int/lit8 v3, v3, 0x2

    if-ge v4, v3, :cond_6

    .line 301
    invoke-static {}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->throwTruncated()Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v3

    goto/16 :goto_0

    .line 287
    :cond_5
    new-instance v2, Lcom/s1243808733/android/dx/cf/code/ByteCatchList;

    invoke-direct {v2, v15}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList;-><init>(I)V

    goto :goto_1

    .line 304
    :cond_6
    const/4 v3, 0x0

    add-int/lit8 v5, v5, 0x2

    move v9, v4

    move v10, v5

    :goto_2
    if-lt v3, v15, :cond_7

    .line 330
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

    .line 340
    if-eq v3, v9, :cond_c

    .line 341
    sub-int v2, v10, p2

    add-int/2addr v2, v3

    invoke-static {v2}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->throwBadLength(I)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v3

    goto/16 :goto_0

    .line 305
    :cond_7
    if-eqz p4, :cond_8

    .line 306
    const/4 v4, 0x1

    move-object/from16 v0, p4

    invoke-interface {v0, v4}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->changeIndent(I)V

    .line 309
    :cond_8
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

    .line 315
    if-eqz p4, :cond_9

    .line 316
    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v18, Ljava/lang/StringBuffer;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v20, Ljava/lang/StringBuffer;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v21, Ljava/lang/StringBuffer;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v4}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v21, ".."

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-static {v5}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-static {v6}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    if-nez v7, :cond_b

    const-string v4, "<any>"

    :goto_3
    const/16 v6, 0x8

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-interface {v0, v8, v10, v6, v4}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 322
    :cond_9
    if-eqz p4, :cond_a

    .line 326
    const/4 v4, -0x1

    move-object/from16 v0, p4

    invoke-interface {v0, v4}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->changeIndent(I)V

    .line 304
    :cond_a
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v9, -0x8

    add-int/lit8 v5, v10, 0x8

    move v9, v4

    move v10, v5

    goto/16 :goto_2

    .line 316
    :cond_b
    invoke-virtual {v7}, Lcom/s1243808733/android/dx/rop/cst/CstType;->toHuman()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

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
    .registers 11

    const/4 v5, 0x2

    .line 352
    if-eq p3, v5, :cond_0

    .line 353
    invoke-static {v5}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->throwBadLength(I)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    .line 366
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

    .line 362
    if-eqz p4, :cond_1

    .line 363
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v2, p2, v5, v0}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    :cond_1
    move-object v0, v1

    .line 366
    goto :goto_0
.end method

.method private deprecated(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;
    .registers 6

    .line 374
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
    .registers 12

    const/4 v0, 0x4

    const/4 v6, 0x2

    .line 386
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

    .line 396
    add-int/lit8 v3, p2, 0x2

    invoke-virtual {v2, v3}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v3

    .line 397
    invoke-interface {v1, v3}, Lcom/s1243808733/android/dx/rop/cst/ConstantPool;->get0Ok(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/rop/cst/CstNat;

    .line 399
    new-instance v3, Lcom/s1243808733/android/dx/cf/attrib/AttEnclosingMethod;

    invoke-direct {v3, v0, v1}, Lcom/s1243808733/android/dx/cf/attrib/AttEnclosingMethod;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/rop/cst/CstNat;)V

    .line 401
    if-eqz p4, :cond_1

    .line 402
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "class: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v2, p2, v6, v0}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 403
    add-int/lit8 v0, p2, 0x2

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "method: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-static {v1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->stringOrNone(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v2, v0, v6, v1}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 407
    :cond_1
    return-object v3
.end method

.method private exceptions(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;
    .registers 10

    const/4 v4, 0x2

    .line 415
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

    .line 422
    if-eqz p4, :cond_1

    .line 423
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "number_of_exceptions: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {v1}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p4, v0, p2, v4, v2}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 427
    :cond_1
    add-int/lit8 v0, p3, -0x2

    mul-int/lit8 v2, v1, 0x2

    if-eq v0, v2, :cond_2

    .line 431
    mul-int/lit8 v0, v1, 0x2

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
    .registers 20

    .line 443
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

    .line 451
    if-eqz p4, :cond_1

    .line 452
    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "number_of_classes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {v11}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p4

    move/from16 v1, p2

    invoke-interface {v0, v9, v1, v2, v3}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 456
    :cond_1
    add-int/lit8 v2, p3, -0x2

    mul-int/lit8 v3, v11, 0x8

    if-eq v2, v3, :cond_2

    .line 460
    mul-int/lit8 v2, v11, 0x8

    add-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->throwBadLength(I)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    .line 463
    :cond_2
    new-instance v2, Lcom/s1243808733/android/dx/cf/attrib/InnerClassList;

    invoke-direct {v2, v11}, Lcom/s1243808733/android/dx/cf/attrib/InnerClassList;-><init>(I)V

    .line 465
    const/4 v3, 0x0

    add-int/lit8 v4, p2, 0x2

    move v8, v4

    :goto_1
    if-lt v3, v11, :cond_3

    .line 491
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/cf/attrib/InnerClassList;->setImmutable()V

    .line 492
    new-instance v3, Lcom/s1243808733/android/dx/cf/attrib/AttInnerClasses;

    invoke-direct {v3, v2}, Lcom/s1243808733/android/dx/cf/attrib/AttInnerClasses;-><init>(Lcom/s1243808733/android/dx/cf/attrib/InnerClassList;)V

    move-object v2, v3

    goto :goto_0

    .line 466
    :cond_3
    invoke-virtual {v9, v8}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v4

    .line 467
    add-int/lit8 v5, v8, 0x2

    invoke-virtual {v9, v5}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v5

    .line 468
    add-int/lit8 v6, v8, 0x4

    invoke-virtual {v9, v6}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v6

    .line 469
    add-int/lit8 v7, v8, 0x6

    invoke-virtual {v9, v7}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

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

    .line 474
    if-eqz p4, :cond_4

    .line 475
    const/4 v12, 0x2

    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    const-string v14, "inner_class: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-static {v4}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->stringOrNone(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-interface {v0, v9, v8, v12, v4}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 478
    add-int/lit8 v4, v8, 0x2

    const/4 v12, 0x2

    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    const-string v14, "  outer_class: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-static {v5}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->stringOrNone(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-interface {v0, v9, v4, v12, v5}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 481
    add-int/lit8 v4, v8, 0x4

    const/4 v5, 0x2

    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "  name: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-static {v6}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->stringOrNone(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p4

    invoke-interface {v0, v9, v4, v5, v6}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 484
    add-int/lit8 v4, v8, 0x6

    const/4 v5, 0x2

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "  access_flags: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-static {v7}, Lcom/s1243808733/android/dx/rop/code/AccessFlags;->innerClassString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p4

    invoke-interface {v0, v9, v4, v5, v6}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 488
    :cond_4
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v8, 0x8

    move v8, v4

    goto/16 :goto_1
.end method

.method private lineNumberTable(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;
    .registers 15

    const/4 v4, 0x2

    .line 500
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

    .line 507
    if-eqz p4, :cond_1

    .line 508
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "line_number_table_length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {v3}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v2, p2, v4, v0}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 512
    :cond_1
    add-int/lit8 v0, p2, 0x2

    .line 513
    add-int/lit8 v1, p3, -0x2

    mul-int/lit8 v4, v3, 0x4

    if-eq v1, v4, :cond_2

    .line 516
    mul-int/lit8 v1, v3, 0x4

    add-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->throwBadLength(I)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    .line 519
    :cond_2
    new-instance v4, Lcom/s1243808733/android/dx/cf/code/LineNumberList;

    invoke-direct {v4, v3}, Lcom/s1243808733/android/dx/cf/code/LineNumberList;-><init>(I)V

    .line 521
    const/4 v1, 0x0

    :goto_1
    if-lt v1, v3, :cond_3

    .line 532
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/cf/code/LineNumberList;->setImmutable()V

    .line 533
    new-instance v0, Lcom/s1243808733/android/dx/cf/attrib/AttLineNumberTable;

    invoke-direct {v0, v4}, Lcom/s1243808733/android/dx/cf/attrib/AttLineNumberTable;-><init>(Lcom/s1243808733/android/dx/cf/code/LineNumberList;)V

    goto :goto_0

    .line 522
    :cond_3
    invoke-virtual {v2, v0}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v5

    .line 523
    add-int/lit8 v6, v0, 0x2

    invoke-virtual {v2, v6}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v6

    .line 524
    invoke-virtual {v4, v1, v5, v6}, Lcom/s1243808733/android/dx/cf/code/LineNumberList;->set(III)V

    .line 525
    if-eqz p4, :cond_4

    .line 526
    const/4 v7, 0x4

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v5}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v9, " "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p4, v2, v0, v7, v5}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 529
    :cond_4
    add-int/lit8 v0, v0, 0x4

    .line 521
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private localVariableTable(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;
    .registers 11

    const/4 v3, 0x2

    .line 541
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

    .line 548
    if-eqz p4, :cond_1

    .line 549
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "local_variable_table_length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {v4}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v0, p2, v3, v1}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 553
    :cond_1
    add-int/lit8 v1, p2, 0x2

    add-int v2, p2, p3

    invoke-virtual {v0, v1, v2}, Lcom/s1243808733/android/dx/util/ByteArray;->slice(II)Lcom/s1243808733/android/dx/util/ByteArray;

    move-result-object v1

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getConstantPool()Lcom/s1243808733/android/dx/rop/cst/ConstantPool;

    move-result-object v2

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
    .registers 11

    const/4 v3, 0x2

    .line 564
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

    .line 571
    if-eqz p4, :cond_1

    .line 572
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "local_variable_type_table_length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {v4}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v0, p2, v3, v1}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 576
    :cond_1
    add-int/lit8 v1, p2, 0x2

    add-int v2, p2, p3

    invoke-virtual {v0, v1, v2}, Lcom/s1243808733/android/dx/util/ByteArray;->slice(II)Lcom/s1243808733/android/dx/util/ByteArray;

    move-result-object v1

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getConstantPool()Lcom/s1243808733/android/dx/rop/cst/ConstantPool;

    move-result-object v2

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
    .registers 25

    .line 819
    new-instance v7, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList;

    move/from16 v0, p4

    invoke-direct {v7, v0}, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList;-><init>(I)V

    .line 820
    const/4 v3, 0x0

    move v6, v3

    :goto_0
    move/from16 v0, p4

    if-lt v6, v0, :cond_1

    .line 853
    invoke-virtual {v7}, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList;->setImmutable()V

    .line 855
    if-eqz p6, :cond_0

    .line 856
    invoke-static/range {p6 .. p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->throwBadLength(I)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    .line 859
    :cond_0
    return-object v7

    .line 821
    :cond_1
    const/4 v3, 0x4

    move/from16 v0, p6

    if-ge v0, v3, :cond_2

    .line 822
    invoke-static {}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->throwTruncated()Lcom/s1243808733/android/dx/cf/iface/Attribute;

    .line 825
    :cond_2
    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v8

    .line 826
    add-int/lit8 v3, p5, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v9

    .line 828
    if-eqz p7, :cond_3

    .line 829
    const/4 v3, 0x2

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "bootstrap_method_ref: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-static {v8}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p7

    move-object/from16 v1, p1

    move/from16 v2, p5

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 830
    add-int/lit8 v3, p5, 0x2

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "num_bootstrap_arguments: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-static {v9}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p7

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v3, v4, v5}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 834
    :cond_3
    add-int/lit8 v5, p5, 0x4

    .line 835
    add-int/lit8 v4, p6, -0x4

    .line 836
    mul-int/lit8 v3, v9, 0x2

    if-ge v4, v3, :cond_4

    .line 837
    invoke-static {}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->throwTruncated()Lcom/s1243808733/android/dx/cf/iface/Attribute;

    .line 840
    :cond_4
    new-instance v10, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodArgumentsList;

    invoke-direct {v10, v9}, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodArgumentsList;-><init>(I)V

    .line 841
    const/4 v3, 0x0

    :goto_1
    if-lt v3, v9, :cond_5

    .line 849
    invoke-virtual {v10}, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodArgumentsList;->setImmutable()V

    .line 850
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Lcom/s1243808733/android/dx/rop/cst/ConstantPool;->get(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v3

    .line 851
    check-cast v3, Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;

    move-object/from16 v0, p3

    invoke-virtual {v7, v6, v0, v3, v10}, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList;->set(ILcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;Lcom/s1243808733/android/dx/cf/code/BootstrapMethodArgumentsList;)V

    .line 820
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    move/from16 p6, v4

    move/from16 p5, v5

    goto/16 :goto_0

    .line 842
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v11

    .line 843
    if-eqz p7, :cond_6

    .line 844
    const/4 v12, 0x2

    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    const-string v16, "bootstrap_arguments["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    const-string v15, "]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-static {v11}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p7

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v5, v12, v13}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 847
    :cond_6
    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Lcom/s1243808733/android/dx/rop/cst/ConstantPool;->get(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v11

    invoke-virtual {v10, v3, v11}, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodArgumentsList;->set(ILcom/s1243808733/android/dx/rop/cst/Constant;)V

    .line 841
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v5, 0x2

    add-int/lit8 v4, v4, -0x2

    goto :goto_1
.end method

.method private parseLocalVariables(Lcom/s1243808733/android/dx/util/ByteArray;Lcom/s1243808733/android/dx/rop/cst/ConstantPool;Lcom/s1243808733/android/dx/cf/iface/ParseObserver;IZ)Lcom/s1243808733/android/dx/cf/code/LocalVariableList;
    .registers 29

    .line 596
    invoke-virtual/range {p1 .. p1}, Lcom/s1243808733/android/dx/util/ByteArray;->size()I

    move-result v4

    mul-int/lit8 v5, p4, 0xa

    if-eq v4, v5, :cond_0

    .line 598
    mul-int/lit8 v4, p4, 0xa

    add-int/lit8 v4, v4, 0x2

    invoke-static {v4}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->throwBadLength(I)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    .line 601
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/s1243808733/android/dx/util/ByteArray;->makeDataInputStream()Lcom/s1243808733/android/dx/util/ByteArray$MyDataInputStream;

    move-result-object v13

    .line 602
    new-instance v4, Lcom/s1243808733/android/dx/cf/code/LocalVariableList;

    move/from16 v0, p4

    invoke-direct {v4, v0}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList;-><init>(I)V

    .line 605
    const/4 v5, 0x0

    :goto_0
    move/from16 v0, p4

    if-lt v5, v0, :cond_1

    .line 636
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList;->setImmutable()V

    .line 637
    return-object v4

    .line 606
    :cond_1
    :try_start_0
    invoke-virtual {v13}, Lcom/s1243808733/android/dx/util/ByteArray$MyDataInputStream;->readUnsignedShort()I

    move-result v6

    .line 607
    invoke-virtual {v13}, Lcom/s1243808733/android/dx/util/ByteArray$MyDataInputStream;->readUnsignedShort()I

    move-result v7

    .line 608
    invoke-virtual {v13}, Lcom/s1243808733/android/dx/util/ByteArray$MyDataInputStream;->readUnsignedShort()I

    move-result v8

    .line 609
    invoke-virtual {v13}, Lcom/s1243808733/android/dx/util/ByteArray$MyDataInputStream;->readUnsignedShort()I

    move-result v9

    .line 610
    invoke-virtual {v13}, Lcom/s1243808733/android/dx/util/ByteArray$MyDataInputStream;->readUnsignedShort()I

    move-result v11

    .line 611
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Lcom/s1243808733/android/dx/rop/cst/ConstantPool;->get(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v8

    check-cast v8, Lcom/s1243808733/android/dx/rop/cst/CstString;

    .line 612
    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Lcom/s1243808733/android/dx/rop/cst/ConstantPool;->get(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-object v12, v0

    .line 613
    const/4 v9, 0x0

    check-cast v9, Lcom/s1243808733/android/dx/rop/cst/CstString;

    .line 614
    const/4 v10, 0x0

    check-cast v10, Lcom/s1243808733/android/dx/rop/cst/CstString;

    .line 616
    if-eqz p5, :cond_3

    move-object v10, v12

    .line 622
    :goto_1
    invoke-virtual/range {v4 .. v11}, Lcom/s1243808733/android/dx/cf/code/LocalVariableList;->set(IIILcom/s1243808733/android/dx/rop/cst/CstString;Lcom/s1243808733/android/dx/rop/cst/CstString;Lcom/s1243808733/android/dx/rop/cst/CstString;I)V

    .line 625
    if-eqz p3, :cond_2

    .line 626
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v18, Ljava/lang/StringBuffer;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    mul-int/lit8 v20, v5, 0xa

    const/16 v21, 0xa

    invoke-static {v6}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v22, ".."

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    add-int/2addr v6, v7

    invoke-static {v6}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-static {v11}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v8}, Lcom/s1243808733/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v12}, Lcom/s1243808733/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-interface {v0, v1, v2, v3, v6}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 605
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_3
    move-object v9, v12

    .line 619
    goto/16 :goto_1

    .line 605
    :catch_0
    move-exception v4

    .line 633
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "shouldn\'t happen"

    invoke-direct {v5, v6, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method private runtimeInvisibleAnnotations(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;
    .registers 7

    .line 645
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

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->parseAnnotationAttribute(Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;)Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    move-result-object v0

    .line 654
    new-instance v1, Lcom/s1243808733/android/dx/cf/attrib/AttRuntimeInvisibleAnnotations;

    invoke-direct {v1, v0, p3}, Lcom/s1243808733/android/dx/cf/attrib/AttRuntimeInvisibleAnnotations;-><init>(Lcom/s1243808733/android/dx/rop/annotation/Annotations;I)V

    return-object v1
.end method

.method private runtimeInvisibleParameterAnnotations(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;
    .registers 7

    .line 679
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

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->parseParameterAttribute(Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;)Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;

    move-result-object v0

    .line 688
    new-instance v1, Lcom/s1243808733/android/dx/cf/attrib/AttRuntimeInvisibleParameterAnnotations;

    invoke-direct {v1, v0, p3}, Lcom/s1243808733/android/dx/cf/attrib/AttRuntimeInvisibleParameterAnnotations;-><init>(Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;I)V

    return-object v1
.end method

.method private runtimeVisibleAnnotations(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;
    .registers 7

    .line 662
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

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->parseAnnotationAttribute(Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;)Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    move-result-object v0

    .line 671
    new-instance v1, Lcom/s1243808733/android/dx/cf/attrib/AttRuntimeVisibleAnnotations;

    invoke-direct {v1, v0, p3}, Lcom/s1243808733/android/dx/cf/attrib/AttRuntimeVisibleAnnotations;-><init>(Lcom/s1243808733/android/dx/rop/annotation/Annotations;I)V

    return-object v1
.end method

.method private runtimeVisibleParameterAnnotations(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;
    .registers 7

    .line 696
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

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/cf/direct/AnnotationParser;->parseParameterAttribute(Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;)Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;

    move-result-object v0

    .line 705
    new-instance v1, Lcom/s1243808733/android/dx/cf/attrib/AttRuntimeVisibleParameterAnnotations;

    invoke-direct {v1, v0, p3}, Lcom/s1243808733/android/dx/cf/attrib/AttRuntimeVisibleParameterAnnotations;-><init>(Lcom/s1243808733/android/dx/rop/annotation/AnnotationsList;I)V

    return-object v1
.end method

.method private signature(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;
    .registers 11

    const/4 v5, 0x2

    .line 713
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

    .line 723
    if-eqz p4, :cond_1

    .line 724
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "signature: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v1, p2, v5, v0}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 727
    :cond_1
    return-object v2
.end method

.method private sourceDebugExtension(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;
    .registers 10

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

    .line 739
    if-eqz p4, :cond_0

    .line 740
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/cst/CstString;->getString()Ljava/lang/String;

    move-result-object v1

    .line 741
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "sourceDebugExtension: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v0, p2, p3, v1}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 744
    :cond_0
    return-object v2
.end method

.method private sourceFile(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;
    .registers 11

    const/4 v5, 0x2

    .line 752
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

    .line 762
    if-eqz p4, :cond_1

    .line 763
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "source: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v1, p2, v5, v0}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 766
    :cond_1
    return-object v2
.end method

.method private synthetic(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;
    .registers 6

    .line 774
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
    .registers 4

    .line 812
    new-instance v0, Lcom/s1243808733/android/dx/cf/iface/ParseException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "bad attribute length; expected length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {p0}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/cf/iface/ParseException;-><init>(Ljava/lang/String;)V

    throw v0
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
    .registers 8
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 86
    packed-switch p2, :pswitch_data_0

    .line 199
    :cond_0
    invoke-super/range {p0 .. p6}, Lcom/s1243808733/android/dx/cf/direct/AttributeFactory;->parse0(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;ILjava/lang/String;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    :goto_0
    return-object v0

    .line 88
    :pswitch_0
    const-string v0, "BootstrapMethods"

    if-ne p3, v0, :cond_1

    .line 89
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->bootstrapMethods(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    goto :goto_0

    .line 91
    :cond_1
    const-string v0, "Deprecated"

    if-ne p3, v0, :cond_2

    .line 92
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->deprecated(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    goto :goto_0

    .line 94
    :cond_2
    const-string v0, "EnclosingMethod"

    if-ne p3, v0, :cond_3

    .line 95
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->enclosingMethod(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    goto :goto_0

    .line 97
    :cond_3
    const-string v0, "InnerClasses"

    if-ne p3, v0, :cond_4

    .line 98
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->innerClasses(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    goto :goto_0

    .line 100
    :cond_4
    const-string v0, "RuntimeInvisibleAnnotations"

    if-ne p3, v0, :cond_5

    .line 101
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->runtimeInvisibleAnnotations(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    goto :goto_0

    .line 104
    :cond_5
    const-string v0, "RuntimeVisibleAnnotations"

    if-ne p3, v0, :cond_6

    .line 105
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->runtimeVisibleAnnotations(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    goto :goto_0

    .line 108
    :cond_6
    const-string v0, "Synthetic"

    if-ne p3, v0, :cond_7

    .line 109
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->synthetic(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    goto :goto_0

    .line 111
    :cond_7
    const-string v0, "Signature"

    if-ne p3, v0, :cond_8

    .line 112
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->signature(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    goto :goto_0

    .line 114
    :cond_8
    const-string v0, "SourceDebugExtension"

    if-ne p3, v0, :cond_9

    .line 115
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->sourceDebugExtension(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    goto :goto_0

    .line 117
    :cond_9
    const-string v0, "SourceFile"

    if-ne p3, v0, :cond_0

    .line 118
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->sourceFile(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    goto :goto_0

    .line 123
    :pswitch_1
    const-string v0, "ConstantValue"

    if-ne p3, v0, :cond_a

    .line 124
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->constantValue(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    goto :goto_0

    .line 126
    :cond_a
    const-string v0, "Deprecated"

    if-ne p3, v0, :cond_b

    .line 127
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->deprecated(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    goto :goto_0

    .line 129
    :cond_b
    const-string v0, "RuntimeInvisibleAnnotations"

    if-ne p3, v0, :cond_c

    .line 130
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->runtimeInvisibleAnnotations(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    goto :goto_0

    .line 133
    :cond_c
    const-string v0, "RuntimeVisibleAnnotations"

    if-ne p3, v0, :cond_d

    .line 134
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->runtimeVisibleAnnotations(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    goto :goto_0

    .line 137
    :cond_d
    const-string v0, "Signature"

    if-ne p3, v0, :cond_e

    .line 138
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->signature(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    goto/16 :goto_0

    .line 140
    :cond_e
    const-string v0, "Synthetic"

    if-ne p3, v0, :cond_0

    .line 141
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->synthetic(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    goto/16 :goto_0

    .line 146
    :pswitch_2
    const-string v0, "AnnotationDefault"

    if-ne p3, v0, :cond_f

    .line 147
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->annotationDefault(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    goto/16 :goto_0

    .line 149
    :cond_f
    const-string v0, "Code"

    if-ne p3, v0, :cond_10

    .line 150
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->code(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    goto/16 :goto_0

    .line 152
    :cond_10
    const-string v0, "Deprecated"

    if-ne p3, v0, :cond_11

    .line 153
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->deprecated(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    goto/16 :goto_0

    .line 155
    :cond_11
    const-string v0, "Exceptions"

    if-ne p3, v0, :cond_12

    .line 156
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->exceptions(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    goto/16 :goto_0

    .line 158
    :cond_12
    const-string v0, "RuntimeInvisibleAnnotations"

    if-ne p3, v0, :cond_13

    .line 159
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->runtimeInvisibleAnnotations(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    goto/16 :goto_0

    .line 162
    :cond_13
    const-string v0, "RuntimeVisibleAnnotations"

    if-ne p3, v0, :cond_14

    .line 163
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->runtimeVisibleAnnotations(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    goto/16 :goto_0

    .line 166
    :cond_14
    const-string v0, "RuntimeInvisibleParameterAnnotations"

    if-ne p3, v0, :cond_15

    .line 168
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->runtimeInvisibleParameterAnnotations(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    goto/16 :goto_0

    .line 171
    :cond_15
    const-string v0, "RuntimeVisibleParameterAnnotations"

    if-ne p3, v0, :cond_16

    .line 173
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->runtimeVisibleParameterAnnotations(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    goto/16 :goto_0

    .line 176
    :cond_16
    const-string v0, "Signature"

    if-ne p3, v0, :cond_17

    .line 177
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->signature(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    goto/16 :goto_0

    .line 179
    :cond_17
    const-string v0, "Synthetic"

    if-ne p3, v0, :cond_0

    .line 180
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->synthetic(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    goto/16 :goto_0

    .line 185
    :pswitch_3
    const-string v0, "LineNumberTable"

    if-ne p3, v0, :cond_18

    .line 186
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->lineNumberTable(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    goto/16 :goto_0

    .line 188
    :cond_18
    const-string v0, "LocalVariableTable"

    if-ne p3, v0, :cond_19

    .line 189
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->localVariableTable(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    goto/16 :goto_0

    .line 191
    :cond_19
    const-string v0, "LocalVariableTypeTable"

    if-ne p3, v0, :cond_0

    .line 192
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->localVariableTypeTable(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;IILcom/s1243808733/android/dx/cf/iface/ParseObserver;)Lcom/s1243808733/android/dx/cf/iface/Attribute;

    move-result-object v0

    goto/16 :goto_0

    .line 86
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
