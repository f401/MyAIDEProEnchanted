.class public Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;
.super Lcom/s1243808733/android/dx/ssa/BasicRegisterMapper;
.source "InterferenceRegisterMapper.java"


# instance fields
.field private final newRegInterference:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/s1243808733/android/dx/util/BitIntSet;",
            ">;"
        }
    .end annotation
.end field

.field private final oldRegInterference:Lcom/s1243808733/android/dx/ssa/back/InterferenceGraph;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/ssa/back/InterferenceGraph;I)V
    .registers 4

    .line 55
    invoke-direct {p0, p2}, Lcom/s1243808733/android/dx/ssa/BasicRegisterMapper;-><init>(I)V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;->newRegInterference:Ljava/util/ArrayList;

    .line 58
    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;->oldRegInterference:Lcom/s1243808733/android/dx/ssa/back/InterferenceGraph;

    return-void
.end method

.method private addInterfence(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;->newRegInterference:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 121
    :goto_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;->newRegInterference:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 125
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;->oldRegInterference:Lcom/s1243808733/android/dx/ssa/back/InterferenceGraph;

    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;->newRegInterference:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/util/BitIntSet;

    invoke-virtual {v1, p2, v0}, Lcom/s1243808733/android/dx/ssa/back/InterferenceGraph;->mergeInterferenceSet(ILcom/s1243808733/android/dx/util/IntSet;)V

    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;->newRegInterference:Ljava/util/ArrayList;

    new-instance v1, Lcom/s1243808733/android/dx/util/BitIntSet;

    add-int/lit8 v2, p1, 0x1

    invoke-direct {v1, v2}, Lcom/s1243808733/android/dx/util/BitIntSet;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public addMapping(III)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 64
    invoke-super {p0, p1, p2, p3}, Lcom/s1243808733/android/dx/ssa/BasicRegisterMapper;->addMapping(III)V

    .line 66
    invoke-direct {p0, p2, p1}, Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;->addInterfence(II)V

    .line 68
    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    .line 69
    add-int/lit8 v0, p2, 0x1

    invoke-direct {p0, v0, p1}, Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;->addInterfence(II)V

    :cond_0
    return-void
.end method

.method public areAnyPinned(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;II)Z
    .registers 10

    const/4 v5, 0x2

    const/4 v0, 0x0

    .line 143
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v2

    move v1, v0

    .line 145
    :goto_0
    if-lt v1, v2, :cond_0

    .line 160
    :goto_1
    return v0

    .line 146
    :cond_0
    invoke-virtual {p1, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    .line 147
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;->oldToNew(I)I

    move-result v4

    .line 153
    if-eq v4, p2, :cond_2

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v3

    if-ne v3, v5, :cond_1

    add-int/lit8 v3, v4, 0x1

    if-eq v3, p2, :cond_2

    :cond_1
    if-ne p3, v5, :cond_3

    add-int/lit8 v3, p2, 0x1

    if-ne v4, v3, :cond_3

    .line 156
    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    .line 145
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public interferes(III)Z
    .registers 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 83
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;->newRegInterference:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_1

    :cond_0
    move v0, v1

    .line 93
    :goto_0
    return v0

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;->newRegInterference:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/util/BitIntSet;

    .line 88
    if-eqz v0, :cond_0

    .line 90
    if-ne p3, v2, :cond_2

    .line 91
    invoke-interface {v0, p1}, Lcom/s1243808733/android/dx/util/IntSet;->has(I)Z

    move-result v0

    goto :goto_0

    .line 93
    :cond_2
    invoke-interface {v0, p1}, Lcom/s1243808733/android/dx/util/IntSet;->has(I)Z

    move-result v0

    if-nez v0, :cond_3

    add-int/lit8 v0, p2, 0x1

    add-int/lit8 v3, p3, -0x1

    invoke-virtual {p0, p1, v0, v3}, Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;->interferes(III)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public interferes(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;I)Z
    .registers 5

    .line 108
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v1

    invoke-virtual {p0, v0, p2, v1}, Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;->interferes(III)Z

    move-result v0

    return v0
.end method
