.class public Lcom/bumptech/glide/load/model/ImageVideoWrapperEncoder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/Encoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/Encoder",
        "<",
        "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field private final fileDescriptorEncoder:Lcom/bumptech/glide/load/Encoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Encoder",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private id:Ljava/lang/String;

.field private final streamEncoder:Lcom/bumptech/glide/load/Encoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Encoder",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/Encoder;Lcom/bumptech/glide/load/Encoder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Encoder",
            "<",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/bumptech/glide/load/Encoder",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/model/ImageVideoWrapperEncoder;->streamEncoder:Lcom/bumptech/glide/load/Encoder;

    iput-object p2, p0, Lcom/bumptech/glide/load/model/ImageVideoWrapperEncoder;->fileDescriptorEncoder:Lcom/bumptech/glide/load/Encoder;

    return-void
.end method


# virtual methods
.method public encode(Lcom/bumptech/glide/load/model/ImageVideoWrapper;Ljava/io/OutputStream;)Z
    .registers 5

    invoke-virtual {p1}, Lcom/bumptech/glide/load/model/ImageVideoWrapper;->getStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/bumptech/glide/load/model/ImageVideoWrapperEncoder;->streamEncoder:Lcom/bumptech/glide/load/Encoder;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/model/ImageVideoWrapper;->getStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/bumptech/glide/load/Encoder;->encode(Ljava/lang/Object;Ljava/io/OutputStream;)Z

    move-result v0

    :goto_10
    return v0

    :cond_11
    iget-object v0, p0, Lcom/bumptech/glide/load/model/ImageVideoWrapperEncoder;->fileDescriptorEncoder:Lcom/bumptech/glide/load/Encoder;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/model/ImageVideoWrapper;->getFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/bumptech/glide/load/Encoder;->encode(Ljava/lang/Object;Ljava/io/OutputStream;)Z

    move-result v0

    goto :goto_10
.end method

.method public bridge synthetic encode(Ljava/lang/Object;Ljava/io/OutputStream;)Z
    .registers 4

    check-cast p1, Lcom/bumptech/glide/load/model/ImageVideoWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/model/ImageVideoWrapperEncoder;->encode(Lcom/bumptech/glide/load/model/ImageVideoWrapper;Ljava/io/OutputStream;)Z

    move-result v0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/bumptech/glide/load/model/ImageVideoWrapperEncoder;->id:Ljava/lang/String;

    if-nez v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bumptech/glide/load/model/ImageVideoWrapperEncoder;->streamEncoder:Lcom/bumptech/glide/load/Encoder;

    invoke-interface {v1}, Lcom/bumptech/glide/load/Encoder;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/model/ImageVideoWrapperEncoder;->fileDescriptorEncoder:Lcom/bumptech/glide/load/Encoder;

    invoke-interface {v1}, Lcom/bumptech/glide/load/Encoder;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/model/ImageVideoWrapperEncoder;->id:Ljava/lang/String;

    :cond_23
    iget-object v0, p0, Lcom/bumptech/glide/load/model/ImageVideoWrapperEncoder;->id:Ljava/lang/String;

    return-object v0
.end method
