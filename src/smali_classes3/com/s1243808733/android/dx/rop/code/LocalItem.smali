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
.method constructor <init>(Lcom/s1243808733/android/dx/rop/cst/CstString;Lcom/s1243808733/android/dx/rop/cst/CstString;)V
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
    .registers 3

    .line 79
    if-ne p0, p1, :cond_0

    .line 80
    const/4 v0, 0x0

    .line 86
    :goto_0
    return v0

    .line 81
    :cond_0
    if-nez p0, :cond_1

    .line 82
    const/4 v0, -0x1

    goto :goto_0

    .line 83
    :cond_1
    if-nez p1, :cond_2

    .line 84
    const/4 v0, 0x1

    goto :goto_0

    .line 86
    :cond_2
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/rop/cst/CstString;->compareTo(Lcom/s1243808733/android/dx/rop/cst/Constant;)I

    move-result v0

    goto :goto_0
.end method

.method public static make(Lcom/s1243808733/android/dx/rop/cst/CstString;Lcom/s1243808733/android/dx/rop/cst/CstString;)Lcom/s1243808733/android/dx/rop/code/LocalItem;
    .registers 3

    .line 41
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 42
    const/4 v0, 0x0

    check-cast v0, Lcom/s1243808733/android/dx/rop/code/LocalItem;

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
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/LocalItem;->name:Lcom/s1243808733/android/dx/rop/cst/CstString;

    iget-object v1, p1, Lcom/s1243808733/android/dx/rop/code/LocalItem;->name:Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/rop/code/LocalItem;->compareHandlesNulls(Lcom/s1243808733/android/dx/rop/cst/CstString;Lcom/s1243808733/android/dx/rop/cst/CstString;)I

    move-result v0

    .line 97
    if-eqz v0, :cond_0

    .line 103
    :goto_0
    return v0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/LocalItem;->signature:Lcom/s1243808733/android/dx/rop/cst/CstString;

    iget-object v1, p1, Lcom/s1243808733/android/dx/rop/code/LocalItem;->signature:Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/rop/code/LocalItem;->compareHandlesNulls(Lcom/s1243808733/android/dx/rop/cst/CstString;Lcom/s1243808733/android/dx/rop/cst/CstString;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/s1243808733/android/dx/rop/code/LocalItem;

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/rop/code/LocalItem;->compareTo(Lcom/s1243808733/android/dx/rop/code/LocalItem;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

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
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v1, 0x0

    .line 110
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/LocalItem;->name:Lcom/s1243808733/android/dx/rop/cst/CstString;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/s1243808733/android/dx/rop/code/LocalItem;->signature:Lcom/s1243808733/android/dx/rop/cst/CstString;

    if-nez v2, :cond_1

    :goto_1
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/LocalItem;->name:Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstString;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/code/LocalItem;->signature:Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/cst/CstString;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/LocalItem;->name:Lcom/s1243808733/android/dx/rop/cst/CstString;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/LocalItem;->signature:Lcom/s1243808733/android/dx/rop/cst/CstString;

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/LocalItem;->name:Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstString;->toQuoted()Ljava/lang/String;

    move-result-object v0

    .line 123
    :goto_0
    return-object v0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/LocalItem;->name:Lcom/s1243808733/android/dx/rop/cst/CstString;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/LocalItem;->signature:Lcom/s1243808733/android/dx/rop/cst/CstString;

    if-nez v0, :cond_1

    .line 120
    const-string v0, ""

    goto :goto_0

    .line 123
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/LocalItem;->name:Lcom/s1243808733/android/dx/rop/cst/CstString;

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/LocalItem;->signature:Lcom/s1243808733/android/dx/rop/cst/CstString;

    if-nez v0, :cond_3

    const-string v0, ""

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/LocalItem;->name:Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstString;->toQuoted()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/LocalItem;->signature:Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstString;->toQuoted()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method
