.class public Lcom/s1243808733/android/dx/rop/code/LocalItem;
.super Ljava/lang/Object;
.source "LocalItem.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/s1243808733/android/dx/rop/code/LocalItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final name:Lcom/s1243808733/android/dx/rop/cst/CstString;

.field private final signature:Lcom/s1243808733/android/dx/rop/cst/CstString;


# direct methods
.method private constructor <init>(Lcom/s1243808733/android/dx/rop/cst/CstString;Lcom/s1243808733/android/dx/rop/cst/CstString;)V
    .registers 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/s1243808733/android/dx/rop/code/LocalItem;->name:Lcom/s1243808733/android/dx/rop/cst/CstString;

    .line 56
    iput-object p2, p0, Lcom/s1243808733/android/dx/rop/code/LocalItem;->signature:Lcom/s1243808733/android/dx/rop/cst/CstString;

    return-void
.end method

.method private static compareHandlesNulls(Lcom/s1243808733/android/dx/rop/cst/CstString;Lcom/s1243808733/android/dx/rop/cst/CstString;)I
    .registers 2

    if-ne p0, p1, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    if-nez p0, :cond_8

    const/4 p0, -0x1

    return p0

    :cond_8
    if-nez p1, :cond_c

    const/4 p0, 0x1

    return p0

    .line 86
    :cond_c
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/rop/cst/CstString;->compareTo(Lcom/s1243808733/android/dx/rop/cst/Constant;)I

    move-result p0

    return p0
.end method

.method public static make(Lcom/s1243808733/android/dx/rop/cst/CstString;Lcom/s1243808733/android/dx/rop/cst/CstString;)Lcom/s1243808733/android/dx/rop/code/LocalItem;
    .registers 3

    if-nez p0, :cond_6

    if-nez p1, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 45
    :cond_6
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/LocalItem;

    invoke-direct {v0, p0, p1}, Lcom/s1243808733/android/dx/rop/code/LocalItem;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstString;Lcom/s1243808733/android/dx/rop/cst/CstString;)V

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/s1243808733/android/dx/rop/code/LocalItem;)I
    .registers 4

    .line 95
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/LocalItem;->name:Lcom/s1243808733/android/dx/rop/cst/CstString;

    iget-object v1, p1, Lcom/s1243808733/android/dx/rop/code/LocalItem;->name:Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/rop/code/LocalItem;->compareHandlesNulls(Lcom/s1243808733/android/dx/rop/cst/CstString;Lcom/s1243808733/android/dx/rop/cst/CstString;)I

    move-result v0

    if-eqz v0, :cond_b

    return v0

    .line 101
    :cond_b
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/LocalItem;->signature:Lcom/s1243808733/android/dx/rop/cst/CstString;

    iget-object p1, p1, Lcom/s1243808733/android/dx/rop/code/LocalItem;->signature:Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-static {v0, p1}, Lcom/s1243808733/android/dx/rop/code/LocalItem;->compareHandlesNulls(Lcom/s1243808733/android/dx/rop/cst/CstString;Lcom/s1243808733/android/dx/rop/cst/CstString;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 24
    check-cast p1, Lcom/s1243808733/android/dx/rop/code/LocalItem;

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/rop/code/LocalItem;->compareTo(Lcom/s1243808733/android/dx/rop/code/LocalItem;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 62
    instance-of v0, p1, Lcom/s1243808733/android/dx/rop/code/LocalItem;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 66
    :cond_6
    check-cast p1, Lcom/s1243808733/android/dx/rop/code/LocalItem;

    .line 68
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/rop/code/LocalItem;->compareTo(Lcom/s1243808733/android/dx/rop/code/LocalItem;)I

    move-result p1

    if-nez p1, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1
.end method

.method public getName()Lcom/s1243808733/android/dx/rop/cst/CstString;
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/LocalItem;->name:Lcom/s1243808733/android/dx/rop/cst/CstString;

    return-object v0
.end method

.method public getSignature()Lcom/s1243808733/android/dx/rop/cst/CstString;
    .registers 2

    .line 142
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/LocalItem;->signature:Lcom/s1243808733/android/dx/rop/cst/CstString;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 110
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/LocalItem;->name:Lcom/s1243808733/android/dx/rop/cst/CstString;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstString;->hashCode()I

    move-result v0

    .line 111
    :goto_b
    iget-object v2, p0, Lcom/s1243808733/android/dx/rop/code/LocalItem;->signature:Lcom/s1243808733/android/dx/rop/cst/CstString;

    if-nez v2, :cond_10

    goto :goto_14

    :cond_10
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/cst/CstString;->hashCode()I

    move-result v1

    :goto_14
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 117
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/LocalItem;->name:Lcom/s1243808733/android/dx/rop/cst/CstString;

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/code/LocalItem;->signature:Lcom/s1243808733/android/dx/rop/cst/CstString;

    if-nez v1, :cond_d

    .line 118
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstString;->toQuoted()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 119
    :cond_d
    const-string v1, ""

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/LocalItem;->signature:Lcom/s1243808733/android/dx/rop/cst/CstString;

    if-nez v0, :cond_16

    return-object v1

    .line 123
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/s1243808733/android/dx/rop/code/LocalItem;->name:Lcom/s1243808733/android/dx/rop/cst/CstString;

    if-nez v2, :cond_23

    move-object v2, v1

    goto :goto_27

    :cond_23
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/cst/CstString;->toQuoted()Ljava/lang/String;

    move-result-object v2

    :goto_27
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    iget-object v2, p0, Lcom/s1243808733/android/dx/rop/code/LocalItem;->signature:Lcom/s1243808733/android/dx/rop/cst/CstString;

    if-nez v2, :cond_34

    goto :goto_38

    :cond_34
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/cst/CstString;->toQuoted()Ljava/lang/String;

    move-result-object v1

    :goto_38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
