.class public final Lcom/google/android/gms/internal/ads/zzfs;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
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
            "Ljava/util/List",
            "<[B>;"
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

    const/4 v1, 0x0

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

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    :goto_1
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

    move-result v2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->gn:Ljava/util/List;

    move v0, v1

    :goto_2
    if-ge v0, v2, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfs;->gn:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
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

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzki;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->Hw:Lcom/google/android/gms/internal/ads/zzki;

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
            "Ljava/util/List",
            "<[B>;",
            "Lcom/google/android/gms/internal/ads/zzhp;",
            "Lcom/google/android/gms/internal/ads/zzki;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfs;->j6:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfs;->v5:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfs;->Zo:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfs;->FH:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzfs;->DW:I

    iput p6, p0, Lcom/google/android/gms/internal/ads/zzfs;->VH:I

    iput p7, p0, Lcom/google/android/gms/internal/ads/zzfs;->tp:I

    iput p8, p0, Lcom/google/android/gms/internal/ads/zzfs;->EQ:I

    iput p9, p0, Lcom/google/android/gms/internal/ads/zzfs;->we:F

    iput p10, p0, Lcom/google/android/gms/internal/ads/zzfs;->J0:I

    iput p11, p0, Lcom/google/android/gms/internal/ads/zzfs;->J8:F

    iput-object p12, p0, Lcom/google/android/gms/internal/ads/zzfs;->QX:[B

    move/from16 v0, p13

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->Ws:I

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->XL:Lcom/google/android/gms/internal/ads/zzqi;

    move/from16 v0, p15

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->aM:I

    move/from16 v0, p16

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->j3:I

    move/from16 v0, p17

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->Mr:I

    move/from16 v0, p18

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->U2:I

    move/from16 v0, p19

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->a8:I

    move/from16 v0, p20

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->rN:I

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->er:Ljava/lang/String;

    move/from16 v0, p22

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->yS:I

    move-wide/from16 v0, p23

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->lg:J

    if-nez p25, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p25

    :cond_0
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->gn:Ljava/util/List;

    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->u7:Lcom/google/android/gms/internal/ads/zzhp;

    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->Hw:Lcom/google/android/gms/internal/ads/zzki;

    return-void
.end method

.method public static j6(Ljava/lang/String;Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/zzfs;
    .registers 33

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfs;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/high16 v10, -0x40800000    # -1.0f

    const/4 v11, -0x1

    const/high16 v12, -0x40800000    # -1.0f

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, -0x1

    const-wide v24, 0x7fffffffffffffffL

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v4, p1

    invoke-direct/range {v1 .. v28}, Lcom/google/android/gms/internal/ads/zzfs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/android/gms/internal/ads/zzqi;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/gms/internal/ads/zzhp;Lcom/google/android/gms/internal/ads/zzki;)V

    return-object v1
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
            "Ljava/util/List",
            "<[B>;IF[BI",
            "Lcom/google/android/gms/internal/ads/zzqi;",
            "Lcom/google/android/gms/internal/ads/zzhp;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzfs;"
        }
    .end annotation

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfs;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/high16 v10, -0x40800000    # -1.0f

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, -0x1

    const-wide v24, 0x7fffffffffffffffL

    const/16 v28, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v13, p11

    move/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v26, p8

    move-object/from16 v27, p14

    invoke-direct/range {v1 .. v28}, Lcom/google/android/gms/internal/ads/zzfs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/android/gms/internal/ads/zzqi;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/gms/internal/ads/zzhp;Lcom/google/android/gms/internal/ads/zzki;)V

    return-object v1
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
            "Ljava/util/List",
            "<[B>;",
            "Lcom/google/android/gms/internal/ads/zzhp;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzfs;"
        }
    .end annotation

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfs;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/high16 v10, -0x40800000    # -1.0f

    const/4 v11, -0x1

    const/high16 v12, -0x40800000    # -1.0f

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v23, -0x1

    const-wide v24, 0x7fffffffffffffffL

    const/16 v28, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move/from16 v7, p4

    move/from16 v16, p5

    move/from16 v17, p6

    move/from16 v18, p7

    move/from16 v21, p10

    move-object/from16 v22, p11

    move-object/from16 v26, p8

    move-object/from16 v27, p9

    invoke-direct/range {v1 .. v28}, Lcom/google/android/gms/internal/ads/zzfs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/android/gms/internal/ads/zzqi;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/gms/internal/ads/zzhp;Lcom/google/android/gms/internal/ads/zzki;)V

    return-object v1
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
            "Ljava/util/List",
            "<[B>;",
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
    .registers 41
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
            "Ljava/util/List",
            "<[B>;)",
            "Lcom/google/android/gms/internal/ads/zzfs;"
        }
    .end annotation

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfs;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/high16 v10, -0x40800000    # -1.0f

    const/4 v11, -0x1

    const/high16 v12, -0x40800000    # -1.0f

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v23, -0x1

    const/16 v28, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move/from16 v21, p4

    move-object/from16 v22, p5

    move-wide/from16 v24, p8

    move-object/from16 v26, p10

    move-object/from16 v27, p7

    invoke-direct/range {v1 .. v28}, Lcom/google/android/gms/internal/ads/zzfs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/android/gms/internal/ads/zzqi;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/gms/internal/ads/zzhp;Lcom/google/android/gms/internal/ads/zzki;)V

    return-object v1
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

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfs;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/high16 v10, -0x40800000    # -1.0f

    const/4 v11, -0x1

    const/high16 v12, -0x40800000    # -1.0f

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, -0x1

    const-wide v24, 0x7fffffffffffffffL

    const/16 v26, 0x0

    const/16 v28, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v27, p4

    invoke-direct/range {v1 .. v28}, Lcom/google/android/gms/internal/ads/zzfs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/android/gms/internal/ads/zzqi;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/gms/internal/ads/zzhp;Lcom/google/android/gms/internal/ads/zzki;)V

    return-object v1
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
            "Ljava/util/List",
            "<[B>;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzhp;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzfs;"
        }
    .end annotation

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfs;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/high16 v10, -0x40800000    # -1.0f

    const/4 v11, -0x1

    const/high16 v12, -0x40800000    # -1.0f

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v21, 0x0

    const/16 v23, -0x1

    const-wide v24, 0x7fffffffffffffffL

    const/16 v28, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v22, p5

    move-object/from16 v26, p4

    move-object/from16 v27, p6

    invoke-direct/range {v1 .. v28}, Lcom/google/android/gms/internal/ads/zzfs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/android/gms/internal/ads/zzqi;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/gms/internal/ads/zzhp;Lcom/google/android/gms/internal/ads/zzki;)V

    return-object v1
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
            "Ljava/util/List",
            "<[B>;I)",
            "Lcom/google/android/gms/internal/ads/zzfs;"
        }
    .end annotation

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfs;

    const/4 v7, -0x1

    const/4 v11, -0x1

    const/high16 v12, -0x40800000    # -1.0f

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v22, 0x0

    const/16 v23, -0x1

    const-wide v24, 0x7fffffffffffffffL

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v21, p9

    invoke-direct/range {v1 .. v28}, Lcom/google/android/gms/internal/ads/zzfs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/android/gms/internal/ads/zzqi;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/gms/internal/ads/zzhp;Lcom/google/android/gms/internal/ads/zzki;)V

    return-object v1
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
            "Ljava/util/List",
            "<[B>;I",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzfs;"
        }
    .end annotation

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfs;

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/high16 v10, -0x40800000    # -1.0f

    const/4 v11, -0x1

    const/high16 v12, -0x40800000    # -1.0f

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v23, -0x1

    const-wide v24, 0x7fffffffffffffffL

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v16, p5

    move/from16 v17, p6

    move/from16 v21, p8

    move-object/from16 v22, p9

    invoke-direct/range {v1 .. v28}, Lcom/google/android/gms/internal/ads/zzfs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/android/gms/internal/ads/zzqi;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/gms/internal/ads/zzhp;Lcom/google/android/gms/internal/ads/zzki;)V

    return-object v1
