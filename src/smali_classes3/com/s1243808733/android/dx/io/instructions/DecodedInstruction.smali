.class public abstract Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;
.super Ljava/lang/Object;
.source "DecodedInstruction.java"


# instance fields
.field private final format:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

.field private final index:I

.field private final indexType:Lcom/s1243808733/android/dx/io/IndexType;

.field private final literal:J

.field private final opcode:I

.field private final target:I


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;IILcom/s1243808733/android/dx/io/IndexType;IJ)V
    .registers 10

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    if-nez p1, :cond_0

    .line 104
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "format == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    invoke-static {p2}, Lcom/s1243808733/android/dx/io/Opcodes;->isValidShape(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 108
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid opcode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_1
    iput-object p1, p0, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->format:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    .line 112
    iput p2, p0, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->opcode:I

    .line 113
    iput p3, p0, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->index:I

    .line 114
    iput-object p4, p0, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->indexType:Lcom/s1243808733/android/dx/io/IndexType;

    .line 115
    iput p5, p0, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->target:I

    .line 116
    iput-wide p6, p0, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->literal:J

    return-void
.end method

.method public static decode(Lcom/s1243808733/android/dx/io/instructions/CodeInput;)Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 70
    invoke-interface {p0}, Lcom/s1243808733/android/dx/io/instructions/CodeInput;->read()I

    move-result v0

    .line 71
    invoke-static {v0}, Lcom/s1243808733/android/dx/io/Opcodes;->extractOpcodeFromUnit(I)I

    move-result v1

    .line 72
    invoke-static {v1}, Lcom/s1243808733/android/dx/io/OpcodeInfo;->getFormat(I)Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    move-result-object v1

    .line 74
    invoke-virtual {v1, v0, p0}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->decode(ILcom/s1243808733/android/dx/io/instructions/CodeInput;)Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;

    move-result-object v0

    return-object v0
.end method

