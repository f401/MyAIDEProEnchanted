.class public Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;
.super Ljava/lang/Object;
.source "DebugInfoDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;,
        Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$PositionEntry;
    }
.end annotation


# instance fields
.field private address:I

.field private final codesize:I

.field private final desc:Lcom/s1243808733/android/dx/rop/type/Prototype;

.field private final encoded:[B

.field private final file:Lcom/s1243808733/android/dx/dex/file/DexFile;

.field private final isStatic:Z

.field private final lastEntryForReg:[Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

.field private line:I

.field private final locals:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final positions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$PositionEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final regSize:I

.field private final thisStringIdx:I


# direct methods
.method constructor <init>([BIIZLcom/s1243808733/android/dx/rop/cst/CstMethodRef;Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .registers 8

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x1

    iput v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->line:I

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->address:I

    if-eqz p1, :cond_42

    .line 111
    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->encoded:[B

    .line 112
    iput-boolean p4, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->isStatic:Z

    .line 113
    invoke-virtual {p5}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->getPrototype()Lcom/s1243808733/android/dx/rop/type/Prototype;

    move-result-object p1

    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->desc:Lcom/s1243808733/android/dx/rop/type/Prototype;

    .line 114
    iput-object p6, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->file:Lcom/s1243808733/android/dx/dex/file/DexFile;

    .line 115
    iput p3, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->regSize:I

    .line 117
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->positions:Ljava/util/ArrayList;

    .line 118
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->locals:Ljava/util/ArrayList;

    .line 119
    iput p2, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->codesize:I

    .line 120
    new-array p1, p3, [Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->lastEntryForReg:[Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    .line 125
    :try_start_2d
    invoke-virtual {p6}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getStringIds()Lcom/s1243808733/android/dx/dex/file/StringIdsSection;

    move-result-object p1

    new-instance p2, Lcom/s1243808733/android/dx/rop/cst/CstString;

    const-string p3, "this"

    invoke-direct {p2, p3}, Lcom/s1243808733/android/dx/rop/cst/CstString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/s1243808733/android/dx/dex/file/StringIdsSection;->indexOf(Lcom/s1243808733/android/dx/rop/cst/CstString;)I

    move-result p1
    :try_end_3c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2d .. :try_end_3c} :catch_3d

    goto :goto_3f

    :catch_3d
    move-exception p1

    const/4 p1, -0x1

    .line 134
    :goto_3f
    iput p1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->thisStringIdx:I

    return-void

    .line 108
    :cond_42
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "encoded == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private decode0()V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 251
    move-object/from16 v1, p0

    new-instance v0, Lcom/s1243808733/android/dex/util/ByteArrayByteInput;

    iget-object v2, v1, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->encoded:[B

    invoke-direct {v0, v2}, Lcom/s1243808733/android/dex/util/ByteArrayByteInput;-><init>([B)V

    .line 253
    invoke-static {v0}, Lcom/s1243808733/android/dex/Leb128;->readUnsignedLeb128(Lcom/s1243808733/android/dex/util/ByteInput;)I

    move-result v2

    iput v2, v1, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->line:I

    .line 254
    invoke-static {v0}, Lcom/s1243808733/android/dex/Leb128;->readUnsignedLeb128(Lcom/s1243808733/android/dex/util/ByteInput;)I

    move-result v2

    .line 255
    iget-object v3, v1, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->desc:Lcom/s1243808733/android/dx/rop/type/Prototype;

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/type/Prototype;->getParameterTypes()Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v3

    .line 256
    invoke-direct/range {p0 .. p0}, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->getParamBase()I

    move-result v11

    .line 258
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->size()I

    move-result v4

    if-ne v2, v4, :cond_1b8

    .line 263
    iget-boolean v4, v1, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->isStatic:Z

    if-nez v4, :cond_3f

    .line 265
    new-instance v12, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget v8, v1, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->thisStringIdx:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v12

    move v7, v11

    invoke-direct/range {v4 .. v10}, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;-><init>(IZIIII)V

    .line 267
    iget-object v4, v1, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->locals:Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    iget-object v4, v1, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->lastEntryForReg:[Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    aput-object v12, v4, v11

    add-int/lit8 v11, v11, 0x1

    :cond_3f
    const/4 v4, 0x0

    move v12, v11

    :goto_41
    if-ge v4, v2, :cond_77

    .line 273
    invoke-virtual {v3, v4}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->getType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v13

    .line 276
    invoke-direct {v1, v0}, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->readStringIndex(Lcom/s1243808733/android/dex/util/ByteInput;)I

    move-result v9

    const/4 v5, -0x1

    if-ne v9, v5, :cond_5b

    .line 283
    new-instance v14, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v5, v14

    move v8, v12

    invoke-direct/range {v5 .. v11}, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;-><init>(IZIIII)V

    goto :goto_66

    .line 286
    :cond_5b
    new-instance v14, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v5, v14

    move v8, v12

    invoke-direct/range {v5 .. v11}, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;-><init>(IZIIII)V

    .line 289
    :goto_66
    iget-object v5, v1, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->locals:Ljava/util/ArrayList;

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    iget-object v5, v1, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->lastEntryForReg:[Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    aput-object v14, v5, v12

    .line 291
    invoke-virtual {v13}, Lcom/s1243808733/android/dx/rop/type/Type;->getCategory()I

    move-result v5

    add-int/2addr v12, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_41

    .line 295
    :cond_77
    :goto_77
    :pswitch_77  #0x7, 0x8, 0x9
    invoke-interface {v0}, Lcom/s1243808733/android/dex/util/ByteInput;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_1c2

    const/16 v3, 0xa

    if-lt v2, v3, :cond_1a4

    add-int/lit8 v2, v2, -0xa

    .line 408
    iget v3, v1, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->address:I

    div-int/lit8 v4, v2, 0xf

    add-int/2addr v3, v4

    iput v3, v1, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->address:I

    .line 409
    iget v4, v1, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->line:I

    rem-int/lit8 v2, v2, 0xf

    add-int/lit8 v2, v2, -0x4

    add-int/2addr v4, v2

    iput v4, v1, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->line:I

    .line 411
    iget-object v2, v1, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->positions:Ljava/util/ArrayList;

    new-instance v5, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$PositionEntry;

    invoke-direct {v5, v3, v4}, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$PositionEntry;-><init>(II)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_77

    .line 324
    :pswitch_a1  #0x6
    invoke-static {v0}, Lcom/s1243808733/android/dex/Leb128;->readUnsignedLeb128(Lcom/s1243808733/android/dex/util/ByteInput;)I

    move-result v2

    .line 329
    :try_start_a5
    iget-object v3, v1, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->lastEntryForReg:[Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    aget-object v3, v3, v2

    .line 331
    iget-boolean v4, v3, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->isStart:Z

    if-nez v4, :cond_c6

    .line 337
    new-instance v10, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    iget v4, v1, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->address:I

    const/4 v5, 0x1

    iget v7, v3, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->nameIndex:I

    iget v8, v3, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->typeIndex:I

    const/4 v9, 0x0

    move-object v3, v10

    move v6, v2

    invoke-direct/range {v3 .. v9}, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;-><init>(IZIIII)V
    :try_end_bc
    .catch Ljava/lang/NullPointerException; {:try_start_a5 .. :try_end_bc} :catch_dd

    .line 344
    iget-object v3, v1, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->locals:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    iget-object v3, v1, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->lastEntryForReg:[Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    aput-object v10, v3, v2

    goto :goto_77

    .line 332
    :cond_c6
    :try_start_c6
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nonsensical RESTART_LOCAL on live register v"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_dd
    .catch Ljava/lang/NullPointerException; {:try_start_c6 .. :try_end_dd} :catch_dd

    .line 340
    :catch_dd
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Encountered RESTART_LOCAL on new v"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 350
    :pswitch_f2  #0x5
    invoke-static {v0}, Lcom/s1243808733/android/dex/Leb128;->readUnsignedLeb128(Lcom/s1243808733/android/dex/util/ByteInput;)I

    move-result v2

    .line 355
    :try_start_f6
    iget-object v3, v1, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->lastEntryForReg:[Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    aget-object v3, v3, v2

    .line 357
    iget-boolean v4, v3, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->isStart:Z

    if-eqz v4, :cond_119

    .line 362
    new-instance v10, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    iget v4, v1, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->address:I

    const/4 v5, 0x0

    iget v7, v3, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->nameIndex:I

    iget v8, v3, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->typeIndex:I

    iget v9, v3, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->signatureIndex:I

    move-object v3, v10

    move v6, v2

    invoke-direct/range {v3 .. v9}, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;-><init>(IZIIII)V
    :try_end_10e
    .catch Ljava/lang/NullPointerException; {:try_start_f6 .. :try_end_10e} :catch_130

    .line 370
    iget-object v3, v1, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->locals:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    iget-object v3, v1, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->lastEntryForReg:[Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    aput-object v10, v3, v2

    goto/16 :goto_77

    .line 358
    :cond_119
    :try_start_119
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nonsensical END_LOCAL on dead register v"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_130
    .catch Ljava/lang/NullPointerException; {:try_start_119 .. :try_end_130} :catch_130

    .line 366
    :catch_130
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Encountered END_LOCAL on new v"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 311
    :pswitch_145  #0x4
    invoke-static {v0}, Lcom/s1243808733/android/dex/Leb128;->readUnsignedLeb128(Lcom/s1243808733/android/dex/util/ByteInput;)I

    move-result v2

    .line 312
    invoke-direct {v1, v0}, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->readStringIndex(Lcom/s1243808733/android/dex/util/ByteInput;)I

    move-result v7

    .line 313
    invoke-direct {v1, v0}, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->readStringIndex(Lcom/s1243808733/android/dex/util/ByteInput;)I

    move-result v8

    .line 314
    invoke-direct {v1, v0}, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->readStringIndex(Lcom/s1243808733/android/dex/util/ByteInput;)I

    move-result v9

    .line 315
    new-instance v10, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    iget v4, v1, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->address:I

    const/4 v5, 0x1

    move-object v3, v10

    move v6, v2

    invoke-direct/range {v3 .. v9}, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;-><init>(IZIIII)V

    .line 318
    iget-object v3, v1, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->locals:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    iget-object v3, v1, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->lastEntryForReg:[Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    aput-object v10, v3, v2

    goto/16 :goto_77

    .line 299
    :pswitch_16a  #0x3
    invoke-static {v0}, Lcom/s1243808733/android/dex/Leb128;->readUnsignedLeb128(Lcom/s1243808733/android/dex/util/ByteInput;)I

    move-result v2

    .line 300
    invoke-direct {v1, v0}, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->readStringIndex(Lcom/s1243808733/android/dex/util/ByteInput;)I

    move-result v15

    .line 301
    invoke-direct {v1, v0}, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->readStringIndex(Lcom/s1243808733/android/dex/util/ByteInput;)I

    move-result v16

    .line 302
    new-instance v3, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    iget v12, v1, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->address:I

    const/4 v13, 0x1

    const/16 v17, 0x0

    move-object v11, v3

    move v14, v2

    invoke-direct/range {v11 .. v17}, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;-><init>(IZIIII)V

    .line 305
    iget-object v4, v1, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->locals:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    iget-object v4, v1, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->lastEntryForReg:[Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    aput-object v3, v4, v2

    goto/16 :goto_77

    .line 384
    :pswitch_18d  #0x2
    iget v2, v1, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->line:I

    invoke-static {v0}, Lcom/s1243808733/android/dex/Leb128;->readSignedLeb128(Lcom/s1243808733/android/dex/util/ByteInput;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->line:I

    goto/16 :goto_77

    .line 380
    :pswitch_198  #0x1
    iget v2, v1, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->address:I

    invoke-static {v0}, Lcom/s1243808733/android/dex/Leb128;->readUnsignedLeb128(Lcom/s1243808733/android/dex/util/ByteInput;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->address:I

    goto/16 :goto_77

    :pswitch_1a3  #0x0
    return-void

    .line 401
    :cond_1a4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Invalid extended opcode encountered "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 259
    :cond_1b8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Mismatch between parameters_size and prototype"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_1c1

    :goto_1c0
    throw v0

    :goto_1c1
    goto :goto_1c0

    :pswitch_data_1c2
    .packed-switch 0x0
        :pswitch_1a3  #00000000
        :pswitch_198  #00000001
        :pswitch_18d  #00000002
        :pswitch_16a  #00000003
        :pswitch_145  #00000004
        :pswitch_f2  #00000005
        :pswitch_a1  #00000006
        :pswitch_77  #00000007
        :pswitch_77  #00000008
        :pswitch_77  #00000009
    .end packed-switch
.end method

.method private getParamBase()I
    .registers 3

    .line 246
    iget v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->regSize:I

    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->desc:Lcom/s1243808733/android/dx/rop/type/Prototype;

    .line 247
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/type/Prototype;->getParameterTypes()Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->getWordCount()I

    move-result v1

    sub-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->isStatic:Z

    xor-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    return v0
.end method

.method private readStringIndex(Lcom/s1243808733/android/dex/util/ByteInput;)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    invoke-static {p1}, Lcom/s1243808733/android/dex/Leb128;->readUnsignedLeb128(Lcom/s1243808733/android/dex/util/ByteInput;)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public static validateEncode([BLcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;Lcom/s1243808733/android/dx/dex/code/DalvCode;Z)V
    .registers 14

    .line 431
    invoke-virtual {p3}, Lcom/s1243808733/android/dx/dex/code/DalvCode;->getPositions()Lcom/s1243808733/android/dx/dex/code/PositionList;

    move-result-object v6

    .line 432
    invoke-virtual {p3}, Lcom/s1243808733/android/dx/dex/code/DalvCode;->getLocals()Lcom/s1243808733/android/dx/dex/code/LocalList;

    move-result-object v8

    .line 433
    invoke-virtual {p3}, Lcom/s1243808733/android/dx/dex/code/DalvCode;->getInsns()Lcom/s1243808733/android/dx/dex/code/DalvInsnList;

    move-result-object p3

    .line 434
    invoke-virtual {p3}, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;->codeSize()I

    move-result v1

    .line 435
    invoke-virtual {p3}, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;->getRegistersSize()I

    move-result v2

    .line 438
    move-object v0, p0

    move v3, p4

    move-object v4, p2

    move-object v5, p1

    move-object v7, v8

    :try_start_19
    invoke-static/range {v0 .. v7}, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->validateEncode0([BIIZLcom/s1243808733/android/dx/rop/cst/CstMethodRef;Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/dex/code/PositionList;Lcom/s1243808733/android/dx/dex/code/LocalList;)V
    :try_end_1c
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_1c} :catch_1d

    return-void

    :catch_1d
    move-exception p0

    .line 441
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p4, "instructions:"

    invoke-virtual {p1, p4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 442
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const/4 p4, 0x1

    const-string v0, "  "

    invoke-virtual {p3, p1, v0, p4}, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;->debugPrint(Ljava/io/OutputStream;Ljava/lang/String;Z)V

    .line 443
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p3, "local list:"

    invoke-virtual {p1, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 444
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v8, p1, v0}, Lcom/s1243808733/android/dx/dex/code/LocalList;->debugPrint(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 445
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "while processing "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 446
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->toHuman()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 445
    invoke-static {p0, p1}, Lcom/s1243808733/android/dex/util/ExceptionWithContext;->withContext(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/s1243808733/android/dex/util/ExceptionWithContext;

    move-result-object p0

    throw p0
.end method

.method private static validateEncode0([BIIZLcom/s1243808733/android/dx/rop/cst/CstMethodRef;Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/dex/code/PositionList;Lcom/s1243808733/android/dx/dex/code/LocalList;)V
    .registers 16

    .line 453
    new-instance v7, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;-><init>([BIIZLcom/s1243808733/android/dx/rop/cst/CstMethodRef;Lcom/s1243808733/android/dx/dex/file/DexFile;)V

    .line 457
    invoke-virtual {v7}, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->decode()V

    .line 464
    invoke-virtual {v7}, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->getPositionList()Ljava/util/List;

    move-result-object p0

    .line 466
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p6}, Lcom/s1243808733/android/dx/dex/code/PositionList;->size()I

    move-result p2

    if-ne p1, p2, :cond_182

    .line 472
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_21
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_71

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$PositionEntry;

    .line 474
    invoke-virtual {p6}, Lcom/s1243808733/android/dx/dex/code/PositionList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_33
    if-ltz p2, :cond_51

    .line 475
    invoke-virtual {p6, p2}, Lcom/s1243808733/android/dx/dex/code/PositionList;->get(I)Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;

    move-result-object p3

    .line 477
    iget p4, p1, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$PositionEntry;->line:I

    invoke-virtual {p3}, Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object p5

    invoke-virtual {p5}, Lcom/s1243808733/android/dx/rop/code/SourcePosition;->getLine()I

    move-result p5

    if-ne p4, p5, :cond_4e

    iget p4, p1, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$PositionEntry;->address:I

    .line 478
    invoke-virtual {p3}, Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;->getAddress()I

    move-result p3

    if-ne p4, p3, :cond_4e

    goto :goto_21

    :cond_4e
    add-int/lit8 p2, p2, -0x1

    goto :goto_33

    .line 485
    :cond_51
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Could not match position entry: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p1, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$PositionEntry;->address:I

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$PositionEntry;->line:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 495
    :cond_71
    invoke-virtual {v7}, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->getLocals()Ljava/util/List;

    move-result-object p0

    .line 496
    iget p1, v7, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->thisStringIdx:I

    .line 497
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    .line 498
    invoke-direct {v7}, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->getParamBase()I

    move-result p3

    const/4 p4, 0x0

    const/4 p5, 0x0

    :goto_81
    if-ge p5, p2, :cond_b7

    .line 506
    invoke-interface {p0, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    .line 507
    iget v0, p6, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->nameIndex:I

    if-ltz v0, :cond_8f

    if-ne v0, p1, :cond_b4

    :cond_8f
    add-int/lit8 v0, p5, 0x1

    :goto_91
    if-ge v0, p2, :cond_b4

    .line 511
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    .line 512
    iget v2, v1, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->address:I

    if-eqz v2, :cond_9e

    goto :goto_b4

    .line 515
    :cond_9e
    iget v2, p6, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->reg:I

    iget v3, v1, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->reg:I

    if-ne v2, v3, :cond_b1

    iget-boolean v2, v1, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->isStart:Z

    if-eqz v2, :cond_b1

    .line 516
    invoke-interface {p0, p5, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 517
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 p2, p2, -0x1

    goto :goto_b4

    :cond_b1
    add-int/lit8 v0, v0, 0x1

    goto :goto_91

    :cond_b4
    :goto_b4
    add-int/lit8 p5, p5, 0x1

    goto :goto_81

    .line 525
    :cond_b7
    invoke-virtual {p7}, Lcom/s1243808733/android/dx/dex/code/LocalList;->size()I

    move-result p1

    const/4 p5, 0x0

    :goto_bc
    if-ge p4, p1, :cond_181

    .line 530
    invoke-virtual {p7, p4}, Lcom/s1243808733/android/dx/dex/code/LocalList;->get(I)Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;

    move-result-object p6

    .line 532
    invoke-virtual {p6}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getDisposition()Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    move-result-object v0

    sget-object v1, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;->END_REPLACED:Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    if-ne v0, v1, :cond_cc

    goto/16 :goto_17d

    .line 544
    :cond_cc
    invoke-interface {p0, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    .line 545
    iget v1, v0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->nameIndex:I

    if-ltz v1, :cond_d7

    goto :goto_db

    :cond_d7
    add-int/lit8 p5, p5, 0x1

    if-lt p5, p2, :cond_cc

    .line 556
    :goto_db
    iget v1, v0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->address:I

    .line 558
    iget v2, v0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->reg:I

    invoke-virtual {p6}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getRegister()I

    move-result v3

    const-string v4, " / decoded "

    if-eq v2, v3, :cond_101

    .line 559
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "local register mismatch at orig "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_148

    .line 565
    :cond_101
    iget-boolean v2, v0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->isStart:Z

    invoke-virtual {p6}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->isStart()Z

    move-result v3

    if-eq v2, v3, :cond_123

    .line 566
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "local start/end mismatch at orig "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_148

    .line 577
    :cond_123
    invoke-virtual {p6}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getAddress()I

    move-result p6

    if-eq v1, p6, :cond_17b

    if-nez v1, :cond_12f

    iget p6, v0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->reg:I

    if-ge p6, p3, :cond_17b

    .line 580
    :cond_12f
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "local address mismatch at orig "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 590
    :goto_148
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p2, "decoded locals:"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 591
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_153
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_173

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    .line 592
    sget-object p2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "  "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_153

    .line 594
    :cond_173
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "local table problem"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_17b
    add-int/lit8 p5, p5, 0x1

    :goto_17d
    add-int/lit8 p4, p4, 0x1

    goto/16 :goto_bc

    :cond_181
    return-void

    .line 467
    :cond_182
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Decoded positions table not same size was "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 469
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " expected "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Lcom/s1243808733/android/dx/dex/code/PositionList;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_1a7

    :goto_1a6
    throw p0

    :goto_1a7
    goto :goto_1a6
.end method


# virtual methods
.method public decode()V
    .registers 3

    .line 218
    :try_start_0
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->decode0()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception v0

    .line 220
    const-string v1, "...while decoding debug info"

    invoke-static {v0, v1}, Lcom/s1243808733/android/dex/util/ExceptionWithContext;->withContext(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/s1243808733/android/dex/util/ExceptionWithContext;

    move-result-object v0

    throw v0
.end method

.method public getLocals()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;",
            ">;"
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->locals:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPositionList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$PositionEntry;",
            ">;"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->positions:Ljava/util/ArrayList;

    return-object v0
.end method
