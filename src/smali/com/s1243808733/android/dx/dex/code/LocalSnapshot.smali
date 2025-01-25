.class public final Lcom/s1243808733/android/dx/dex/code/LocalSnapshot;
.super Lcom/s1243808733/android/dx/dex/code/ZeroSizeInsn;
.source "LocalSnapshot.java"


# instance fields
.field private final locals:Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;)V
    .registers 3

    .line 42
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/dex/code/ZeroSizeInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/SourcePosition;)V

    if-eqz p2, :cond_8

    .line 48
    iput-object p2, p0, Lcom/s1243808733/android/dx/dex/code/LocalSnapshot;->locals:Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    return-void

    .line 45
    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "locals == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected argString()Ljava/lang/String;
    .registers 2

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
    .registers 6

    .line 81
    iget-object p1, p0, Lcom/s1243808733/android/dx/dex/code/LocalSnapshot;->locals:Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->size()I

    move-result p1

    .line 82
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/LocalSnapshot;->locals:Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->getMaxSize()I

    move-result v0

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 p1, p1, 0x28

    add-int/lit8 p1, p1, 0x64

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 85
    const-string p1, "local-snapshot"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    :goto_1b
    if-ge p1, v0, :cond_34

    .line 88
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/code/LocalSnapshot;->locals:Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    invoke-virtual {v2, p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    if-eqz v2, :cond_31

    .line 90
    const-string v3, "\n  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-static {v2}, Lcom/s1243808733/android/dx/dex/code/LocalStart;->localString(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_31
    add-int/lit8 p1, p1, 0x1

    goto :goto_1b

    .line 95
    :cond_34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public withMapper(Lcom/s1243808733/android/dx/ssa/RegisterMapper;)Lcom/s1243808733/android/dx/dex/code/DalvInsn;
    .registers 5

    .line 101
    new-instance v0, Lcom/s1243808733/android/dx/dex/code/LocalSnapshot;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/LocalSnapshot;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v1

    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/code/LocalSnapshot;->locals:Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    invoke-virtual {p1, v2}, Lcom/s1243808733/android/dx/ssa/RegisterMapper;->map(Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/s1243808733/android/dx/dex/code/LocalSnapshot;-><init>(Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;)V

    return-object v0
.end method

.method public withRegisterOffset(I)Lcom/s1243808733/android/dx/dex/code/DalvInsn;
    .registers 5

    .line 54
    new-instance v0, Lcom/s1243808733/android/dx/dex/code/LocalSnapshot;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/LocalSnapshot;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v1

    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/code/LocalSnapshot;->locals:Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    invoke-virtual {v2, p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->withOffset(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/s1243808733/android/dx/dex/code/LocalSnapshot;-><init>(Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;)V

    return-object v0
.end method

.method public withRegisters(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)Lcom/s1243808733/android/dx/dex/code/DalvInsn;
    .registers 4

    .line 60
    new-instance p1, Lcom/s1243808733/android/dx/dex/code/LocalSnapshot;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/LocalSnapshot;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/code/LocalSnapshot;->locals:Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    invoke-direct {p1, v0, v1}, Lcom/s1243808733/android/dx/dex/code/LocalSnapshot;-><init>(Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;)V

    return-object p1
.end method
