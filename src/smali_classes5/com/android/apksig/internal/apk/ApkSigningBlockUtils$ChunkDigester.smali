.class Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkDigester;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChunkDigester"
.end annotation


# instance fields
.field private final chunkDigests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkDigests;",
            ">;"
        }
    .end annotation
.end field

.field private final dataSupplier:Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkSupplier;

.field private final mdSink:Lcom/android/apksig/util/DataSink;

.field private final messageDigests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/MessageDigest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkSupplier;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkSupplier;",
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkDigests;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkDigester;->dataSupplier:Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkSupplier;

    iput-object p2, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkDigester;->chunkDigests:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkDigester;->messageDigests:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkDigests;

    :try_start_22
    iget-object v2, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkDigester;->messageDigests:Ljava/util/List;

    invoke-static {v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkDigests;->access$200(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkDigests;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_22 .. :try_end_2b} :catch_2c

    goto :goto_16

    :catch_2c
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_33
    iget-object v0, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkDigester;->messageDigests:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/security/MessageDigest;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/MessageDigest;

    invoke-static {v0}, Lcom/android/apksig/util/DataSinks;->asDataSink([Ljava/security/MessageDigest;)Lcom/android/apksig/util/DataSink;

    move-result-object v0

    iput-object v0, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkDigester;->mdSink:Lcom/android/apksig/util/DataSink;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkSupplier;Ljava/util/List;Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkDigester;-><init>(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkSupplier;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    const/4 v0, 0x5

    const/4 v3, 0x0

    new-array v4, v0, [B

    const/16 v0, -0x5b

    int-to-byte v0, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    int-to-byte v0, v0

    aput-byte v0, v4, v3

    :cond_d
    :try_start_d
    iget-object v0, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkDigester;->dataSupplier:Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkSupplier;

    invoke-virtual {v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkSupplier;->get()Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkSupplier$Chunk;

    move-result-object v5

    if-eqz v5, :cond_af

    invoke-static {v5}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkSupplier$Chunk;->access$600(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkSupplier$Chunk;)I

    move-result v0

    int-to-long v6, v0

    const-wide/32 v8, 0x100000

    cmp-long v1, v6, v8

    if-gtz v1, :cond_96

    const/4 v1, 0x1

    invoke-static {v0, v4, v1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->access$500(I[BI)V

    iget-object v0, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkDigester;->mdSink:Lcom/android/apksig/util/DataSink;

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-interface {v0, v4, v1, v2}, Lcom/android/apksig/util/DataSink;->consume([BII)V

    iget-object v0, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkDigester;->mdSink:Lcom/android/apksig/util/DataSink;

    invoke-static {v5}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkSupplier$Chunk;->access$700(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkSupplier$Chunk;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/apksig/util/DataSink;->consume(Ljava/nio/ByteBuffer;)V

    move v2, v3

    :goto_36
    iget-object v0, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkDigester;->chunkDigests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_d

    iget-object v0, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkDigester;->chunkDigests:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkDigests;

    iget-object v1, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkDigester;->messageDigests:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/MessageDigest;

    invoke-static {v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkDigests;->access$400(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkDigests;)[B

    move-result-object v6

    invoke-static {v5}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkSupplier$Chunk;->access$800(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkSupplier$Chunk;)I

    move-result v7

    invoke-static {v0, v7}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkDigests;->access$900(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkDigests;I)I

    move-result v7

    invoke-static {v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkDigests;->access$1000(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkDigests;)I

    move-result v8

    invoke-virtual {v1, v6, v7, v8}, Ljava/security/MessageDigest;->digest([BII)I

    move-result v1

    invoke-static {v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkDigests;->access$1000(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkDigests;)I

    move-result v6

    if-ne v1, v6, :cond_6c

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_36

    :cond_6c
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected output size of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkDigests;->access$300(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$ChunkDigests;)Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " digest: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_8f} :catch_8f
    .catch Ljava/security/DigestException; {:try_start_d .. :try_end_8f} :catch_ad

    :catch_8f
    move-exception v0

    :goto_90
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_96
    :try_start_96
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Chunk size greater than expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_ad} :catch_8f
    .catch Ljava/security/DigestException; {:try_start_96 .. :try_end_ad} :catch_ad

    :catch_ad
    move-exception v0

    goto :goto_90

    :cond_af
    return-void
.end method
