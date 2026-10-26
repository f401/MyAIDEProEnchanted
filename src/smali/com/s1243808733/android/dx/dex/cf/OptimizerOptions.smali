.class public Lcom/s1243808733/android/dx/dex/cf/OptimizerOptions;
.super Ljava/lang/Object;
.source "OptimizerOptions.java"


# instance fields
.field private dontOptimizeList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private optimizeList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private optimizeListsLoaded:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static loadStringsFromFile(Ljava/lang/String;)Ljava/util/HashSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 90
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 93
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 94
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 98
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 99
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error with optimize list: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 102
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0
.end method


# virtual methods
.method public compareOptimizerStep(Lcom/s1243808733/android/dx/rop/code/RopMethod;IZLcom/s1243808733/android/dx/dex/cf/CfOptions;Lcom/s1243808733/android/dx/rop/code/TranslationAdvice;Lcom/s1243808733/android/dx/rop/code/RopMethod;)V
    .locals 16

    .line 128
    const-class v2, Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;

    invoke-static {v2}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v7

    .line 131
    sget-object v2, Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;->CONST_COLLECTOR:Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;

    invoke-virtual {v7, v2}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    .line 133
    move-object/from16 v0, p4

    iget-boolean v5, v0, Lcom/s1243808733/android/dx/dex/cf/CfOptions;->localInfo:Z

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v6, p5

    .line 134
    invoke-static/range {v2 .. v7}, Lcom/s1243808733/android/dx/ssa/Optimizer;->optimize(Lcom/s1243808733/android/dx/rop/code/RopMethod;IZZLcom/s1243808733/android/dx/rop/code/TranslationAdvice;Ljava/util/EnumSet;)Lcom/s1243808733/android/dx/rop/code/RopMethod;

    move-result-object v2

    .line 138
    invoke-virtual/range {p6 .. p6}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->getBlocks()Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->getEffectiveInstructionCount()I

    move-result v3

    .line 140
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->getBlocks()Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->getEffectiveInstructionCount()I

    move-result v4

    .line 142
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 145
    invoke-virtual/range {p6 .. p6}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->getBlocks()Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->getRegCount()I

    move-result v6

    .line 146
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->getBlocks()Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->getRegCount()I

    move-result v7

    .line 147
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->getBlocks()Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->getRegCount()I

    move-result v8

    .line 148
    invoke-virtual/range {p6 .. p6}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->getBlocks()Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    move-result-object v9

    invoke-virtual {v9}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->getRegCount()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    .line 149
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->getBlocks()Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->getRegCount()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v8, v2

    float-to-double v8, v2

    .line 147
    sub-int v2, v4, v3

    int-to-float v2, v2

    int-to-float v10, v4

    div-float/2addr v2, v10

    float-to-double v10, v2

    .line 151
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    const-string v2, "optimize step regs:(%d/%d/%.2f%%) insns:(%d/%d/%.2f%%)\n"

    const/4 v12, 0x6

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v12, v13

    const/4 v6, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v12, v6

    const/4 v6, 0x2

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    mul-double/2addr v8, v14

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v12, v6

    const/4 v6, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v12, v6

    const/4 v3, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v12, v3

    const/4 v3, 0x5

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v12, v3

    invoke-virtual {v5, v2, v12}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    return-void
.end method

.method public loadOptimizeLists(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 58
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/dex/cf/OptimizerOptions;->optimizeListsLoaded:Z

    if-eqz v0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 58
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_4

    .line 67
    :cond_1
    if-eqz p1, :cond_2

    .line 72
    invoke-static {p1}, Lcom/s1243808733/android/dx/dex/cf/OptimizerOptions;->loadStringsFromFile(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/cf/OptimizerOptions;->optimizeList:Ljava/util/HashSet;

    :cond_2
    if-eqz p2, :cond_3

    .line 76
    invoke-static {p2}, Lcom/s1243808733/android/dx/dex/cf/OptimizerOptions;->loadStringsFromFile(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/cf/OptimizerOptions;->dontOptimizeList:Ljava/util/HashSet;

    .line 79
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/s1243808733/android/dx/dex/cf/OptimizerOptions;->optimizeListsLoaded:Z

    goto :goto_0

    .line 67
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "optimize and don\'t optimize lists  are mutually exclusive."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public shouldOptimize(Ljava/lang/String;)Z
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/cf/OptimizerOptions;->optimizeList:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 172
    :goto_0
    return v0

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/cf/OptimizerOptions;->dontOptimizeList:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    .line 172
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
