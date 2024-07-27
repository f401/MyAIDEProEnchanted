.class public Lcom/s1243808733/android/dx/ssa/back/NullRegisterAllocator;
.super Lcom/s1243808733/android/dx/ssa/back/RegisterAllocator;
.source "NullRegisterAllocator.java"


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/ssa/SsaMethod;Lcom/s1243808733/android/dx/ssa/back/InterferenceGraph;)V
    .registers 3

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/s1243808733/android/dx/ssa/back/RegisterAllocator;-><init>(Lcom/s1243808733/android/dx/ssa/SsaMethod;Lcom/s1243808733/android/dx/ssa/back/InterferenceGraph;)V

    return-void
.end method


# virtual methods
.method public allocateRegisters()Lcom/s1243808733/android/dx/ssa/RegisterMapper;
    .registers 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/RegisterAllocator;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v1

    .line 47
    new-instance v2, Lcom/s1243808733/android/dx/ssa/BasicRegisterMapper;

    invoke-direct {v2, v1}, Lcom/s1243808733/android/dx/ssa/BasicRegisterMapper;-><init>(I)V

    .line 49
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    .line 53
    return-object v2

    .line 50
    :cond_0
    mul-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v0, v3, v4}, Lcom/s1243808733/android/dx/ssa/BasicRegisterMapper;->addMapping(III)V

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public wantsParamsMovedHigh()Z
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 39
    const/4 v0, 0x0

    return v0
.end method