.end method

.method public static j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/google/android/gms/internal/ads/zzfs;
    .registers 36

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfs;

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/high16 v10, -0x40800000    # -1.0f

    const/4 v11, -0x1

    const/high16 v12, -0x40800000    # -1.0f

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v23, -0x1

    const-wide v24, 0x7fffffffffffffffL

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v21, p5

    move-object/from16 v22, p6

    invoke-direct/range {v1 .. v28}, Lcom/google/android/gms/internal/ads/zzfs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/android/gms/internal/ads/zzqi;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/gms/internal/ads/zzhp;Lcom/google/android/gms/internal/ads/zzki;)V

    return-object v1
.end method

.method public static j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)Lcom/google/android/gms/internal/ads/zzfs;
    .registers 37

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfs;

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/high16 v10, -0x40800000    # -1.0f

    const/4 v11, -0x1

    const/high16 v12, -0x40800000    # -1.0f

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, -0x1

    const-wide v24, 0x7fffffffffffffffL

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v21, p5

    move-object/from16 v22, p6

    move/from16 v23, p7

    invoke-direct/range {v1 .. v28}, Lcom/google/android/gms/internal/ads/zzfs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/android/gms/internal/ads/zzqi;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/gms/internal/ads/zzhp;Lcom/google/android/gms/internal/ads/zzki;)V

    return-object v1
