.class public Lcom/s1243808733/android/dx/ssa/Optimizer;
.super Ljava/lang/Object;
.source "Optimizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;
    }
.end annotation


# static fields
.field private static advice:Lcom/s1243808733/android/dx/rop/code/TranslationAdvice; = null

.field private static preserveLocals:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debugDeadCodeRemover(Lcom/s1243808733/android/dx/rop/code/RopMethod;IZZLcom/s1243808733/android/dx/rop/code/TranslationAdvice;)Lcom/s1243808733/android/dx/ssa/SsaMethod;
    .locals 1

    .line 230
    sput-boolean p3, Lcom/s1243808733/android/dx/ssa/Optimizer;->preserveLocals:Z

    .line 231
    sput-object p4, Lcom/s1243808733/android/dx/ssa/Optimizer;->advice:Lcom/s1243808733/android/dx/rop/code/TranslationAdvice;

    .line 233
    invoke-static {p0, p1, p2}, Lcom/s1243808733/android/dx/ssa/SsaConverter;->convertToSsaMethod(Lcom/s1243808733/android/dx/rop/code/RopMethod;IZ)Lcom/s1243808733/android/dx/ssa/SsaMethod;

    move-result-object v0

    .line 234
    invoke-static {v0}, Lcom/s1243808733/android/dx/ssa/DeadCodeRemover;->process(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V

    return-object v0
.end method

.method public static debugEdgeSplit(Lcom/s1243808733/android/dx/rop/code/RopMethod;IZZLcom/s1243808733/android/dx/rop/code/TranslationAdvice;)Lcom/s1243808733/android/dx/ssa/SsaMethod;
    .locals 1

    .line 198
    sput-boolean p3, Lcom/s1243808733/android/dx/ssa/Optimizer;->preserveLocals:Z

    .line 199
    sput-object p4, Lcom/s1243808733/android/dx/ssa/Optimizer;->advice:Lcom/s1243808733/android/dx/rop/code/TranslationAdvice;

    .line 201
    invoke-static {p0, p1, p2}, Lcom/s1243808733/android/dx/ssa/SsaConverter;->testEdgeSplit(Lcom/s1243808733/android/dx/rop/code/RopMethod;IZ)Lcom/s1243808733/android/dx/ssa/SsaMethod;

    move-result-object v0

    return-object v0
.end method

.method public static debugNoRegisterAllocation(Lcom/s1243808733/android/dx/rop/code/RopMethod;IZZLcom/s1243808733/android/dx/rop/code/TranslationAdvice;Ljava/util/EnumSet;)Lcom/s1243808733/android/dx/ssa/SsaMethod;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/rop/code/RopMethod;",
            "IZZ",
            "Lcom/s1243808733/android/dx/rop/code/TranslationAdvice;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;",
            ">;)",
            "Lcom/s1243808733/android/dx/ssa/SsaMethod;"
        }
    .end annotation

    .line 245
    sput-boolean p3, Lcom/s1243808733/android/dx/ssa/Optimizer;->preserveLocals:Z

    .line 246
    sput-object p4, Lcom/s1243808733/android/dx/ssa/Optimizer;->advice:Lcom/s1243808733/android/dx/rop/code/TranslationAdvice;

    .line 248
    invoke-static {p0, p1, p2}, Lcom/s1243808733/android/dx/ssa/SsaConverter;->convertToSsaMethod(Lcom/s1243808733/android/dx/rop/code/RopMethod;IZ)Lcom/s1243808733/android/dx/ssa/SsaMethod;

    move-result-object v0

    .line 250
    invoke-static {v0, p5}, Lcom/s1243808733/android/dx/ssa/Optimizer;->runSsaFormSteps(Lcom/s1243808733/android/dx/ssa/SsaMethod;Ljava/util/EnumSet;)V

    .line 252
    invoke-static {v0}, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer;->constructInterferenceGraph(Lcom/s1243808733/android/dx/ssa/SsaMethod;)Lcom/s1243808733/android/dx/ssa/back/InterferenceGraph;

    return-object v0
.end method

