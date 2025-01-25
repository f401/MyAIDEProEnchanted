.class public final Lcom/google/android/gms/internal/ads/zzfs;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzfs;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final DW:I

.field public final EQ:I

.field public final FH:Ljava/lang/String;

.field private final Hw:Lcom/google/android/gms/internal/ads/zzki;

.field public final J0:I

.field public final J8:F

.field public final Mr:I

.field private final QX:[B

.field private final U2:I

.field public final VH:I

.field private final Ws:I

.field private final XL:Lcom/google/android/gms/internal/ads/zzqi;

.field public final Zo:Ljava/lang/String;

.field private final a8:I

.field public final aM:I

.field public final er:Ljava/lang/String;

.field private gW:I

.field public final gn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public final j3:I

.field public final j6:Ljava/lang/String;

.field public final lg:J

.field public final rN:I

.field public final tp:I

.field public final u7:Lcom/google/android/gms/internal/ads/zzhp;

.field public final v5:Ljava/lang/String;

.field public final we:F

.field private final yS:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/Iy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Iy;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfs;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->j6:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->v5:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->Zo:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->FH:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->DW:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->VH:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->tp:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->EQ:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->we:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->J0:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->J8:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4e

    const/4 v0, 0x1

    goto :goto_4f

    :cond_4e
    const/4 v0, 0x0

    :goto_4f
    if-eqz v0, :cond_56

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    goto :goto_57

    :cond_56
    const/4 v0, 0x0

    :goto_57
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->QX:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->Ws:I

    const-class v0, Lcom/google/android/gms/internal/ads/zzqi;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzqi;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->XL:Lcom/google/android/gms/internal/ads/zzqi;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->aM:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->j3:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->Mr:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->U2:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->a8:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->rN:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->er:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->yS:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzfs;->lg:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzfs;->gn:Ljava/util/List;

    :goto_ae
    if-ge v1, v0, :cond_bc

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfs;->gn:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_ae

    :cond_bc
    const-class v0, Lcom/google/android/gms/internal/ads/zzhp;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhp;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->u7:Lcom/google/android/gms/internal/ads/zzhp;

    const-class v0, Lcom/google/android/gms/internal/ads/zzki;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzki;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfs;->Hw:Lcom/google/android/gms/internal/ads/zzki;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/android/gms/internal/ads/zzqi;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/gms/internal/ads/zzhp;Lcom/google/android/gms/internal/ads/zzki;)V
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIFIF[BI",
            "Lcom/google/android/gms/internal/ads/zzqi;",
            "IIIIII",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/util/List<",
            "[B>;",
            "Lcom/google/android/gms/internal/ads/zzhp;",
            "Lcom/google/android/gms/internal/ads/zzki;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->j6:Ljava/lang/String;

    move-object v1, p2

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->v5:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->Zo:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->FH:Ljava/lang/String;

    move v1, p5

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->DW:I

    move v1, p6

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->VH:I

    move v1, p7

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->tp:I

    move v1, p8

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->EQ:I

    move v1, p9

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->we:F

    move v1, p10

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->J0:I

    move v1, p11

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->J8:F

    move-object v1, p12

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->QX:[B

    move/from16 v1, p13

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->Ws:I

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->XL:Lcom/google/android/gms/internal/ads/zzqi;

    move/from16 v1, p15

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->aM:I

    move/from16 v1, p16

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->j3:I

    move/from16 v1, p17

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->Mr:I

    move/from16 v1, p18

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->U2:I

    move/from16 v1, p19

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->a8:I

    move/from16 v1, p20

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->rN:I

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->er:Ljava/lang/String;

    move/from16 v1, p22

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->yS:I

    move-wide/from16 v1, p23

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->lg:J

    if-nez p25, :cond_5b

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_5d

    :cond_5b
    move-object/from16 v1, p25

    :goto_5d
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->gn:Ljava/util/List;

    move-object/from16 v1, p26

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->u7:Lcom/google/android/gms/internal/ads/zzhp;

    move-object/from16 v1, p27

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->Hw:Lcom/google/android/gms/internal/ads/zzki;

    return-void
.end method

.method public static j6(Ljava/lang/String;Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/zzfs;
    .registers 33

    move-object/from16 v3, p1

    new-instance v28, Lcom/google/android/gms/internal/ads/zzfs;

    move-object/from16 v0, v28

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/high16 v9, -0x40800000  # -1.0f

    const/4 v10, -0x1

    const/high16 v11, -0x40800000  # -1.0f

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, -0x1

    const-wide v23, 0x7fffffffffffffffL

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-direct/range {v0 .. v27}, Lcom/google/android/gms/internal/ads/zzfs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/android/gms/internal/ads/zzqi;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/gms/internal/ads/zzhp;Lcom/google/android/gms/internal/ads/zzki;)V

    return-object v28
.end method

.method public static j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILcom/google/android/gms/internal/ads/zzqi;Lcom/google/android/gms/internal/ads/zzhp;)Lcom/google/android/gms/internal/ads/zzfs;
    .registers 44
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIF",
            "Ljava/util/List<",
            "[B>;IF[BI",
            "Lcom/google/android/gms/internal/ads/zzqi;",
            "Lcom/google/android/gms/internal/ads/zzhp;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzfs;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v25, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v26, p14

    new-instance v28, Lcom/google/android/gms/internal/ads/zzfs;

    move-object/from16 v0, v28

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/high16 v9, -0x40800000  # -1.0f

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, -0x1

    const-wide v23, 0x7fffffffffffffffL

    const/16 v27, 0x0

    invoke-direct/range {v0 .. v27}, Lcom/google/android/gms/internal/ads/zzfs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/android/gms/internal/ads/zzqi;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/gms/internal/ads/zzhp;Lcom/google/android/gms/internal/ads/zzki;)V

    return-object v28
