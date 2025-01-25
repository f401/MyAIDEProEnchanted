.class public final Lcom/google/android/gms/internal/ads/zzkk;
.super Lcom/google/android/gms/internal/ads/zzkp;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzkk;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final DW:Ljava/lang/String;

.field private final FH:I

.field private final Hw:[B

.field private final j6:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/_A;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/_A;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzkk;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    const-string v0, "APIC"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzkp;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkk;->j6:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkk;->DW:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzkk;->FH:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkk;->Hw:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I[B)V
    .registers 5

    const-string p2, "APIC"

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzkp;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkk;->j6:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkk;->DW:Ljava/lang/String;

    const/4 p1, 0x3

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzkk;->FH:I

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzkk;->Hw:[B

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    if-eqz p1, :cond_36

    const-class v1, Lcom/google/android/gms/internal/ads/zzkk;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_f

    goto :goto_36

    :cond_f
    check-cast p1, Lcom/google/android/gms/internal/ads/zzkk;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzkk;->FH:I

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzkk;->FH:I

    if-ne v1, v2, :cond_36

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkk;->j6:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzkk;->j6:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/TD;->j6(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkk;->DW:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzkk;->DW:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/TD;->j6(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkk;->Hw:[B

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzkk;->Hw:[B

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_36

    return v0

    :cond_36
    :goto_36
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .registers 5

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzkk;->FH:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkk;->j6:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzkk;->DW:Ljava/lang/String;

    if-eqz v3, :cond_15

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_15
    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkk;->Hw:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzkk;->j6:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzkk;->DW:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzkk;->FH:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzkk;->Hw:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
