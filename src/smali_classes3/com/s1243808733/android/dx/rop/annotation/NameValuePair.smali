.class public final Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;
.super Ljava/lang/Object;
.source "NameValuePair.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;",
        ">;"
    }
.end annotation


# instance fields
.field private final name:Lcom/s1243808733/android/dx/rop/cst/CstString;

.field private final value:Lcom/s1243808733/android/dx/rop/cst/Constant;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/cst/CstString;Lcom/s1243808733/android/dx/rop/cst/Constant;)V
    .registers 5

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    if-nez p1, :cond_0

    .line 40
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    if-nez p2, :cond_1

    .line 44
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "value == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_1
    iput-object p1, p0, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;->name:Lcom/s1243808733/android/dx/rop/cst/CstString;

    .line 48
    iput-object p2, p0, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;->value:Lcom/s1243808733/android/dx/rop/cst/Constant;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;)I
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;->name:Lcom/s1243808733/android/dx/rop/cst/CstString;

    iget-object v1, p1, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;->name:Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstString;->compareTo(Lcom/s1243808733/android/dx/rop/cst/Constant;)I

    move-result v0

    .line 86
    if-eqz v0, :cond_0

    .line 90
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;->value:Lcom/s1243808733/android/dx/rop/cst/Constant;

    iget-object v1, p1, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;->value:Lcom/s1243808733/android/dx/rop/cst/Constant;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/Constant;->compareTo(Lcom/s1243808733/android/dx/rop/cst/Constant;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;->compareTo(Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    .line 66
    instance-of v1, p1, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;

    if-nez v1, :cond_1

    .line 72
    :cond_0
    :goto_0
    return v0

    .line 70
    :cond_1
    check-cast p1, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;

    .line 72
    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;->name:Lcom/s1243808733/android/dx/rop/cst/CstString;

    iget-object v2, p1, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;->name:Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/rop/cst/CstString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;->value:Lcom/s1243808733/android/dx/rop/cst/Constant;

    iget-object v2, p1, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;->value:Lcom/s1243808733/android/dx/rop/cst/Constant;

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/rop/cst/Constant;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getName()Lcom/s1243808733/android/dx/rop/cst/CstString;
    .registers 2

    .line 99
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;->name:Lcom/s1243808733/android/dx/rop/cst/CstString;

    return-object v0
.end method

.method public getValue()Lcom/s1243808733/android/dx/rop/cst/Constant;
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;->value:Lcom/s1243808733/android/dx/rop/cst/Constant;

    return-object v0
.end method

.method public hashCode()I
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;->name:Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;->value:Lcom/s1243808733/android/dx/rop/cst/Constant;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/cst/Constant;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 54
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;->name:Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;->value:Lcom/s1243808733/android/dx/rop/cst/Constant;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
