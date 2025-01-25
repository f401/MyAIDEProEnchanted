.class public Lcom/bumptech/glide/signature/MediaStoreSignature;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/Key;


# instance fields
.field private final dateModified:J

.field private final mimeType:Ljava/lang/String;

.field private final orientation:I


# direct methods
.method public constructor <init>(Ljava/lang/String;JI)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->mimeType:Ljava/lang/String;

    iput-wide p2, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->dateModified:J

    iput p4, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->orientation:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, p1, :cond_6

    :cond_4
    move v0, v1

    :cond_5
    :goto_5
    return v0

    :cond_6
    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_5

    check-cast p1, Lcom/bumptech/glide/signature/MediaStoreSignature;

    iget-wide v2, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->dateModified:J

    iget-wide v4, p1, Lcom/bumptech/glide/signature/MediaStoreSignature;->dateModified:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    iget v2, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->orientation:I

    iget v3, p1, Lcom/bumptech/glide/signature/MediaStoreSignature;->orientation:I

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->mimeType:Ljava/lang/String;

    if-eqz v2, :cond_31

    iget-object v2, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->mimeType:Ljava/lang/String;

    iget-object v3, p1, Lcom/bumptech/glide/signature/MediaStoreSignature;->mimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_5

    :cond_31
    iget-object v2, p1, Lcom/bumptech/glide/signature/MediaStoreSignature;->mimeType:Ljava/lang/String;

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_5
.end method

.method public hashCode()I
    .registers 7

    iget-object v0, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->mimeType:Ljava/lang/String;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->mimeType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_a
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->dateModified:J

    iget-wide v4, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->dateModified:J

    const/16 v1, 0x20

    ushr-long/2addr v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->orientation:I

    add-int/2addr v0, v1

    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/16 v0, 0xc

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-wide v2, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->dateModified:J

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->orientation:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    iget-object v0, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->mimeType:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method
