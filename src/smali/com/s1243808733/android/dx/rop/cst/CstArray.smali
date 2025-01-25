.class public Lcom/s1243808733/android/dx/rop/cst/CstArray;
.super Lcom/s1243808733/android/dx/rop/cst/Constant;
.source "CstArray.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/android/dx/rop/cst/CstArray$List;
    }
.end annotation


# instance fields
.field private final list:Lcom/s1243808733/android/dx/rop/cst/CstArray$List;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/cst/CstArray$List;)V
    .registers 3

    .line 33
    invoke-direct {p0}, Lcom/s1243808733/android/dx/rop/cst/Constant;-><init>()V

    if-eqz p1, :cond_b

    .line 38
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;->throwIfMutable()V

    .line 40
    iput-object p1, p0, Lcom/s1243808733/android/dx/rop/cst/CstArray;->list:Lcom/s1243808733/android/dx/rop/cst/CstArray$List;

    return-void

    .line 35
    :cond_b
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "list == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected compareTo0(Lcom/s1243808733/android/dx/rop/cst/Constant;)I
    .registers 3

    .line 62
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstArray;->list:Lcom/s1243808733/android/dx/rop/cst/CstArray$List;

    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstArray;

    iget-object p1, p1, Lcom/s1243808733/android/dx/rop/cst/CstArray;->list:Lcom/s1243808733/android/dx/rop/cst/CstArray$List;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;->compareTo(Lcom/s1243808733/android/dx/rop/cst/CstArray$List;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 46
    instance-of v0, p1, Lcom/s1243808733/android/dx/rop/cst/CstArray;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 50
    :cond_6
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstArray;->list:Lcom/s1243808733/android/dx/rop/cst/CstArray$List;

    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstArray;

    iget-object p1, p1, Lcom/s1243808733/android/dx/rop/cst/CstArray;->list:Lcom/s1243808733/android/dx/rop/cst/CstArray$List;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getList()Lcom/s1243808733/android/dx/rop/cst/CstArray$List;
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstArray;->list:Lcom/s1243808733/android/dx/rop/cst/CstArray$List;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstArray;->list:Lcom/s1243808733/android/dx/rop/cst/CstArray$List;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;->hashCode()I

    move-result v0

    return v0
.end method

.method public isCategory2()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public toHuman()Ljava/lang/String;
    .registers 5

    .line 86
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstArray;->list:Lcom/s1243808733/android/dx/rop/cst/CstArray$List;

    const-string v1, ", "

    const-string v2, "}"

    const-string v3, "{"

    invoke-virtual {v0, v3, v1, v2}, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;->toHuman(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 68
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstArray;->list:Lcom/s1243808733/android/dx/rop/cst/CstArray$List;

    const-string v1, ", "

    const-string v2, "}"

    const-string v3, "array{"

    invoke-virtual {v0, v3, v1, v2}, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;->toString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public typeName()Ljava/lang/String;
    .registers 2

    .line 74
    const-string v0, "array"

    return-object v0
.end method
