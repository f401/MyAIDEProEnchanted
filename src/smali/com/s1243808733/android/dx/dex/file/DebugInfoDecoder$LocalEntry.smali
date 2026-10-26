.class Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;
.super Ljava/lang/Object;
.source "DebugInfoDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocalEntry"
.end annotation


# instance fields
.field public address:I

.field public isStart:Z

.field public nameIndex:I

.field public reg:I

.field public signatureIndex:I

.field public typeIndex:I


# direct methods
.method public constructor <init>(IZIIII)V
    .locals 0

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput p1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->address:I

    .line 178
    iput-boolean p2, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->isStart:Z

    .line 179
    iput p3, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->reg:I

    .line 180
    iput p4, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->nameIndex:I

    .line 181
    iput p5, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->typeIndex:I

    .line 182
    iput p6, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->signatureIndex:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 9

    .line 187
    iget v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->address:I

    .line 188
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->isStart:Z

    if-eqz v0, :cond_0

    const-string v0, "start"

    :goto_0
    iget v2, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->reg:I

    iget v3, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->nameIndex:I

    .line 189
    iget v4, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->typeIndex:I

    iget v5, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->signatureIndex:I

    .line 187
    const-string v6, "[%x %s v%d %04x %04x %04x]"

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v8

    const/4 v1, 0x1

    aput-object v0, v7, v1

    const/4 v0, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v0

    const/4 v0, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v0

    const/4 v0, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v0

    const/4 v0, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v0

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 188
    :cond_0
    const-string v0, "end"

    goto :goto_0
.end method
