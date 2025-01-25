.class public final Lcom/google/android/gms/internal/ads/zzatb;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzatb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/zzbbi;

.field private final FH:Landroid/content/pm/ApplicationInfo;

.field private final Hw:Ljava/lang/String;

.field private final VH:Ljava/lang/String;

.field private final Zo:Landroid/content/pm/PackageInfo;

.field private final gn:Z

.field private final j6:Landroid/os/Bundle;

.field private final u7:Ljava/lang/String;

.field private final v5:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/ni;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ni;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzatb;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzbbi;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/util/List;Landroid/content/pm/PackageInfo;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Lcom/google/android/gms/internal/ads/zzbbi;",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/PackageInfo;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzatb;->j6:Landroid/os/Bundle;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzatb;->DW:Lcom/google/android/gms/internal/ads/zzbbi;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzatb;->Hw:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzatb;->FH:Landroid/content/pm/ApplicationInfo;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzatb;->v5:Ljava/util/List;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzatb;->Zo:Landroid/content/pm/PackageInfo;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzatb;->VH:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/google/android/gms/internal/ads/zzatb;->gn:Z

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzatb;->u7:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzatb;->j6:Landroid/os/Bundle;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzatb;->DW:Lcom/google/android/gms/internal/ads/zzbbi;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzatb;->FH:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzatb;->Hw:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzatb;->v5:Ljava/util/List;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->DW(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzatb;->Zo:Landroid/content/pm/PackageInfo;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 p2, 0x7

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzatb;->VH:Ljava/lang/String;

    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 p2, 0x8

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzatb;->gn:Z

    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;IZ)V

    const/16 p2, 0x9

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzatb;->u7:Ljava/lang/String;

    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;I)V

    return-void
.end method
