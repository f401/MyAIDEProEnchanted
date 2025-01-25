.class public final Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;
.super Ljava/lang/Object;
.source "NameValuePair.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;",
        ">;"
    }
.end annotation


# instance fields
.field private final name:Lcom/s1243808733/android/dx/rop/cst/CstString;

.field private final value:Lcom/s1243808733/android/dx/rop/cst/Constant;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/cst/CstString;Lcom/s1243808733/android/dx/rop/cst/Constant;)V
    .registers 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_14

    if-eqz p2, :cond_c

    .line 47
    iput-object p1, p0, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;->name:Lcom/s1243808733/android/dx/rop/cst/CstString;

    .line 48
    iput-object p2, p0, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;->value:Lcom/s1243808733/android/dx/rop/cst/Constant;

    return-void

    .line 44
    :cond_c
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "value == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_14
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "name == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public compareTo(Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;)I
    .registers 4

    .line 84
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;->name:Lcom/s1243808733/android/dx/rop/cst/CstString;

    iget-object v1, p1, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;->name:Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstString;->compareTo(Lcom/s1243808733/android/dx/rop/cst/Constant;)I

    move-result v0

    if-eqz v0, :cond_b

    return v0

    .line 90
    :cond_b
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;->value:Lcom/s1243808733/android/dx/rop/cst/Constant;

    iget-object p1, p1, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;->value:Lcom/s1243808733/android/dx/rop/cst/Constant;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/rop/cst/Constant;->compareTo(Lcom/s1243808733/android/dx/rop/cst/Constant;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 25
    check-cast p1, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;->compareTo(Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 66
    instance-of v0, p1, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 70
    :cond_6
    check-cast p1, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;

    .line 72
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;->name:Lcom/s1243808733/android/dx/rop/cst/CstString;

    iget-object v2, p1, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;->name:Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/rop/cst/CstString;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;->value:Lcom/s1243808733/android/dx/rop/cst/Constant;

    iget-object p1, p1, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;->value:Lcom/s1243808733/android/dx/rop/cst/Constant;

    .line 73
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    const/4 v1, 0x1

    :cond_1d
    return v1
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

    .line 60
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;->name:Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;->value:Lcom/s1243808733/android/dx/rop/cst/Constant;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;->name:Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;->value:Lcom/s1243808733/android/dx/rop/cst/Constant;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
