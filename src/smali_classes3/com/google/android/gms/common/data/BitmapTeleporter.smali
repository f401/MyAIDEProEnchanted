.class public Lcom/google/android/gms/common/data/BitmapTeleporter;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/common/data/BitmapTeleporter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private DW:Landroid/os/ParcelFileDescriptor;

.field private final FH:I

.field private Hw:Landroid/graphics/Bitmap;

.field private Zo:Ljava/io/File;

.field private final j6:I

.field private v5:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/common/data/a;

    invoke-direct {v0}, Lcom/google/android/gms/common/data/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/data/BitmapTeleporter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/ParcelFileDescriptor;I)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/data/BitmapTeleporter;->j6:I

    iput-object p2, p0, Lcom/google/android/gms/common/data/BitmapTeleporter;->DW:Landroid/os/ParcelFileDescriptor;

    iput p3, p0, Lcom/google/android/gms/common/data/BitmapTeleporter;->FH:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/common/data/BitmapTeleporter;->Hw:Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/common/data/BitmapTeleporter;->v5:Z

    return-void
.end method

.method private final DW()Ljava/io/FileOutputStream;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/common/data/BitmapTeleporter;->Zo:Ljava/io/File;

    if-eqz v0, :cond_2f

    :try_start_4
    const-string v1, "teleporter"

    const-string v2, ".tmp"

    invoke-static {v1, v2, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_c} :catch_26

    :try_start_c
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/high16 v2, 0x10000000

    invoke-static {v0, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/common/data/BitmapTeleporter;->DW:Landroid/os/ParcelFileDescriptor;
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_19} :catch_1d

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-object v1

    :catch_1d
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Temporary file is somehow already deleted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_26
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not create temporary file"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setTempDir() must be called before writing this object to a parcel"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static j6(Ljava/io/Closeable;)V
    .registers 3

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p0

    const-string v0, "BitmapTeleporter"

    const-string v1, "Could not close stream"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/common/data/BitmapTeleporter;->DW:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_5c

    iget-object v0, p0, Lcom/google/android/gms/common/data/BitmapTeleporter;->Hw:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int v1, v1, v2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    new-instance v2, Ljava/io/DataOutputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {p0}, Lcom/google/android/gms/common/data/BitmapTeleporter;->DW()Ljava/io/FileOutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_29
    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap$Config;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_49} :catch_4f
    .catchall {:try_start_29 .. :try_end_49} :catchall_4d

    invoke-static {v2}, Lcom/google/android/gms/common/data/BitmapTeleporter;->j6(Ljava/io/Closeable;)V

    goto :goto_5c

    :catchall_4d
    move-exception p1

    goto :goto_58

    :catch_4f
    move-exception p1

    :try_start_50
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Could not write into unlinked file"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_58
    .catchall {:try_start_50 .. :try_end_58} :catchall_4d

    :goto_58
    invoke-static {v2}, Lcom/google/android/gms/common/data/BitmapTeleporter;->j6(Ljava/io/Closeable;)V

    throw p1

    :cond_5c
    :goto_5c
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/common/data/BitmapTeleporter;->j6:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lcom/google/android/gms/common/data/BitmapTeleporter;->DW:Landroid/os/ParcelFileDescriptor;

    or-int/2addr p2, v2

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 p2, 0x3

    iget v1, p0, Lcom/google/android/gms/common/data/BitmapTeleporter;->FH:I

    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;II)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/common/data/BitmapTeleporter;->DW:Landroid/os/ParcelFileDescriptor;

    return-void
.end method
