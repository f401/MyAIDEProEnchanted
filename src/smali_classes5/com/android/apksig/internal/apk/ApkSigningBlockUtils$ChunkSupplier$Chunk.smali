.class Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkSupplier$Chunk;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkSupplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Chunk"
.end annotation


# instance fields
.field private final chunkIndex:I

.field private final data:Ljava/nio/ByteBuffer;

.field private final size:I


# direct methods
.method private constructor <init>(ILjava/nio/ByteBuffer;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkSupplier$Chunk;->chunkIndex:I

    iput-object p2, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkSupplier$Chunk;->data:Ljava/nio/ByteBuffer;

    iput p3, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkSupplier$Chunk;->size:I

    return-void
.end method

.method synthetic constructor <init>(ILjava/nio/ByteBuffer;ILcom/android/apksig/internal/apk/ApkSigningBlockUtils$1;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkSupplier$Chunk;-><init>(ILjava/nio/ByteBuffer;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkSupplier$Chunk;)I
    .registers 2

    iget v0, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkSupplier$Chunk;->size:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkSupplier$Chunk;)Ljava/nio/ByteBuffer;
    .registers 2

    iget-object v0, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkSupplier$Chunk;->data:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkSupplier$Chunk;)I
    .registers 2

    iget v0, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkSupplier$Chunk;->chunkIndex:I

    return v0
.end method
