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
    .locals 2

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 107
    invoke-static {p2}, Lcom/s1243808733/android/dx/io/Opcodes;->isValidShape(I)Z

    move-result v0

    if-eqz v0, :cond_0

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
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid opcode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "format == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static decode(Lcom/s1243808733/android/dx/io/instructions/CodeInput;)Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;
    .locals 2
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
    .locals 4

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

    if-eqz v2, :cond_0

    .line 89
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeInput;->cursor()I

    move-result v2

    invoke-static {v1}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->decode(Lcom/s1243808733/android/dx/io/instructions/CodeInput;)Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;

    move-result-object v3

    aput-object v3, v0, v2
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 92
    new-instance v1, Lcom/s1243808733/android/dex/DexException;

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 89
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final encode(Lcom/s1243808733/android/dx/io/instructions/CodeOutput;)V
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->format:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    invoke-virtual {v0, p0, p1}, Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;->encode(Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;Lcom/s1243808733/android/dx/io/instructions/CodeOutput;)V

    return-void
.end method

.method public getA()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getAByte()S
    .locals 4

    .line 303
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getA()I

    move-result v0

    and-int/lit16 v1, v0, -0x100

    if-nez v1, :cond_0

    int-to-short v0, v0

    return v0

    .line 306
    :cond_0
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
    .locals 4

    .line 317
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getA()I

    move-result v0

    and-int/lit8 v1, v0, -0x10

    if-nez v1, :cond_0

    int-to-short v0, v0

    return v0

    .line 320
    :cond_0
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
    .locals 4

    .line 289
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getA()I

    move-result v0

    const/high16 v1, -0x10000

    and-int/2addr v1, v0

    if-nez v1, :cond_0

    int-to-short v0, v0

    return v0

    .line 292
    :cond_0
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
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getBByte()S
    .locals 4

    .line 345
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getB()I

    move-result v0

    and-int/lit16 v1, v0, -0x100

    if-nez v1, :cond_0

    int-to-short v0, v0

    return v0

    .line 348
    :cond_0
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
    .locals 4

    .line 359
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getB()I

    move-result v0

    and-int/lit8 v1, v0, -0x10

    if-nez v1, :cond_0

    int-to-short v0, v0

    return v0

    .line 362
    :cond_0
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
    .locals 4

    .line 331
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getB()I

    move-result v0

    const/high16 v1, -0x10000

    and-int/2addr v1, v0

    if-nez v1, :cond_0

    int-to-short v0, v0

    return v0

    .line 334
    :cond_0
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
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getCByte()S
    .locals 4

    .line 387
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getC()I

    move-result v0

    and-int/lit16 v1, v0, -0x100

    if-nez v1, :cond_0

    int-to-short v0, v0

    return v0

    .line 390
    :cond_0
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
    .locals 4

    .line 401
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getC()I

    move-result v0

    and-int/lit8 v1, v0, -0x10

    if-nez v1, :cond_0

    int-to-short v0, v0

    return v0

    .line 404
    :cond_0
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
    .locals 4

    .line 373
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getC()I

    move-result v0

    const/high16 v1, -0x10000

    and-int/2addr v1, v0

    if-nez v1, :cond_0

    int-to-short v0, v0

    return v0

    .line 376
    :cond_0
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
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getDByte()S
    .locals 4

    .line 429
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getD()I

    move-result v0

    and-int/lit16 v1, v0, -0x100

    if-nez v1, :cond_0

    int-to-short v0, v0

    return v0

    .line 432
    :cond_0
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
    .locals 4

    .line 443
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getD()I

    move-result v0

    and-int/lit8 v1, v0, -0x10

    if-nez v1, :cond_0

    int-to-short v0, v0

    return v0

    .line 446
    :cond_0
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
    .locals 4

    .line 415
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getD()I

    move-result v0

    const/high16 v1, -0x10000

    and-int/2addr v1, v0

    if-nez v1, :cond_0

    int-to-short v0, v0

    return v0

    .line 418
    :cond_0
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
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getENibble()S
    .locals 4

    .line 457
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getE()I

    move-result v0

    and-int/lit8 v1, v0, -0x10

    if-nez v1, :cond_0

    int-to-short v0, v0

    return v0

    .line 460
    :cond_0
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
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->format:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    return-object v0
.end method

