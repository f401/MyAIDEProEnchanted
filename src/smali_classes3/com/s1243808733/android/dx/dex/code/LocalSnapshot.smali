.class public final Lcom/s1243808733/android/dx/dex/code/LocalSnapshot;
.super Lcom/s1243808733/android/dx/dex/code/ZeroSizeInsn;
.source "LocalSnapshot.java"


# instance fields
.field private final locals:Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;)V
    .registers 5

    .line 42
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/dex/code/ZeroSizeInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/SourcePosition;)V

    .line 44
    if-nez p2, :cond_0

    .line 45
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "locals == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    iput-object p2, p0, Lcom/s1243808733/android/dx/dex/code/LocalSnapshot;->locals:Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    return-void
.end method


# virtual methods
.method protected argString()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/LocalSnapshot;->locals:Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocals()Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/LocalSnapshot;->locals:Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    return-object v0
.end method

.method protected listingString0(Z)Ljava/lang/String;
    .registers 7
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/LocalSnapshot;->locals:Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->size()I

    move-result v0

    .line 82
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/code/LocalSnapshot;->locals:Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->getMaxSize()I

    move-result v1

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    mul-int/lit8 v0, v0, 0x28

    add-int/lit8 v0, v0, 0x64

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 85
    const-string v0, "local-snapshot"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    .line 95
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 88
    :cond_0
    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/code/LocalSnapshot;->locals:Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    invoke-virtual {v3, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    .line 89
    if-eqz v3, :cond_1

    .line 90
    const-string v4, "\n  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-static {v3}, Lcom/s1243808733/android/dx/dex/code/LocalStart;->localString(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public withMapper(Lcom/s1243808733/android/dx/ssa/RegisterMapper;)Lcom/s1243808733/android/dx/dex/code/DalvInsn;
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 101
    new-instance v0, Lcom/s1243808733/android/dx/dex/code/LocalSnapshot;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/LocalSnapshot;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v1

    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/code/LocalSnapshot;->locals:Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    invoke-virtual {p1, v2}, Lcom/s1243808733/android/dx/ssa/RegisterMapper;->map(Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/dex/code/LocalSnapshot;-><init>(Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;)V

    return-object v0
.end method

.method public withRegisterOffset(I)Lcom/s1243808733/android/dx/dex/code/DalvInsn;
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 54
    new-instance v0, Lcom/s1243808733/android/dx/dex/code/LocalSnapshot;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/LocalSnapshot;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v1

    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/code/LocalSnapshot;->locals:Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    invoke-virtual {v2, p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->withOffset(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/dex/code/LocalSnapshot;-><init>(Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;)V

    return-object v0
.end method

.method public withRegisters(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)Lcom/s1243808733/android/dx/dex/code/DalvInsn;
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 60
    new-instance v0, Lcom/s1243808733/android/dx/dex/code/LocalSnapshot;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/LocalSnapshot;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v1

    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/code/LocalSnapshot;->locals:Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/dex/code/LocalSnapshot;-><init>(Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;)V

    return-object v0
.end method