.end method

.method private static j6(Landroid/media/MediaFormat;Ljava/lang/String;I)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final DW()Landroid/media/MediaFormat;
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    new-instance v2, Landroid/media/MediaFormat;

    invoke-direct {v2}, Landroid/media/MediaFormat;-><init>()V

    const-string v0, "mime"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfs;->Zo:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->er:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "language"

    invoke-virtual {v2, v1, v0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "max-input-size"

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfs;->VH:I

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzfs;->j6(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const-string v0, "width"

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfs;->tp:I

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzfs;->j6(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const-string v0, "height"

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfs;->EQ:I

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzfs;->j6(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->we:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    const-string v1, "frame-rate"

    invoke-virtual {v2, v1, v0}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    :cond_1
    const-string v0, "rotation-degrees"

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfs;->J0:I

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzfs;->j6(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const-string v0, "channel-count"

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfs;->aM:I

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzfs;->j6(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const-string v0, "sample-rate"

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfs;->j3:I

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzfs;->j6(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const-string v0, "encoder-delay"

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfs;->U2:I

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzfs;->j6(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const-string v0, "encoder-padding"

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfs;->a8:I

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzfs;->j6(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->gn:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0xf

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "csd-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->gn:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->XL:Lcom/google/android/gms/internal/ads/zzqi;

    if-eqz v0, :cond_3

    const-string v1, "color-transfer"

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzqi;->FH:I

    invoke-static {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzfs;->j6(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const-string v1, "color-standard"

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzqi;->j6:I

    invoke-static {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzfs;->j6(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const-string v1, "color-range"

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzqi;->DW:I

    invoke-static {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzfs;->j6(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzqi;->Hw:[B

    if-eqz v0, :cond_3

    const-string v1, "hdr-static-info"

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    :cond_3
    return-object v2
.end method

.method public final describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 10

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-ne p0, p1, :cond_1

    move v3, v4

    :cond_0
    :goto_0
    return v3

    :cond_1
    if-eqz p1, :cond_0

    const-class v0, Lcom/google/android/gms/internal/ads/zzfs;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfs;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->DW:I

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzfs;->DW:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->VH:I

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzfs;->VH:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->tp:I

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzfs;->tp:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->EQ:I

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzfs;->EQ:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->we:F

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzfs;->we:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->J0:I

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzfs;->J0:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->J8:F

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzfs;->J8:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->Ws:I

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzfs;->Ws:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->aM:I

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzfs;->aM:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->j3:I

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzfs;->j3:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->Mr:I

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzfs;->Mr:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->U2:I

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzfs;->U2:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->a8:I

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzfs;->a8:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->lg:J

    iget-wide v6, p1, Lcom/google/android/gms/internal/ads/zzfs;->lg:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->rN:I

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzfs;->rN:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->j6:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzfs;->j6:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/TD;->j6(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->er:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzfs;->er:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/TD;->j6(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->yS:I

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzfs;->yS:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->v5:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzfs;->v5:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/TD;->j6(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->Zo:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzfs;->Zo:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/TD;->j6(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->FH:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzfs;->FH:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/TD;->j6(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->u7:Lcom/google/android/gms/internal/ads/zzhp;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzfs;->u7:Lcom/google/android/gms/internal/ads/zzhp;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/TD;->j6(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->Hw:Lcom/google/android/gms/internal/ads/zzki;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzfs;->Hw:Lcom/google/android/gms/internal/ads/zzki;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/TD;->j6(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->XL:Lcom/google/android/gms/internal/ads/zzqi;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzfs;->XL:Lcom/google/android/gms/internal/ads/zzqi;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/TD;->j6(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->QX:[B

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzfs;->QX:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->gn:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzfs;->gn:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    move v2, v3

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->gn:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->gn:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzfs;->gn:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move v3, v4

    goto/16 :goto_0
.end method

.method public final hashCode()I
    .registers 15

    const/4 v1, 0x0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->gW:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->j6:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfs;->v5:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v1

    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfs;->Zo:Ljava/lang/String;

    if-nez v3, :cond_3

    move v3, v1

    :goto_2
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfs;->FH:Ljava/lang/String;

    if-nez v4, :cond_4

    move v4, v1

    :goto_3
    iget v7, p0, Lcom/google/android/gms/internal/ads/zzfs;->DW:I

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzfs;->tp:I

    iget v9, p0, Lcom/google/android/gms/internal/ads/zzfs;->EQ:I

    iget v10, p0, Lcom/google/android/gms/internal/ads/zzfs;->aM:I

    iget v11, p0, Lcom/google/android/gms/internal/ads/zzfs;->j3:I

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzfs;->er:Ljava/lang/String;

    if-nez v5, :cond_5

    move v5, v1

    :goto_4
    iget v12, p0, Lcom/google/android/gms/internal/ads/zzfs;->yS:I

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzfs;->u7:Lcom/google/android/gms/internal/ads/zzhp;

    if-nez v6, :cond_6

    move v6, v1

    :goto_5
    iget-object v13, p0, Lcom/google/android/gms/internal/ads/zzfs;->Hw:Lcom/google/android/gms/internal/ads/zzki;

    if-nez v13, :cond_7

    :goto_6
    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v4

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

    add-int/2addr v0, v5

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v12

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v6

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->gW:I

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->gW:I

    return v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2

    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto :goto_3

    :cond_5
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    goto :goto_4

    :cond_6
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzhp;->hashCode()I

    move-result v6

    goto :goto_5

    :cond_7
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzki;->hashCode()I

    move-result v1

    goto :goto_6
.end method

.method public final j6()I
    .registers 4

    const/4 v0, -0x1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfs;->tp:I

    if-eq v1, v0, :cond_0

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzfs;->EQ:I

    if-ne v2, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    mul-int v0, v1, v2

    goto :goto_0
.end method

.method public final j6(I)Lcom/google/android/gms/internal/ads/zzfs;
    .registers 33

    new-instance v3, Lcom/google/android/gms/internal/ads/zzfs;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzfs;->j6:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzfs;->v5:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzfs;->Zo:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzfs;->FH:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzfs;->DW:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzfs;->tp:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzfs;->EQ:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzfs;->we:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzfs;->J0:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/gms/internal/ads/zzfs;->J8:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzfs;->QX:[B

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->Ws:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->XL:Lcom/google/android/gms/internal/ads/zzqi;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->aM:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->j3:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->Mr:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->U2:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->a8:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->rN:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->er:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->yS:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->lg:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->gn:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->u7:Lcom/google/android/gms/internal/ads/zzhp;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->Hw:Lcom/google/android/gms/internal/ads/zzki;

    move-object/from16 v30, v0

    move/from16 v9, p1

    invoke-direct/range {v3 .. v30}, Lcom/google/android/gms/internal/ads/zzfs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/android/gms/internal/ads/zzqi;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/gms/internal/ads/zzhp;Lcom/google/android/gms/internal/ads/zzki;)V

    return-object v3
.end method

.method public final j6(II)Lcom/google/android/gms/internal/ads/zzfs;
    .registers 34

    new-instance v3, Lcom/google/android/gms/internal/ads/zzfs;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzfs;->j6:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzfs;->v5:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzfs;->Zo:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzfs;->FH:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzfs;->DW:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzfs;->VH:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzfs;->tp:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzfs;->EQ:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzfs;->we:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzfs;->J0:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/gms/internal/ads/zzfs;->J8:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzfs;->QX:[B

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->Ws:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->XL:Lcom/google/android/gms/internal/ads/zzqi;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->aM:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->j3:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->Mr:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->rN:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->er:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->yS:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->lg:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->gn:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->u7:Lcom/google/android/gms/internal/ads/zzhp;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->Hw:Lcom/google/android/gms/internal/ads/zzki;

    move-object/from16 v30, v0

    move/from16 v21, p1

    move/from16 v22, p2

    invoke-direct/range {v3 .. v30}, Lcom/google/android/gms/internal/ads/zzfs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/android/gms/internal/ads/zzqi;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/gms/internal/ads/zzhp;Lcom/google/android/gms/internal/ads/zzki;)V

    return-object v3
.end method

.method public final j6(J)Lcom/google/android/gms/internal/ads/zzfs;
    .registers 34

    new-instance v3, Lcom/google/android/gms/internal/ads/zzfs;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzfs;->j6:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzfs;->v5:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzfs;->Zo:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzfs;->FH:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzfs;->DW:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzfs;->VH:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzfs;->tp:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzfs;->EQ:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzfs;->we:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzfs;->J0:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/gms/internal/ads/zzfs;->J8:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzfs;->QX:[B

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->Ws:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->XL:Lcom/google/android/gms/internal/ads/zzqi;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->aM:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->j3:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->Mr:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->U2:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->a8:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->rN:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->er:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->yS:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->gn:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->u7:Lcom/google/android/gms/internal/ads/zzhp;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->Hw:Lcom/google/android/gms/internal/ads/zzki;

    move-object/from16 v30, v0

    move-wide/from16 v26, p1

    invoke-direct/range {v3 .. v30}, Lcom/google/android/gms/internal/ads/zzfs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/android/gms/internal/ads/zzqi;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/gms/internal/ads/zzhp;Lcom/google/android/gms/internal/ads/zzki;)V

    return-object v3
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/zzfs;)Lcom/google/android/gms/internal/ads/zzfs;
    .registers 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzfs;->j6:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzfs;->FH:Ljava/lang/String;

    if-nez v7, :cond_1

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzfs;->FH:Ljava/lang/String;

    :cond_1
    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzfs;->DW:I

    const/4 v2, -0x1

    if-ne v8, v2, :cond_2

    move-object/from16 v0, p1

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzfs;->DW:I

    :cond_2
    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzfs;->we:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, v12, v2

    if-nez v2, :cond_3

    move-object/from16 v0, p1

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzfs;->we:F

    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzfs;->rN:I

    move-object/from16 v0, p1

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->rN:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->er:Ljava/lang/String;

    move-object/from16 v24, v0

    if-nez v24, :cond_4

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->er:Ljava/lang/String;

    move-object/from16 v24, v0

    :cond_4
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->u7:Lcom/google/android/gms/internal/ads/zzhp;

    move-object/from16 v29, v0

    if-eqz v29, :cond_5

    :goto_1
    new-instance v3, Lcom/google/android/gms/internal/ads/zzfs;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzfs;->v5:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzfs;->Zo:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzfs;->VH:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzfs;->tp:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzfs;->EQ:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzfs;->J0:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/gms/internal/ads/zzfs;->J8:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzfs;->QX:[B

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->Ws:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->XL:Lcom/google/android/gms/internal/ads/zzqi;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->aM:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->j3:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->Mr:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->U2:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->a8:I

    move/from16 v22, v0

    or-int v23, v23, v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->yS:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->lg:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->gn:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->Hw:Lcom/google/android/gms/internal/ads/zzki;

    move-object/from16 v30, v0

    invoke-direct/range {v3 .. v30}, Lcom/google/android/gms/internal/ads/zzfs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/android/gms/internal/ads/zzqi;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/gms/internal/ads/zzhp;Lcom/google/android/gms/internal/ads/zzki;)V

    move-object/from16 p0, v3

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->u7:Lcom/google/android/gms/internal/ads/zzhp;

    move-object/from16 v29, v0

    goto :goto_1
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/zzhp;)Lcom/google/android/gms/internal/ads/zzfs;
    .registers 33

    new-instance v3, Lcom/google/android/gms/internal/ads/zzfs;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzfs;->j6:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzfs;->v5:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzfs;->Zo:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzfs;->FH:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzfs;->DW:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzfs;->VH:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzfs;->tp:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzfs;->EQ:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzfs;->we:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzfs;->J0:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/gms/internal/ads/zzfs;->J8:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzfs;->QX:[B

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->Ws:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->XL:Lcom/google/android/gms/internal/ads/zzqi;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->aM:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->j3:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->Mr:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->U2:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->a8:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->rN:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->er:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->yS:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->lg:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->gn:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->Hw:Lcom/google/android/gms/internal/ads/zzki;

    move-object/from16 v30, v0

    move-object/from16 v29, p1

    invoke-direct/range {v3 .. v30}, Lcom/google/android/gms/internal/ads/zzfs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/android/gms/internal/ads/zzqi;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/gms/internal/ads/zzhp;Lcom/google/android/gms/internal/ads/zzki;)V

    return-object v3
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/zzki;)Lcom/google/android/gms/internal/ads/zzfs;
    .registers 33

    new-instance v3, Lcom/google/android/gms/internal/ads/zzfs;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzfs;->j6:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzfs;->v5:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzfs;->Zo:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzfs;->FH:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzfs;->DW:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzfs;->VH:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzfs;->tp:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzfs;->EQ:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzfs;->we:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzfs;->J0:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/gms/internal/ads/zzfs;->J8:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzfs;->QX:[B

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->Ws:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->XL:Lcom/google/android/gms/internal/ads/zzqi;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->aM:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->j3:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->Mr:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->U2:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->a8:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->rN:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->er:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->yS:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->lg:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->gn:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->u7:Lcom/google/android/gms/internal/ads/zzhp;

    move-object/from16 v29, v0

    move-object/from16 v30, p1

    invoke-direct/range {v3 .. v30}, Lcom/google/android/gms/internal/ads/zzfs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/android/gms/internal/ads/zzqi;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/gms/internal/ads/zzhp;Lcom/google/android/gms/internal/ads/zzki;)V

    return-object v3
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

    const-string v0, ", "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", ["

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "], ["

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

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

    const/4 v1, 0x0

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

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->QX:[B

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->Ws:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->XL:Lcom/google/android/gms/internal/ads/zzqi;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->aM:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->j3:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->Mr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->U2:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->a8:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->rN:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->er:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->yS:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzfs;->lg:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->gn:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->gn:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->u7:Lcom/google/android/gms/internal/ads/zzhp;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfs;->Hw:Lcom/google/android/gms/internal/ads/zzki;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
