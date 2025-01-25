.class final Lcom/google/android/gms/internal/ads/Qc;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field final DW:Ljava/lang/String;

.field final FH:I

.field final j6:Lcom/google/android/gms/internal/ads/zzwb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/Mc;)V
    .registers 4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Mc;->Hw()Lcom/google/android/gms/internal/ads/zzwb;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Mc;->j6()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Mc;->DW()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/internal/ads/Qc;-><init>(Lcom/google/android/gms/internal/ads/zzwb;Ljava/lang/String;I)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzwb;Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Qc;->j6:Lcom/google/android/gms/internal/ads/zzwb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Qc;->DW:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/ads/Qc;->FH:I

    return-void
.end method

.method static j6(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/Qc;
    .registers 6

    const-string v0, "\u0000"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5e

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_f
    aget-object v2, p0, v1

    invoke-static {v2, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const/4 v2, 0x1

    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x2

    aget-object p0, p0, v4

    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    array-length v4, p0

    invoke-virtual {v0, p0, v1, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    new-instance p0, Lcom/google/android/gms/internal/ads/Qc;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzwb;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzwb;

    invoke-direct {p0, v1, v3, v2}, Lcom/google/android/gms/internal/ads/Qc;-><init>(Lcom/google/android/gms/internal/ads/zzwb;Ljava/lang/String;I)V
    :try_end_3e
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_3e} :catch_48
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_3e} :catch_46
    .catch Lcom/google/android/gms/common/internal/safeparcel/a$a; {:try_start_f .. :try_end_3e} :catch_44
    .catchall {:try_start_f .. :try_end_3e} :catchall_42

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_42
    move-exception p0

    goto :goto_5a

    :catch_44
    move-exception p0

    goto :goto_49

    :catch_46
    move-exception p0

    goto :goto_49

    :catch_48
    move-exception p0

    :goto_49
    :try_start_49
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v1

    const-string v2, "QueueSeed.decode"

    invoke-virtual {v1, p0, v2}, Lcom/google/android/gms/internal/ads/pk;->j6(Ljava/lang/Throwable;Ljava/lang/String;)V

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Malformed QueueSeed encoding."

    invoke-direct {v1, v2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_5a
    .catchall {:try_start_49 .. :try_end_5a} :catchall_42

    :goto_5a
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0

    :cond_5e
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Incorrect field count for QueueSeed."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method final j6()Ljava/lang/String;
    .registers 10

    const-string v0, "\u0000"

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_6
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Qc;->DW:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    iget v4, p0, Lcom/google/android/gms/internal/ads/Qc;->FH:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/Qc;->j6:Lcom/google/android/gms/internal/ads/zzwb;

    invoke-virtual {v5, v1, v3}, Lcom/google/android/gms/internal/ads/zzwb;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v5

    invoke-static {v5, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v6

    add-int/2addr v5, v7

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_5a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_5a} :catch_60
    .catchall {:try_start_6 .. :try_end_5a} :catchall_5e

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v0

    :catchall_5e
    move-exception v0

    goto :goto_6c

    :catch_60
    move-exception v0

    :try_start_61
    const-string v0, "QueueSeed encode failed because UTF-8 is not available."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->j6(Ljava/lang/String;)V
    :try_end_66
    .catchall {:try_start_61 .. :try_end_66} :catchall_5e

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    const-string v0, ""

    return-object v0

    :goto_6c
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
