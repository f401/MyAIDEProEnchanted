.class public Lcom/bumptech/glide/load/model/ImageVideoWrapper;
.super Ljava/lang/Object;


# instance fields
.field private final fileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private final streamData:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Landroid/os/ParcelFileDescriptor;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/model/ImageVideoWrapper;->streamData:Ljava/io/InputStream;

    iput-object p2, p0, Lcom/bumptech/glide/load/model/ImageVideoWrapper;->fileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-void
.end method


# virtual methods
.method public getFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/model/ImageVideoWrapper;->fileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public getStream()Ljava/io/InputStream;
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/model/ImageVideoWrapper;->streamData:Ljava/io/InputStream;

    return-object v0
.end method
