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
    .registers 7

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    if-gez p1, :cond_0

    .line 251
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "startPc < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_0
    if-ge p2, p1, :cond_1

    .line 255
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "endPc < startPc"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_1
    if-gez p3, :cond_2

    .line 259
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "handlerPc < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_2
    iput p1, p0, Lcom/s1243808733/android/dx/cf/code/ByteCatchList$Item;->startPc:I

    .line 263
    iput p2, p0, Lcom/s1243808733/android/dx/cf/code/ByteCatchList$Item;->endPc:I

    .line 264
    iput p3, p0, Lcom/s1243808733/android/dx/cf/code/ByteCatchList$Item;->handlerPc:I

    .line 265
    iput-object p4, p0, Lcom/s1243808733/android/dx/cf/code/ByteCatchList$Item;->exceptionClass:Lcom/s1243808733/android/dx/rop/cst/CstType;

    return-void
.end method


# virtual methods
.method public covers(I)Z
    .registers 3

    .line 314
    iget v0, p0, Lcom/s1243808733/android/dx/cf/code/ByteCatchList$Item;->startPc:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/s1243808733/android/dx/cf/code/ByteCatchList$Item;->endPc:I

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
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

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/ByteCatchList$Item;->exceptionClass:Lcom/s1243808733/android/dx/rop/cst/CstType;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->OBJECT:Lcom/s1243808733/android/dx/rop/cst/CstType;

    goto :goto_0
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
