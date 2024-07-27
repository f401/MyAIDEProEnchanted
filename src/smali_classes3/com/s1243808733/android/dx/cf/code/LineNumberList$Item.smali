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
    .registers 5

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    if-gez p1, :cond_0

    .line 155
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "startPc < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_0
    if-gez p2, :cond_1

    .line 159
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "lineNumber < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_1
    iput p1, p0, Lcom/s1243808733/android/dx/cf/code/LineNumberList$Item;->startPc:I

    .line 163
    iput p2, p0, Lcom/s1243808733/android/dx/cf/code/LineNumberList$Item;->lineNumber:I

    return-void
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