.method public static decodeAll([S)[Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;
    .registers 5

    .line 83
    array-length v0, p0

    .line 84
    new-array v0, v0, [Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;

    .line 85
    new-instance v1, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeInput;

    invoke-direct {v1, p0}, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeInput;-><init>([S)V

    .line 88
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeInput;->hasMore()Z

    move-result v2

    if-nez v2, :cond_0

    .line 95
    return-object v0

    .line 89
    :cond_0
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeInput;->cursor()I

    move-result v2

    invoke-static {v1}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->decode(Lcom/s1243808733/android/dx/io/instructions/CodeInput;)Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;

    move-result-object v3

    aput-object v3, v0, v2
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 92
    new-instance v1, Lcom/s1243808733/android/dex/DexException;

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final encode(Lcom/s1243808733/android/dx/io/instructions/CodeOutput;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/io/instructions/CodeOutput;",
            ")V"
        }
    .end annotation

    .line 470
    iget-object v0, p0, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->format:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    invoke-virtual {v0, p0, p1}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->encode(Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;Lcom/s1243808733/android/dx/io/instructions/CodeOutput;)V

    return-void
.end method

.method public getA()I
    .registers 2

    .line 250
    const/4 v0, 0x0

    return v0
.end method

.method public final getAByte()S
    .registers 7

    .line 303
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getA()I

    move-result v0

    .line 305
    and-int/lit16 v1, v0, -0x100

    if-eqz v1, :cond_0

    .line 306
    new-instance v1, Lcom/s1243808733/android/dex/DexException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Register A out of range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    int-to-long v4, v0

    invoke-static {v4, v5}, Lcom/s1243808733/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 309
    :cond_0
    int-to-short v0, v0

    return v0
.end method

.method public final getANibble()S
    .registers 7

    .line 317
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getA()I

    move-result v0

    .line 319
    and-int/lit8 v1, v0, -0x10

    if-eqz v1, :cond_0

    .line 320
    new-instance v1, Lcom/s1243808733/android/dex/DexException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Register A out of range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    int-to-long v4, v0

    invoke-static {v4, v5}, Lcom/s1243808733/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 323
    :cond_0
    int-to-short v0, v0

    return v0
.end method

.method public final getAUnit()S
    .registers 7

    .line 289
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getA()I

    move-result v0

    .line 291
    const/high16 v1, -0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 292
    new-instance v1, Lcom/s1243808733/android/dex/DexException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Register A out of range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    int-to-long v4, v0

    invoke-static {v4, v5}, Lcom/s1243808733/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 295
    :cond_0
    int-to-short v0, v0

    return v0
.end method

.method public getB()I
    .registers 2

    .line 254
    const/4 v0, 0x0

    return v0
.end method

.method public final getBByte()S
    .registers 7

    .line 345
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getB()I

    move-result v0

    .line 347
    and-int/lit16 v1, v0, -0x100

    if-eqz v1, :cond_0

    .line 348
    new-instance v1, Lcom/s1243808733/android/dex/DexException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Register B out of range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    int-to-long v4, v0

    invoke-static {v4, v5}, Lcom/s1243808733/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 351
    :cond_0
    int-to-short v0, v0

    return v0
.end method

.method public final getBNibble()S
    .registers 7

    .line 359
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getB()I

    move-result v0

    .line 361
    and-int/lit8 v1, v0, -0x10

    if-eqz v1, :cond_0

    .line 362
    new-instance v1, Lcom/s1243808733/android/dex/DexException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Register B out of range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    int-to-long v4, v0

    invoke-static {v4, v5}, Lcom/s1243808733/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 365
    :cond_0
    int-to-short v0, v0

    return v0
.end method

.method public final getBUnit()S
    .registers 7

    .line 331
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getB()I

    move-result v0

    .line 333
    const/high16 v1, -0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 334
    new-instance v1, Lcom/s1243808733/android/dex/DexException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Register B out of range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    int-to-long v4, v0

    invoke-static {v4, v5}, Lcom/s1243808733/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 337
    :cond_0
    int-to-short v0, v0

    return v0
.end method

.method public getC()I
    .registers 2

    .line 258
    const/4 v0, 0x0

    return v0
.end method

.method public final getCByte()S
    .registers 7

    .line 387
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getC()I

    move-result v0

    .line 389
    and-int/lit16 v1, v0, -0x100

    if-eqz v1, :cond_0

    .line 390
    new-instance v1, Lcom/s1243808733/android/dex/DexException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Register C out of range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    int-to-long v4, v0

    invoke-static {v4, v5}, Lcom/s1243808733/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 393
    :cond_0
    int-to-short v0, v0

    return v0
.end method

.method public final getCNibble()S
    .registers 7

    .line 401
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getC()I

    move-result v0

    .line 403
    and-int/lit8 v1, v0, -0x10

    if-eqz v1, :cond_0

    .line 404
    new-instance v1, Lcom/s1243808733/android/dex/DexException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Register C out of range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    int-to-long v4, v0

    invoke-static {v4, v5}, Lcom/s1243808733/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 407
    :cond_0
    int-to-short v0, v0

    return v0
.end method

.method public final getCUnit()S
    .registers 7

    .line 373
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getC()I

    move-result v0

    .line 375
    const/high16 v1, -0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 376
    new-instance v1, Lcom/s1243808733/android/dex/DexException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Register C out of range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    int-to-long v4, v0

    invoke-static {v4, v5}, Lcom/s1243808733/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 379
    :cond_0
    int-to-short v0, v0

    return v0
.end method

.method public getD()I
    .registers 2

    .line 262
    const/4 v0, 0x0

    return v0
.end method

.method public final getDByte()S
    .registers 7

    .line 429
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getD()I

    move-result v0

    .line 431
    and-int/lit16 v1, v0, -0x100

    if-eqz v1, :cond_0

    .line 432
    new-instance v1, Lcom/s1243808733/android/dex/DexException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Register D out of range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    int-to-long v4, v0

    invoke-static {v4, v5}, Lcom/s1243808733/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 435
    :cond_0
    int-to-short v0, v0

    return v0
.end method

.method public final getDNibble()S
    .registers 7

    .line 443
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getD()I

    move-result v0

    .line 445
    and-int/lit8 v1, v0, -0x10

    if-eqz v1, :cond_0

    .line 446
    new-instance v1, Lcom/s1243808733/android/dex/DexException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Register D out of range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    int-to-long v4, v0

    invoke-static {v4, v5}, Lcom/s1243808733/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 449
    :cond_0
    int-to-short v0, v0

    return v0
.end method

.method public final getDUnit()S
    .registers 7

    .line 415
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getD()I

    move-result v0

    .line 417
    const/high16 v1, -0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 418
    new-instance v1, Lcom/s1243808733/android/dex/DexException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Register D out of range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    int-to-long v4, v0

    invoke-static {v4, v5}, Lcom/s1243808733/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 421
    :cond_0
    int-to-short v0, v0

    return v0
.end method

.method public getE()I
    .registers 2

    .line 266
    const/4 v0, 0x0

    return v0
.end method

.method public final getENibble()S
    .registers 7

    .line 457
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getE()I

    move-result v0

    .line 459
    and-int/lit8 v1, v0, -0x10

    if-eqz v1, :cond_0

    .line 460
    new-instance v1, Lcom/s1243808733/android/dex/DexException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Register E out of range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    int-to-long v4, v0

    invoke-static {v4, v5}, Lcom/s1243808733/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 463
    :cond_0
    int-to-short v0, v0

    return v0
.end method

.method public final getFormat()Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;
    .registers 2

    .line 120
    iget-object v0, p0, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->format:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    return-object v0
.end method

.method public final getIndex()I
    .registers 2

    .line 135
    iget v0, p0, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->index:I

    return v0
.end method

.method public final getIndexType()Lcom/s1243808733/android/dx/io/IndexType;
    .registers 2

    .line 146
    iget-object v0, p0, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->indexType:Lcom/s1243808733/android/dx/io/IndexType;

    return-object v0
.end method

.method public final getIndexUnit()S
    .registers 2

    .line 142
    iget v0, p0, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->index:I

    int-to-short v0, v0

    return v0
.end method

.method public final getLiteral()J
    .registers 3

    .line 196
    iget-wide v0, p0, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->literal:J

    return-wide v0
.end method

.method public final getLiteralByte()I
    .registers 5

    .line 228
    iget-wide v0, p0, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->literal:J

    iget-wide v2, p0, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->literal:J

    long-to-int v2, v2

    int-to-byte v2, v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 229
    new-instance v0, Lcom/s1243808733/android/dex/DexException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Literal out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->literal:J

    invoke-static {v2, v3}, Lcom/s1243808733/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_0
    iget-wide v0, p0, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->literal:J

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final getLiteralInt()I
    .registers 5

    .line 204
    iget-wide v0, p0, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->literal:J

    iget-wide v2, p0, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->literal:J

    long-to-int v2, v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 205
    new-instance v0, Lcom/s1243808733/android/dex/DexException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Literal out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->literal:J

    invoke-static {v2, v3}, Lcom/s1243808733/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_0
    iget-wide v0, p0, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->literal:J

    long-to-int v0, v0

    return v0
.end method

.method public final getLiteralNibble()I
    .registers 5

    .line 240
    iget-wide v0, p0, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->literal:J

    const/4 v2, -0x8

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->literal:J

    const/4 v2, 0x7

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 241
    :cond_0
    new-instance v0, Lcom/s1243808733/android/dex/DexException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Literal out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->literal:J

    invoke-static {v2, v3}, Lcom/s1243808733/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_1
    iget-wide v0, p0, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->literal:J

    long-to-int v0, v0

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public final getLiteralUnit()S
    .registers 5

    .line 216
    iget-wide v0, p0, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->literal:J

    iget-wide v2, p0, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->literal:J

    long-to-int v2, v2

    int-to-short v2, v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 217
    new-instance v0, Lcom/s1243808733/android/dex/DexException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Literal out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->literal:J

    invoke-static {v2, v3}, Lcom/s1243808733/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_0
    iget-wide v0, p0, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->literal:J

    long-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public final getOpcode()I
    .registers 2

    .line 124
    iget v0, p0, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->opcode:I

    return v0
.end method

.method public final getOpcodeUnit()S
    .registers 2

    .line 131
    iget v0, p0, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->opcode:I

    int-to-short v0, v0

    return v0
.end method

.method public getProtoIndex()S
    .registers 3

    .line 486
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getRegisterCount()I
.end method

.method public final getRegisterCountUnit()S
    .registers 7

    .line 274
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getRegisterCount()I

    move-result v0

    .line 276
    const/high16 v1, -0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 277
    new-instance v1, Lcom/s1243808733/android/dex/DexException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Register count out of range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    int-to-long v4, v0

    invoke-static {v4, v5}, Lcom/s1243808733/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 281
    :cond_0
    int-to-short v0, v0

    return v0
.end method

.method public final getTarget()I
    .registers 2

    .line 153
    iget v0, p0, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->target:I

    return v0
.end method

.method public final getTarget(I)I
    .registers 3

    .line 160
    iget v0, p0, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->target:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public final getTargetByte(I)I
    .registers 6

    .line 185
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getTarget(I)I

    move-result v0

    .line 187
    int-to-byte v1, v0

    if-eq v0, v1, :cond_0

    .line 188
    new-instance v1, Lcom/s1243808733/android/dex/DexException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Target out of range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Hex;->s4(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 192
    :cond_0
    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final getTargetUnit(I)S
    .registers 6

    .line 169
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getTarget(I)I

    move-result v0

    .line 171
    int-to-short v1, v0

    if-eq v0, v1, :cond_0

    .line 172
    new-instance v1, Lcom/s1243808733/android/dex/DexException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Target out of range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Hex;->s4(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 176
    :cond_0
    int-to-short v0, v0

    return v0
.end method

.method public abstract withIndex(I)Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;
.end method

.method public withProtoIndex(II)Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;
    .registers 5

    .line 481
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
