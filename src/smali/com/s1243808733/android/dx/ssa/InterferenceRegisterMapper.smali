.class public Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;
.super Lcom/s1243808733/android/dx/ssa/BasicRegisterMapper;
.source "InterferenceRegisterMapper.java"


# instance fields
.field private final newRegInterference:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/s1243808733/android/dx/util/BitIntSet;",
            ">;"
        }
    .end annotation
.end field

.field private final oldRegInterference:Lcom/s1243808733/android/dx/ssa/back/InterferenceGraph;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/ssa/back/InterferenceGraph;I)V
    .registers 3

    .line 55
    invoke-direct {p0, p2}, Lcom/s1243808733/android/dx/ssa/BasicRegisterMapper;-><init>(I)V

    .line 57
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;->newRegInterference:Ljava/util/ArrayList;

    .line 58
    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;->oldRegInterference:Lcom/s1243808733/android/dx/ssa/back/InterferenceGraph;

    return-void
.end method

.method private addInterfence(II)V
    .registers 6

    .line 119
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;->newRegInterference:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 121
    :goto_7
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;->newRegInterference:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1a

    .line 122
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;->newRegInterference:Ljava/util/ArrayList;

    new-instance v2, Lcom/s1243808733/android/dx/util/BitIntSet;

    invoke-direct {v2, v1}, Lcom/s1243808733/android/dx/util/BitIntSet;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 125
    :cond_1a
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;->oldRegInterference:Lcom/s1243808733/android/dx/ssa/back/InterferenceGraph;

    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;->newRegInterference:Ljava/util/ArrayList;

    .line 126
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/android/dx/util/IntSet;

    .line 125
    invoke-virtual {v0, p2, p1}, Lcom/s1243808733/android/dx/ssa/back/InterferenceGraph;->mergeInterferenceSet(ILcom/s1243808733/android/dx/util/IntSet;)V

    return-void
.end method


# virtual methods
.method public addMapping(III)V
    .registers 5

    .line 64
    invoke-super {p0, p1, p2, p3}, Lcom/s1243808733/android/dx/ssa/BasicRegisterMapper;->addMapping(III)V

    .line 66
    invoke-direct {p0, p2, p1}, Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;->addInterfence(II)V

    const/4 v0, 0x2

    if-ne p3, v0, :cond_e

    .line 69
    add-int/lit8 p2, p2, 0x1

    invoke-direct {p0, p2, p1}, Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;->addInterfence(II)V

    :cond_e
    return-void
.end method

.method public areAnyPinned(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;II)Z
    .registers 10

    .line 143
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_2d

    .line 146
    invoke-virtual {p1, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    .line 147
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;->oldToNew(I)I

    move-result v4

    if-eq v4, p2, :cond_2b

    .line 154
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_21

    add-int/lit8 v3, v4, 0x1

    if-eq v3, p2, :cond_2b

    :cond_21
    if-ne p3, v5, :cond_28

    add-int/lit8 v3, p2, 0x1

    if-ne v4, v3, :cond_28

    goto :goto_2b

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_2b
    :goto_2b
    const/4 p1, 0x1

    return p1

    :cond_2d
    return v1
.end method

.method public interferes(III)Z
    .registers 7

    .line 83
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;->newRegInterference:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lt p2, v0, :cond_a

    return v1

    .line 86
    :cond_a
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;->newRegInterference:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/util/IntSet;

    if-nez v0, :cond_15

    return v1

    :cond_15
    const/4 v2, 0x1

    if-ne p3, v2, :cond_1d

    .line 91
    invoke-interface {v0, p1}, Lcom/s1243808733/android/dx/util/IntSet;->has(I)Z

    move-result p1

    return p1

    .line 93
    :cond_1d
    invoke-interface {v0, p1}, Lcom/s1243808733/android/dx/util/IntSet;->has(I)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 94
    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    invoke-virtual {p0, p1, p2, p3}, Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;->interferes(III)Z

    move-result p1

    if-eqz p1, :cond_2c

    :cond_2b
    const/4 v1, 0x1

    :cond_2c
    return v1
.end method

.method public interferes(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;I)Z
    .registers 4

    .line 108
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result p1

    invoke-virtual {p0, v0, p2, p1}, Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;->interferes(III)Z

    move-result p1

    return p1
.end method
