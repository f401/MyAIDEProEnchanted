.class public final Lcom/google/android/gms/ads/internal/zzaq;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/ads/internal/zzaq;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final DW:Z

.field private final FH:Ljava/lang/String;

.field public final Hw:Z

.field public final VH:Z

.field public final Zo:I

.field public final gn:Z

.field public final j6:Z

.field public final u7:Z

.field public final v5:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/ads/internal/r;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/r;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/zzaq;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ZZLjava/lang/String;ZFIZZZ)V
    .registers 10

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/zzaq;->j6:Z

    iput-boolean p2, p0, Lcom/google/android/gms/ads/internal/zzaq;->DW:Z

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zzaq;->FH:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/ads/internal/zzaq;->Hw:Z

    iput p5, p0, Lcom/google/android/gms/ads/internal/zzaq;->v5:F

    iput p6, p0, Lcom/google/android/gms/ads/internal/zzaq;->Zo:I

    iput-boolean p7, p0, Lcom/google/android/gms/ads/internal/zzaq;->VH:Z

    iput-boolean p8, p0, Lcom/google/android/gms/ads/internal/zzaq;->gn:Z

    iput-boolean p9, p0, Lcom/google/android/gms/ads/internal/zzaq;->u7:Z

    return-void
.end method

.method public constructor <init>(ZZZFIZZZ)V
    .registers 19

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/ads/internal/zzaq;-><init>(ZZLjava/lang/String;ZFIZZZ)V

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;)I

    move-result p2

    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/zzaq;->j6:Z

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;IZ)V

    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/zzaq;->DW:Z

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;IZ)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzaq;->FH:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/zzaq;->Hw:Z

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;IZ)V

    const/4 v0, 0x6

    iget v1, p0, Lcom/google/android/gms/ads/internal/zzaq;->v5:F

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;IF)V

    const/4 v0, 0x7

    iget v1, p0, Lcom/google/android/gms/ads/internal/zzaq;->Zo:I

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;II)V

    const/16 v0, 0x8

    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/zzaq;->VH:Z

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;IZ)V

    const/16 v0, 0x9

    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/zzaq;->gn:Z

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;IZ)V

    const/16 v0, 0xa

    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/zzaq;->u7:Z

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;IZ)V

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;I)V

    return-void
.end method
