.class public Lcom/s1243808733/android/dx/cf/code/ByteCatchList$Item;
.super Ljava/lang/Object;
.source "ByteCatchList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dx/cf/code/ByteCatchList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field private final endPc:I

.field private final exceptionClass:Lcom/s1243808733/android/dx/rop/cst/CstType;

.field private final handlerPc:I

.field private final startPc:I


# direct methods
.method public constructor <init>(IIILcom/s1243808733/android/dx/rop/cst/CstType;)V
    .registers 5

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_22

    if-lt p2, p1, :cond_1a

    if-ltz p3, :cond_12

    .line 262
    iput p1, p0, Lcom/s1243808733/android/dx/cf/code/ByteCatchList$Item;->startPc:I

    .line 263
    iput p2, p0, Lcom/s1243808733/android/dx/cf/code/ByteCatchList$Item;->endPc:I

    .line 264
    iput p3, p0, Lcom/s1243808733/android/dx/cf/code/ByteCatchList$Item;->handlerPc:I

    .line 265
    iput-object p4, p0, Lcom/s1243808733/android/dx/cf/code/ByteCatchList$Item;->exceptionClass:Lcom/s1243808733/android/dx/rop/cst/CstType;

    return-void

    .line 259
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "handlerPc < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 255
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "endPc < startPc"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 251
    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "startPc < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public covers(I)Z
    .registers 3

    .line 314
    iget v0, p0, Lcom/s1243808733/android/dx/cf/code/ByteCatchList$Item;->startPc:I

    if-lt p1, v0, :cond_a

    iget v0, p0, Lcom/s1243808733/android/dx/cf/code/ByteCatchList$Item;->endPc:I

    if-ge p1, v0, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public getEndPc()I
    .registers 2

    .line 284
    iget v0, p0, Lcom/s1243808733/android/dx/cf/code/ByteCatchList$Item;->endPc:I

    return v0
.end method

.method public getExceptionClass()Lcom/s1243808733/android/dx/rop/cst/CstType;
    .registers 2

    .line 303
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/ByteCatchList$Item;->exceptionClass:Lcom/s1243808733/android/dx/rop/cst/CstType;

    if-eqz v0, :cond_5

    goto :goto_7

    .line 304
    :cond_5
    sget-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->OBJECT:Lcom/s1243808733/android/dx/rop/cst/CstType;

    :goto_7
    return-object v0
.end method

.method public getHandlerPc()I
    .registers 2

    .line 293
    iget v0, p0, Lcom/s1243808733/android/dx/cf/code/ByteCatchList$Item;->handlerPc:I

    return v0
.end method

.method public getStartPc()I
    .registers 2

    .line 274
    iget v0, p0, Lcom/s1243808733/android/dx/cf/code/ByteCatchList$Item;->startPc:I

    return v0
.end method
