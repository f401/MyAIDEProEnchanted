.class public final Lcom/s1243808733/android/dx/dex/code/LocalStart;
.super Lcom/s1243808733/android/dx/dex/code/ZeroSizeInsn;
.source "LocalStart.java"


# instance fields
.field private final local:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V
    .locals 2

    .line 57
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/dex/code/ZeroSizeInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/SourcePosition;)V

    if-eqz p2, :cond_0

    .line 63
    iput-object p2, p0, Lcom/s1243808733/android/dx/dex/code/LocalStart;->local:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    return-void

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "local == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static localString(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Ljava/lang/String;
    .locals 2

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->regString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/s1243808733/android/dx/rop/code/LocalItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/LocalItem;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v1

    invoke-interface {v1}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->toHuman()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected argString()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/LocalStart;->local:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocal()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/LocalStart;->local:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    return-object v0
.end method

.method protected listingString0(Z)Ljava/lang/String;
    .locals 2

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "local-start "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/code/LocalStart;->local:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    invoke-static {v1}, Lcom/s1243808733/android/dx/dex/code/LocalStart;->localString(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withMapper(Lcom/s1243808733/android/dx/ssa/RegisterMapper;)Lcom/s1243808733/android/dx/dex/code/DalvInsn;
    .locals 3

    .line 103
    new-instance v0, Lcom/s1243808733/android/dx/dex/code/LocalStart;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/LocalStart;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v1

    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/code/LocalStart;->local:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    invoke-virtual {p1, v2}, Lcom/s1243808733/android/dx/ssa/RegisterMapper;->map(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/dex/code/LocalStart;-><init>(Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    return-object v0
.end method

.method public withRegisterOffset(I)Lcom/s1243808733/android/dx/dex/code/DalvInsn;
    .locals 3

    .line 69
    new-instance v0, Lcom/s1243808733/android/dx/dex/code/LocalStart;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/LocalStart;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v1

    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/code/LocalStart;->local:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    invoke-virtual {v2, p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->withOffset(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/dex/code/LocalStart;-><init>(Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    return-object v0
.end method

.method public withRegisters(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)Lcom/s1243808733/android/dx/dex/code/DalvInsn;
    .locals 3

    .line 75
    new-instance v0, Lcom/s1243808733/android/dx/dex/code/LocalStart;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/LocalStart;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v1

    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/code/LocalStart;->local:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/dex/code/LocalStart;-><init>(Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    return-object v0
.end method
