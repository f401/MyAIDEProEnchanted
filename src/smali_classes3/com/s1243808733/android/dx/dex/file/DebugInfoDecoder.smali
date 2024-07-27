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
    .registers 11

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->line:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->address:I

    .line 107
    if-nez p1, :cond_0

    .line 108
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encoded == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
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

    .line 122
    const/4 v0, -0x1

    .line 125
    :try_start_0
    invoke-virtual {p6}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getStringIds()Lcom/s1243808733/android/dx/dex/file/StringIdsSection;

    move-result-object v1

    new-instance v2, Lcom/s1243808733/android/dx/rop/cst/CstString;

    const-string v3, "this"

    invoke-direct {v2, v3}, Lcom/s1243808733/android/dx/rop/cst/CstString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/dex/file/StringIdsSection;->indexOf(Lcom/s1243808733/android/dx/rop/cst/CstString;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 134
    :goto_0
    iput v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->thisStringIdx:I

    return-void

    .line 125
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private decode0()V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^",
            "Ljava/io/IOException;"
        }
    .end annotation

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

    if-eq v8, v0, :cond_0

    .line 259
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Mismatch between parameters_size and prototype"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_0
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->isStatic:Z

    if-nez v0, :cond_1

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

    .line 269
    add-int/lit8 v3, v3, 0x1

    :cond_1
    move v7, v1

    .line 272
    :goto_0
    if-lt v7, v8, :cond_2

    .line 295
    :goto_1
    :pswitch_0
    invoke-interface {v10}, Lcom/s1243808733/android/dex/util/ByteInput;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 297
    packed-switch v0, :pswitch_data_0

    .line 400
    const/16 v3, 0xa

    if-ge v0, v3, :cond_6

    .line 401
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Invalid extended opcode encountered "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 273
    :cond_2
    invoke-virtual {v9, v7}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->getType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v11

    .line 274
    invoke-direct {p0, v10}, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->readStringIndex(Lcom/s1243808733/android/dex/util/ByteInput;)I

    move-result v4

    .line 278
    if-ne v4, v12, :cond_3

    .line 283
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    move v4, v12

    move v5, v1

    move v6, v1

    invoke-direct/range {v0 .. v6}, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;-><init>(IZIIII)V

    .line 289
    :goto_2
    iget-object v4, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->locals:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    iget-object v4, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->lastEntryForReg:[Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    aput-object v0, v4, v3

    .line 291
    invoke-virtual {v11}, Lcom/s1243808733/android/dx/rop/type/Type;->getCategory()I

    move-result v0

    add-int/2addr v3, v0

    .line 272
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 286
    :cond_3
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    move v5, v1

    move v6, v1

    invoke-direct/range {v0 .. v6}, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;-><init>(IZIIII)V

    goto :goto_2

    .line 299
    :pswitch_1
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

    goto :goto_1

    .line 311
    :pswitch_2
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

    goto/16 :goto_1

    .line 324
    :pswitch_3
    invoke-static {v10}, Lcom/s1243808733/android/dex/Leb128;->readUnsignedLeb128(Lcom/s1243808733/android/dex/util/ByteInput;)I

    move-result v6

    .line 325
    :try_start_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->lastEntryForReg:[Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    aget-object v0, v0, v6

    .line 331
    iget-boolean v3, v0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->isStart:Z

    if-eqz v3, :cond_4

    .line 332
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "nonsensical "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "RESTART_LOCAL on live register v"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    :catch_0
    move-exception v0

    .line 340
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Encountered RESTART_LOCAL on new v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    :cond_4
    :try_start_1
    new-instance v3, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    iget v4, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->address:I

    const/4 v5, 0x1

    iget v7, v0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->nameIndex:I

    iget v8, v0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->typeIndex:I

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;-><init>(IZIIII)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 344
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->locals:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->lastEntryForReg:[Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    aput-object v3, v0, v6

    goto/16 :goto_1

    .line 350
    :pswitch_4
    invoke-static {v10}, Lcom/s1243808733/android/dex/Leb128;->readUnsignedLeb128(Lcom/s1243808733/android/dex/util/ByteInput;)I

    move-result v6

    .line 351
    :try_start_2
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->lastEntryForReg:[Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    aget-object v0, v0, v6

    .line 357
    iget-boolean v3, v0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->isStart:Z

    if-nez v3, :cond_5

    .line 358
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "nonsensical "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "END_LOCAL on dead register v"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    .line 362
    :catch_1
    move-exception v0

    .line 366
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Encountered END_LOCAL on new v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 362
    :cond_5
    :try_start_3
    new-instance v3, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    iget v4, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->address:I

    const/4 v5, 0x0

    iget v7, v0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->nameIndex:I

    iget v8, v0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->typeIndex:I

    iget v9, v0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->signatureIndex:I

    invoke-direct/range {v3 .. v9}, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;-><init>(IZIIII)V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1

    .line 370
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->locals:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->lastEntryForReg:[Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    aput-object v3, v0, v6

    goto/16 :goto_1

    .line 380
    :pswitch_5
    iget v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->address:I

    invoke-static {v10}, Lcom/s1243808733/android/dex/Leb128;->readUnsignedLeb128(Lcom/s1243808733/android/dex/util/ByteInput;)I

    move-result v3

    add-int/2addr v0, v3

    iput v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->address:I

    goto/16 :goto_1

    .line 384
    :pswitch_6
    iget v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->line:I

    invoke-static {v10}, Lcom/s1243808733/android/dex/Leb128;->readSignedLeb128(Lcom/s1243808733/android/dex/util/ByteInput;)I

    move-result v3

    add-int/2addr v0, v3

    iput v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->line:I

    goto/16 :goto_1

    .line 406
    :cond_6
    add-int/lit8 v0, v0, -0xa

    .line 408
    iget v3, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->address:I

    div-int/lit8 v4, v0, 0xf

    add-int/2addr v3, v4

    iput v3, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->address:I

    .line 409
    rem-int/lit8 v0, v0, 0xf

    add-int/lit8 v0, v0, -0x4

    iget v3, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->line:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->line:I

    .line 411
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->positions:Ljava/util/ArrayList;

    new-instance v3, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$PositionEntry;

    iget v4, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->address:I

    iget v5, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->line:I

    invoke-direct {v3, v4, v5}, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$PositionEntry;-><init>(II)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 377
    :pswitch_7
    return-void

    .line 297
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getParamBase()I
    .registers 4

    .line 246
    iget v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->regSize:I

    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->desc:Lcom/s1243808733/android/dx/rop/type/Prototype;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Prototype;->getParameterTypes()Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->getWordCount()I

    move-result v2

    iget-boolean v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->isStatic:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sub-int/2addr v1, v2

    sub-int v0, v1, v0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private readStringIndex(Lcom/s1243808733/android/dex/util/ByteInput;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    invoke-static {p1}, Lcom/s1243808733/android/dex/Leb128;->readUnsignedLeb128(Lcom/s1243808733/android/dex/util/ByteInput;)I

    move-result v0

    .line 235
    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public static validateEncode([BLcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;Lcom/s1243808733/android/dx/dex/code/DalvCode;Z)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/s1243808733/android/dx/dex/file/DexFile;",
            "Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;",
            "Lcom/s1243808733/android/dx/dex/code/DalvCode;",
            "Z)V"
        }
    .end annotation

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

    .line 445
    return-void

    .line 438
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
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "while processing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->toHuman()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/s1243808733/android/dex/util/ExceptionWithContext;->withContext(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/s1243808733/android/dex/util/ExceptionWithContext;

    move-result-object v0

    throw v0
.end method

.method private static validateEncode0([BIIZLcom/s1243808733/android/dx/rop/cst/CstMethodRef;Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/dex/code/PositionList;Lcom/s1243808733/android/dx/dex/code/LocalList;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BIIZ",
            "Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;",
            "Lcom/s1243808733/android/dx/dex/file/DexFile;",
            "Lcom/s1243808733/android/dx/dex/code/PositionList;",
            "Lcom/s1243808733/android/dx/dex/code/LocalList;",
            ")V"
        }
    .end annotation

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

    if-eq v3, v4, :cond_0

    .line 467
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Decoded positions table not same size was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, " expected "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual/range {p6 .. p6}, Lcom/s1243808733/android/dx/dex/code/PositionList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 472
    :cond_0
    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 485
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 495
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->getLocals()Ljava/util/List;

    move-result-object v2

    .line 496
    iget v7, v1, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->thisStringIdx:I

    .line 497
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 498
    invoke-direct {v1}, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->getParamBase()I

    move-result v8

    .line 505
    const/4 v1, 0x0

    move v6, v1

    :goto_0
    if-lt v6, v4, :cond_5

    .line 525
    invoke-virtual/range {p7 .. p7}, Lcom/s1243808733/android/dx/dex/code/LocalList;->size()I

    move-result v6

    .line 526
    const/4 v1, 0x0

    .line 527
    const/4 v3, 0x0

    move v5, v3

    :goto_1
    if-lt v5, v6, :cond_b

    const/4 v1, 0x0

    .line 589
    :goto_2
    if-eqz v1, :cond_16

    .line 590
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "decoded locals:"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v1, v2

    .line 591
    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 592
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_15

    .line 594
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "local table problem"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 472
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$PositionEntry;

    .line 473
    const/4 v3, 0x0

    .line 474
    invoke-virtual/range {p6 .. p6}, Lcom/s1243808733/android/dx/dex/code/PositionList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_4
    if-gez v4, :cond_3

    .line 484
    :goto_5
    if-nez v3, :cond_1

    .line 485
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Could not match position entry: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget v6, v2, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$PositionEntry;->address:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget v2, v2, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$PositionEntry;->line:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 475
    :cond_3
    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Lcom/s1243808733/android/dx/dex/code/PositionList;->get(I)Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;

    move-result-object v6

    .line 477
    iget v7, v2, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$PositionEntry;->line:I

    invoke-virtual {v6}, Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v8

    invoke-virtual {v8}, Lcom/s1243808733/android/dx/rop/code/SourcePosition;->getLine()I

    move-result v8

    if-ne v7, v8, :cond_4

    iget v7, v2, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$PositionEntry;->address:I

    invoke-virtual {v6}, Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;->getAddress()I

    move-result v6

    if-ne v7, v6, :cond_4

    .line 479
    const/4 v3, 0x1

    .line 480
    goto :goto_5

    .line 474
    :cond_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .line 506
    :cond_5
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    .line 507
    iget v3, v1, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->nameIndex:I

    .line 509
    if-ltz v3, :cond_6

    if-ne v3, v7, :cond_7

    .line 510
    :cond_6
    add-int/lit8 v3, v6, 0x1

    move v5, v3

    :goto_6
    if-lt v5, v4, :cond_8

    :cond_7
    move v1, v4

    .line 505
    :goto_7
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    move v4, v1

    goto/16 :goto_0

    .line 511
    :cond_8
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    .line 512
    iget v9, v3, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->address:I

    if-eqz v9, :cond_9

    move v1, v4

    .line 513
    goto :goto_7

    .line 515
    :cond_9
    iget v9, v1, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->reg:I

    iget v10, v3, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->reg:I

    if-ne v9, v10, :cond_a

    iget-boolean v9, v3, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->isStart:Z

    if-eqz v9, :cond_a

    .line 516
    invoke-interface {v2, v6, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 517
    invoke-interface {v2, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 518
    add-int/lit8 v1, v4, -0x1

    .line 519
    goto :goto_7

    .line 510
    :cond_a
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_6

    .line 530
    :cond_b
    move-object/from16 v0, p7

    invoke-virtual {v0, v5}, Lcom/s1243808733/android/dx/dex/code/LocalList;->get(I)Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;

    move-result-object v7

    .line 532
    invoke-virtual {v7}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getDisposition()Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    move-result-object v3

    sget-object v9, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;->END_REPLACED:Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    if-ne v3, v9, :cond_c

    .line 529
    :goto_8
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto/16 :goto_1

    :cond_c
    move v3, v1

    .line 541
    :cond_d
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    .line 545
    iget v9, v1, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->nameIndex:I

    if-ltz v9, :cond_e

    .line 556
    :goto_9
    iget v9, v1, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->address:I

    .line 558
    iget v10, v1, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->reg:I

    invoke-virtual {v7}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getRegister()I

    move-result v11

    if-eq v10, v11, :cond_f

    .line 559
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "local register mismatch at orig "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " / decoded "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 561
    const/4 v1, 0x1

    .line 562
    goto/16 :goto_2

    .line 553
    :cond_e
    add-int/lit8 v3, v3, 0x1

    .line 543
    if-lt v3, v4, :cond_d

    goto :goto_9

    .line 565
    :cond_f
    iget-boolean v10, v1, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->isStart:Z

    if-nez v10, :cond_11

    invoke-virtual {v7}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->isStart()Z

    move-result v10

    if-eqz v10, :cond_12

    .line 566
    :cond_10
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "local start/end mismatch at orig "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " / decoded "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 568
    const/4 v1, 0x1

    .line 569
    goto/16 :goto_2

    .line 565
    :cond_11
    invoke-virtual {v7}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->isStart()Z

    move-result v10

    if-eqz v10, :cond_10

    .line 577
    :cond_12
    invoke-virtual {v7}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getAddress()I

    move-result v7

    if-eq v9, v7, :cond_14

    if-nez v9, :cond_13

    iget v1, v1, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->reg:I

    if-ge v1, v8, :cond_14

    .line 580
    :cond_13
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "local address mismatch at orig "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " / decoded "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 582
    const/4 v1, 0x1

    .line 583
    goto/16 :goto_2

    .line 586
    :cond_14
    add-int/lit8 v1, v3, 0x1

    goto/16 :goto_8

    .line 591
    :cond_15
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    .line 592
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 594
    :cond_16
    return-void
.end method


# virtual methods
.method public decode()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 218
    :try_start_0
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;->decode0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    return-void

    .line 218
    :catch_0
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
    .registers 2
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
