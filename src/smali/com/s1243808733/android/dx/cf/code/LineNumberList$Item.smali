.class public Lcom/s1243808733/android/dx/cf/code/LineNumberList$Item;
.super Ljava/lang/Object;
.source "LineNumberList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dx/cf/code/LineNumberList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field private final lineNumber:I

.field private final startPc:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_14

    if-ltz p2, :cond_c

    .line 162
    iput p1, p0, Lcom/s1243808733/android/dx/cf/code/LineNumberList$Item;->startPc:I

    .line 163
    iput p2, p0, Lcom/s1243808733/android/dx/cf/code/LineNumberList$Item;->lineNumber:I

    return-void

    .line 159
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "lineNumber < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 155
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "startPc < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getLineNumber()I
    .registers 2

    .line 181
    iget v0, p0, Lcom/s1243808733/android/dx/cf/code/LineNumberList$Item;->lineNumber:I

    return v0
.end method

.method public getStartPc()I
    .registers 2

    .line 172
    iget v0, p0, Lcom/s1243808733/android/dx/cf/code/LineNumberList$Item;->startPc:I

    return v0
.end method
