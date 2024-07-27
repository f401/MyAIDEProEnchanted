.class public final Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;
.super Ljava/lang/Object;
.source "CodeStatistics.java"


# static fields
.field private static final DEBUG:Z


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

    const/4 v0, 0x0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;->runningDeltaRegisters:I

    iput v0, p0, Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;->runningDeltaInsns:I

    iput v0, p0, Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;->runningTotalInsns:I

    iput v0, p0, Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;->dexRunningDeltaRegisters:I

    iput v0, p0, Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;->dexRunningDeltaInsns:I

    iput v0, p0, Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;->dexRunningTotalInsns:I

    iput v0, p0, Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;->runningOriginalBytes:I

    return-void
.end method


# virtual methods
.method public dumpStatistics(Ljava/io/PrintStream;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintStream;",
            ")V"
        }
    .end annotation

    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 144
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Optimizer Delta Rop Insns: %d total: %d "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "(%.2f%%) Delta Registers: %d\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v12, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;->runningDeltaInsns:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;->runningTotalInsns:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v9

    new-instance v2, Ljava/lang/Double;

    iget v3, p0, Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;->runningDeltaInsns:I

    int-to-float v3, v3

    iget v4, p0, Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;->runningTotalInsns:I

    iget v5, p0, Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;->runningDeltaInsns:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-double v4, v3

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    invoke-direct {v2, v4, v5}, Ljava/lang/Double;-><init>(D)V

    aput-object v2, v1, v10

    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;->runningDeltaRegisters:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v11

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 152
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Optimizer Delta Dex Insns: Insns: %d total: %d "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "(%.2f%%) Delta Registers: %d\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v12, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;->dexRunningDeltaInsns:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;->dexRunningTotalInsns:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v9

    new-instance v2, Ljava/lang/Double;

    iget v3, p0, Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;->dexRunningDeltaInsns:I

    int-to-float v3, v3

    iget v4, p0, Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;->dexRunningTotalInsns:I

    iget v5, p0, Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;->dexRunningDeltaInsns:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-double v4, v3

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    invoke-direct {v2, v4, v5}, Ljava/lang/Double;-><init>(D)V

    aput-object v2, v1, v10

    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;->dexRunningDeltaRegisters:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v11

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 161
    const-string v0, "Original bytecode byte count: %d\n"

    new-array v1, v9, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;->runningOriginalBytes:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v8

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    return-void
.end method

.method public updateDexStatistics(Lcom/s1243808733/android/dx/dex/code/DalvCode;Lcom/s1243808733/android/dx/dex/code/DalvCode;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/dex/code/DalvCode;",
            "Lcom/s1243808733/android/dx/dex/code/DalvCode;",
            ")V"
        }
    .end annotation

    .line 95
    iget v0, p0, Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;->dexRunningDeltaInsns:I

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/dex/code/DalvCode;->getInsns()Lcom/s1243808733/android/dx/dex/code/DalvInsnList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;->codeSize()I

    move-result v1

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/DalvCode;->getInsns()Lcom/s1243808733/android/dx/dex/code/DalvInsnList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;->codeSize()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;->dexRunningDeltaInsns:I

    .line 99
    iget v0, p0, Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;->dexRunningDeltaRegisters:I

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/dex/code/DalvCode;->getInsns()Lcom/s1243808733/android/dx/dex/code/DalvInsnList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;->getRegistersSize()I

    move-result v1

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/DalvCode;->getInsns()Lcom/s1243808733/android/dx/dex/code/DalvInsnList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;->getRegistersSize()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;->dexRunningDeltaRegisters:I

    .line 103
    iget v0, p0, Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;->dexRunningTotalInsns:I

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/dex/code/DalvCode;->getInsns()Lcom/s1243808733/android/dx/dex/code/DalvInsnList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;->codeSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;->dexRunningTotalInsns:I

    return-void
.end method

.method public updateOriginalByteCount(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 74
    iget v0, p0, Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;->runningOriginalBytes:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;->runningOriginalBytes:I

    return-void
.end method

.method public updateRopStatistics(Lcom/s1243808733/android/dx/rop/code/RopMethod;Lcom/s1243808733/android/dx/rop/code/RopMethod;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/rop/code/RopMethod;",
            "Lcom/s1243808733/android/dx/rop/code/RopMethod;",
            ")V"
        }
    .end annotation

    .line 114
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->getBlocks()Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->getEffectiveInstructionCount()I

    move-result v0

    .line 116
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->getBlocks()Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->getRegCount()I

    move-result v1

    .line 126
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->getBlocks()Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->getEffectiveInstructionCount()I

    move-result v2

    .line 129
    sub-int v0, v2, v0

    iget v3, p0, Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;->runningDeltaInsns:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;->runningDeltaInsns:I

    .line 132
    iget v0, p0, Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;->runningDeltaRegisters:I

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->getBlocks()Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->getRegCount()I

    move-result v3

    sub-int v1, v3, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;->runningDeltaRegisters:I

    .line 135
    iget v0, p0, Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;->runningTotalInsns:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/s1243808733/android/dx/dex/cf/CodeStatistics;->runningTotalInsns:I

    return-void
.end method
