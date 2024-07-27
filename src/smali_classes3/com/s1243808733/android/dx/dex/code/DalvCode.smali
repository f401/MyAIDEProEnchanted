.class public final Lcom/s1243808733/android/dx/dex/code/DalvCode;
.super Ljava/lang/Object;
.source "DalvCode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/android/dx/dex/code/DalvCode$AssignIndicesCallback;
    }
.end annotation


# instance fields
.field private catches:Lcom/s1243808733/android/dx/dex/code/CatchTable;

.field private insns:Lcom/s1243808733/android/dx/dex/code/DalvInsnList;

.field private locals:Lcom/s1243808733/android/dx/dex/code/LocalList;

.field private final positionInfo:I

.field private positions:Lcom/s1243808733/android/dx/dex/code/PositionList;

.field private unprocessedCatches:Lcom/s1243808733/android/dx/dex/code/CatchBuilder;

.field private unprocessedInsns:Lcom/s1243808733/android/dx/dex/code/OutputFinisher;


# direct methods
.method public constructor <init>(ILcom/s1243808733/android/dx/dex/code/OutputFinisher;Lcom/s1243808733/android/dx/dex/code/CatchBuilder;)V
    .registers 6

    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    if-nez p2, :cond_0

    .line 83
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "unprocessedInsns == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_0
    if-nez p3, :cond_1

    .line 87
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "unprocessedCatches == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_1
    iput p1, p0, Lcom/s1243808733/android/dx/dex/code/DalvCode;->positionInfo:I

    .line 91
    iput-object p2, p0, Lcom/s1243808733/android/dx/dex/code/DalvCode;->unprocessedInsns:Lcom/s1243808733/android/dx/dex/code/OutputFinisher;

    .line 92
    iput-object p3, p0, Lcom/s1243808733/android/dx/dex/code/DalvCode;->unprocessedCatches:Lcom/s1243808733/android/dx/dex/code/CatchBuilder;

    move-object v0, v1

    .line 93
    check-cast v0, Lcom/s1243808733/android/dx/dex/code/CatchTable;

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/code/DalvCode;->catches:Lcom/s1243808733/android/dx/dex/code/CatchTable;

    move-object v0, v1

    .line 94
    check-cast v0, Lcom/s1243808733/android/dx/dex/code/PositionList;

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/code/DalvCode;->positions:Lcom/s1243808733/android/dx/dex/code/PositionList;

    move-object v0, v1

    .line 95
    check-cast v0, Lcom/s1243808733/android/dx/dex/code/LocalList;

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/code/DalvCode;->locals:Lcom/s1243808733/android/dx/dex/code/LocalList;

    .line 96
    check-cast v1, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;

    iput-object v1, p0, Lcom/s1243808733/android/dx/dex/code/DalvCode;->insns:Lcom/s1243808733/android/dx/dex/code/DalvInsnList;

    return-void
.end method

.method private finishProcessingIfNecessary()V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v1, 0x0

    .line 103
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/DalvCode;->insns:Lcom/s1243808733/android/dx/dex/code/DalvInsnList;

    if-eqz v0, :cond_0

    .line 114
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/DalvCode;->unprocessedInsns:Lcom/s1243808733/android/dx/dex/code/OutputFinisher;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->finishProcessingAndGetList()Lcom/s1243808733/android/dx/dex/code/DalvInsnList;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/code/DalvCode;->insns:Lcom/s1243808733/android/dx/dex/code/DalvInsnList;

    .line 108
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/DalvCode;->insns:Lcom/s1243808733/android/dx/dex/code/DalvInsnList;

    iget v2, p0, Lcom/s1243808733/android/dx/dex/code/DalvCode;->positionInfo:I

    invoke-static {v0, v2}, Lcom/s1243808733/android/dx/dex/code/PositionList;->make(Lcom/s1243808733/android/dx/dex/code/DalvInsnList;I)Lcom/s1243808733/android/dx/dex/code/PositionList;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/code/DalvCode;->positions:Lcom/s1243808733/android/dx/dex/code/PositionList;

    .line 109
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/DalvCode;->insns:Lcom/s1243808733/android/dx/dex/code/DalvInsnList;

    invoke-static {v0}, Lcom/s1243808733/android/dx/dex/code/LocalList;->make(Lcom/s1243808733/android/dx/dex/code/DalvInsnList;)Lcom/s1243808733/android/dx/dex/code/LocalList;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/code/DalvCode;->locals:Lcom/s1243808733/android/dx/dex/code/LocalList;

    .line 110
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/DalvCode;->unprocessedCatches:Lcom/s1243808733/android/dx/dex/code/CatchBuilder;

    invoke-interface {v0}, Lcom/s1243808733/android/dx/dex/code/CatchBuilder;->build()Lcom/s1243808733/android/dx/dex/code/CatchTable;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/code/DalvCode;->catches:Lcom/s1243808733/android/dx/dex/code/CatchTable;

    move-object v0, v1

    .line 113
    check-cast v0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/code/DalvCode;->unprocessedInsns:Lcom/s1243808733/android/dx/dex/code/OutputFinisher;

    .line 114
    check-cast v1, Lcom/s1243808733/android/dx/dex/code/CatchBuilder;

    iput-object v1, p0, Lcom/s1243808733/android/dx/dex/code/DalvCode;->unprocessedCatches:Lcom/s1243808733/android/dx/dex/code/CatchBuilder;

    goto :goto_0
