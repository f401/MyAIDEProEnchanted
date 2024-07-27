.class public final Lcom/s1243808733/android/dx/cf/code/ReturnAddress;
.super Ljava/lang/Object;
.source "ReturnAddress.java"

# interfaces
.implements Lcom/s1243808733/android/dx/rop/type/TypeBearer;


# instance fields
.field private final subroutineAddress:I


# direct methods
.method public constructor <init>(I)V
    .registers 4

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    if-gez p1, :cond_0

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "subroutineAddress < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    iput p1, p0, Lcom/s1243808733/android/dx/cf/code/ReturnAddress;->subroutineAddress:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    .line 93
    instance-of v1, p1, Lcom/s1243808733/android/dx/cf/code/ReturnAddress;

    if-nez v1, :cond_1

    .line 97
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/s1243808733/android/dx/cf/code/ReturnAddress;->subroutineAddress:I

    check-cast p1, Lcom/s1243808733/android/dx/cf/code/ReturnAddress;

    iget v2, p1, Lcom/s1243808733/android/dx/cf/code/ReturnAddress;->subroutineAddress:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getBasicFrameType()I
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 81
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->RETURN_ADDRESS:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->getBasicFrameType()I

    move-result v0

    return v0
.end method

.method public getBasicType()I
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 75
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->RETURN_ADDRESS:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->getBasicType()I

    move-result v0

    return v0
.end method

.method public getFrameType()Lcom/s1243808733/android/dx/rop/type/TypeBearer;
    .registers 1
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 69
    return-object p0
.end method

.method public getSubroutineAddress()I
    .registers 2

    .line 112
    iget v0, p0, Lcom/s1243808733/android/dx/cf/code/ReturnAddress;->subroutineAddress:I

    return v0
.end method

.method public getType()Lcom/s1243808733/android/dx/rop/type/Type;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 63
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->RETURN_ADDRESS:Lcom/s1243808733/android/dx/rop/type/Type;

    return-object v0
.end method

.method public hashCode()I
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 103
    iget v0, p0, Lcom/s1243808733/android/dx/cf/code/ReturnAddress;->subroutineAddress:I

    return v0
.end method

.method public isConstant()Z
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public toHuman()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 57
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/ReturnAddress;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 51
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "<addr:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/s1243808733/android/dx/cf/code/ReturnAddress;->subroutineAddress:I

    invoke-static {v2}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