.end method

.method public static j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/google/android/gms/internal/ads/zzhp;ILjava/lang/String;)Lcom/google/android/gms/internal/ads/zzfs;
    .registers 41
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIII",
            "Ljava/util/List<",
            "[B>;",
            "Lcom/google/android/gms/internal/ads/zzhp;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzfs;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move/from16 v6, p4

    move/from16 v15, p5

    move/from16 v16, p6

    move/from16 v17, p7

    move-object/from16 v25, p8

    move-object/from16 v26, p9

    move/from16 v20, p10

    move-object/from16 v21, p11

    new-instance v28, Lcom/google/android/gms/internal/ads/zzfs;

    move-object/from16 v0, v28

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/high16 v9, -0x40800000  # -1.0f

    const/4 v10, -0x1

    const/high16 v11, -0x40800000  # -1.0f

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v22, -0x1

    const-wide v23, 0x7fffffffffffffffL

    const/16 v27, 0x0

    invoke-direct/range {v0 .. v27}, Lcom/google/android/gms/internal/ads/zzfs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/android/gms/internal/ads/zzqi;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/gms/internal/ads/zzhp;Lcom/google/android/gms/internal/ads/zzki;)V

    return-object v28
.end method

.method public static j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/gms/internal/ads/zzhp;ILjava/lang/String;)Lcom/google/android/gms/internal/ads/zzfs;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIII",
            "Ljava/util/List<",
            "[B>;",
            "Lcom/google/android/gms/internal/ads/zzhp;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzfs;"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v9, p8

    move-object/from16 v11, p10

    invoke-static/range {v0 .. v11}, Lcom/google/android/gms/internal/ads/zzfs;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/google/android/gms/internal/ads/zzhp;ILjava/lang/String;)Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v0

    return-object v0
.end method

.method public static j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/google/android/gms/internal/ads/zzhp;JLjava/util/List;)Lcom/google/android/gms/internal/ads/zzfs;
    .registers 40
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "I",
            "Lcom/google/android/gms/internal/ads/zzhp;",
            "J",
            "Ljava/util/List<",
            "[B>;)",
            "Lcom/google/android/gms/internal/ads/zzfs;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move/from16 v20, p4

    move-object/from16 v21, p5

    move-object/from16 v26, p7

    move-wide/from16 v23, p8

    move-object/from16 v25, p10

    new-instance v28, Lcom/google/android/gms/internal/ads/zzfs;

    move-object/from16 v0, v28

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/high16 v9, -0x40800000  # -1.0f

    const/4 v10, -0x1

    const/high16 v11, -0x40800000  # -1.0f

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v22, -0x1

    const/16 v27, 0x0

    invoke-direct/range {v0 .. v27}, Lcom/google/android/gms/internal/ads/zzfs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/android/gms/internal/ads/zzqi;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/gms/internal/ads/zzhp;Lcom/google/android/gms/internal/ads/zzki;)V

    return-object v28
