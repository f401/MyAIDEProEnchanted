.class public Lcom/s1243808733/android/dx/dex/cf/OptimizerOptions;
.super Ljava/lang/Object;
.source "OptimizerOptions.java"


# instance fields
.field private dontOptimizeList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private optimizeList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private optimizeListsLoaded:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static loadStringsFromFile(Ljava/lang/String;)Ljava/util/HashSet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 90
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 93
    :try_start_5
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 94
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 98
    :goto_f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_19

    .line 99
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 102
    :cond_19
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_1c} :catch_1d

    return-object v0

    :catch_1d
    move-exception v0

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error with optimize list: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_33

    :goto_32
    throw p0

    :goto_33
    goto :goto_32
.end method


# virtual methods
.method public compareOptimizerStep(Lcom/s1243808733/android/dx/rop/code/RopMethod;IZLcom/s1243808733/android/dx/dex/cf/CfOptions;Lcom/s1243808733/android/dx/rop/code/TranslationAdvice;Lcom/s1243808733/android/dx/rop/code/RopMethod;)V
    .registers 14

    .line 128
    const-class v0, Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v6

    .line 131
    sget-object v0, Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;->CONST_COLLECTOR:Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;

    invoke-virtual {v6, v0}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    .line 133
    iget-boolean v4, p4, Lcom/s1243808733/android/dx/dex/cf/CfOptions;->localInfo:Z

    .line 134
    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p5

    invoke-static/range {v1 .. v6}, Lcom/s1243808733/android/dx/ssa/Optimizer;->optimize(Lcom/s1243808733/android/dx/rop/code/RopMethod;IZZLcom/s1243808733/android/dx/rop/code/TranslationAdvice;Ljava/util/EnumSet;)Lcom/s1243808733/android/dx/rop/code/RopMethod;

    move-result-object p1

    .line 138
    invoke-virtual {p6}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->getBlocks()Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    move-result-object p2

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->getEffectiveInstructionCount()I

    move-result p2

    .line 140
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->getBlocks()Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    move-result-object p3

    invoke-virtual {p3}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->getEffectiveInstructionCount()I

    move-result p3

    .line 142
    sget-object p4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 145
    invoke-virtual {p6}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->getBlocks()Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    move-result-object p5

    invoke-virtual {p5}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->getRegCount()I

    move-result p5

    .line 146
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->getBlocks()Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->getRegCount()I

    move-result v0

    .line 147
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->getBlocks()Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->getRegCount()I

    move-result v1

    .line 148
    invoke-virtual {p6}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->getBlocks()Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    move-result-object p6

    invoke-virtual {p6}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->getRegCount()I

    move-result p6

    sub-int/2addr v1, p6

    int-to-float p6, v1

    .line 149
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->getBlocks()Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->getRegCount()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p6, p1

    float-to-double v1, p6

    .line 147
    nop

    .line 150
    sub-int p1, p3, p2

    int-to-float p1, p1

    int-to-float p6, p3

    div-float/2addr p1, p6

    float-to-double v3, p1

    .line 151
    nop

    .line 142
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p6, 0x0

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    aput-object p5, p1, p6

    const/4 p5, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    aput-object p6, p1, p5

    const-wide/high16 p5, 0x4059000000000000L  # 100.0

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, p5

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p1, v1

    const/4 v0, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const/4 p2, 0x4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, p2

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, p5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const/4 p3, 0x5

    aput-object p2, p1, p3

    const-string p2, "optimize step regs:(%d/%d/%.2f%%) insns:(%d/%d/%.2f%%)\n"

    invoke-virtual {p4, p2, p1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    return-void
.end method

.method public loadOptimizeLists(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 58
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/dex/cf/OptimizerOptions;->optimizeListsLoaded:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_12

    if-nez p2, :cond_a

    goto :goto_12

    .line 67
    :cond_a
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "optimize and don\'t optimize lists  are mutually exclusive."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_12
    :goto_12
    if-eqz p1, :cond_1a

    .line 72
    invoke-static {p1}, Lcom/s1243808733/android/dx/dex/cf/OptimizerOptions;->loadStringsFromFile(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object p1

    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/cf/OptimizerOptions;->optimizeList:Ljava/util/HashSet;

    :cond_1a
    if-eqz p2, :cond_22

    .line 76
    invoke-static {p2}, Lcom/s1243808733/android/dx/dex/cf/OptimizerOptions;->loadStringsFromFile(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object p1

    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/cf/OptimizerOptions;->dontOptimizeList:Ljava/util/HashSet;

    .line 79
    :cond_22
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/s1243808733/android/dx/dex/cf/OptimizerOptions;->optimizeListsLoaded:Z

    return-void
.end method

.method public shouldOptimize(Ljava/lang/String;)Z
    .registers 4

    .line 162
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/cf/OptimizerOptions;->optimizeList:Ljava/util/HashSet;

    if-eqz v0, :cond_9

    .line 163
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 171
    :cond_9
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/cf/OptimizerOptions;->dontOptimizeList:Ljava/util/HashSet;

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    .line 172
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    :cond_14
    return v1
.end method
