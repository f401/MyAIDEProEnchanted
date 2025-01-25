.class public abstract Lcom/s1243808733/android/dx/io/instructions/BaseCodeCursor;
.super Ljava/lang/Object;
.source "BaseCodeCursor.java"

# interfaces
.implements Lcom/s1243808733/android/dx/io/instructions/CodeCursor;


# instance fields
.field private final baseAddressMap:Lcom/s1243808733/android/dx/io/instructions/AddressMap;

.field private cursor:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/s1243808733/android/dx/io/instructions/AddressMap;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/io/instructions/AddressMap;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/io/instructions/BaseCodeCursor;->baseAddressMap:Lcom/s1243808733/android/dx/io/instructions/AddressMap;

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/s1243808733/android/dx/io/instructions/BaseCodeCursor;->cursor:I

    return-void
.end method


# virtual methods
.method protected final advance(I)V
    .registers 3

    .line 60
    iget v0, p0, Lcom/s1243808733/android/dx/io/instructions/BaseCodeCursor;->cursor:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/s1243808733/android/dx/io/instructions/BaseCodeCursor;->cursor:I

    return-void
.end method

.method public final baseAddressForCursor()I
    .registers 3

    .line 46
    iget-object v0, p0, Lcom/s1243808733/android/dx/io/instructions/BaseCodeCursor;->baseAddressMap:Lcom/s1243808733/android/dx/io/instructions/AddressMap;

    iget v1, p0, Lcom/s1243808733/android/dx/io/instructions/BaseCodeCursor;->cursor:I

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/io/instructions/AddressMap;->get(I)I

    move-result v0

    if-ltz v0, :cond_b

    goto :goto_d

    .line 47
    :cond_b
    iget v0, p0, Lcom/s1243808733/android/dx/io/instructions/BaseCodeCursor;->cursor:I

    :goto_d
    return v0
.end method

.method public final cursor()I
    .registers 2

    .line 40
    iget v0, p0, Lcom/s1243808733/android/dx/io/instructions/BaseCodeCursor;->cursor:I

    return v0
.end method

.method public final setBaseAddress(II)V
    .registers 4

    .line 53
    iget-object v0, p0, Lcom/s1243808733/android/dx/io/instructions/BaseCodeCursor;->baseAddressMap:Lcom/s1243808733/android/dx/io/instructions/AddressMap;

    invoke-virtual {v0, p1, p2}, Lcom/s1243808733/android/dx/io/instructions/AddressMap;->put(II)V

    return-void
.end method
