.class public final Lcom/s1243808733/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;
.super Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;
.source "FillArrayDataPayloadDecodedInstruction.java"


# instance fields
.field private final data:Ljava/lang/Object;

.field private final elementWidth:I

.field private final size:I


# direct methods
.method private constructor <init>(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;ILjava/lang/Object;II)V
    .registers 14

    .line 40
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;-><init>(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;IILcom/s1243808733/android/dx/io/IndexType;IJ)V

    .line 42
    iput-object p3, p0, Lcom/s1243808733/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;->data:Ljava/lang/Object;

    .line 43
    iput p4, p0, Lcom/s1243808733/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;->size:I

    .line 44
    iput p5, p0, Lcom/s1243808733/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;->elementWidth:I

    return-void
.end method

.method public constructor <init>(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;I[B)V
    .registers 10

    .line 52
    array-length v4, p3

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;-><init>(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;I[I)V
    .registers 10

    .line 68
    array-length v4, p3

    const/4 v5, 0x4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;-><init>(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;I[J)V
    .registers 10

    .line 76
    array-length v4, p3

    const/16 v5, 0x8

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;-><init>(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;I[S)V
    .registers 10

    .line 60
    array-length v4, p3

    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;-><init>(Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/s1243808733/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getElementWidthUnit()S
    .registers 2

    .line 86
    iget v0, p0, Lcom/s1243808733/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;->elementWidth:I

    int-to-short v0, v0

    return v0
.end method

.method public getRegisterCount()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getSize()I
    .registers 2

    .line 90
    iget v0, p0, Lcom/s1243808733/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;->size:I

    return v0
.end method

.method public withIndex(I)Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;
    .registers 3

    .line 100
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "no index in instruction"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
