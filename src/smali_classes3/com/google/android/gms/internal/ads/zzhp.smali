.class public final Lcom/google/android/gms/internal/ads/zzhp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzhp$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/util/Comparator<",
        "Lcom/google/android/gms/internal/ads/zzhp$zza;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzhp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private DW:I

.field public final FH:I

.field private final j6:[Lcom/google/android/gms/internal/ads/zzhp$zza;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/Fz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Fz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhp$zza;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/gms/internal/ads/zzhp$zza;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhp;->j6:[Lcom/google/android/gms/internal/ads/zzhp$zza;

    array-length p1, p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzhp;->FH:I

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzhp$zza;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzhp$zza;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/gms/internal/ads/zzhp$zza;

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzhp;-><init>(Z[Lcom/google/android/gms/internal/ads/zzhp$zza;)V

    return-void
.end method

.method private varargs constructor <init>(Z[Lcom/google/android/gms/internal/ads/zzhp$zza;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_c

    invoke-virtual {p2}, [Lcom/google/android/gms/internal/ads/zzhp$zza;->clone()Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, [Lcom/google/android/gms/internal/ads/zzhp$zza;

    :cond_c
    invoke-static {p2, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 p1, 0x1

    :goto_10
    array-length v0, p2

    if-ge p1, v0, :cond_55

    add-int/lit8 v0, p1, -0x1

    aget-object v0, p2, v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhp$zza;->j6(Lcom/google/android/gms/internal/ads/zzhp$zza;)Ljava/util/UUID;

    move-result-object v0

    aget-object v1, p2, p1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhp$zza;->j6(Lcom/google/android/gms/internal/ads/zzhp$zza;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    add-int/lit8 p1, p1, 0x1

    goto :goto_10

    :cond_2a
    aget-object p1, p2, p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhp$zza;->j6(Lcom/google/android/gms/internal/ads/zzhp$zza;)Ljava/util/UUID;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x19

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Duplicate data for uuid: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_55
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhp;->j6:[Lcom/google/android/gms/internal/ads/zzhp$zza;

    array-length p1, p2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzhp;->FH:I

    return-void
.end method

.method public varargs constructor <init>([Lcom/google/android/gms/internal/ads/zzhp$zza;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzhp;-><init>(Z[Lcom/google/android/gms/internal/ads/zzhp$zza;)V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5

    check-cast p1, Lcom/google/android/gms/internal/ads/zzhp$zza;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzhp$zza;

    sget-object v0, Lcom/google/android/gms/internal/ads/uy;->DW:Ljava/util/UUID;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhp$zza;->j6(Lcom/google/android/gms/internal/ads/zzhp$zza;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    sget-object p1, Lcom/google/android/gms/internal/ads/uy;->DW:Ljava/util/UUID;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzhp$zza;->j6(Lcom/google/android/gms/internal/ads/zzhp$zza;)Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    const/4 p1, 0x0

    return p1

    :cond_1e
    const/4 p1, 0x1

    return p1

    :cond_20
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhp$zza;->j6(Lcom/google/android/gms/internal/ads/zzhp$zza;)Ljava/util/UUID;

    move-result-object p1

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzhp$zza;->j6(Lcom/google/android/gms/internal/ads/zzhp$zza;)Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/UUID;->compareTo(Ljava/util/UUID;)I

    move-result p1

    return p1
.end method

.method public final describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    if-eqz p1, :cond_1a

    const-class v0, Lcom/google/android/gms/internal/ads/zzhp;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_f

    goto :goto_1a

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->j6:[Lcom/google/android/gms/internal/ads/zzhp$zza;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzhp;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzhp;->j6:[Lcom/google/android/gms/internal/ads/zzhp$zza;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1a
    :goto_1a
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->DW:I

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->j6:[Lcom/google/android/gms/internal/ads/zzhp$zza;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->DW:I

    :cond_c
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->DW:I

    return v0
.end method

.method public final j6(I)Lcom/google/android/gms/internal/ads/zzhp$zza;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->j6:[Lcom/google/android/gms/internal/ads/zzhp$zza;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzhp;->j6:[Lcom/google/android/gms/internal/ads/zzhp$zza;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return-void
.end method