.end method


# virtual methods
.method public assignIndices(Lcom/s1243808733/android/dx/dex/code/DalvCode$AssignIndicesCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/dex/code/DalvCode$AssignIndicesCallback;",
            ")V"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/DalvCode;->unprocessedInsns:Lcom/s1243808733/android/dx/dex/code/OutputFinisher;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->assignIndices(Lcom/s1243808733/android/dx/dex/code/DalvCode$AssignIndicesCallback;)V

    return-void
.end method

.method public getCatchTypes()Ljava/util/HashSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Lcom/s1243808733/android/dx/rop/type/Type;",
            ">;"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/DalvCode;->unprocessedCatches:Lcom/s1243808733/android/dx/dex/code/CatchBuilder;

    invoke-interface {v0}, Lcom/s1243808733/android/dx/dex/code/CatchBuilder;->getCatchTypes()Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method

.method public getCatches()Lcom/s1243808733/android/dx/dex/code/CatchTable;
    .registers 2

    .line 194
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/code/DalvCode;->finishProcessingIfNecessary()V

    .line 195
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/DalvCode;->catches:Lcom/s1243808733/android/dx/dex/code/CatchTable;

    return-object v0
.end method

.method public getInsnConstants()Ljava/util/HashSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Lcom/s1243808733/android/dx/rop/cst/Constant;",
            ">;"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/DalvCode;->unprocessedInsns:Lcom/s1243808733/android/dx/dex/code/OutputFinisher;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->getAllConstants()Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method

.method public getInsns()Lcom/s1243808733/android/dx/dex/code/DalvInsnList;
    .registers 2

    .line 184
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/code/DalvCode;->finishProcessingIfNecessary()V

    .line 185
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/DalvCode;->insns:Lcom/s1243808733/android/dx/dex/code/DalvInsnList;

    return-object v0
.end method

.method public getLocals()Lcom/s1243808733/android/dx/dex/code/LocalList;
    .registers 2

    .line 214
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/code/DalvCode;->finishProcessingIfNecessary()V

    .line 215
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/DalvCode;->locals:Lcom/s1243808733/android/dx/dex/code/LocalList;

    return-object v0
.end method

.method public getPositions()Lcom/s1243808733/android/dx/dex/code/PositionList;
    .registers 2

    .line 204
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/code/DalvCode;->finishProcessingIfNecessary()V

    .line 205
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/DalvCode;->positions:Lcom/s1243808733/android/dx/dex/code/PositionList;

    return-object v0
.end method

.method public hasAnyCatches()Z
    .registers 2

    .line 156
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/DalvCode;->unprocessedCatches:Lcom/s1243808733/android/dx/dex/code/CatchBuilder;

    invoke-interface {v0}, Lcom/s1243808733/android/dx/dex/code/CatchBuilder;->hasAnyCatches()Z

    move-result v0

    return v0
.end method

.method public hasLocals()Z
    .registers 2

    .line 146
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/DalvCode;->unprocessedInsns:Lcom/s1243808733/android/dx/dex/code/OutputFinisher;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->hasAnyLocalInfo()Z

    move-result v0

    return v0
.end method

.method public hasPositions()Z
    .registers 3

    const/4 v0, 0x1

    .line 135
    iget v1, p0, Lcom/s1243808733/android/dx/dex/code/DalvCode;->positionInfo:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/code/DalvCode;->unprocessedInsns:Lcom/s1243808733/android/dx/dex/code/OutputFinisher;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->hasAnyPositionInfo()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method
