.class public Lcom/s1243808733/android/dex/Code$CatchHandler;
.super Ljava/lang/Object;
.source "Code.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dex/Code;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CatchHandler"
.end annotation


# instance fields
.field final addresses:[I

.field final catchAllAddress:I

.field final offset:I

.field final typeIndexes:[I


# direct methods
.method public constructor <init>([I[III)V
    .registers 5

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/s1243808733/android/dex/Code$CatchHandler;->typeIndexes:[I

    .line 103
    iput-object p2, p0, Lcom/s1243808733/android/dex/Code$CatchHandler;->addresses:[I

    .line 104
    iput p3, p0, Lcom/s1243808733/android/dex/Code$CatchHandler;->catchAllAddress:I

    .line 105
    iput p4, p0, Lcom/s1243808733/android/dex/Code$CatchHandler;->offset:I

    return-void
.end method


# virtual methods
.method public getAddresses()[I
    .registers 2

    .line 113
    iget-object v0, p0, Lcom/s1243808733/android/dex/Code$CatchHandler;->addresses:[I

    return-object v0
.end method

.method public getCatchAllAddress()I
    .registers 2

    .line 117
    iget v0, p0, Lcom/s1243808733/android/dex/Code$CatchHandler;->catchAllAddress:I

    return v0
.end method

.method public getOffset()I
    .registers 2

    .line 121
    iget v0, p0, Lcom/s1243808733/android/dex/Code$CatchHandler;->offset:I

    return v0
.end method

.method public getTypeIndexes()[I
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/s1243808733/android/dex/Code$CatchHandler;->typeIndexes:[I

    return-object v0
.end method
