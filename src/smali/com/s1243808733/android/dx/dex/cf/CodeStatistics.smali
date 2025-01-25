.class public final Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;
.super Ljava/lang/Object;
.source "CodeStatistics.java"


# static fields
.field private static final DEBUG:Z = false


# instance fields
.field public dexRunningDeltaInsns:I

.field public dexRunningDeltaRegisters:I

.field public dexRunningTotalInsns:I

.field public runningDeltaInsns:I

.field public runningDeltaRegisters:I

.field public runningOriginalBytes:I

.field public runningTotalInsns:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;->runningDeltaRegisters:I

    .line 41
    iput v0, p0, Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;->runningDeltaInsns:I

    .line 44
    iput v0, p0, Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;->runningTotalInsns:I

    .line 50
    iput v0, p0, Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;->dexRunningDeltaRegisters:I

    .line 57
    iput v0, p0, Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;->dexRunningDeltaInsns:I

    .line 63
    iput v0, p0, Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;->dexRunningTotalInsns:I

    .line 66
    iput v0, p0, Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;->runningOriginalBytes:I

    return-void
.end method


# virtual methods
.method public dumpStatistics(Ljava/io/PrintStream;)V
    .registers 14

    .line 144
    iget v0, p0, Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;->runningDeltaInsns:I

    .line 146
    iget v1, p0, Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;->runningTotalInsns:I

    .line 147
    int-to-float v2, v0

    .line 149
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v3, v1

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    .line 148
    iget v4, p0, Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;->runningDeltaRegisters:I

    .line 150
    nop

    .line 144
    const/4 v5, 0x4

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v6, v1

    const-wide/high16 v8, 0x4059000000000000L  # 100.0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v8

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v6, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x3

    aput-object v0, v6, v3

    const-string v0, "Optimizer Delta Rop Insns: %d total: %d (%.2f%%) Delta Registers: %d\n"

    invoke-virtual {p1, v0, v6}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 152
    iget v0, p0, Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;->dexRunningDeltaInsns:I

    .line 154
    iget v4, p0, Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;->dexRunningTotalInsns:I

    .line 155
    int-to-float v6, v0

    .line 158
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v10

    add-int/2addr v10, v4

    int-to-float v10, v10

    div-float/2addr v6, v10

    float-to-double v10, v6

    .line 156
    iget v6, p0, Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;->dexRunningDeltaRegisters:I

    .line 159
    nop

    .line 152
    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v8

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v3

    const-string v0, "Optimizer Delta Dex Insns: Insns: %d total: %d (%.2f%%) Delta Registers: %d\n"

    invoke-virtual {p1, v0, v5}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 161
    iget v0, p0, Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;->runningOriginalBytes:I

    .line 162
    nop

    .line 161
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v7

    const-string v0, "Original bytecode byte count: %d\n"

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    return-void
.end method

.method public updateDexStatistics(Lcom/s1243808733/android/dx/dex/code/DalvCode;Lcom/s1243808733/android/dx/dex/code/DalvCode;)V
    .registers 6

    .line 95
    iget v0, p0, Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;->dexRunningDeltaInsns:I

    .line 96
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/dex/code/DalvCode;->getInsns()Lcom/s1243808733/android/dx/dex/code/DalvInsnList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;->codeSize()I

    move-result v1

    .line 97
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/DalvCode;->getInsns()Lcom/s1243808733/android/dx/dex/code/DalvInsnList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;->codeSize()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;->dexRunningDeltaInsns:I

    .line 99
    iget v0, p0, Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;->dexRunningDeltaRegisters:I

    .line 100
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/dex/code/DalvCode;->getInsns()Lcom/s1243808733/android/dx/dex/code/DalvInsnList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;->getRegistersSize()I

    move-result v1

    .line 101
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/DalvCode;->getInsns()Lcom/s1243808733/android/dx/dex/code/DalvInsnList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;->getRegistersSize()I

    move-result p1

    sub-int/2addr v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;->dexRunningDeltaRegisters:I

    .line 103
    iget p1, p0, Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;->dexRunningTotalInsns:I

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/dex/code/DalvCode;->getInsns()Lcom/s1243808733/android/dx/dex/code/DalvInsnList;

    move-result-object p2

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;->codeSize()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;->dexRunningTotalInsns:I

    return-void
.end method

.method public updateOriginalByteCount(I)V
    .registers 3

    .line 74
    iget v0, p0, Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;->runningOriginalBytes:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;->runningOriginalBytes:I

    return-void
.end method

.method public updateRopStatistics(Lcom/s1243808733/android/dx/rop/code/RopMethod;Lcom/s1243808733/android/dx/rop/code/RopMethod;)V
    .registers 6

    .line 115
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->getBlocks()Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->getEffectiveInstructionCount()I

    move-result v0

    .line 116
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->getBlocks()Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->getRegCount()I

    move-result p1

    .line 127
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->getBlocks()Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->getEffectiveInstructionCount()I

    move-result v1

    .line 129
    iget v2, p0, Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;->runningDeltaInsns:I

    sub-int v0, v1, v0

    add-int/2addr v2, v0

    iput v2, p0, Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;->runningDeltaInsns:I

    .line 132
    iget v0, p0, Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;->runningDeltaRegisters:I

    .line 133
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->getBlocks()Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    move-result-object p2

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->getRegCount()I

    move-result p2

    sub-int/2addr p2, p1

    add-int/2addr v0, p2

    iput v0, p0, Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;->runningDeltaRegisters:I

    .line 135
    iget p1, p0, Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;->runningTotalInsns:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;->runningTotalInsns:I

    return-void
.end method