.end method

.method public static j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/google/android/gms/internal/ads/zzhp;)Lcom/google/android/gms/internal/ads/zzfs;
    .registers 18

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v6, -0x1

    const-wide v8, 0x7fffffffffffffffL

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    move-object v0, p0

    move-object v1, p1

    move v4, p4

    move-object/from16 v5, p5

    move-object/from16 v7, p6

    invoke-static/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/zzfs;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/google/android/gms/internal/ads/zzhp;JLjava/util/List;)Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v0

    return-object v0
.end method

.method public static j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/gms/internal/ads/zzhp;)Lcom/google/android/gms/internal/ads/zzfs;
    .registers 34

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v26, p4

    new-instance v28, Lcom/google/android/gms/internal/ads/zzfs;

    move-object/from16 v0, v28

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/high16 v9, -0x40800000  # -1.0f

    const/4 v10, -0x1

    const/high16 v11, -0x40800000  # -1.0f

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, -0x1

    const-wide v23, 0x7fffffffffffffffL

    const/16 v25, 0x0

    const/16 v27, 0x0

    invoke-direct/range {v0 .. v27}, Lcom/google/android/gms/internal/ads/zzfs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/android/gms/internal/ads/zzqi;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/gms/internal/ads/zzhp;Lcom/google/android/gms/internal/ads/zzki;)V

    return-object v28
.end method

.method public static j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzhp;)Lcom/google/android/gms/internal/ads/zzfs;
    .registers 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "[B>;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzhp;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzfs;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v25, p4

    move-object/from16 v21, p5

    move-object/from16 v26, p6

    new-instance v28, Lcom/google/android/gms/internal/ads/zzfs;

    move-object/from16 v0, v28

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/high16 v9, -0x40800000  # -1.0f

    const/4 v10, -0x1

    const/high16 v11, -0x40800000  # -1.0f

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, 0x0

    const/16 v22, -0x1

    const-wide v23, 0x7fffffffffffffffL

    const/16 v27, 0x0

    invoke-direct/range {v0 .. v27}, Lcom/google/android/gms/internal/ads/zzfs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/android/gms/internal/ads/zzqi;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/gms/internal/ads/zzhp;Lcom/google/android/gms/internal/ads/zzki;)V

    return-object v28
.end method

.method public static j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIFLjava/util/List;I)Lcom/google/android/gms/internal/ads/zzfs;
    .registers 39
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIF",
            "Ljava/util/List<",
            "[B>;I)",
            "Lcom/google/android/gms/internal/ads/zzfs;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v20, p9

    new-instance v28, Lcom/google/android/gms/internal/ads/zzfs;

    move-object/from16 v0, v28

    const/4 v6, -0x1

    const/4 v10, -0x1

    const/high16 v11, -0x40800000  # -1.0f

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v21, 0x0

    const/16 v22, -0x1

    const-wide v23, 0x7fffffffffffffffL

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-direct/range {v0 .. v27}, Lcom/google/android/gms/internal/ads/zzfs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/android/gms/internal/ads/zzqi;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/gms/internal/ads/zzhp;Lcom/google/android/gms/internal/ads/zzki;)V

    return-object v28
.end method

.method public static j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/util/List;ILjava/lang/String;)Lcom/google/android/gms/internal/ads/zzfs;
    .registers 39
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/List<",
            "[B>;I",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzfs;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v15, p5

    move/from16 v16, p6

    move/from16 v20, p8

    move-object/from16 v21, p9

    new-instance v28, Lcom/google/android/gms/internal/ads/zzfs;

    move-object/from16 v0, v28

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/high16 v9, -0x40800000  # -1.0f

    const/4 v10, -0x1

    const/high16 v11, -0x40800000  # -1.0f

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v22, -0x1

    const-wide v23, 0x7fffffffffffffffL

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-direct/range {v0 .. v27}, Lcom/google/android/gms/internal/ads/zzfs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/android/gms/internal/ads/zzqi;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/gms/internal/ads/zzhp;Lcom/google/android/gms/internal/ads/zzki;)V

    return-object v28
.end method

