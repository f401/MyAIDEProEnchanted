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
    .registers 7

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
    .registers 9

    .line 187
    iget v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->address:I

    .line 188
    iget-boolean v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->isStart:Z

    if-eqz v1, :cond_9

    const-string v1, "start"

    goto :goto_b

    :cond_9
    const-string v1, "end"

    :goto_b
    iget v2, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->reg:I

    iget v3, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->nameIndex:I

    .line 189
    iget v4, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->typeIndex:I

    iget v5, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->signatureIndex:I

    .line 187
    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    const/4 v0, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    const/4 v0, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    const/4 v0, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    const-string v0, "[%x %s v%d %04x %04x %04x]"

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
