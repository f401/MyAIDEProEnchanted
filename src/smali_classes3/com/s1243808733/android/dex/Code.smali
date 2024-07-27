.class public final Lcom/s1243808733/android/dex/Code;
.super Ljava/lang/Object;
.source "Code.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/android/dex/Code$CatchHandler;,
        Lcom/s1243808733/android/dex/Code$Try;
    }
.end annotation


# instance fields
.field private final catchHandlers:[Lcom/s1243808733/android/dex/Code$CatchHandler;

.field private final debugInfoOffset:I

.field private final insSize:I

.field private final instructions:[S

.field private final outsSize:I

.field private final registersSize:I

.field private final tries:[Lcom/s1243808733/android/dex/Code$Try;


# direct methods
.method public constructor <init>(IIII[S[Lcom/s1243808733/android/dex/Code$Try;[Lcom/s1243808733/android/dex/Code$CatchHandler;)V
    .registers 8

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lcom/s1243808733/android/dex/Code;->registersSize:I

    .line 31
    iput p2, p0, Lcom/s1243808733/android/dex/Code;->insSize:I

    .line 32
    iput p3, p0, Lcom/s1243808733/android/dex/Code;->outsSize:I

    .line 33
    iput p4, p0, Lcom/s1243808733/android/dex/Code;->debugInfoOffset:I

    .line 34
    iput-object p5, p0, Lcom/s1243808733/android/dex/Code;->instructions:[S

    .line 35
    iput-object p6, p0, Lcom/s1243808733/android/dex/Code;->tries:[Lcom/s1243808733/android/dex/Code$Try;

    .line 36
    iput-object p7, p0, Lcom/s1243808733/android/dex/Code;->catchHandlers:[Lcom/s1243808733/android/dex/Code$CatchHandler;

    return-void
.end method


# virtual methods
.method public getCatchHandlers()[Lcom/s1243808733/android/dex/Code$CatchHandler;
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/s1243808733/android/dex/Code;->catchHandlers:[Lcom/s1243808733/android/dex/Code$CatchHandler;

    return-object v0
.end method

.method public getDebugInfoOffset()I
    .registers 2

    .line 52
    iget v0, p0, Lcom/s1243808733/android/dex/Code;->debugInfoOffset:I

    return v0
.end method

.method public getInsSize()I
    .registers 2

    .line 44
    iget v0, p0, Lcom/s1243808733/android/dex/Code;->insSize:I

    return v0
.end method

.method public getInstructions()[S
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/s1243808733/android/dex/Code;->instructions:[S

    return-object v0
.end method

.method public getOutsSize()I
    .registers 2

    .line 48
    iget v0, p0, Lcom/s1243808733/android/dex/Code;->outsSize:I

    return v0
.end method

.method public getRegistersSize()I
    .registers 2

    .line 40
    iget v0, p0, Lcom/s1243808733/android/dex/Code;->registersSize:I

    return v0
.end method

.method public getTries()[Lcom/s1243808733/android/dex/Code$Try;
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/s1243808733/android/dex/Code;->tries:[Lcom/s1243808733/android/dex/Code$Try;

    return-object v0
.end method
