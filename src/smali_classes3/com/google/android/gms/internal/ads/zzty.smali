.class public final Lcom/google/android/gms/internal/ads/zzty;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzty;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final DW:J

.field private final FH:Ljava/lang/String;

.field private final Hw:Ljava/lang/String;

.field public final VH:Z

.field private final Zo:Landroid/os/Bundle;

.field public gn:J

.field public final j6:Ljava/lang/String;

.field private final v5:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/KF;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/KF;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzty;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZJ)V
    .registers 11

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzty;->j6:Ljava/lang/String;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzty;->DW:J

    const-string p1, ""

    if-eqz p4, :cond_c

    goto :goto_d

    :cond_c
    move-object p4, p1

    :goto_d
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzty;->FH:Ljava/lang/String;

    if-eqz p5, :cond_12

    goto :goto_13

    :cond_12
    move-object p5, p1

    :goto_13
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzty;->Hw:Ljava/lang/String;

    if-eqz p6, :cond_18

    goto :goto_19

    :cond_18
    move-object p6, p1

    :goto_19
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzty;->v5:Ljava/lang/String;

    if-eqz p7, :cond_1e

    goto :goto_23

    :cond_1e
    new-instance p7, Landroid/os/Bundle;

    invoke-direct {p7}, Landroid/os/Bundle;-><init>()V

    :goto_23
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzty;->Zo:Landroid/os/Bundle;

    iput-boolean p8, p0, Lcom/google/android/gms/internal/ads/zzty;->VH:Z

    iput-wide p9, p0, Lcom/google/android/gms/internal/ads/zzty;->gn:J

    return-void
.end method

.method public static j6(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzty;
    .registers 15

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "gcache"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return-object v0

    :cond_e
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_34

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x3e

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Expected 2 path parts for namespace and id, found :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    return-object v0

    :cond_34
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v7

    const-string v1, "url"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "1"

    const-string v2, "read_only"

    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const-string v1, "expiration"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_66

    const-wide/16 v1, 0x0

    :goto_64
    move-wide v5, v1

    goto :goto_6b

    :cond_66
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_64

    :goto_6b
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->VH()Lcom/google/android/gms/internal/ads/Vk;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/Vk;->j6(Landroid/net/Uri;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7c
    :goto_7c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "tag."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7c

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7c

    :cond_9d
    new-instance p0, Lcom/google/android/gms/internal/ads/zzty;

    const-wide/16 v12, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v13}, Lcom/google/android/gms/internal/ads/zzty;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZJ)V
    :try_end_a5
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_a5} :catch_a8
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_a5} :catch_a6

    return-object p0

    :catch_a6
    move-exception p0

    goto :goto_a9

    :catch_a8
    move-exception p0

    :goto_a9
    const-string v1, "Unable to parse Uri into cache offering."

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static j6(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzty;
    .registers 1

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzty;->j6(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzty;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 8

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzty;->j6:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x3

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzty;->DW:J

    invoke-static {p1, v0, v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;IJ)V

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzty;->FH:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzty;->Hw:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzty;->v5:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzty;->Zo:Landroid/os/Bundle;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    const/16 v0, 0x8

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzty;->VH:Z

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;IZ)V

    const/16 v0, 0x9

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzty;->gn:J

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;IJ)V

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;I)V

    return-void
.end method
