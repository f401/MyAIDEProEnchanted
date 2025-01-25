.class public abstract Lcom/google/android/gms/internal/ads/Ca;
.super Lcom/google/android/gms/internal/ads/my;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Ba;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.formats.client.IAttributionInfo"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/my;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5

    const/4 p2, 0x2

    if-eq p1, p2, :cond_13

    const/4 p2, 0x3

    if-eq p1, p2, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Ba;->cc()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto :goto_1d

    :cond_13
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Ba;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_1d
    const/4 p1, 0x1

    return p1
.end method