.method public static debugPhiPlacement(Lcom/s1243808733/android/dx/rop/code/RopMethod;IZZLcom/s1243808733/android/dx/rop/code/TranslationAdvice;)Lcom/s1243808733/android/dx/ssa/SsaMethod;
    .locals 1

    .line 208
    sput-boolean p3, Lcom/s1243808733/android/dx/ssa/Optimizer;->preserveLocals:Z

    .line 209
    sput-object p4, Lcom/s1243808733/android/dx/ssa/Optimizer;->advice:Lcom/s1243808733/android/dx/rop/code/TranslationAdvice;

    .line 211
    invoke-static {p0, p1, p2}, Lcom/s1243808733/android/dx/ssa/SsaConverter;->testPhiPlacement(Lcom/s1243808733/android/dx/rop/code/RopMethod;IZ)Lcom/s1243808733/android/dx/ssa/SsaMethod;

    move-result-object v0

    return-object v0
.end method

.method public static debugRenaming(Lcom/s1243808733/android/dx/rop/code/RopMethod;IZZLcom/s1243808733/android/dx/rop/code/TranslationAdvice;)Lcom/s1243808733/android/dx/ssa/SsaMethod;
    .locals 1

    .line 218
    sput-boolean p3, Lcom/s1243808733/android/dx/ssa/Optimizer;->preserveLocals:Z

    .line 219
    sput-object p4, Lcom/s1243808733/android/dx/ssa/Optimizer;->advice:Lcom/s1243808733/android/dx/rop/code/TranslationAdvice;

    .line 221
    invoke-static {p0, p1, p2}, Lcom/s1243808733/android/dx/ssa/SsaConverter;->convertToSsaMethod(Lcom/s1243808733/android/dx/rop/code/RopMethod;IZ)Lcom/s1243808733/android/dx/ssa/SsaMethod;

    move-result-object v0

    return-object v0
.end method

.method public static getAdvice()Lcom/s1243808733/android/dx/rop/code/TranslationAdvice;
    .locals 1

    .line 52
    sget-object v0, Lcom/s1243808733/android/dx/ssa/Optimizer;->advice:Lcom/s1243808733/android/dx/rop/code/TranslationAdvice;

    return-object v0
.end method

.method public static getPreserveLocals()Z
    .locals 1

    .line 45
    sget-boolean v0, Lcom/s1243808733/android/dx/ssa/Optimizer;->preserveLocals:Z

    return v0
.end method

.method public static optimize(Lcom/s1243808733/android/dx/rop/code/RopMethod;IZZLcom/s1243808733/android/dx/rop/code/TranslationAdvice;)Lcom/s1243808733/android/dx/rop/code/RopMethod;
    .locals 6

    .line 72
    const-class v0, Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/s1243808733/android/dx/ssa/Optimizer;->optimize(Lcom/s1243808733/android/dx/rop/code/RopMethod;IZZLcom/s1243808733/android/dx/rop/code/TranslationAdvice;Ljava/util/EnumSet;)Lcom/s1243808733/android/dx/rop/code/RopMethod;

    move-result-object v0

    return-object v0
.end method

