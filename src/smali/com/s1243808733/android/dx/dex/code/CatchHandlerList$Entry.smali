.class public Lcom/s1243808733/android/dx/dex/code/CatchHandlerList$Entry;
.super Ljava/lang/Object;
.source "CatchHandlerList.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dx/dex/code/CatchHandlerList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/s1243808733/android/dx/dex/code/CatchHandlerList$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field private final exceptionType:Lcom/s1243808733/android/dx/rop/cst/CstType;

.field private final handler:I


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/cst/CstType;I)V
    .registers 3

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p2, :cond_14

    if-eqz p1, :cond_c

    .line 191
    iput p2, p0, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList$Entry;->handler:I

    .line 192
    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList$Entry;->exceptionType:Lcom/s1243808733/android/dx/rop/cst/CstType;

    return-void

    .line 188
    :cond_c
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "exceptionType == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 184
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "handler < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public compareTo(Lcom/s1243808733/android/dx/dex/code/CatchHandlerList$Entry;)I
    .registers 4

    .line 214
    iget v0, p0, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList$Entry;->handler:I

    iget v1, p1, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList$Entry;->handler:I

    if-ge v0, v1, :cond_8

    const/4 p1, -0x1

    return p1

    :cond_8
    if-le v0, v1, :cond_c

    const/4 p1, 0x1

    return p1

    .line 220
    :cond_c
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList$Entry;->exceptionType:Lcom/s1243808733/android/dx/rop/cst/CstType;

    iget-object p1, p1, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList$Entry;->exceptionType:Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/rop/cst/CstType;->compareTo(Lcom/s1243808733/android/dx/rop/cst/Constant;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 169
    check-cast p1, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList$Entry;

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList$Entry;->compareTo(Lcom/s1243808733/android/dx/dex/code/CatchHandlerList$Entry;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 204
    instance-of v0, p1, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList$Entry;

    if-eqz v0, :cond_e

    .line 205
    check-cast p1, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList$Entry;

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList$Entry;->compareTo(Lcom/s1243808733/android/dx/dex/code/CatchHandlerList$Entry;)I

    move-result p1

    if-nez p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public getExceptionType()Lcom/s1243808733/android/dx/rop/cst/CstType;
    .registers 2

    .line 229
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList$Entry;->exceptionType:Lcom/s1243808733/android/dx/rop/cst/CstType;

    return-object v0
.end method

.method public getHandler()I
    .registers 2

    .line 238
    iget v0, p0, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList$Entry;->handler:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 198
    iget v0, p0, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList$Entry;->handler:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/code/CatchHandlerList$Entry;->exceptionType:Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/cst/CstType;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