.method public static j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/google/android/gms/internal/ads/zzfs;
    .registers 36

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v20, p5

    move-object/from16 v21, p6

    new-instance v28, Lcom/google/android/gms/internal/ads/zzfs;

    move-object/from16 v0, v28

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/high16 v9, -0x40800000  # -1.0f

    const/4 v10, -0x1

    const/high16 v11, -0x40800000  # -1.0f

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v22, -0x1

    const-wide v23, 0x7fffffffffffffffL

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-direct/range {v0 .. v27}, Lcom/google/android/gms/internal/ads/zzfs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/android/gms/internal/ads/zzqi;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/gms/internal/ads/zzhp;Lcom/google/android/gms/internal/ads/zzki;)V

    return-object v28
.end method

.method public static j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)Lcom/google/android/gms/internal/ads/zzfs;
    .registers 37

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v20, p5

    move-object/from16 v21, p6

    move/from16 v22, p7

    new-instance v28, Lcom/google/android/gms/internal/ads/zzfs;

    move-object/from16 v0, v28

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/high16 v9, -0x40800000  # -1.0f

    const/4 v10, -0x1

    const/high16 v11, -0x40800000  # -1.0f

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const-wide v23, 0x7fffffffffffffffL

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-direct/range {v0 .. v27}, Lcom/google/android/gms/internal/ads/zzfs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/android/gms/internal/ads/zzqi;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/gms/internal/ads/zzhp;Lcom/google/android/gms/internal/ads/zzki;)V

    return-object v28
.end method

.method private static j6(Landroid/media/MediaFormat;Ljava/lang/String;I)V
    .registers 4

    const/4 v0, -0x1

    if-eq p2, v0, :cond_6

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_6
    return-void
.end method


