.class public final Lcom/google/android/gms/measurement/internal/zzfv;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/measurement/internal/zzfv;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final name:Ljava/lang/String;

.field public final origin:Ljava/lang/String;

.field private final versionCode:I

.field public final zzaml:Ljava/lang/String;

.field public final zzauk:J

.field public final zzaul:Ljava/lang/Long;

.field private final zzaum:Ljava/lang/Float;

.field public final zzaun:Ljava/lang/Double;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzfw;

    invoke-direct {v0}, Lcom/google/android/gms/measurement/internal/zzfw;-><init>()V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzfv;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;JLjava/lang/Long;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;)V
    .registers 10

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/measurement/internal/zzfv;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfv;->name:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzauk:J

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzaul:Ljava/lang/Long;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzaum:Ljava/lang/Float;

    const/4 p3, 0x1

    if-ne p1, p3, :cond_1e

    if-eqz p6, :cond_1b

    invoke-virtual {p6}, Ljava/lang/Float;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    :cond_1b
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzaun:Ljava/lang/Double;

    goto :goto_20

    :cond_1e
    iput-object p9, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzaun:Ljava/lang/Double;

    :goto_20
    iput-object p7, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzaml:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/measurement/internal/zzfv;->origin:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzfx;)V
    .registers 8

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzfx;->name:Ljava/lang/String;

    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzfx;->zzauk:J

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzfx;->value:Ljava/lang/Object;

    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/zzfx;->origin:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzfv;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->versionCode:I

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfv;->name:Ljava/lang/String;

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzauk:J

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzfv;->origin:Ljava/lang/String;

    const/4 p1, 0x0

    if-nez p4, :cond_1b

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzaul:Ljava/lang/Long;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzaum:Ljava/lang/Float;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzaun:Ljava/lang/Double;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzaml:Ljava/lang/String;

    return-void

    :cond_1b
    instance-of p2, p4, Ljava/lang/Long;

    if-eqz p2, :cond_2a

    check-cast p4, Ljava/lang/Long;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzaul:Ljava/lang/Long;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzaum:Ljava/lang/Float;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzaun:Ljava/lang/Double;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzaml:Ljava/lang/String;

    return-void

    :cond_2a
    instance-of p2, p4, Ljava/lang/String;

    if-eqz p2, :cond_39

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzaul:Ljava/lang/Long;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzaum:Ljava/lang/Float;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzaun:Ljava/lang/Double;

    check-cast p4, Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzaml:Ljava/lang/String;

    return-void

    :cond_39
    instance-of p2, p4, Ljava/lang/Double;

    if-eqz p2, :cond_48

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzaul:Ljava/lang/Long;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzaum:Ljava/lang/Float;

    check-cast p4, Ljava/lang/Double;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzaun:Ljava/lang/Double;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzaml:Ljava/lang/String;

    return-void

    :cond_48
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "User attribute given of un-supported type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final getValue()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzaul:Ljava/lang/Long;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzaun:Ljava/lang/Double;

    if-eqz v0, :cond_a

    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzaml:Ljava/lang/String;

    if-eqz v0, :cond_f

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 8

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;)I

    move-result p2

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzfv;->versionCode:I

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;II)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->name:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x3

    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzauk:J

    invoke-static {p1, v0, v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;IJ)V

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzaul:Ljava/lang/Long;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;ILjava/lang/Long;Z)V

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;ILjava/lang/Float;Z)V

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzaml:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfv;->origin:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzaun:Ljava/lang/Double;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;ILjava/lang/Double;Z)V

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;I)V

    return-void
.end method
