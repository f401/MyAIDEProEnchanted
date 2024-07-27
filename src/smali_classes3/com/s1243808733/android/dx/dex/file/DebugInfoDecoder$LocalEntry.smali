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
    .registers 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 187
    new-instance v1, Ljava/lang/Integer;

    iget v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->address:I

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    iget-boolean v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->isStart:Z

    if-eqz v0, :cond_0

    const-string v0, "start"

    :goto_0
    const-string v2, "[%x %s v%d %04x %04x %04x]"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v0, v3, v1

    const/4 v0, 0x2

    new-instance v1, Ljava/lang/Integer;

    iget v4, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->reg:I

    invoke-direct {v1, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v3, v0

    const/4 v0, 0x3

    new-instance v1, Ljava/lang/Integer;

    iget v4, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->nameIndex:I

    invoke-direct {v1, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v3, v0

    const/4 v0, 0x4

    new-instance v1, Ljava/lang/Integer;

    iget v4, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->typeIndex:I

    invoke-direct {v1, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v3, v0

    const/4 v0, 0x5

    new-instance v1, Ljava/lang/Integer;

    iget v4, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->signatureIndex:I

    invoke-direct {v1, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "end"

    goto :goto_0
.end method
