.class public Lcom/s1243808733/android/dx/io/OpcodeInfo$Info;
.super Ljava/lang/Object;
.source "OpcodeInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dx/io/OpcodeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Info"
.end annotation


# instance fields
.field private final format:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

.field private final indexType:Lcom/s1243808733/android/dx/io/IndexType;

.field private final name:Ljava/lang/String;

.field private final opcode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;Lcom/s1243808733/android/dx/io/IndexType;)V
    .registers 5

    .line 1272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1273
    iput p1, p0, Lcom/s1243808733/android/dx/io/OpcodeInfo$Info;->opcode:I

    .line 1274
    iput-object p2, p0, Lcom/s1243808733/android/dx/io/OpcodeInfo$Info;->name:Ljava/lang/String;

    .line 1275
    iput-object p3, p0, Lcom/s1243808733/android/dx/io/OpcodeInfo$Info;->format:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    .line 1276
    iput-object p4, p0, Lcom/s1243808733/android/dx/io/OpcodeInfo$Info;->indexType:Lcom/s1243808733/android/dx/io/IndexType;

    return-void
.end method


# virtual methods
.method public getFormat()Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;
    .registers 2

    .line 1288
    iget-object v0, p0, Lcom/s1243808733/android/dx/io/OpcodeInfo$Info;->format:Lcom/s1243808733/android/dx/io/instructions/InstructionCodec;

    return-object v0
.end method

.method public getIndexType()Lcom/s1243808733/android/dx/io/IndexType;
    .registers 2

    .line 1292
    iget-object v0, p0, Lcom/s1243808733/android/dx/io/OpcodeInfo$Info;->indexType:Lcom/s1243808733/android/dx/io/IndexType;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 1284
    iget-object v0, p0, Lcom/s1243808733/android/dx/io/OpcodeInfo$Info;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOpcode()I
    .registers 2

    .line 1280
    iget v0, p0, Lcom/s1243808733/android/dx/io/OpcodeInfo$Info;->opcode:I

    return v0
.end method