# virtual methods
.method public final DW()Landroid/media/MediaFormat;
    .registers 5

    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    const-string v1, "mime"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfs;->Zo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfs;->er:Ljava/lang/String;

    if-eqz v1, :cond_15

    const-string v2, "language"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    const-string v1, "max-input-size"

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzfs;->VH:I

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfs;->j6(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const-string v1, "width"

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzfs;->tp:I

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfs;->j6(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const-string v1, "height"

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzfs;->EQ:I

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfs;->j6(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfs;->we:F

    const/high16 v2, -0x40800000  # -1.0f

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_37

    const-string v2, "frame-rate"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    :cond_37
    const-string v1, "rotation-degrees"

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzfs;->J0:I

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfs;->j6(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const-string v1, "channel-count"

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzfs;->aM:I

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfs;->j6(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const-string v1, "sample-rate"

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzfs;->j3:I

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfs;->j6(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const-string v1, "encoder-delay"

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzfs;->U2:I

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfs;->j6(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const-string v1, "encoder-padding"

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzfs;->a8:I

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfs;->j6(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const/4 v1, 0x0

    :goto_5b
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfs;->gn:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_88

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0xf

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "csd-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfs;->gn:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5b

    :cond_88
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfs;->XL:Lcom/google/android/gms/internal/ads/zzqi;

    if-eqz v1, :cond_ae

    const-string v2, "color-transfer"

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzqi;->FH:I

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzfs;->j6(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const-string v2, "color-standard"

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzqi;->j6:I

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzfs;->j6(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const-string v2, "color-range"

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzqi;->DW:I

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzfs;->j6(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzqi;->Hw:[B

    if-eqz v1, :cond_ae

    const-string v2, "hdr-static-info"

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    :cond_ae
    return-object v0
.end method

.method public final describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_106

    const-class v2, Lcom/google/android/gms/internal/ads/zzfs;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_11

    goto/16 :goto_106

    :cond_11
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfs;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzfs;->DW:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzfs;->DW:I

    if-ne v2, v3, :cond_106

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzfs;->VH:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzfs;->VH:I

    if-ne v2, v3, :cond_106

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzfs;->tp:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzfs;->tp:I

    if-ne v2, v3, :cond_106

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzfs;->EQ:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzfs;->EQ:I

    if-ne v2, v3, :cond_106

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzfs;->we:F

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzfs;->we:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_106

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzfs;->J0:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzfs;->J0:I

    if-ne v2, v3, :cond_106

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzfs;->J8:F

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzfs;->J8:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_106

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzfs;->Ws:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzfs;->Ws:I

    if-ne v2, v3, :cond_106

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzfs;->aM:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzfs;->aM:I

    if-ne v2, v3, :cond_106

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzfs;->j3:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzfs;->j3:I

    if-ne v2, v3, :cond_106

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzfs;->Mr:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzfs;->Mr:I

    if-ne v2, v3, :cond_106

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzfs;->U2:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzfs;->U2:I

    if-ne v2, v3, :cond_106

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzfs;->a8:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzfs;->a8:I

    if-ne v2, v3, :cond_106

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzfs;->lg:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzfs;->lg:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_106

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzfs;->rN:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzfs;->rN:I

    if-ne v2, v3, :cond_106

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfs;->j6:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzfs;->j6:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/TD;->j6(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_106

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfs;->er:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzfs;->er:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/TD;->j6(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_106

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzfs;->yS:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzfs;->yS:I

    if-ne v2, v3, :cond_106

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfs;->v5:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzfs;->v5:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/TD;->j6(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_106

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfs;->Zo:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzfs;->Zo:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/TD;->j6(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_106

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfs;->FH:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzfs;->FH:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/TD;->j6(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_106

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfs;->u7:Lcom/google/android/gms/internal/ads/zzhp;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzfs;->u7:Lcom/google/android/gms/internal/ads/zzhp;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/TD;->j6(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_106

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfs;->Hw:Lcom/google/android/gms/internal/ads/zzki;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzfs;->Hw:Lcom/google/android/gms/internal/ads/zzki;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/TD;->j6(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_106

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfs;->XL:Lcom/google/android/gms/internal/ads/zzqi;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzfs;->XL:Lcom/google/android/gms/internal/ads/zzqi;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/TD;->j6(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_106

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfs;->QX:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzfs;->QX:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_106

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfs;->gn:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzfs;->gn:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_e2

    goto :goto_106

    :cond_e2
    const/4 v2, 0x0

    :goto_e3
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfs;->gn:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_105

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfs;->gn:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzfs;->gn:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_102

    return v1

    :cond_102
    add-int/lit8 v2, v2, 0x1

    goto :goto_e3

    :cond_105
    return v0

    :cond_106
    :goto_106
    return v1
.end method

.method public final hashCode()I
    .registers 15

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->gW:I

    if-nez v0, :cond_7e

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->j6:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    const/4 v0, 0x0

    goto :goto_f

    :cond_b
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_f
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfs;->v5:Ljava/lang/String;

    if-nez v2, :cond_15

    const/4 v2, 0x0

    goto :goto_19

    :cond_15
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_19
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfs;->Zo:Ljava/lang/String;

    if-nez v3, :cond_1f

    const/4 v3, 0x0

    goto :goto_23

    :cond_1f
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_23
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfs;->FH:Ljava/lang/String;

    if-nez v4, :cond_29

    const/4 v4, 0x0

    goto :goto_2d

    :cond_29
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_2d
    iget v5, p0, Lcom/google/android/gms/internal/ads/zzfs;->DW:I

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzfs;->tp:I

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzfs;->EQ:I

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzfs;->aM:I

    iget v9, p0, Lcom/google/android/gms/internal/ads/zzfs;->j3:I

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzfs;->er:Ljava/lang/String;

    if-nez v10, :cond_3d

    const/4 v10, 0x0

    goto :goto_41

    :cond_3d
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v10

    :goto_41
    iget v11, p0, Lcom/google/android/gms/internal/ads/zzfs;->yS:I

    iget-object v12, p0, Lcom/google/android/gms/internal/ads/zzfs;->u7:Lcom/google/android/gms/internal/ads/zzhp;

    if-nez v12, :cond_49

    const/4 v12, 0x0

    goto :goto_4d

    :cond_49
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzhp;->hashCode()I

    move-result v12

    :goto_4d
    iget-object v13, p0, Lcom/google/android/gms/internal/ads/zzfs;->Hw:Lcom/google/android/gms/internal/ads/zzki;

    if-nez v13, :cond_52

    goto :goto_56

    :cond_52
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzki;->hashCode()I

    move-result v1

    :goto_56
    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v5

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v6

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v7

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v8

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v9

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v10

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v11

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v12

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->gW:I

    :cond_7e
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->gW:I

    return v0
.end method

.method public final j6()I
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->tp:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzfs;->EQ:I

    if-ne v2, v1, :cond_a

    goto :goto_d

    :cond_a
    mul-int v0, v0, v2

    return v0

    :cond_d
    :goto_d
    return v1
.end method

.method public final j6(I)Lcom/google/android/gms/internal/ads/zzfs;
    .registers 33

    move-object/from16 v0, p0

    move/from16 v7, p1

    new-instance v29, Lcom/google/android/gms/internal/ads/zzfs;

    move-object/from16 v1, v29

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzfs;->j6:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzfs;->v5:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzfs;->Zo:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzfs;->FH:Ljava/lang/String;

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzfs;->DW:I

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzfs;->tp:I

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzfs;->EQ:I

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzfs;->we:F

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzfs;->J0:I

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzfs;->J8:F

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzfs;->QX:[B

    iget v14, v0, Lcom/google/android/gms/internal/ads/zzfs;->Ws:I

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzfs;->XL:Lcom/google/android/gms/internal/ads/zzqi;

    move-object/from16 p1, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->aM:I

    move/from16 v16, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->j3:I

    move/from16 v17, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->Mr:I

    move/from16 v18, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->U2:I

    move/from16 v19, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->a8:I

    move/from16 v20, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->rN:I

    move/from16 v21, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->er:Ljava/lang/String;

    move-object/from16 v22, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->yS:I

    move/from16 v23, v1

    move-object/from16 v30, v2

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->lg:J

    move-wide/from16 v24, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->gn:Ljava/util/List;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->u7:Lcom/google/android/gms/internal/ads/zzhp;

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->Hw:Lcom/google/android/gms/internal/ads/zzki;

    move-object/from16 v28, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    invoke-direct/range {v1 .. v28}, Lcom/google/android/gms/internal/ads/zzfs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/android/gms/internal/ads/zzqi;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/gms/internal/ads/zzhp;Lcom/google/android/gms/internal/ads/zzki;)V

    return-object v29
.end method

.method public final j6(II)Lcom/google/android/gms/internal/ads/zzfs;
    .registers 33

    move-object/from16 v0, p0

    move/from16 v19, p1

    move/from16 v20, p2

    new-instance v29, Lcom/google/android/gms/internal/ads/zzfs;

    move-object/from16 v1, v29

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzfs;->j6:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzfs;->v5:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzfs;->Zo:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzfs;->FH:Ljava/lang/String;

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzfs;->DW:I

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzfs;->VH:I

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzfs;->tp:I

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzfs;->EQ:I

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzfs;->we:F

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzfs;->J0:I

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzfs;->J8:F

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzfs;->QX:[B

    iget v14, v0, Lcom/google/android/gms/internal/ads/zzfs;->Ws:I

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzfs;->XL:Lcom/google/android/gms/internal/ads/zzqi;

    move-object/from16 p1, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->aM:I

    move/from16 v16, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->j3:I

    move/from16 v17, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->Mr:I

    move/from16 v18, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->rN:I

    move/from16 v21, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->er:Ljava/lang/String;

    move-object/from16 v22, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->yS:I

    move/from16 v23, v1

    move-object/from16 p2, v2

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->lg:J

    move-wide/from16 v24, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->gn:Ljava/util/List;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->u7:Lcom/google/android/gms/internal/ads/zzhp;

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->Hw:Lcom/google/android/gms/internal/ads/zzki;

    move-object/from16 v28, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v1 .. v28}, Lcom/google/android/gms/internal/ads/zzfs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/android/gms/internal/ads/zzqi;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/gms/internal/ads/zzhp;Lcom/google/android/gms/internal/ads/zzki;)V

    return-object v29
.end method

.method public final j6(J)Lcom/google/android/gms/internal/ads/zzfs;
    .registers 33

    move-object/from16 v0, p0

    move-wide/from16 v24, p1

    new-instance v29, Lcom/google/android/gms/internal/ads/zzfs;

    move-object/from16 v1, v29

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzfs;->j6:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzfs;->v5:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzfs;->Zo:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzfs;->FH:Ljava/lang/String;

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzfs;->DW:I

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzfs;->VH:I

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzfs;->tp:I

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzfs;->EQ:I

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzfs;->we:F

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzfs;->J0:I

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzfs;->J8:F

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzfs;->QX:[B

    iget v14, v0, Lcom/google/android/gms/internal/ads/zzfs;->Ws:I

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzfs;->XL:Lcom/google/android/gms/internal/ads/zzqi;

    move-object/from16 p1, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->aM:I

    move/from16 v16, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->j3:I

    move/from16 v17, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->Mr:I

    move/from16 v18, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->U2:I

    move/from16 v19, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->a8:I

    move/from16 v20, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->rN:I

    move/from16 v21, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->er:Ljava/lang/String;

    move-object/from16 v22, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->yS:I

    move/from16 v23, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->gn:Ljava/util/List;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->u7:Lcom/google/android/gms/internal/ads/zzhp;

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->Hw:Lcom/google/android/gms/internal/ads/zzki;

    move-object/from16 v28, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v28}, Lcom/google/android/gms/internal/ads/zzfs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/android/gms/internal/ads/zzqi;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/gms/internal/ads/zzhp;Lcom/google/android/gms/internal/ads/zzki;)V

    return-object v29
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/zzfs;)Lcom/google/android/gms/internal/ads/zzfs;
    .registers 34

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_7

    return-object v0

    :cond_7
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzfs;->j6:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzfs;->FH:Ljava/lang/String;

    if-nez v3, :cond_f

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzfs;->FH:Ljava/lang/String;

    :cond_f
    move-object v5, v3

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzfs;->DW:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_17

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzfs;->DW:I

    :cond_17
    move v6, v3

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzfs;->we:F

    const/high16 v4, -0x40800000  # -1.0f

    cmpl-float v4, v3, v4

    if-nez v4, :cond_22

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzfs;->we:F

    :cond_22
    move v10, v3

    iget v15, v0, Lcom/google/android/gms/internal/ads/zzfs;->rN:I

    iget v14, v1, Lcom/google/android/gms/internal/ads/zzfs;->rN:I

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzfs;->er:Ljava/lang/String;

    if-nez v3, :cond_2d

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzfs;->er:Ljava/lang/String;

    :cond_2d
    move-object/from16 v22, v3

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfs;->u7:Lcom/google/android/gms/internal/ads/zzhp;

    if-eqz v1, :cond_34

    goto :goto_36

    :cond_34
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->u7:Lcom/google/android/gms/internal/ads/zzhp;

    :goto_36
    move-object/from16 v27, v1

    new-instance v29, Lcom/google/android/gms/internal/ads/zzfs;

    move-object/from16 v1, v29

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzfs;->v5:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzfs;->Zo:Ljava/lang/String;

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzfs;->VH:I

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzfs;->tp:I

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzfs;->EQ:I

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzfs;->J0:I

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzfs;->J8:F

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzfs;->QX:[B

    move/from16 v16, v14

    iget v14, v0, Lcom/google/android/gms/internal/ads/zzfs;->Ws:I

    move/from16 v21, v16

    move/from16 v16, v15

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzfs;->XL:Lcom/google/android/gms/internal/ads/zzqi;

    move/from16 v23, v16

    move-object/from16 p1, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->aM:I

    move/from16 v16, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->j3:I

    move/from16 v17, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->Mr:I

    move/from16 v18, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->U2:I

    move/from16 v19, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->a8:I

    move/from16 v20, v1

    or-int v21, v23, v21

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->yS:I

    move/from16 v23, v1

    move-object/from16 v30, v3

    move-object/from16 v31, v4

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzfs;->lg:J

    move-wide/from16 v24, v3

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->gn:Ljava/util/List;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->Hw:Lcom/google/android/gms/internal/ads/zzki;

    move-object/from16 v28, v1

    move-object/from16 v1, p1

    move-object/from16 v3, v30

    move-object/from16 v4, v31

    invoke-direct/range {v1 .. v28}, Lcom/google/android/gms/internal/ads/zzfs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/android/gms/internal/ads/zzqi;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/gms/internal/ads/zzhp;Lcom/google/android/gms/internal/ads/zzki;)V

    return-object v29
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/zzhp;)Lcom/google/android/gms/internal/ads/zzfs;
    .registers 33

    move-object/from16 v0, p0

    move-object/from16 v27, p1

    new-instance v29, Lcom/google/android/gms/internal/ads/zzfs;

    move-object/from16 v1, v29

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzfs;->j6:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzfs;->v5:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzfs;->Zo:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzfs;->FH:Ljava/lang/String;

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzfs;->DW:I

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzfs;->VH:I

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzfs;->tp:I

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzfs;->EQ:I

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzfs;->we:F

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzfs;->J0:I

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzfs;->J8:F

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzfs;->QX:[B

    iget v14, v0, Lcom/google/android/gms/internal/ads/zzfs;->Ws:I

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzfs;->XL:Lcom/google/android/gms/internal/ads/zzqi;

    move-object/from16 p1, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->aM:I

    move/from16 v16, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->j3:I

    move/from16 v17, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->Mr:I

    move/from16 v18, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->U2:I

    move/from16 v19, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->a8:I

    move/from16 v20, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->rN:I

    move/from16 v21, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->er:Ljava/lang/String;

    move-object/from16 v22, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->yS:I

    move/from16 v23, v1

    move-object/from16 v30, v2

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->lg:J

    move-wide/from16 v24, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->gn:Ljava/util/List;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->Hw:Lcom/google/android/gms/internal/ads/zzki;

    move-object/from16 v28, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    invoke-direct/range {v1 .. v28}, Lcom/google/android/gms/internal/ads/zzfs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/android/gms/internal/ads/zzqi;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/gms/internal/ads/zzhp;Lcom/google/android/gms/internal/ads/zzki;)V

    return-object v29
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/zzki;)Lcom/google/android/gms/internal/ads/zzfs;
    .registers 33

    move-object/from16 v0, p0

    move-object/from16 v28, p1

    new-instance v29, Lcom/google/android/gms/internal/ads/zzfs;

    move-object/from16 v1, v29

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzfs;->j6:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzfs;->v5:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzfs;->Zo:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzfs;->FH:Ljava/lang/String;

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzfs;->DW:I

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzfs;->VH:I

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzfs;->tp:I

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzfs;->EQ:I

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzfs;->we:F

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzfs;->J0:I

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzfs;->J8:F

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzfs;->QX:[B

    iget v14, v0, Lcom/google/android/gms/internal/ads/zzfs;->Ws:I

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzfs;->XL:Lcom/google/android/gms/internal/ads/zzqi;

    move-object/from16 p1, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->aM:I

    move/from16 v16, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->j3:I

    move/from16 v17, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->Mr:I

    move/from16 v18, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->U2:I

    move/from16 v19, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->a8:I

    move/from16 v20, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->rN:I

    move/from16 v21, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->er:Ljava/lang/String;

    move-object/from16 v22, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->yS:I

    move/from16 v23, v1

    move-object/from16 v30, v2

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->lg:J

    move-wide/from16 v24, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->gn:Ljava/util/List;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfs;->u7:Lcom/google/android/gms/internal/ads/zzhp;

    move-object/from16 v27, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    invoke-direct/range {v1 .. v28}, Lcom/google/android/gms/internal/ads/zzfs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/android/gms/internal/ads/zzqi;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/gms/internal/ads/zzhp;Lcom/google/android/gms/internal/ads/zzki;)V

    return-object v29
.end method

.method public final toString()Ljava/lang/String;
    .registers 14

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->j6:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfs;->v5:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfs;->Zo:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzfs;->DW:I

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfs;->er:Ljava/lang/String;

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzfs;->tp:I

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzfs;->EQ:I

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzfs;->we:F

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzfs;->aM:I

    iget v9, p0, Lcom/google/android/gms/internal/ads/zzfs;->j3:I

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, 0x64

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v11, "Format("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ["

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "], ["

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "])"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->j6:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->v5:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->Zo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->FH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->DW:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->VH:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->tp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->EQ:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->we:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->J0:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->J8:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->QX:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_3e

    const/4 v0, 0x1

    goto :goto_3f

    :cond_3e
    const/4 v0, 0x0

    :goto_3f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->QX:[B

    if-eqz v0, :cond_49

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    :cond_49
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->Ws:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->XL:Lcom/google/android/gms/internal/ads/zzqi;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzfs;->aM:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzfs;->j3:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzfs;->Mr:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzfs;->U2:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzfs;->a8:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzfs;->rN:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfs;->er:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzfs;->yS:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzfs;->lg:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfs;->gn:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_8a
    if-ge v0, p2, :cond_9a

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfs;->gn:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8a

    :cond_9a
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfs;->u7:Lcom/google/android/gms/internal/ads/zzhp;

    invoke-virtual {p1, p2, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfs;->Hw:Lcom/google/android/gms/internal/ads/zzki;

    invoke-virtual {p1, p2, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
