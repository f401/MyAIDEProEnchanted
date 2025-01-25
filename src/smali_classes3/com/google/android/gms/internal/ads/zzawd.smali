.class public final Lcom/google/android/gms/internal/ads/zzawd;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzawd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final DW:I

.field public final j6:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/Kj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Kj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzawd;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Labcd/gx;)V
    .registers 3

    invoke-interface {p1}, Labcd/gx;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Labcd/gx;->Z1()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzawd;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzawd;->j6:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzawd;->DW:I

    return-void
.end method

.method public static j6(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzawd;
    .registers 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    :try_start_8
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzawd;->j6(Lorg/json/JSONArray;)Lcom/google/android/gms/internal/ads/zzawd;

    move-result-object p0
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_11} :catch_12

    return-object p0

    :catch_12
    move-exception p0

    return-object v1
.end method

.method public static j6(Lorg/json/JSONArray;)Lcom/google/android/gms/internal/ads/zzawd;
    .registers 5

    if-eqz p0, :cond_24

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_24

    :cond_9
    new-instance v0, Lcom/google/android/gms/internal/ads/zzawd;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "rb_type"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "rb_amount"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-direct {v0, v2, p0}, Lcom/google/android/gms/internal/ads/zzawd;-><init>(Ljava/lang/String;I)V

    return-object v0

    :cond_24
    :goto_24
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    if-eqz p1, :cond_27

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzawd;

    if-nez v0, :cond_7

    goto :goto_27

    :cond_7
    check-cast p1, Lcom/google/android/gms/internal/ads/zzawd;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawd;->j6:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzawd;->j6:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/q;->j6(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzawd;->DW:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzawd;->DW:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/q;->j6(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_27

    const/4 p1, 0x1

    return p1

    :cond_27
    :goto_27
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzawd;->j6:Ljava/lang/String;

    aput-object v2, v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzawd;->DW:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/q;->j6([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawd;->j6:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x3

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzawd;->DW:I

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;II)V

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;I)V

    return-void
.end method
