.class public final Lcom/s1243808733/android/dx/io/instructions/PackedSwitchPayloadDecodedInstruction;
.super Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;
.source "PackedSwitchPayloadDecodedInstruction.java"


# instance fields
.field private final firstKey:I

.field private final targets:[I


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;II[I)V
    .registers 13

    .line 39
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;-><init>(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;IILcom/s1243808733/android/dx/io/IndexType;IJ)V

    .line 41
    iput p3, p0, Lcom/s1243808733/android/dx/io/instructions/PackedSwitchPayloadDecodedInstruction;->firstKey:I

    .line 42
    iput-object p4, p0, Lcom/s1243808733/android/dx/io/instructions/PackedSwitchPayloadDecodedInstruction;->targets:[I

    return-void
.end method


# virtual methods
.method public getFirstKey()I
    .registers 2

    .line 52
    iget v0, p0, Lcom/s1243808733/android/dx/io/instructions/PackedSwitchPayloadDecodedInstruction;->firstKey:I

    return v0
.end method

.method public getRegisterCount()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getTargets()[I
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/s1243808733/android/dx/io/instructions/PackedSwitchPayloadDecodedInstruction;->targets:[I

    return-object v0
.end method

.method public withIndex(I)Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;
    .registers 3

    .line 62
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "no index in instruction"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
