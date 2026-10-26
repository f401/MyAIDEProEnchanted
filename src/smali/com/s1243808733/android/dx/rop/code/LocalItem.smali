.class public Lcom/s1243808733/android/dx/rop/code/LocalItem;
.super Ljava/lang/Object;
.source "LocalItem.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/s1243808733/android/dx/rop/code/LocalItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final name:Lcom/s1243808733/android/dx/rop/cst/CstString;

.field private final signature:Lcom/s1243808733/android/dx/rop/cst/CstString;


# direct methods
.method private constructor <init>(Lcom/s1243808733/android/dx/rop/cst/CstString;Lcom/s1243808733/android/dx/rop/cst/CstString;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/s1243808733/android/dx/rop/code/LocalItem;->name:Lcom/s1243808733/android/dx/rop/cst/CstString;

    .line 56
    iput-object p2, p0, Lcom/s1243808733/android/dx/rop/code/LocalItem;->signature:Lcom/s1243808733/android/dx/rop/cst/CstString;

    return-void
.end method

.method private static compareHandlesNulls(Lcom/s1243808733/android/dx/rop/cst/CstString;Lcom/s1243808733/android/dx/rop/cst/CstString;)I
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 v0, 0x0

    .line 86
    :goto_0
    return v0

    .line 4294967295
    :cond_0
    if-nez p0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    .line 86
    :cond_2
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/rop/cst/CstString;->compareTo(Lcom/s1243808733/android/dx/rop/cst/Constant;)I

    move-result v0

    goto :goto_0
.end method

.method public static make(Lcom/s1243808733/android/dx/rop/cst/CstString;Lcom/s1243808733/android/dx/rop/cst/CstString;)Lcom/s1243808733/android/dx/rop/code/LocalItem;
    .locals 1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 45
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/LocalItem;

    invoke-direct {v0, p0, p1}, Lcom/s1243808733/android/dx/rop/code/LocalItem;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstString;Lcom/s1243808733/android/dx/rop/cst/CstString;)V

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Lcom/s1243808733/android/dx/rop/code/LocalItem;)I
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/LocalItem;->name:Lcom/s1243808733/android/dx/rop/cst/CstString;

    iget-object v1, p1, Lcom/s1243808733/android/dx/rop/code/LocalItem;->name:Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/rop/code/LocalItem;->compareHandlesNulls(Lcom/s1243808733/android/dx/rop/cst/CstString;Lcom/s1243808733/android/dx/rop/cst/CstString;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/LocalItem;->signature:Lcom/s1243808733/android/dx/rop/cst/CstString;

    iget-object v1, p1, Lcom/s1243808733/android/dx/rop/code/LocalItem;->signature:Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/rop/code/LocalItem;->compareHandlesNulls(Lcom/s1243808733/android/dx/rop/cst/CstString;Lcom/s1243808733/android/dx/rop/cst/CstString;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 24
    check-cast p1, Lcom/s1243808733/android/dx/rop/code/LocalItem;

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/rop/code/LocalItem;->compareTo(Lcom/s1243808733/android/dx/rop/code/LocalItem;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    .line 62
    instance-of v1, p1, Lcom/s1243808733/android/dx/rop/code/LocalItem;

    if-nez v1, :cond_1

    .line 68
    :cond_0
    :goto_0
    return v0

    .line 66
    :cond_1
    check-cast p1, Lcom/s1243808733/android/dx/rop/code/LocalItem;

    .line 68
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/rop/code/LocalItem;->compareTo(Lcom/s1243808733/android/dx/rop/code/LocalItem;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getName()Lcom/s1243808733/android/dx/rop/cst/CstString;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/LocalItem;->name:Lcom/s1243808733/android/dx/rop/cst/CstString;

    return-object v0
.end method

.method public getSignature()Lcom/s1243808733/android/dx/rop/cst/CstString;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/LocalItem;->signature:Lcom/s1243808733/android/dx/rop/cst/CstString;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    .line 110
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/LocalItem;->name:Lcom/s1243808733/android/dx/rop/cst/CstString;

    if-nez v0, :cond_0

    move v0, v1

    .line 111
    :goto_0
    iget-object v2, p0, Lcom/s1243808733/android/dx/rop/code/LocalItem;->signature:Lcom/s1243808733/android/dx/rop/cst/CstString;

    if-nez v2, :cond_1

    :goto_1
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    return v0

    .line 110
    :cond_0
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstString;->hashCode()I

    move-result v0

    goto :goto_0

    .line 111
    :cond_1
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/cst/CstString;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/LocalItem;->name:Lcom/s1243808733/android/dx/rop/cst/CstString;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/code/LocalItem;->signature:Lcom/s1243808733/android/dx/rop/cst/CstString;

    if-nez v1, :cond_0

    .line 118
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstString;->toQuoted()Ljava/lang/String;

    move-result-object v0

    .line 124
    :goto_0
    return-object v0

    .line 119
    :cond_0
    const-string v1, ""

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/LocalItem;->signature:Lcom/s1243808733/android/dx/rop/cst/CstString;

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_0

    .line 123
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/LocalItem;->name:Lcom/s1243808733/android/dx/rop/cst/CstString;

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/LocalItem;->signature:Lcom/s1243808733/android/dx/rop/cst/CstString;

    if-nez v0, :cond_3

    move-object v0, v1

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 123
    :cond_2
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstString;->toQuoted()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 124
    :cond_3
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstString;->toQuoted()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method
