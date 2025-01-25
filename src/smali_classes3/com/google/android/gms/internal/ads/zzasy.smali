.class public final Lcom/google/android/gms/internal/ads/zzasy;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzasy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private DW:Landroid/os/Parcelable;

.field private FH:Z

.field private j6:Landroid/os/ParcelFileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/mi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/mi;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzasy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/ParcelFileDescriptor;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzasy;->j6:Landroid/os/ParcelFileDescriptor;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzasy;->DW:Landroid/os/Parcelable;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzasy;->FH:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzasy;->j6:Landroid/os/ParcelFileDescriptor;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzasy;->DW:Landroid/os/Parcelable;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzasy;->FH:Z

    return-void
.end method

.method private final DW()Landroid/os/ParcelFileDescriptor;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasy;->j6:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_21

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzasy;->DW:Landroid/os/Parcelable;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_1c

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzasy;->j6([B)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzasy;->j6:Landroid/os/ParcelFileDescriptor;

    goto :goto_21

    :catchall_1c
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1

    :cond_21
    :goto_21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasy;->j6:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method private final j6([B)Landroid/os/ParcelFileDescriptor;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B)",
            "Landroid/os/ParcelFileDescriptor;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_5} :catch_20

    const/4 v2, 0x1

    aget-object v2, v1, v2

    :try_start_8
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v3, v2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_d} :catch_20

    :try_start_d
    new-instance v2, Lcom/google/android/gms/internal/ads/ki;

    invoke-direct {v2, p0, v3, p1}, Lcom/google/android/gms/internal/ads/ki;-><init>(Lcom/google/android/gms/internal/ads/zzasy;Ljava/io/OutputStream;[B)V

    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_1a} :catch_1e

    const/4 p1, 0x0

    aget-object p1, v1, p1

    return-object p1

    :catch_1e
    move-exception p1

    goto :goto_22

    :catch_20
    move-exception p1

    move-object v3, v0

    :goto_22
    const-string v1, "Error transporting the ad response"

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v1

    const-string v2, "LargeParcelTeleporter.pipeData.2"

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/ads/pk;->j6(Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/google/android/gms/common/util/k;->j6(Ljava/io/Closeable;)V

    return-object v0
.end method


# virtual methods
.method public final j6(Landroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;",
            ">(",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzasy;->FH:Z

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasy;->j6:Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x0

    if-nez v0, :cond_f

    const-string p1, "File descriptor is empty, returning null."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->j6(Ljava/lang/String;)V

    return-object v1

    :cond_f
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v3, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_19
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    new-array v3, v0, [B

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Ljava/io/DataInputStream;->readFully([BII)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_23} :catch_45
    .catchall {:try_start_19 .. :try_end_23} :catchall_43

    invoke-static {v2}, Lcom/google/android/gms/common/util/k;->j6(Ljava/io/Closeable;)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_2a
    invoke-virtual {v1, v3, v4, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzasy;->DW:Landroid/os/Parcelable;
    :try_end_38
    .catchall {:try_start_2a .. :try_end_38} :catchall_3e

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzasy;->FH:Z

    goto :goto_53

    :catchall_3e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw p1

    :catchall_43
    move-exception p1

    goto :goto_4f

    :catch_45
    move-exception p1

    :try_start_46
    const-string v0, "Could not read from parcel file descriptor"

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4b
    .catchall {:try_start_46 .. :try_end_4b} :catchall_43

    invoke-static {v2}, Lcom/google/android/gms/common/util/k;->j6(Ljava/io/Closeable;)V

    return-object v1

    :goto_4f
    invoke-static {v2}, Lcom/google/android/gms/common/util/k;->j6(Ljava/io/Closeable;)V

    throw p1

    :cond_53
    :goto_53
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzasy;->DW:Landroid/os/Parcelable;

    check-cast p1, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    return-object p1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzasy;->DW()Landroid/os/ParcelFileDescriptor;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzasy;->j6:Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;I)V

    return-void
.end method