.method public static optimize(Lcom/s1243808733/android/dx/rop/code/RopMethod;IZZLcom/s1243808733/android/dx/rop/code/TranslationAdvice;Ljava/util/EnumSet;)Lcom/s1243808733/android/dx/rop/code/RopMethod;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/rop/code/RopMethod;",
            "IZZ",
            "Lcom/s1243808733/android/dx/rop/code/TranslationAdvice;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;",
            ">;)",
            "Lcom/s1243808733/android/dx/rop/code/RopMethod;"
        }
    .end annotation

    .line 95
    sput-boolean p3, Lcom/s1243808733/android/dx/ssa/Optimizer;->preserveLocals:Z

    .line 96
    sput-object p4, Lcom/s1243808733/android/dx/ssa/Optimizer;->advice:Lcom/s1243808733/android/dx/rop/code/TranslationAdvice;

    .line 98
    invoke-static {p0, p1, p2}, Lcom/s1243808733/android/dx/ssa/SsaConverter;->convertToSsaMethod(Lcom/s1243808733/android/dx/rop/code/RopMethod;IZ)Lcom/s1243808733/android/dx/ssa/SsaMethod;

    move-result-object v0

    .line 99
    invoke-static {v0, p5}, Lcom/s1243808733/android/dx/ssa/Optimizer;->runSsaFormSteps(Lcom/s1243808733/android/dx/ssa/SsaMethod;Ljava/util/EnumSet;)V

    .line 101
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/ssa/back/SsaToRop;->convertToRopMethod(Lcom/s1243808733/android/dx/ssa/SsaMethod;Z)Lcom/s1243808733/android/dx/rop/code/RopMethod;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->getBlocks()Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->getRegCount()I

    move-result v1

    sget-object v2, Lcom/s1243808733/android/dx/ssa/Optimizer;->advice:Lcom/s1243808733/android/dx/rop/code/TranslationAdvice;

    .line 104
    invoke-interface {v2}, Lcom/s1243808733/android/dx/rop/code/TranslationAdvice;->getMaxOptimalRegisterCount()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 106
    invoke-static {p0, p1, p2, p5}, Lcom/s1243808733/android/dx/ssa/Optimizer;->optimizeMinimizeRegisters(Lcom/s1243808733/android/dx/rop/code/RopMethod;IZLjava/util/EnumSet;)Lcom/s1243808733/android/dx/rop/code/RopMethod;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static optimizeMinimizeRegisters(Lcom/s1243808733/android/dx/rop/code/RopMethod;IZLjava/util/EnumSet;)Lcom/s1243808733/android/dx/rop/code/RopMethod;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/rop/code/RopMethod;",
            "IZ",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;",
            ">;)",
            "Lcom/s1243808733/android/dx/rop/code/RopMethod;"
        }
    .end annotation

    .line 133
    invoke-static {p0, p1, p2}, Lcom/s1243808733/android/dx/ssa/SsaConverter;->convertToSsaMethod(Lcom/s1243808733/android/dx/rop/code/RopMethod;IZ)Lcom/s1243808733/android/dx/ssa/SsaMethod;

    move-result-object v0

    .line 136
    invoke-virtual {p3}, Ljava/util/EnumSet;->clone()Ljava/util/EnumSet;

    move-result-object v1

    .line 142
    sget-object v2, Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;->CONST_COLLECTOR:Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    .line 144
    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/ssa/Optimizer;->runSsaFormSteps(Lcom/s1243808733/android/dx/ssa/SsaMethod;Ljava/util/EnumSet;)V

    .line 146
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/ssa/back/SsaToRop;->convertToRopMethod(Lcom/s1243808733/android/dx/ssa/SsaMethod;Z)Lcom/s1243808733/android/dx/rop/code/RopMethod;

    move-result-object v0

    return-object v0
.end method

.method private static runSsaFormSteps(Lcom/s1243808733/android/dx/ssa/SsaMethod;Ljava/util/EnumSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/ssa/SsaMethod;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    .line 154
    sget-object v0, Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;->MOVE_PARAM_COMBINER:Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-static {p0}, Lcom/s1243808733/android/dx/ssa/MoveParamCombiner;->process(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V

    .line 158
    :cond_0
    sget-object v0, Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;->SCCP:Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 159
    invoke-static {p0}, Lcom/s1243808733/android/dx/ssa/SCCP;->process(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V

    .line 160
    invoke-static {p0}, Lcom/s1243808733/android/dx/ssa/DeadCodeRemover;->process(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V

    move v0, v1

    .line 164
    :goto_0
    sget-object v2, Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;->LITERAL_UPGRADE:Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;

    invoke-virtual {p1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 165
    invoke-static {p0}, Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader;->process(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V

    .line 166
    invoke-static {p0}, Lcom/s1243808733/android/dx/ssa/DeadCodeRemover;->process(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V

    move v0, v1

    .line 173
    :cond_1
    sget-object v2, Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;->ESCAPE_ANALYSIS:Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;

    invoke-virtual {p1, v2}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    .line 174
    sget-object v2, Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;->ESCAPE_ANALYSIS:Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;

    invoke-virtual {p1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 175
    invoke-static {p0}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->process(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V

    .line 176
    invoke-static {p0}, Lcom/s1243808733/android/dx/ssa/DeadCodeRemover;->process(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V

    move v0, v1

    .line 180
    :cond_2
    sget-object v2, Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;->CONST_COLLECTOR:Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;

    invoke-virtual {p1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 181
    invoke-static {p0}, Lcom/s1243808733/android/dx/ssa/ConstCollector;->process(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V

    .line 182
    invoke-static {p0}, Lcom/s1243808733/android/dx/ssa/DeadCodeRemover;->process(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V

    .line 180
    :goto_1
    if-eqz v1, :cond_3

    .line 188
    invoke-static {p0}, Lcom/s1243808733/android/dx/ssa/DeadCodeRemover;->process(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V

    .line 191
    :cond_3
    invoke-static {p0}, Lcom/s1243808733/android/dx/ssa/PhiTypeResolver;->process(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V

    return-void

    .line 160
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    move v1, v0

    goto :goto_1
.end method
