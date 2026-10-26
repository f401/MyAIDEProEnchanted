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
            "Ljava/util/ArrayList",
            "<",
            "Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final positions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$PositionEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final regSize:I

.field private final thisStringIdx:I


# direct methods
.method constructor <init>([BIIZLcom/s1243808733/android/dx/rop/cst/CstMethodRef;Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .locals 3

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x1

    iput v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->line:I

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->address:I

    if-eqz p1, :cond_0

    .line 111
    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->encoded:[B

    .line 112
    iput-boolean p4, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->isStatic:Z

    .line 113
    invoke-virtual {p5}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->getPrototype()Lcom/s1243808733/android/dx/rop/type/Prototype;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->desc:Lcom/s1243808733/android/dx/rop/type/Prototype;

    .line 114
    iput-object p6, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->file:Lcom/s1243808733/android/dx/dex/file/DexFile;

    .line 115
    iput p3, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->regSize:I

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->positions:Ljava/util/ArrayList;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->locals:Ljava/util/ArrayList;

    .line 119
    iput p2, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->codesize:I

    .line 120
    new-array v0, p3, [Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->lastEntryForReg:[Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    .line 125
    :try_start_0
    invoke-virtual {p6}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getStringIds()Lcom/s1243808733/android/dx/dex/file/StringIdsSection;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/android/dx/rop/cst/CstString;

    const-string v2, "this"

    invoke-direct {v1, v2}, Lcom/s1243808733/android/dx/rop/cst/CstString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/dex/file/StringIdsSection;->indexOf(Lcom/s1243808733/android/dx/rop/cst/CstString;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 134
    :goto_0
    iput v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->thisStringIdx:I

    return-void

    .line 125
    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0

    .line 108
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encoded == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private decode0()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v12, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 251
    new-instance v10, Lcom/s1243808733/android/dex/util/ByteArrayByteInput;

    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->encoded:[B

    invoke-direct {v10, v0}, Lcom/s1243808733/android/dex/util/ByteArrayByteInput;-><init>([B)V

    .line 253
    invoke-static {v10}, Lcom/s1243808733/android/dex/Leb128;->readUnsignedLeb128(Lcom/s1243808733/android/dex/util/ByteInput;)I

    move-result v0

    iput v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->line:I

    .line 254
    invoke-static {v10}, Lcom/s1243808733/android/dex/Leb128;->readUnsignedLeb128(Lcom/s1243808733/android/dex/util/ByteInput;)I

    move-result v8

    .line 255
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->desc:Lcom/s1243808733/android/dx/rop/type/Prototype;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Prototype;->getParameterTypes()Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v9

    .line 256
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->getParamBase()I

    move-result v3

    .line 258
    invoke-virtual {v9}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->size()I

    move-result v0

    if-ne v8, v0, :cond_6

    .line 263
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->isStatic:Z

    if-nez v0, :cond_0

    .line 265
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    iget v4, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->thisStringIdx:I

    move v5, v1

    move v6, v1

    invoke-direct/range {v0 .. v6}, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;-><init>(IZIIII)V

    .line 267
    iget-object v4, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->locals:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    iget-object v4, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->lastEntryForReg:[Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    aput-object v0, v4, v3

    add-int/lit8 v3, v3, 0x1

    :cond_0
    move v7, v1

    :goto_0
    if-ge v7, v8, :cond_2

    .line 273
    invoke-virtual {v9, v7}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->getType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v11

    .line 276
    invoke-direct {p0, v10}, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->readStringIndex(Lcom/s1243808733/android/dex/util/ByteInput;)I

    move-result v4

    if-ne v4, v12, :cond_1

    .line 283
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    move v4, v12

    move v5, v1

    move v6, v1

    invoke-direct/range {v0 .. v6}, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;-><init>(IZIIII)V

    .line 289
    :goto_1
    iget-object v4, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->locals:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    iget-object v4, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->lastEntryForReg:[Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    aput-object v0, v4, v3

    .line 291
    invoke-virtual {v11}, Lcom/s1243808733/android/dx/rop/type/Type;->getCategory()I

    move-result v0

    add-int/2addr v3, v0

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 286
    :cond_1
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    move v5, v1

    move v6, v1

    invoke-direct/range {v0 .. v6}, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;-><init>(IZIIII)V

    goto :goto_1

    .line 295
    :cond_2
    :goto_2
    :pswitch_0
    invoke-interface {v10}, Lcom/s1243808733/android/dex/util/ByteInput;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    const/16 v3, 0xa

    if-lt v0, v3, :cond_5

    add-int/lit8 v0, v0, -0xa

    .line 408
    iget v3, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->address:I

    div-int/lit8 v4, v0, 0xf

    add-int/2addr v3, v4

    iput v3, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->address:I

    .line 409
    iget v4, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->line:I

    rem-int/lit8 v0, v0, 0xf

    add-int/lit8 v0, v0, -0x4

    add-int/2addr v0, v4

    iput v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->line:I

    .line 411
    iget-object v4, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->positions:Ljava/util/ArrayList;

    new-instance v5, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$PositionEntry;

    invoke-direct {v5, v3, v0}, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$PositionEntry;-><init>(II)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 324
    :pswitch_1
    invoke-static {v10}, Lcom/s1243808733/android/dex/Leb128;->readUnsignedLeb128(Lcom/s1243808733/android/dex/util/ByteInput;)I

    move-result v6

    .line 329
    :try_start_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->lastEntryForReg:[Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    aget-object v0, v0, v6

    .line 331
    iget-boolean v3, v0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->isStart:Z

    if-nez v3, :cond_3

    .line 337
    new-instance v3, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    iget v4, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->address:I

    const/4 v5, 0x1

    iget v7, v0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->nameIndex:I

    iget v8, v0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->typeIndex:I

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;-><init>(IZIIII)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->locals:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->lastEntryForReg:[Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    aput-object v3, v0, v6

    goto :goto_2

    .line 332
    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nonsensical RESTART_LOCAL on live register v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 340
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Encountered RESTART_LOCAL on new v"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 350
    :pswitch_2
    invoke-static {v10}, Lcom/s1243808733/android/dex/Leb128;->readUnsignedLeb128(Lcom/s1243808733/android/dex/util/ByteInput;)I

    move-result v6

    .line 355
    :try_start_2
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->lastEntryForReg:[Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    aget-object v0, v0, v6

    .line 357
    iget-boolean v3, v0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->isStart:Z

    if-eqz v3, :cond_4

    .line 362
    new-instance v3, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    iget v4, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->address:I

    const/4 v5, 0x0

    iget v7, v0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->nameIndex:I

    iget v8, v0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->typeIndex:I

    iget v9, v0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->signatureIndex:I

    invoke-direct/range {v3 .. v9}, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;-><init>(IZIIII)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    .line 370
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->locals:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->lastEntryForReg:[Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    aput-object v3, v0, v6

    goto/16 :goto_2

    .line 358
    :cond_4
    :try_start_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nonsensical END_LOCAL on dead register v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1

    .line 366
    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Encountered END_LOCAL on new v"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 311
    :pswitch_3
    invoke-static {v10}, Lcom/s1243808733/android/dex/Leb128;->readUnsignedLeb128(Lcom/s1243808733/android/dex/util/ByteInput;)I

    move-result v6

    .line 312
    invoke-direct {p0, v10}, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->readStringIndex(Lcom/s1243808733/android/dex/util/ByteInput;)I

    move-result v7

    .line 313
    invoke-direct {p0, v10}, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->readStringIndex(Lcom/s1243808733/android/dex/util/ByteInput;)I

    move-result v8

    .line 314
    invoke-direct {p0, v10}, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->readStringIndex(Lcom/s1243808733/android/dex/util/ByteInput;)I

    move-result v9

    .line 315
    new-instance v3, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    iget v4, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->address:I

    move v5, v2

    invoke-direct/range {v3 .. v9}, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;-><init>(IZIIII)V

    .line 318
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->locals:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->lastEntryForReg:[Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    aput-object v3, v0, v6

    goto/16 :goto_2

    .line 299
    :pswitch_4
    invoke-static {v10}, Lcom/s1243808733/android/dex/Leb128;->readUnsignedLeb128(Lcom/s1243808733/android/dex/util/ByteInput;)I

    move-result v6

    .line 300
    invoke-direct {p0, v10}, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->readStringIndex(Lcom/s1243808733/android/dex/util/ByteInput;)I

    move-result v7

    .line 301
    invoke-direct {p0, v10}, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->readStringIndex(Lcom/s1243808733/android/dex/util/ByteInput;)I

    move-result v8

    .line 302
    new-instance v3, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    iget v4, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->address:I

    move v5, v2

    move v9, v1

    invoke-direct/range {v3 .. v9}, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;-><init>(IZIIII)V

    .line 305
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->locals:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->lastEntryForReg:[Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    aput-object v3, v0, v6

    goto/16 :goto_2

    .line 384
    :pswitch_5
    iget v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->line:I

    invoke-static {v10}, Lcom/s1243808733/android/dex/Leb128;->readSignedLeb128(Lcom/s1243808733/android/dex/util/ByteInput;)I

    move-result v3

    add-int/2addr v0, v3

    iput v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->line:I

    goto/16 :goto_2

    .line 380
    :pswitch_6
    iget v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->address:I

    invoke-static {v10}, Lcom/s1243808733/android/dex/Leb128;->readUnsignedLeb128(Lcom/s1243808733/android/dex/util/ByteInput;)I

    move-result v3

    add-int/2addr v0, v3

    iput v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->address:I

    goto/16 :goto_2

    .line 401
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid extended opcode encountered "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Mismatch between parameters_size and prototype"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    :pswitch_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getParamBase()I
    .locals 2

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
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    invoke-static {p1}, Lcom/s1243808733/android/dex/Leb128;->readUnsignedLeb128(Lcom/s1243808733/android/dex/util/ByteInput;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public static validateEncode([BLcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;Lcom/s1243808733/android/dx/dex/code/DalvCode;Z)V
    .locals 9

    .line 431
    invoke-virtual {p3}, Lcom/s1243808733/android/dx/dex/code/DalvCode;->getPositions()Lcom/s1243808733/android/dx/dex/code/PositionList;

    move-result-object v6

    .line 432
    invoke-virtual {p3}, Lcom/s1243808733/android/dx/dex/code/DalvCode;->getLocals()Lcom/s1243808733/android/dx/dex/code/LocalList;

    move-result-object v7

    .line 433
    invoke-virtual {p3}, Lcom/s1243808733/android/dx/dex/code/DalvCode;->getInsns()Lcom/s1243808733/android/dx/dex/code/DalvInsnList;

    move-result-object v8

    .line 434
    invoke-virtual {v8}, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;->codeSize()I

    move-result v1

    .line 435
    invoke-virtual {v8}, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;->getRegistersSize()I

    move-result v2

    move-object v0, p0

    move v3, p4

    move-object v4, p2

    move-object v5, p1

    .line 438
    :try_start_0
    invoke-static/range {v0 .. v7}, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->validateEncode0([BIIZLcom/s1243808733/android/dx/rop/cst/CstMethodRef;Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/dex/code/PositionList;Lcom/s1243808733/android/dx/dex/code/LocalList;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 441
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "instructions:"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 442
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "  "

    const/4 v3, 0x1

    invoke-virtual {v8, v1, v2, v3}, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;->debugPrint(Ljava/io/OutputStream;Ljava/lang/String;Z)V

    .line 443
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "local list:"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 444
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "  "

    invoke-virtual {v7, v1, v2}, Lcom/s1243808733/android/dx/dex/code/LocalList;->debugPrint(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 445
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "while processing "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 446
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->toHuman()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 445
    invoke-static {v0, v1}, Lcom/s1243808733/android/dex/util/ExceptionWithContext;->withContext(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/s1243808733/android/dex/util/ExceptionWithContext;

    move-result-object v0

    throw v0
.end method

.method private static validateEncode0([BIIZLcom/s1243808733/android/dx/rop/cst/CstMethodRef;Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/dex/code/PositionList;Lcom/s1243808733/android/dx/dex/code/LocalList;)V
    .locals 12

    .line 453
    new-instance v1, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;-><init>([BIIZLcom/s1243808733/android/dx/rop/cst/CstMethodRef;Lcom/s1243808733/android/dx/dex/file/DexFile;)V

    .line 457
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->decode()V

    .line 464
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->getPositionList()Ljava/util/List;

    move-result-object v2

    .line 466
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual/range {p6 .. p6}, Lcom/s1243808733/android/dx/dex/code/PositionList;->size()I

    move-result v4

    if-ne v3, v4, :cond_10

    .line 472
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$PositionEntry;

    .line 474
    invoke-virtual/range {p6 .. p6}, Lcom/s1243808733/android/dx/dex/code/PositionList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_2

    .line 475
    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Lcom/s1243808733/android/dx/dex/code/PositionList;->get(I)Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;

    move-result-object v5

    .line 477
    iget v6, v2, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$PositionEntry;->line:I

    invoke-virtual {v5}, Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v7

    invoke-virtual {v7}, Lcom/s1243808733/android/dx/rop/code/SourcePosition;->getLine()I

    move-result v7

    if-ne v6, v7, :cond_1

    iget v6, v2, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$PositionEntry;->address:I

    .line 478
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;->getAddress()I

    move-result v5

    if-eq v6, v5, :cond_0

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 485
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Could not match position entry: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v2, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$PositionEntry;->address:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$PositionEntry;->line:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 495
    :cond_3
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->getLocals()Ljava/util/List;

    move-result-object v7

    .line 496
    iget v8, v1, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->thisStringIdx:I

    .line 497
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    .line 498
    invoke-direct {v1}, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->getParamBase()I

    move-result v9

    const/4 v4, 0x0

    const/4 v1, 0x0

    move v5, v1

    :goto_1
    if-ge v5, v3, :cond_7

    .line 506
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    .line 507
    iget v1, v2, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->nameIndex:I

    if-ltz v1, :cond_4

    if-ne v1, v8, :cond_12

    :cond_4
    add-int/lit8 v1, v5, 0x1

    move v6, v1

    :goto_2
    if-ge v6, v3, :cond_12

    .line 511
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    .line 512
    iget v10, v1, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->address:I

    if-eqz v10, :cond_5

    move v1, v3

    .line 517
    :goto_3
    add-int/lit8 v2, v5, 0x1

    move v3, v1

    move v5, v2

    goto :goto_1

    .line 515
    :cond_5
    iget v10, v2, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->reg:I

    iget v11, v1, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->reg:I

    if-ne v10, v11, :cond_6

    iget-boolean v10, v1, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->isStart:Z

    if-eqz v10, :cond_6

    .line 516
    invoke-interface {v7, v5, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 517
    invoke-interface {v7, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v3, -0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_2

    .line 525
    :cond_7
    invoke-virtual/range {p7 .. p7}, Lcom/s1243808733/android/dx/dex/code/LocalList;->size()I

    move-result v5

    const/4 v1, 0x0

    :goto_4
    if-ge v4, v5, :cond_11

    .line 530
    move-object/from16 v0, p7

    invoke-virtual {v0, v4}, Lcom/s1243808733/android/dx/dex/code/LocalList;->get(I)Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;

    move-result-object v6

    .line 532
    invoke-virtual {v6}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getDisposition()Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    move-result-object v2

    sget-object v8, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;->END_REPLACED:Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    if-ne v2, v8, :cond_8

    .line 594
    :goto_5
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_4

    :cond_8
    move v2, v1

    .line 544
    :cond_9
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    .line 545
    iget v8, v1, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->nameIndex:I

    if-ltz v8, :cond_a

    .line 556
    :goto_6
    iget v8, v1, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->address:I

    .line 558
    iget v10, v1, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->reg:I

    invoke-virtual {v6}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getRegister()I

    move-result v11

    if-eq v10, v11, :cond_b

    .line 559
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "local register mismatch at orig "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " / decoded "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 590
    :goto_7
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "decoded locals:"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 591
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    .line 592
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "  "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_8

    .line 545
    :cond_a
    add-int/lit8 v2, v2, 0x1

    if-lt v2, v3, :cond_9

    goto :goto_6

    .line 565
    :cond_b
    iget-boolean v10, v1, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->isStart:Z

    invoke-virtual {v6}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->isStart()Z

    move-result v11

    if-eq v10, v11, :cond_c

    .line 566
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "local start/end mismatch at orig "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " / decoded "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_7

    .line 577
    :cond_c
    invoke-virtual {v6}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getAddress()I

    move-result v6

    if-eq v8, v6, :cond_f

    if-nez v8, :cond_d

    iget v1, v1, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->reg:I

    if-ge v1, v9, :cond_f

    .line 580
    :cond_d
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "local address mismatch at orig "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " / decoded "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_7

    .line 594
    :cond_e
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "local table problem"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    add-int/lit8 v1, v2, 0x1

    goto/16 :goto_5

    .line 467
    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Decoded positions table not same size was "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 469
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p6 .. p6}, Lcom/s1243808733/android/dx/dex/code/PositionList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 594
    :cond_11
    return-void

    :cond_12
    move v1, v3

    goto/16 :goto_3
.end method


# virtual methods
.method public decode()V
    .locals 2

    .line 218
    :try_start_0
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->decode0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 220
    const-string v1, "...while decoding debug info"

    invoke-static {v0, v1}, Lcom/s1243808733/android/dex/util/ExceptionWithContext;->withContext(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/s1243808733/android/dex/util/ExceptionWithContext;

    move-result-object v0

    throw v0
.end method

.method public getLocals()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;",
            ">;"
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->locals:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPositionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$PositionEntry;",
            ">;"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->positions:Ljava/util/ArrayList;

    return-object v0
.end method
