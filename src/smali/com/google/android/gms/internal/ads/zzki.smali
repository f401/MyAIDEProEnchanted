.class public final Lcom/google/android/gms/internal/ads/zzki;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzki$zza;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/ads/zzki;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final j6:[Lcom/google/android/gms/internal/ads/zzki$zza;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/ZA;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ZA;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzki;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzki$zza;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->j6:[Lcom/google/android/gms/internal/ads/zzki$zza;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzki;->j6:[Lcom/google/android/gms/internal/ads/zzki$zza;

    array-length v0, v2

    if-ge v1, v0, :cond_0

    const-class v0, Lcom/google/android/gms/internal/ads/zzki$zza;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzki$zza;

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/gms/internal/ads/zzki$zza;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzki$zza;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->j6:[Lcom/google/android/gms/internal/ads/zzki$zza;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->j6:[Lcom/google/android/gms/internal/ads/zzki$zza;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    const-class v0, Lcom/google/android/gms/internal/ads/zzki;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzki;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->j6:[Lcom/google/android/gms/internal/ads/zzki$zza;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzki;->j6:[Lcom/google/android/gms/internal/ads/zzki$zza;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->j6:[Lcom/google/android/gms/internal/ads/zzki$zza;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final j6()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->j6:[Lcom/google/android/gms/internal/ads/zzki$zza;

    array-length v0, v0

    return v0
.end method

.method public final j6(I)Lcom/google/android/gms/internal/ads/zzki$zza;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->j6:[Lcom/google/android/gms/internal/ads/zzki$zza;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->j6:[Lcom/google/android/gms/internal/ads/zzki$zza;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzki;->j6:[Lcom/google/android/gms/internal/ads/zzki$zza;

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    invoke-virtual {p1, v4, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
