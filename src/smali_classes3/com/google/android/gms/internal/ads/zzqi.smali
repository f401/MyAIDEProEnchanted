.class public final Lcom/google/android/gms/internal/ads/zzqi;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzqi;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final DW:I

.field public final FH:I

.field public final Hw:[B

.field public final j6:I

.field private v5:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/XD;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/XD;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzqi;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(III[B)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzqi;->j6:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzqi;->DW:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzqi;->FH:I

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzqi;->Hw:[B

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzqi;->j6:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzqi;->DW:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzqi;->FH:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    if-eqz v0, :cond_25

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    goto :goto_26

    :cond_25
    const/4 p1, 0x0

    :goto_26
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqi;->Hw:[B

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    if-eqz p1, :cond_2f

    const-class v1, Lcom/google/android/gms/internal/ads/zzqi;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_f

    goto :goto_2f

    :cond_f
    check-cast p1, Lcom/google/android/gms/internal/ads/zzqi;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzqi;->j6:I

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzqi;->j6:I

    if-ne v1, v2, :cond_2f

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzqi;->DW:I

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzqi;->DW:I

    if-ne v1, v2, :cond_2f

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzqi;->FH:I

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzqi;->FH:I

    if-ne v1, v2, :cond_2f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqi;->Hw:[B

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzqi;->Hw:[B

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-nez p1, :cond_2e

    goto :goto_2f

    :cond_2e
    return v0

    :cond_2f
    :goto_2f
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzqi;->v5:I

    if-nez v0, :cond_1d

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzqi;->j6:I

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzqi;->DW:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzqi;->FH:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqi;->Hw:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzqi;->v5:I

    :cond_1d
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzqi;->v5:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 7

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzqi;->j6:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzqi;->DW:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzqi;->FH:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzqi;->Hw:[B

    if-eqz v3, :cond_c

    const/4 v3, 0x1

    goto :goto_d

    :cond_c
    const/4 v3, 0x0

    :goto_d
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x37

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "ColorInfo("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzqi;->j6:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzqi;->DW:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzqi;->FH:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzqi;->Hw:[B

    if-eqz p2, :cond_15

    const/4 p2, 0x1

    goto :goto_16

    :cond_15
    const/4 p2, 0x0

    :goto_16
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzqi;->Hw:[B

    if-eqz p2, :cond_20

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    :cond_20
    return-void
.end method
