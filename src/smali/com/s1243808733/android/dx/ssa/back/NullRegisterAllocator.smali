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

    .line 45
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/NullRegisterAllocator;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v0

    .line 47
    new-instance v1, Lcom/s1243808733/android/dx/ssa/BasicRegisterMapper;

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dx/ssa/BasicRegisterMapper;-><init>(I)V

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v0, :cond_17

    .line 50
    mul-int/lit8 v3, v2, 0x2

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Lcom/s1243808733/android/dx/ssa/BasicRegisterMapper;->addMapping(III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_17
    return-object v1
.end method

.method public wantsParamsMovedHigh()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
