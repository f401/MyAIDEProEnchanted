.class public final Lcom/google/android/gms/internal/ads/zzkm;
.super Lcom/google/android/gms/internal/ads/zzkp;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzkm;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final DW:Ljava/lang/String;

.field public final FH:Ljava/lang/String;

.field private final j6:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/aB;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/aB;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzkm;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    const-string v0, "COMM"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzkp;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkm;->j6:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkm;->DW:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkm;->FH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, "COMM"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzkp;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkm;->j6:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzkm;->DW:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzkm;->FH:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    if-eqz p1, :cond_30

    const-class v1, Lcom/google/android/gms/internal/ads/zzkm;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_f

    goto :goto_30

    :cond_f
    check-cast p1, Lcom/google/android/gms/internal/ads/zzkm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkm;->DW:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzkm;->DW:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/TD;->j6(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkm;->j6:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzkm;->j6:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/TD;->j6(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkm;->FH:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzkm;->FH:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/TD;->j6(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_30

    return v0

    :cond_30
    :goto_30
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkm;->j6:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkm;->DW:Ljava/lang/String;

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzkm;->FH:Ljava/lang/String;

    if-eqz v3, :cond_1d

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_1d
    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzkp;->j6:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzkm;->j6:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzkm;->FH:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