.method public final getIndex()I
    .locals 1

    .line 135
    iget v0, p0, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->index:I

    return v0
.end method

.method public final getIndexType()Lcom/s1243808733/android/dx/io/IndexType;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->indexType:Lcom/s1243808733/android/dx/io/IndexType;

    return-object v0
.end method

.method public final getIndexUnit()S
    .locals 1

    .line 142
    iget v0, p0, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->index:I

    int-to-short v0, v0

    return v0
.end method

.method public final getLiteral()J
    .locals 2

    .line 196
    iget-wide v0, p0, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->literal:J

    return-wide v0
.end method

.method public final getLiteralByte()I
    .locals 6

    .line 228
    iget-wide v0, p0, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->literal:J

    long-to-int v2, v0

    int-to-byte v3, v2

    int-to-long v4, v3

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    and-int/lit16 v0, v2, 0xff

    return v0

    .line 229
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Literal out of range: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->literal:J

    invoke-static {v2, v3}, Lcom/s1243808733/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/s1243808733/android/dex/DexException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final getLiteralInt()I
    .locals 6

    .line 204
    iget-wide v0, p0, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->literal:J

    long-to-int v2, v0

    int-to-long v4, v2

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    return v2

    .line 205
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Literal out of range: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->literal:J

    invoke-static {v2, v3}, Lcom/s1243808733/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/s1243808733/android/dex/DexException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final getLiteralNibble()I
    .locals 4

    .line 240
    iget-wide v0, p0, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->literal:J

    const-wide/16 v2, -0x8

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide/16 v2, 0x7

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    long-to-int v0, v0

    and-int/lit8 v0, v0, 0xf

    return v0

    .line 241
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Literal out of range: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->literal:J

    invoke-static {v2, v3}, Lcom/s1243808733/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/s1243808733/android/dex/DexException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final getLiteralUnit()S
    .locals 6

    .line 216
    iget-wide v0, p0, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->literal:J

    long-to-int v2, v0

    int-to-short v2, v2

    int-to-long v4, v2

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    return v2

    .line 217
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Literal out of range: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->literal:J

    invoke-static {v2, v3}, Lcom/s1243808733/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/s1243808733/android/dex/DexException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final getOpcode()I
    .locals 1

    .line 124
    iget v0, p0, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->opcode:I

    return v0
.end method

.method public final getOpcodeUnit()S
    .locals 1

    .line 131
    iget v0, p0, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->opcode:I

    int-to-short v0, v0

    return v0
.end method

.method public getProtoIndex()S
    .locals 2

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
    .locals 4

    .line 274
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getRegisterCount()I

    move-result v0

    const/high16 v1, -0x10000

    and-int/2addr v1, v0

    if-nez v1, :cond_0

    int-to-short v0, v0

    return v0

    .line 277
    :cond_0
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
    .locals 1

    .line 153
    iget v0, p0, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->target:I

    return v0
.end method

.method public final getTarget(I)I
    .locals 1

    .line 160
    iget v0, p0, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->target:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public final getTargetByte(I)I
    .locals 3

    .line 185
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getTarget(I)I

    move-result v0

    int-to-byte v1, v0

    if-ne v0, v1, :cond_0

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 188
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Target out of range: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Hex;->s4(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/s1243808733/android/dex/DexException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getTargetUnit(I)S
    .locals 3

    .line 169
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getTarget(I)I

    move-result v0

    int-to-short v1, v0

    if-ne v0, v1, :cond_0

    return v1

    .line 172
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Target out of range: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Hex;->s4(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/s1243808733/android/dex/DexException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract withIndex(I)Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;
.end method

.method public withProtoIndex(II)Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;
    .locals 2

    .line 481
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
