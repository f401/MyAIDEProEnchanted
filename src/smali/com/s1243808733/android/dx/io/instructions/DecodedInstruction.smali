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
    .registers 9

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_20

    .line 107
    invoke-static {p2}, Lcom/s1243808733/android/dx/io/Opcodes;->isValidShape(I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 111
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

    .line 108
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid opcode"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 104
    :cond_20
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "format == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
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

    move-result-object p0

    return-object p0
.end method

.method public static decodeAll([S)[Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;
    .registers 4

    .line 83
    array-length v0, p0

    .line 84
    new-array v0, v0, [Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;

    .line 85
    new-instance v1, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeInput;

    invoke-direct {v1, p0}, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeInput;-><init>([S)V

    .line 88
    :goto_8
    :try_start_8
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeInput;->hasMore()Z

    move-result p0

    if-eqz p0, :cond_19

    .line 89
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeInput;->cursor()I

    move-result p0

    invoke-static {v1}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->decode(Lcom/s1243808733/android/dx/io/instructions/CodeInput;)Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;

    move-result-object v2

    aput-object v2, v0, p0
    :try_end_18
    .catch Ljava/io/EOFException; {:try_start_8 .. :try_end_18} :catch_1a

    goto :goto_8

    :cond_19
    return-object v0

    :catch_1a
    move-exception p0

    .line 92
    new-instance v0, Lcom/s1243808733/android/dex/DexException;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_22

    :goto_21
    throw v0

    :goto_22
    goto :goto_21
.end method


# virtual methods
.method public final encode(Lcom/s1243808733/android/dx/io/instructions/CodeOutput;)V
    .registers 3

    .line 470
    iget-object v0, p0, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->format:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    invoke-virtual {v0, p0, p1}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->encode(Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;Lcom/s1243808733/android/dx/io/instructions/CodeOutput;)V

    return-void
.end method

.method public getA()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final getAByte()S
    .registers 5

    .line 303
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getA()I

    move-result v0

    and-int/lit16 v1, v0, -0x100

    if-nez v1, :cond_a

    int-to-short v0, v0

    return v0

    .line 306
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Register A out of range: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-long v2, v0

    invoke-static {v2, v3}, Lcom/s1243808733/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/s1243808733/android/dex/DexException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getANibble()S
    .registers 5

    .line 317
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getA()I

    move-result v0

    and-int/lit8 v1, v0, -0x10

    if-nez v1, :cond_a

    int-to-short v0, v0

    return v0

    .line 320
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Register A out of range: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-long v2, v0

    invoke-static {v2, v3}, Lcom/s1243808733/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/s1243808733/android/dex/DexException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getAUnit()S
    .registers 5

    .line 289
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getA()I

    move-result v0

    const/high16 v1, -0x10000

    and-int/2addr v1, v0

    if-nez v1, :cond_b

    int-to-short v0, v0

    return v0

    .line 292
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Register A out of range: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-long v2, v0

    invoke-static {v2, v3}, Lcom/s1243808733/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/s1243808733/android/dex/DexException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getB()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final getBByte()S
    .registers 5

    .line 345
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getB()I

    move-result v0

    and-int/lit16 v1, v0, -0x100

    if-nez v1, :cond_a

    int-to-short v0, v0

    return v0

    .line 348
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Register B out of range: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-long v2, v0

    invoke-static {v2, v3}, Lcom/s1243808733/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/s1243808733/android/dex/DexException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getBNibble()S
    .registers 5

    .line 359
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getB()I

    move-result v0

    and-int/lit8 v1, v0, -0x10

    if-nez v1, :cond_a

    int-to-short v0, v0

    return v0

    .line 362
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Register B out of range: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-long v2, v0

    invoke-static {v2, v3}, Lcom/s1243808733/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/s1243808733/android/dex/DexException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getBUnit()S
    .registers 5

    .line 331
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getB()I

    move-result v0

    const/high16 v1, -0x10000

    and-int/2addr v1, v0

    if-nez v1, :cond_b

    int-to-short v0, v0

    return v0

    .line 334
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Register B out of range: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-long v2, v0

    invoke-static {v2, v3}, Lcom/s1243808733/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/s1243808733/android/dex/DexException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getC()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final getCByte()S
    .registers 5

    .line 387
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getC()I

    move-result v0

    and-int/lit16 v1, v0, -0x100

    if-nez v1, :cond_a

    int-to-short v0, v0

    return v0

    .line 390
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Register C out of range: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-long v2, v0

    invoke-static {v2, v3}, Lcom/s1243808733/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/s1243808733/android/dex/DexException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getCNibble()S
    .registers 5

    .line 401
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getC()I

    move-result v0

    and-int/lit8 v1, v0, -0x10

    if-nez v1, :cond_a

    int-to-short v0, v0

    return v0

    .line 404
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Register C out of range: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-long v2, v0

    invoke-static {v2, v3}, Lcom/s1243808733/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/s1243808733/android/dex/DexException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getCUnit()S
    .registers 5

    .line 373
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getC()I

    move-result v0

    const/high16 v1, -0x10000

    and-int/2addr v1, v0

    if-nez v1, :cond_b

    int-to-short v0, v0

    return v0

    .line 376
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Register C out of range: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-long v2, v0

    invoke-static {v2, v3}, Lcom/s1243808733/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/s1243808733/android/dex/DexException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getD()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final getDByte()S
    .registers 5

    .line 429
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getD()I

    move-result v0

    and-int/lit16 v1, v0, -0x100

    if-nez v1, :cond_a

    int-to-short v0, v0

    return v0

    .line 432
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Register D out of range: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-long v2, v0

    invoke-static {v2, v3}, Lcom/s1243808733/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/s1243808733/android/dex/DexException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getDNibble()S
    .registers 5

    .line 443
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getD()I

    move-result v0

    and-int/lit8 v1, v0, -0x10

    if-nez v1, :cond_a

    int-to-short v0, v0

    return v0

    .line 446
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Register D out of range: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-long v2, v0

    invoke-static {v2, v3}, Lcom/s1243808733/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/s1243808733/android/dex/DexException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getDUnit()S
    .registers 5

    .line 415
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getD()I

    move-result v0

    const/high16 v1, -0x10000

    and-int/2addr v1, v0

    if-nez v1, :cond_b

    int-to-short v0, v0

    return v0

    .line 418
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Register D out of range: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-long v2, v0

    invoke-static {v2, v3}, Lcom/s1243808733/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/s1243808733/android/dex/DexException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getE()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final getENibble()S
    .registers 5

    .line 457
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getE()I

    move-result v0

    and-int/lit8 v1, v0, -0x10

    if-nez v1, :cond_a

    int-to-short v0, v0

    return v0

    .line 460
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Register E out of range: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-long v2, v0

    invoke-static {v2, v3}, Lcom/s1243808733/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/s1243808733/android/dex/DexException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v0
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
    .registers 7

    .line 228
    iget-wide v0, p0, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->literal:J

    long-to-int v2, v0

    int-to-byte v3, v2

    int-to-long v3, v3

    cmp-long v5, v0, v3

    if-nez v5, :cond_c

    and-int/lit16 v0, v2, 0xff

    return v0

    .line 229
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Literal out of range: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->literal:J

    invoke-static {v1, v2}, Lcom/s1243808733/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/s1243808733/android/dex/DexException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final getLiteralInt()I
    .registers 7

    .line 204
    iget-wide v0, p0, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->literal:J

    long-to-int v2, v0

    int-to-long v3, v2

    cmp-long v5, v0, v3

    if-nez v5, :cond_9

    return v2

    .line 205
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Literal out of range: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->literal:J

    invoke-static {v1, v2}, Lcom/s1243808733/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/s1243808733/android/dex/DexException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final getLiteralNibble()I
    .registers 6

    .line 240
    iget-wide v0, p0, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->literal:J

    const-wide/16 v2, -0x8

    cmp-long v4, v0, v2

    if-ltz v4, :cond_12

    const-wide/16 v2, 0x7

    cmp-long v4, v0, v2

    if-gtz v4, :cond_12

    long-to-int v1, v0

    and-int/lit8 v0, v1, 0xf

    return v0

    .line 241
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Literal out of range: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->literal:J

    invoke-static {v1, v2}, Lcom/s1243808733/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/s1243808733/android/dex/DexException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final getLiteralUnit()S
    .registers 7

    .line 216
    iget-wide v0, p0, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->literal:J

    long-to-int v2, v0

    int-to-short v2, v2

    int-to-long v3, v2

    cmp-long v5, v0, v3

    if-nez v5, :cond_a

    return v2

    .line 217
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Literal out of range: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->literal:J

    invoke-static {v1, v2}, Lcom/s1243808733/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/s1243808733/android/dex/DexException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v1
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

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getRegisterCount()I
.end method

.method public final getRegisterCountUnit()S
    .registers 5

    .line 274
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getRegisterCount()I

    move-result v0

    const/high16 v1, -0x10000

    and-int/2addr v1, v0

    if-nez v1, :cond_b

    int-to-short v0, v0

    return v0

    .line 277
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Register count out of range: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-long v2, v0

    .line 278
    invoke-static {v2, v3}, Lcom/s1243808733/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/s1243808733/android/dex/DexException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v0
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
    .registers 4

    .line 185
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getTarget(I)I

    move-result p1

    int-to-byte v0, p1

    if-ne p1, v0, :cond_a

    and-int/lit16 p1, p1, 0xff

    return p1

    .line 188
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Target out of range: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    invoke-static {p1}, Lcom/s1243808733/android/dx/util/Hex;->s4(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Lcom/s1243808733/android/dex/DexException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getTargetUnit(I)S
    .registers 4

    .line 169
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getTarget(I)I

    move-result p1

    int-to-short v0, p1

    if-ne p1, v0, :cond_8

    return v0

    .line 172
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Target out of range: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    invoke-static {p1}, Lcom/s1243808733/android/dx/util/Hex;->s4(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Lcom/s1243808733/android/dex/DexException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract withIndex(I)Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;
.end method

.method public withProtoIndex(II)Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;
    .registers 3

    .line 481
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
