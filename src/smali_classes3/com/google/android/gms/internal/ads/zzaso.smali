.class public final Lcom/google/android/gms/internal/ads/zzaso;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzaso;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final DW:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final j6:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/bi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/bi;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaso;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzaso;-><init>(ZLjava/util/List;)V

    return-void
.end method

.method public constructor <init>(ZLjava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaso;->j6:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaso;->DW:Ljava/util/List;

    return-void
.end method

.method public static j6(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzaso;
    .registers 6

    if-nez p0, :cond_8

    new-instance p0, Lcom/google/android/gms/internal/ads/zzaso;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaso;-><init>()V

    return-object p0

    :cond_8
    const-string v0, "reporting_urls"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_2d

    const/4 v2, 0x0

    :goto_16
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2d

    :try_start_1c
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_23
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_23} :catch_24

    goto :goto_2a

    :catch_24
    move-exception v3

    const-string v4, "Error grabbing url from json."

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_2d
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaso;

    const-string v2, "enable_protection"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzaso;-><init>(ZLjava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;)I

    move-result p2

    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaso;->j6:Z

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;IZ)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaso;->DW:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->DW(Landroid/os/Parcel;ILjava/util/List;Z)V

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;I)V

    return-void
.end method
