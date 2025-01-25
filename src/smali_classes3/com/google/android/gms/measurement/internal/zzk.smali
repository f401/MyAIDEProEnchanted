.class public final Lcom/google/android/gms/measurement/internal/zzk;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/measurement/internal/zzk;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final packageName:Ljava/lang/String;

.field public final zzade:J

.field public final zzafi:Ljava/lang/String;

.field public final zzafk:Ljava/lang/String;

.field public final zzafo:J

.field public final zzafp:Ljava/lang/String;

.field public final zzafq:J

.field public final zzafr:Z

.field public final zzafs:J

.field public final zzaft:Z

.field public final zzafu:Z

.field public final zzafv:Ljava/lang/String;

.field public final zzagm:Ljava/lang/String;

.field public final zzagn:Z

.field public final zzago:J

.field public final zzagp:I

.field public final zzagq:Z

.field public final zzts:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzl;

    invoke-direct {v0}, Lcom/google/android/gms/measurement/internal/zzl;-><init>()V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzk;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZZLjava/lang/String;)V
    .registers 27

    move-object v0, p0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-object v1, p1

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzk;->packageName:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x0

    goto :goto_13

    :cond_12
    move-object v1, p2

    :goto_13
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzk;->zzafi:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzk;->zzts:Ljava/lang/String;

    move-wide v1, p4

    iput-wide v1, v0, Lcom/google/android/gms/measurement/internal/zzk;->zzafo:J

    move-object v1, p6

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzk;->zzafp:Ljava/lang/String;

    move-wide v1, p7

    iput-wide v1, v0, Lcom/google/android/gms/measurement/internal/zzk;->zzade:J

    move-wide v1, p9

    iput-wide v1, v0, Lcom/google/android/gms/measurement/internal/zzk;->zzafq:J

    move-object v1, p11

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzk;->zzagm:Ljava/lang/String;

    move v1, p12

    iput-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzk;->zzafr:Z

    move/from16 v1, p13

    iput-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzk;->zzagn:Z

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzk;->zzafk:Ljava/lang/String;

    move-wide/from16 v1, p15

    iput-wide v1, v0, Lcom/google/android/gms/measurement/internal/zzk;->zzafs:J

    move-wide/from16 v1, p17

    iput-wide v1, v0, Lcom/google/android/gms/measurement/internal/zzk;->zzago:J

    move/from16 v1, p19

    iput v1, v0, Lcom/google/android/gms/measurement/internal/zzk;->zzagp:I

    move/from16 v1, p20

    iput-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzk;->zzaft:Z

    move/from16 v1, p21

    iput-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzk;->zzafu:Z

    move/from16 v1, p22

    iput-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzk;->zzagq:Z

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzk;->zzafv:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;ZZJLjava/lang/String;JJIZZZLjava/lang/String;)V
    .registers 27

    move-object v0, p0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzk;->packageName:Ljava/lang/String;

    move-object v1, p2

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzk;->zzafi:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzk;->zzts:Ljava/lang/String;

    move-wide v1, p12

    iput-wide v1, v0, Lcom/google/android/gms/measurement/internal/zzk;->zzafo:J

    move-object v1, p4

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzk;->zzafp:Ljava/lang/String;

    move-wide v1, p5

    iput-wide v1, v0, Lcom/google/android/gms/measurement/internal/zzk;->zzade:J

    move-wide v1, p7

    iput-wide v1, v0, Lcom/google/android/gms/measurement/internal/zzk;->zzafq:J

    move-object v1, p9

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzk;->zzagm:Ljava/lang/String;

    move v1, p10

    iput-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzk;->zzafr:Z

    move v1, p11

    iput-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzk;->zzagn:Z

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzk;->zzafk:Ljava/lang/String;

    move-wide/from16 v1, p15

    iput-wide v1, v0, Lcom/google/android/gms/measurement/internal/zzk;->zzafs:J

    move-wide/from16 v1, p17

    iput-wide v1, v0, Lcom/google/android/gms/measurement/internal/zzk;->zzago:J

    move/from16 v1, p19

    iput v1, v0, Lcom/google/android/gms/measurement/internal/zzk;->zzagp:I

    move/from16 v1, p20

    iput-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzk;->zzaft:Z

    move/from16 v1, p21

    iput-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzk;->zzafu:Z

    move/from16 v1, p22

    iput-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzk;->zzagq:Z

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzk;->zzafv:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 8

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzk;->packageName:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzk;->zzafi:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzk;->zzts:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzk;->zzafp:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x6

    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/zzk;->zzade:J

    invoke-static {p1, v0, v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;IJ)V

    const/4 v0, 0x7

    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/zzk;->zzafq:J

    invoke-static {p1, v0, v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;IJ)V

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzk;->zzagm:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v0, 0x9

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzk;->zzafr:Z

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;IZ)V

    const/16 v0, 0xa

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzk;->zzagn:Z

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;IZ)V

    const/16 v0, 0xb

    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/zzk;->zzafo:J

    invoke-static {p1, v0, v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;IJ)V

    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzk;->zzafk:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v0, 0xd

    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/zzk;->zzafs:J

    invoke-static {p1, v0, v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;IJ)V

    const/16 v0, 0xe

    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/zzk;->zzago:J

    invoke-static {p1, v0, v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;IJ)V

    const/16 v0, 0xf

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzk;->zzagp:I

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;II)V

    const/16 v0, 0x10

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzk;->zzaft:Z

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;IZ)V

    const/16 v0, 0x11

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzk;->zzafu:Z

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;IZ)V

    const/16 v0, 0x12

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzk;->zzagq:Z

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;IZ)V

    const/16 v0, 0x13

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzk;->zzafv:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;I)V

    return-void
.end method
