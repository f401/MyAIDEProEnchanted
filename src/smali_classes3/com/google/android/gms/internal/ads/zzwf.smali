.class public Lcom/google/android/gms/internal/ads/zzwf;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzwf;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final DW:I

.field public final FH:I

.field public final Hw:Z

.field public final VH:[Lcom/google/android/gms/internal/ads/zzwf;

.field public final Zo:I

.field public final gn:Z

.field public final j6:Ljava/lang/String;

.field public tp:Z

.field public final u7:Z

.field public final v5:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/gH;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/gH;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzwf;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 12

    const-string v1, "interstitial_mb"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/zzwf;-><init>(Ljava/lang/String;IIZII[Lcom/google/android/gms/internal/ads/zzwf;ZZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/d;)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/ads/d;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzwf;-><init>(Landroid/content/Context;[Lcom/google/android/gms/ads/d;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Lcom/google/android/gms/ads/d;)V
    .registers 16

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x0

    aget-object v1, p2, v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->Hw:Z

    invoke-virtual {v1}, Lcom/google/android/gms/ads/d;->FH()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzwf;->u7:Z

    if-eqz v2, :cond_1f

    sget-object v3, Lcom/google/android/gms/ads/d;->j6:Lcom/google/android/gms/ads/d;

    invoke-virtual {v3}, Lcom/google/android/gms/ads/d;->DW()I

    move-result v3

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzwf;->v5:I

    sget-object v3, Lcom/google/android/gms/ads/d;->j6:Lcom/google/android/gms/ads/d;

    invoke-virtual {v3}, Lcom/google/android/gms/ads/d;->j6()I

    move-result v3

    goto :goto_29

    :cond_1f
    invoke-virtual {v1}, Lcom/google/android/gms/ads/d;->DW()I

    move-result v3

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzwf;->v5:I

    invoke-virtual {v1}, Lcom/google/android/gms/ads/d;->j6()I

    move-result v3

    :goto_29
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzwf;->DW:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzwf;->v5:I

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-ne v3, v4, :cond_33

    const/4 v3, 0x1

    goto :goto_34

    :cond_33
    const/4 v3, 0x0

    :goto_34
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzwf;->DW:I

    const/4 v6, -0x2

    if-ne v4, v6, :cond_3b

    const/4 v4, 0x1

    goto :goto_3c

    :cond_3b
    const/4 v4, 0x0

    :goto_3c
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    if-eqz v3, :cond_89

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Zl;->Hw(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_63

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Zl;->v5(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_63

    iget v7, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Zl;->Zo(Landroid/content/Context;)I

    move-result v8

    sub-int/2addr v7, v8

    goto :goto_65

    :cond_63
    iget v7, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_65
    iput v7, p0, Lcom/google/android/gms/internal/ads/zzwf;->Zo:I

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzwf;->Zo:I

    int-to-float v7, v7

    iget v8, v6, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v7, v8

    float-to-double v7, v7

    double-to-int v9, v7

    int-to-double v10, v9

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v7, v10

    const-wide v10, 0x3f847ae147ae147bL  # 0.01

    cmpl-double v12, v7, v10

    if-ltz v12, :cond_96

    add-int/lit8 v9, v9, 0x1

    goto :goto_96

    :cond_89
    iget v9, p0, Lcom/google/android/gms/internal/ads/zzwf;->v5:I

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzwf;->v5:I

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/Zl;->j6(Landroid/util/DisplayMetrics;I)I

    move-result v7

    iput v7, p0, Lcom/google/android/gms/internal/ads/zzwf;->Zo:I

    :cond_96
    :goto_96
    if-eqz v4, :cond_9d

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzwf;->FH(Landroid/util/DisplayMetrics;)I

    move-result v7

    goto :goto_9f

    :cond_9d
    iget v7, p0, Lcom/google/android/gms/internal/ads/zzwf;->DW:I

    :goto_9f
    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/Zl;->j6(Landroid/util/DisplayMetrics;I)I

    move-result v6

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzwf;->FH:I

    if-nez v3, :cond_b7

    if-eqz v4, :cond_ad

    goto :goto_b7

    :cond_ad
    if-eqz v2, :cond_b2

    const-string v1, "320x50_mb"

    goto :goto_d2

    :cond_b2
    invoke-virtual {v1}, Lcom/google/android/gms/ads/d;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_d2

    :cond_b7
    :goto_b7
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1a

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_as"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_d2
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzwf;->j6:Ljava/lang/String;

    array-length v1, p2

    if-le v1, v5, :cond_ee

    array-length v1, p2

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzwf;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzwf;->VH:[Lcom/google/android/gms/internal/ads/zzwf;

    const/4 v1, 0x0

    :goto_dd
    array-length v2, p2

    if-ge v1, v2, :cond_f1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzwf;->VH:[Lcom/google/android/gms/internal/ads/zzwf;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzwf;

    aget-object v4, p2, v1

    invoke-direct {v3, p1, v4}, Lcom/google/android/gms/internal/ads/zzwf;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/d;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_dd

    :cond_ee
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwf;->VH:[Lcom/google/android/gms/internal/ads/zzwf;

    :cond_f1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->gn:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->tp:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzwf;[Lcom/google/android/gms/internal/ads/zzwf;)V
    .registers 14

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzwf;->j6:Ljava/lang/String;

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzwf;->DW:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzwf;->FH:I

    iget-boolean v4, p1, Lcom/google/android/gms/internal/ads/zzwf;->Hw:Z

    iget v5, p1, Lcom/google/android/gms/internal/ads/zzwf;->v5:I

    iget v6, p1, Lcom/google/android/gms/internal/ads/zzwf;->Zo:I

    iget-boolean v8, p1, Lcom/google/android/gms/internal/ads/zzwf;->gn:Z

    iget-boolean v9, p1, Lcom/google/android/gms/internal/ads/zzwf;->u7:Z

    iget-boolean v10, p1, Lcom/google/android/gms/internal/ads/zzwf;->tp:Z

    move-object v0, p0

    move-object v7, p2

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/zzwf;-><init>(Ljava/lang/String;IIZII[Lcom/google/android/gms/internal/ads/zzwf;ZZZ)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;IIZII[Lcom/google/android/gms/internal/ads/zzwf;ZZZ)V
    .registers 11

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwf;->j6:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzwf;->DW:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzwf;->FH:I

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzwf;->Hw:Z

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzwf;->v5:I

    iput p6, p0, Lcom/google/android/gms/internal/ads/zzwf;->Zo:I

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzwf;->VH:[Lcom/google/android/gms/internal/ads/zzwf;

    iput-boolean p8, p0, Lcom/google/android/gms/internal/ads/zzwf;->gn:Z

    iput-boolean p9, p0, Lcom/google/android/gms/internal/ads/zzwf;->u7:Z

    iput-boolean p10, p0, Lcom/google/android/gms/internal/ads/zzwf;->tp:Z

    return-void
.end method

.method public static DW(Landroid/util/DisplayMetrics;)I
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzwf;->FH(Landroid/util/DisplayMetrics;)I

    move-result v0

    int-to-float v0, v0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, p0

    float-to-int p0, v0

    return p0
.end method

.method public static DW()Lcom/google/android/gms/internal/ads/zzwf;
    .registers 12

    new-instance v11, Lcom/google/android/gms/internal/ads/zzwf;

    const-string v1, "reward_mb"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/zzwf;-><init>(Ljava/lang/String;IIZII[Lcom/google/android/gms/internal/ads/zzwf;ZZZ)V

    return-object v11
.end method

.method private static FH(Landroid/util/DisplayMetrics;)I
    .registers 2

    iget v0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, p0

    float-to-int p0, v0

    const/16 v0, 0x190

    if-gt p0, v0, :cond_e

    const/16 p0, 0x20

    return p0

    :cond_e
    const/16 v0, 0x2d0

    if-gt p0, v0, :cond_15

    const/16 p0, 0x32

    return p0

    :cond_15
    const/16 p0, 0x5a

    return p0
.end method

.method public static j6(Landroid/util/DisplayMetrics;)I
    .registers 1

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    return p0
.end method

.method public static j6(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzwf;
    .registers 12

    new-instance p0, Lcom/google/android/gms/internal/ads/zzwf;

    const-string v1, "320x50_mb"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/zzwf;-><init>(Ljava/lang/String;IIZII[Lcom/google/android/gms/internal/ads/zzwf;ZZZ)V

    return-object p0
.end method


# virtual methods
.method public final FH()Lcom/google/android/gms/ads/d;
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwf;->v5:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzwf;->DW:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzwf;->j6:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/ads/l;->j6(IILjava/lang/String;)Lcom/google/android/gms/ads/d;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwf;->j6:Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzwf;->DW:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;II)V

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzwf;->FH:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;II)V

    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzwf;->Hw:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x6

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzwf;->v5:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;II)V

    const/4 v1, 0x7

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzwf;->Zo:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;II)V

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzwf;->VH:[Lcom/google/android/gms/internal/ads/zzwf;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    const/16 p2, 0x9

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzwf;->gn:Z

    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;IZ)V

    const/16 p2, 0xa

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzwf;->u7:Z

    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;IZ)V

    const/16 p2, 0xb

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzwf;->tp:Z

    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;I)V

    return-void
.end method
