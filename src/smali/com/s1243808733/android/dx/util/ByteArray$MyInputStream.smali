.class public Lcom/s1243808733/android/dx/util/ByteArray$MyInputStream;
.super Ljava/io/InputStream;
.source "ByteArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dx/util/ByteArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyInputStream"
.end annotation


# instance fields
.field private cursor:I

.field private mark:I

.field final this$0:Lcom/s1243808733/android/dx/util/ByteArray;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/util/ByteArray;)V
    .registers 2

    .line 296
    iput-object p1, p0, Lcom/s1243808733/android/dx/util/ByteArray$MyInputStream;->this$0:Lcom/s1243808733/android/dx/util/ByteArray;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 297
    const/4 p1, 0x0

    iput p1, p0, Lcom/s1243808733/android/dx/util/ByteArray$MyInputStream;->cursor:I

    .line 298
    iput p1, p0, Lcom/s1243808733/android/dx/util/ByteArray$MyInputStream;->mark:I

    return-void
.end method


# virtual methods
.method public available()I
    .registers 3

    .line 330
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/ByteArray$MyInputStream;->this$0:Lcom/s1243808733/android/dx/util/ByteArray;

    invoke-static {v0}, Lcom/s1243808733/android/dx/util/ByteArray;->-$$Nest$fgetsize(Lcom/s1243808733/android/dx/util/ByteArray;)I

    move-result v0

    iget v1, p0, Lcom/s1243808733/android/dx/util/ByteArray$MyInputStream;->cursor:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public mark(I)V
    .registers 2

    .line 335
    iget p1, p0, Lcom/s1243808733/android/dx/util/ByteArray$MyInputStream;->cursor:I

    iput p1, p0, Lcom/s1243808733/android/dx/util/ByteArray$MyInputStream;->mark:I

    return-void
.end method

.method public markSupported()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 303
    iget v0, p0, Lcom/s1243808733/android/dx/util/ByteArray$MyInputStream;->cursor:I

    iget-object v1, p0, Lcom/s1243808733/android/dx/util/ByteArray$MyInputStream;->this$0:Lcom/s1243808733/android/dx/util/ByteArray;

    invoke-static {v1}, Lcom/s1243808733/android/dx/util/ByteArray;->-$$Nest$fgetsize(Lcom/s1243808733/android/dx/util/ByteArray;)I

    move-result v1

    if-lt v0, v1, :cond_c

    const/4 v0, -0x1

    return v0

    .line 307
    :cond_c
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/ByteArray$MyInputStream;->this$0:Lcom/s1243808733/android/dx/util/ByteArray;

    iget v1, p0, Lcom/s1243808733/android/dx/util/ByteArray$MyInputStream;->cursor:I

    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/util/ByteArray;->-$$Nest$mgetUnsignedByte0(Lcom/s1243808733/android/dx/util/ByteArray;I)I

    move-result v0

    .line 308
    iget v1, p0, Lcom/s1243808733/android/dx/util/ByteArray$MyInputStream;->cursor:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/s1243808733/android/dx/util/ByteArray$MyInputStream;->cursor:I

    return v0
.end method

.method public read([BII)I
    .registers 7

    .line 314
    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_7

    .line 315
    array-length p3, p1

    sub-int/2addr p3, p2

    .line 318
    :cond_7
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/ByteArray$MyInputStream;->this$0:Lcom/s1243808733/android/dx/util/ByteArray;

    invoke-static {v0}, Lcom/s1243808733/android/dx/util/ByteArray;->-$$Nest$fgetsize(Lcom/s1243808733/android/dx/util/ByteArray;)I

    move-result v0

    iget v1, p0, Lcom/s1243808733/android/dx/util/ByteArray$MyInputStream;->cursor:I

    sub-int/2addr v0, v1

    if-le p3, v0, :cond_13

    move p3, v0

    .line 323
    :cond_13
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/ByteArray$MyInputStream;->this$0:Lcom/s1243808733/android/dx/util/ByteArray;

    invoke-static {v0}, Lcom/s1243808733/android/dx/util/ByteArray;->-$$Nest$fgetbytes(Lcom/s1243808733/android/dx/util/ByteArray;)[B

    move-result-object v0

    iget v1, p0, Lcom/s1243808733/android/dx/util/ByteArray$MyInputStream;->cursor:I

    iget-object v2, p0, Lcom/s1243808733/android/dx/util/ByteArray$MyInputStream;->this$0:Lcom/s1243808733/android/dx/util/ByteArray;

    invoke-static {v2}, Lcom/s1243808733/android/dx/util/ByteArray;->-$$Nest$fgetstart(Lcom/s1243808733/android/dx/util/ByteArray;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 324
    iget p1, p0, Lcom/s1243808733/android/dx/util/ByteArray$MyInputStream;->cursor:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/s1243808733/android/dx/util/ByteArray$MyInputStream;->cursor:I

    return p3
.end method

.method public reset()V
    .registers 2

    .line 340
    iget v0, p0, Lcom/s1243808733/android/dx/util/ByteArray$MyInputStream;->mark:I

    iput v0, p0, Lcom/s1243808733/android/dx/util/ByteArray$MyInputStream;->cursor:I

    return-void
.end method
