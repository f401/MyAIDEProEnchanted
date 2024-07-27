.class final Lcom/google/android/gms/internal/ads/Tu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/fv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/fv",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final DW:Lsun/misc/Unsafe;

.field private static final j6:[I


# instance fields
.field private final EQ:Z

.field private final FH:[I

.field private final Hw:[Ljava/lang/Object;

.field private final J0:I

.field private final J8:I

.field private final QX:Lcom/google/android/gms/internal/ads/zu;

.field private final VH:Lcom/google/android/gms/internal/ads/Pu;

.field private final Ws:Lcom/google/android/gms/internal/ads/Wu;

.field private final XL:Lcom/google/android/gms/internal/ads/xv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/xv",
            "<**>;"
        }
    .end annotation
.end field

.field private final Zo:I

.field private final aM:Lcom/google/android/gms/internal/ads/Vt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/Vt",
            "<*>;"
        }
    .end annotation
.end field

.field private final gn:Z

.field private final j3:Lcom/google/android/gms/internal/ads/Ku;

.field private final tp:Z

.field private final u7:Z

.field private final v5:I

.field private final we:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/ads/Tu;->j6:[I

    invoke-static {}, Lcom/google/android/gms/internal/ads/Ev;->Hw()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/Tu;->DW:Lsun/misc/Unsafe;

    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/ads/Pu;ZZ[IIILcom/google/android/gms/internal/ads/Wu;Lcom/google/android/gms/internal/ads/zu;Lcom/google/android/gms/internal/ads/xv;Lcom/google/android/gms/internal/ads/Vt;Lcom/google/android/gms/internal/ads/Ku;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[",
            "Ljava/lang/Object;",
            "II",
            "Lcom/google/android/gms/internal/ads/Pu;",
            "ZZ[III",
            "Lcom/google/android/gms/internal/ads/Wu;",
            "Lcom/google/android/gms/internal/ads/zu;",
            "Lcom/google/android/gms/internal/ads/xv",
            "<**>;",
            "Lcom/google/android/gms/internal/ads/Vt",
            "<*>;",
            "Lcom/google/android/gms/internal/ads/Ku;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Tu;->FH:[I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Tu;->Hw:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/android/gms/internal/ads/Tu;->v5:I

    iput p4, p0, Lcom/google/android/gms/internal/ads/Tu;->Zo:I

    instance-of v1, p5, Lcom/google/android/gms/internal/ads/hu;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/Tu;->u7:Z

    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/Tu;->tp:Z

    if-eqz p14, :cond_0

    move-object/from16 v0, p14

    invoke-virtual {v0, p5}, Lcom/google/android/gms/internal/ads/Vt;->j6(Lcom/google/android/gms/internal/ads/Pu;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/Tu;->gn:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/Tu;->EQ:Z

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/Tu;->we:[I

    iput p9, p0, Lcom/google/android/gms/internal/ads/Tu;->J0:I

    iput p10, p0, Lcom/google/android/gms/internal/ads/Tu;->J8:I

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/Tu;->Ws:Lcom/google/android/gms/internal/ads/Wu;

    iput-object p12, p0, Lcom/google/android/gms/internal/ads/Tu;->QX:Lcom/google/android/gms/internal/ads/zu;

    iput-object p13, p0, Lcom/google/android/gms/internal/ads/Tu;->XL:Lcom/google/android/gms/internal/ads/xv;

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Tu;->aM:Lcom/google/android/gms/internal/ads/Vt;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/Tu;->VH:Lcom/google/android/gms/internal/ads/Pu;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Tu;->j3:Lcom/google/android/gms/internal/ads/Ku;

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static DW(Ljava/lang/Object;J)D
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)D"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method private final DW(II)I
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Tu;->FH:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gt p2, v1, :cond_2

    add-int v0, v1, p2

    ushr-int/lit8 v2, v0, 0x1

    mul-int/lit8 v0, v2, 0x3

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Tu;->FH:[I

    aget v3, v3, v0

    if-ne p1, v3, :cond_0

    :goto_1
    return v0

    :cond_0
    if-ge p1, v3, :cond_1

    add-int/lit8 v0, v2, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    add-int/lit8 p2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private final DW(I)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Tu;->Hw:[Ljava/lang/Object;

    div-int/lit8 v1, p1, 0x3

    shl-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private final DW(Ljava/lang/Object;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Tu;->tp:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/Tu;->v5(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v1, v0

    int-to-long v2, v1

    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;J)I

    move-result v1

    const/4 v4, 0x1

    ushr-int/lit8 v0, v0, 0x14

    shl-int v0, v4, v0

    or-int/2addr v0, v1

    invoke-static {p1, v2, v3, v0}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;JI)V

    goto :goto_0
.end method

.method private final DW(Ljava/lang/Object;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/Tu;->v5(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final DW(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/Tv;)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/ads/Tv;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/Tu;->gn:Z

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Tu;->aM:Lcom/google/android/gms/internal/ads/Vt;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/Vt;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Yt;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/Yt;->DW()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/Yt;->v5()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    move-object v5, v4

    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Tu;->FH:[I

    array-length v12, v4

    sget-object v13, Lcom/google/android/gms/internal/ads/Tu;->DW:Lsun/misc/Unsafe;

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v4, 0x0

    move v11, v6

    :goto_1
    if-ge v11, v12, :cond_4

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/google/android/gms/internal/ads/Tu;->Hw(I)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/Tu;->FH:[I

    aget v15, v6, v11

    const/high16 v8, 0xff00000

    and-int/2addr v8, v14

    ushr-int/lit8 v16, v8, 0x14

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/Tu;->tp:Z

    if-nez v8, :cond_2

    const/16 v8, 0x11

    move/from16 v0, v16

    if-gt v0, v8, :cond_2

    add-int/lit8 v8, v11, 0x2

    aget v8, v6, v8

    const v6, 0xfffff

    and-int/2addr v6, v8

    if-eq v6, v7, :cond_6

    int-to-long v0, v6

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-virtual {v13, v0, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    :goto_2
    const/4 v7, 0x1

    ushr-int/lit8 v8, v8, 0x14

    shl-int/2addr v7, v8

    move v8, v7

    move v9, v4

    move v10, v6

    :goto_3
    if-nez v5, :cond_3

    const v4, 0xfffff

    and-int/2addr v4, v14

    int-to-long v6, v4

    packed-switch v16, :pswitch_data_0

    :cond_0
    :goto_4
    add-int/lit8 v6, v11, 0x3

    move v11, v6

    move v4, v9

    move v7, v10

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    move-object v5, v4

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    move v8, v6

    move v9, v4

    move v10, v7

    goto :goto_3

    :pswitch_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15, v11}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/google/android/gms/internal/ads/Tu;->j6(I)Lcom/google/android/gms/internal/ads/fv;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-interface {v0, v15, v4, v6}, Lcom/google/android/gms/internal/ads/Tv;->j6(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/fv;)V

    goto :goto_4

    :pswitch_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15, v11}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    invoke-static {v0, v6, v7}, Lcom/google/android/gms/internal/ads/Tu;->v5(Ljava/lang/Object;J)J

    move-result-wide v6

    move-object/from16 v0, p2

    invoke-interface {v0, v15, v6, v7}, Lcom/google/android/gms/internal/ads/Tv;->v5(IJ)V

    goto :goto_4

    :pswitch_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15, v11}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    invoke-static {v0, v6, v7}, Lcom/google/android/gms/internal/ads/Tu;->Hw(Ljava/lang/Object;J)I

    move-result v4

    move-object/from16 v0, p2

    invoke-interface {v0, v15, v4}, Lcom/google/android/gms/internal/ads/Tv;->DW(II)V

    goto :goto_4

    :pswitch_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15, v11}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    invoke-static {v0, v6, v7}, Lcom/google/android/gms/internal/ads/Tu;->v5(Ljava/lang/Object;J)J

    move-result-wide v6

    move-object/from16 v0, p2

    invoke-interface {v0, v15, v6, v7}, Lcom/google/android/gms/internal/ads/Tv;->FH(IJ)V

    goto :goto_4

    :pswitch_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15, v11}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    invoke-static {v0, v6, v7}, Lcom/google/android/gms/internal/ads/Tu;->Hw(Ljava/lang/Object;J)I

    move-result v4

    move-object/from16 v0, p2

    invoke-interface {v0, v15, v4}, Lcom/google/android/gms/internal/ads/Tv;->FH(II)V

    goto/16 :goto_4

    :pswitch_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15, v11}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    invoke-static {v0, v6, v7}, Lcom/google/android/gms/internal/ads/Tu;->Hw(Ljava/lang/Object;J)I

    move-result v4

    move-object/from16 v0, p2

    invoke-interface {v0, v15, v4}, Lcom/google/android/gms/internal/ads/Tv;->Zo(II)V

    goto/16 :goto_4

    :pswitch_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15, v11}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    invoke-static {v0, v6, v7}, Lcom/google/android/gms/internal/ads/Tu;->Hw(Ljava/lang/Object;J)I

    move-result v4

    move-object/from16 v0, p2

    invoke-interface {v0, v15, v4}, Lcom/google/android/gms/internal/ads/Tv;->j6(II)V

    goto/16 :goto_4

    :pswitch_7
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15, v11}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/yt;

    move-object/from16 v0, p2

    invoke-interface {v0, v15, v4}, Lcom/google/android/gms/internal/ads/Tv;->j6(ILcom/google/android/gms/internal/ads/yt;)V

    goto/16 :goto_4

    :pswitch_8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15, v11}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/google/android/gms/internal/ads/Tu;->j6(I)Lcom/google/android/gms/internal/ads/fv;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-interface {v0, v15, v4, v6}, Lcom/google/android/gms/internal/ads/Tv;->DW(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/fv;)V

    goto/16 :goto_4

    :pswitch_9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15, v11}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-static {v15, v4, v0}, Lcom/google/android/gms/internal/ads/Tu;->j6(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/Tv;)V

    goto/16 :goto_4

    :pswitch_a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15, v11}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    invoke-static {v0, v6, v7}, Lcom/google/android/gms/internal/ads/Tu;->Zo(Ljava/lang/Object;J)Z

    move-result v4

    move-object/from16 v0, p2

    invoke-interface {v0, v15, v4}, Lcom/google/android/gms/internal/ads/Tv;->j6(IZ)V

    goto/16 :goto_4

    :pswitch_b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15, v11}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    invoke-static {v0, v6, v7}, Lcom/google/android/gms/internal/ads/Tu;->Hw(Ljava/lang/Object;J)I

    move-result v4

    move-object/from16 v0, p2

    invoke-interface {v0, v15, v4}, Lcom/google/android/gms/internal/ads/Tv;->v5(II)V

    goto/16 :goto_4

    :pswitch_c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15, v11}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    invoke-static {v0, v6, v7}, Lcom/google/android/gms/internal/ads/Tu;->v5(Ljava/lang/Object;J)J

    move-result-wide v6

    move-object/from16 v0, p2

    invoke-interface {v0, v15, v6, v7}, Lcom/google/android/gms/internal/ads/Tv;->Zo(IJ)V

    goto/16 :goto_4

    :pswitch_d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15, v11}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    invoke-static {v0, v6, v7}, Lcom/google/android/gms/internal/ads/Tu;->Hw(Ljava/lang/Object;J)I

    move-result v4

    move-object/from16 v0, p2

    invoke-interface {v0, v15, v4}, Lcom/google/android/gms/internal/ads/Tv;->Hw(II)V

    goto/16 :goto_4

    :pswitch_e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15, v11}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    invoke-static {v0, v6, v7}, Lcom/google/android/gms/internal/ads/Tu;->v5(Ljava/lang/Object;J)J

    move-result-wide v6

    move-object/from16 v0, p2

    invoke-interface {v0, v15, v6, v7}, Lcom/google/android/gms/internal/ads/Tv;->DW(IJ)V

    goto/16 :goto_4

    :pswitch_f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15, v11}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    invoke-static {v0, v6, v7}, Lcom/google/android/gms/internal/ads/Tu;->v5(Ljava/lang/Object;J)J

    move-result-wide v6

    move-object/from16 v0, p2

    invoke-interface {v0, v15, v6, v7}, Lcom/google/android/gms/internal/ads/Tv;->Hw(IJ)V

    goto/16 :goto_4

    :pswitch_10
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15, v11}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    invoke-static {v0, v6, v7}, Lcom/google/android/gms/internal/ads/Tu;->FH(Ljava/lang/Object;J)F

    move-result v4

    move-object/from16 v0, p2

    invoke-interface {v0, v15, v4}, Lcom/google/android/gms/internal/ads/Tv;->j6(IF)V

    goto/16 :goto_4

    :pswitch_11
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15, v11}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    invoke-static {v0, v6, v7}, Lcom/google/android/gms/internal/ads/Tu;->DW(Ljava/lang/Object;J)D

    move-result-wide v6

    move-object/from16 v0, p2

    invoke-interface {v0, v15, v6, v7}, Lcom/google/android/gms/internal/ads/Tv;->j6(ID)V

    goto/16 :goto_4

    :pswitch_12
    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v15, v4, v11}, Lcom/google/android/gms/internal/ads/Tu;->j6(Lcom/google/android/gms/internal/ads/Tv;ILjava/lang/Object;I)V

    goto/16 :goto_4

    :pswitch_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Tu;->FH:[I

    aget v8, v4, v11

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/google/android/gms/internal/ads/Tu;->j6(I)Lcom/google/android/gms/internal/ads/fv;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-static {v8, v4, v0, v6}, Lcom/google/android/gms/internal/ads/hv;->DW(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Lcom/google/android/gms/internal/ads/fv;)V

    goto/16 :goto_4

    :pswitch_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Tu;->FH:[I

    aget v8, v4, v11

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x1

    move-object/from16 v0, p2

    invoke-static {v8, v4, v0, v6}, Lcom/google/android/gms/internal/ads/hv;->v5(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_4

    :pswitch_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Tu;->FH:[I

    aget v8, v4, v11

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x1

    move-object/from16 v0, p2

    invoke-static {v8, v4, v0, v6}, Lcom/google/android/gms/internal/ads/hv;->tp(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_4

    :pswitch_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Tu;->FH:[I

    aget v8, v4, v11

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x1

    move-object/from16 v0, p2

    invoke-static {v8, v4, v0, v6}, Lcom/google/android/gms/internal/ads/hv;->VH(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_4

    :pswitch_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Tu;->FH:[I

    aget v8, v4, v11

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x1

    move-object/from16 v0, p2

    invoke-static {v8, v4, v0, v6}, Lcom/google/android/gms/internal/ads/hv;->we(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_4

    :pswitch_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Tu;->FH:[I

    aget v8, v4, v11

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x1

    move-object/from16 v0, p2

    invoke-static {v8, v4, v0, v6}, Lcom/google/android/gms/internal/ads/hv;->J0(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_4

    :pswitch_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Tu;->FH:[I

    aget v8, v4, v11

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x1

    move-object/from16 v0, p2

    invoke-static {v8, v4, v0, v6}, Lcom/google/android/gms/internal/ads/hv;->u7(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_4

    :pswitch_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Tu;->FH:[I

    aget v8, v4, v11

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x1

    move-object/from16 v0, p2

    invoke-static {v8, v4, v0, v6}, Lcom/google/android/gms/internal/ads/hv;->J8(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_4

    :pswitch_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Tu;->FH:[I

    aget v8, v4, v11

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x1

    move-object/from16 v0, p2

    invoke-static {v8, v4, v0, v6}, Lcom/google/android/gms/internal/ads/hv;->EQ(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_4

    :pswitch_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Tu;->FH:[I

    aget v8, v4, v11

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x1

    move-object/from16 v0, p2

    invoke-static {v8, v4, v0, v6}, Lcom/google/android/gms/internal/ads/hv;->Zo(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_4

    :pswitch_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Tu;->FH:[I

    aget v8, v4, v11

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x1

    move-object/from16 v0, p2

    invoke-static {v8, v4, v0, v6}, Lcom/google/android/gms/internal/ads/hv;->gn(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_4

    :pswitch_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Tu;->FH:[I

    aget v8, v4, v11

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x1

    move-object/from16 v0, p2

    invoke-static {v8, v4, v0, v6}, Lcom/google/android/gms/internal/ads/hv;->Hw(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_4

    :pswitch_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Tu;->FH:[I

    aget v8, v4, v11

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x1

    move-object/from16 v0, p2

    invoke-static {v8, v4, v0, v6}, Lcom/google/android/gms/internal/ads/hv;->FH(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_4

    :pswitch_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Tu;->FH:[I

    aget v8, v4, v11

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x1

    move-object/from16 v0, p2

    invoke-static {v8, v4, v0, v6}, Lcom/google/android/gms/internal/ads/hv;->DW(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_4

    :pswitch_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Tu;->FH:[I

    aget v8, v4, v11

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x1

    move-object/from16 v0, p2

    invoke-static {v8, v4, v0, v6}, Lcom/google/android/gms/internal/ads/hv;->j6(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_4

    :pswitch_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Tu;->FH:[I

    aget v8, v4, v11

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-static {v8, v4, v0, v6}, Lcom/google/android/gms/internal/ads/hv;->v5(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_4

    :pswitch_23
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Tu;->FH:[I

    aget v8, v4, v11

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-static {v8, v4, v0, v6}, Lcom/google/android/gms/internal/ads/hv;->tp(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_4

    :pswitch_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Tu;->FH:[I

    aget v8, v4, v11

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-static {v8, v4, v0, v6}, Lcom/google/android/gms/internal/ads/hv;->VH(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_4

    :pswitch_25
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Tu;->FH:[I

    aget v8, v4, v11

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-static {v8, v4, v0, v6}, Lcom/google/android/gms/internal/ads/hv;->we(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_4

    :pswitch_26
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Tu;->FH:[I

    aget v8, v4, v11

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-static {v8, v4, v0, v6}, Lcom/google/android/gms/internal/ads/hv;->J0(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_4

    :pswitch_27
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Tu;->FH:[I

    aget v8, v4, v11

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-static {v8, v4, v0, v6}, Lcom/google/android/gms/internal/ads/hv;->u7(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_4

    :pswitch_28
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Tu;->FH:[I

    aget v8, v4, v11

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    move-object/from16 v0, p2

    invoke-static {v8, v4, v0}, Lcom/google/android/gms/internal/ads/hv;->DW(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;)V

    goto/16 :goto_4

    :pswitch_29
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Tu;->FH:[I

    aget v8, v4, v11

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/google/android/gms/internal/ads/Tu;->j6(I)Lcom/google/android/gms/internal/ads/fv;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-static {v8, v4, v0, v6}, Lcom/google/android/gms/internal/ads/hv;->j6(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Lcom/google/android/gms/internal/ads/fv;)V

    goto/16 :goto_4

    :pswitch_2a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Tu;->FH:[I

    aget v8, v4, v11

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    move-object/from16 v0, p2

    invoke-static {v8, v4, v0}, Lcom/google/android/gms/internal/ads/hv;->j6(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;)V

    goto/16 :goto_4

    :pswitch_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Tu;->FH:[I

    aget v8, v4, v11

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-static {v8, v4, v0, v6}, Lcom/google/android/gms/internal/ads/hv;->J8(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_4

    :pswitch_2c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Tu;->FH:[I

    aget v8, v4, v11

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-static {v8, v4, v0, v6}, Lcom/google/android/gms/internal/ads/hv;->EQ(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_4

    :pswitch_2d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Tu;->FH:[I

    aget v8, v4, v11

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-static {v8, v4, v0, v6}, Lcom/google/android/gms/internal/ads/hv;->Zo(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_4

    :pswitch_2e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Tu;->FH:[I

    aget v8, v4, v11

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-static {v8, v4, v0, v6}, Lcom/google/android/gms/internal/ads/hv;->gn(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_4

    :pswitch_2f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Tu;->FH:[I

    aget v8, v4, v11

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-static {v8, v4, v0, v6}, Lcom/google/android/gms/internal/ads/hv;->Hw(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_4

    :pswitch_30
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Tu;->FH:[I

    aget v8, v4, v11

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-static {v8, v4, v0, v6}, Lcom/google/android/gms/internal/ads/hv;->FH(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_4

    :pswitch_31
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Tu;->FH:[I

    aget v8, v4, v11

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-static {v8, v4, v0, v6}, Lcom/google/android/gms/internal/ads/hv;->DW(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_4

    :pswitch_32
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Tu;->FH:[I

    aget v8, v4, v11

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-static {v8, v4, v0, v6}, Lcom/google/android/gms/internal/ads/hv;->j6(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_4

    :pswitch_33
    and-int v4, v9, v8

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/google/android/gms/internal/ads/Tu;->j6(I)Lcom/google/android/gms/internal/ads/fv;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-interface {v0, v15, v4, v6}, Lcom/google/android/gms/internal/ads/Tv;->j6(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/fv;)V

    goto/16 :goto_4

    :pswitch_34
    and-int v4, v9, v8

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    move-object/from16 v0, p2

    invoke-interface {v0, v15, v6, v7}, Lcom/google/android/gms/internal/ads/Tv;->v5(IJ)V

    goto/16 :goto_4

    :pswitch_35
    and-int v4, v9, v8

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    move-object/from16 v0, p2

    invoke-interface {v0, v15, v4}, Lcom/google/android/gms/internal/ads/Tv;->DW(II)V

    goto/16 :goto_4

    :pswitch_36
    and-int v4, v9, v8

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    move-object/from16 v0, p2

    invoke-interface {v0, v15, v6, v7}, Lcom/google/android/gms/internal/ads/Tv;->FH(IJ)V

    goto/16 :goto_4

    :pswitch_37
    and-int v4, v9, v8

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    move-object/from16 v0, p2

    invoke-interface {v0, v15, v4}, Lcom/google/android/gms/internal/ads/Tv;->FH(II)V

    goto/16 :goto_4

    :pswitch_38
    and-int v4, v9, v8

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    move-object/from16 v0, p2

    invoke-interface {v0, v15, v4}, Lcom/google/android/gms/internal/ads/Tv;->Zo(II)V

    goto/16 :goto_4

    :pswitch_39
    and-int v4, v9, v8

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    move-object/from16 v0, p2

    invoke-interface {v0, v15, v4}, Lcom/google/android/gms/internal/ads/Tv;->j6(II)V

    goto/16 :goto_4

    :pswitch_3a
    and-int v4, v9, v8

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/yt;

    move-object/from16 v0, p2

    invoke-interface {v0, v15, v4}, Lcom/google/android/gms/internal/ads/Tv;->j6(ILcom/google/android/gms/internal/ads/yt;)V

    goto/16 :goto_4

    :pswitch_3b
    and-int v4, v9, v8

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/google/android/gms/internal/ads/Tu;->j6(I)Lcom/google/android/gms/internal/ads/fv;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-interface {v0, v15, v4, v6}, Lcom/google/android/gms/internal/ads/Tv;->DW(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/fv;)V

    goto/16 :goto_4

    :pswitch_3c
    and-int v4, v9, v8

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-static {v15, v4, v0}, Lcom/google/android/gms/internal/ads/Tu;->j6(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/Tv;)V

    goto/16 :goto_4

    :pswitch_3d
    and-int v4, v9, v8

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    invoke-static {v0, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->FH(Ljava/lang/Object;J)Z

    move-result v4

    move-object/from16 v0, p2

    invoke-interface {v0, v15, v4}, Lcom/google/android/gms/internal/ads/Tv;->j6(IZ)V

    goto/16 :goto_4

    :pswitch_3e
    and-int v4, v9, v8

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    move-object/from16 v0, p2

    invoke-interface {v0, v15, v4}, Lcom/google/android/gms/internal/ads/Tv;->v5(II)V

    goto/16 :goto_4

    :pswitch_3f
    and-int v4, v9, v8

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    move-object/from16 v0, p2

    invoke-interface {v0, v15, v6, v7}, Lcom/google/android/gms/internal/ads/Tv;->Zo(IJ)V

    goto/16 :goto_4

    :pswitch_40
    and-int v4, v9, v8

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    move-object/from16 v0, p2

    invoke-interface {v0, v15, v4}, Lcom/google/android/gms/internal/ads/Tv;->Hw(II)V

    goto/16 :goto_4

    :pswitch_41
    and-int v4, v9, v8

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    move-object/from16 v0, p2

    invoke-interface {v0, v15, v6, v7}, Lcom/google/android/gms/internal/ads/Tv;->DW(IJ)V

    goto/16 :goto_4

    :pswitch_42
    and-int v4, v9, v8

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    move-object/from16 v0, p2

    invoke-interface {v0, v15, v6, v7}, Lcom/google/android/gms/internal/ads/Tv;->Hw(IJ)V

    goto/16 :goto_4

    :pswitch_43
    and-int v4, v9, v8

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    invoke-static {v0, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->Hw(Ljava/lang/Object;J)F

    move-result v4

    move-object/from16 v0, p2

    invoke-interface {v0, v15, v4}, Lcom/google/android/gms/internal/ads/Tv;->j6(IF)V

    goto/16 :goto_4

    :pswitch_44
    and-int v4, v9, v8

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    invoke-static {v0, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->v5(Ljava/lang/Object;J)D

    move-result-wide v6

    move-object/from16 v0, p2

    invoke-interface {v0, v15, v6, v7}, Lcom/google/android/gms/internal/ads/Tv;->j6(ID)V

    goto/16 :goto_4

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Tu;->aM:Lcom/google/android/gms/internal/ads/Vt;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/Vt;->j6(Ljava/util/Map$Entry;)I

    const/4 v4, 0x0

    throw v4

    :cond_4
    if-nez v5, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Tu;->XL:Lcom/google/android/gms/internal/ads/xv;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v4, v0, v1}, Lcom/google/android/gms/internal/ads/Tu;->j6(Lcom/google/android/gms/internal/ads/xv;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/Tv;)V

    return-void

    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Tu;->aM:Lcom/google/android/gms/internal/ads/Vt;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v5}, Lcom/google/android/gms/internal/ads/Vt;->j6(Lcom/google/android/gms/internal/ads/Tv;Ljava/util/Map$Entry;)V

    const/4 v4, 0x0

    throw v4

    :cond_6
    move v6, v7

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final DW(Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/Tu;->Hw(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Tu;->FH:[I

    aget v1, v1, p3

    const v2, 0xfffff

    and-int/2addr v0, v2

    int-to-long v2, v0

    invoke-direct {p0, p2, v1, p3}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    if-eqz v0, :cond_2

    if-eqz v4, :cond_2

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/ads/ju;->j6(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v2, v3, v0}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/gms/internal/ads/Tu;->DW(Ljava/lang/Object;II)V

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_0

    invoke-static {p1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/gms/internal/ads/Tu;->DW(Ljava/lang/Object;II)V

    goto :goto_0
.end method

.method private static FH(Ljava/lang/Object;J)F
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)F"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method private final FH(I)Lcom/google/android/gms/internal/ads/mu;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Tu;->Hw:[Ljava/lang/Object;

    div-int/lit8 v1, p1, 0x3

    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Lcom/google/android/gms/internal/ads/mu;

    return-object v0
.end method

.method private final FH(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;I)Z

    move-result v0

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;I)Z

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final Hw(I)I
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Tu;->FH:[I

    add-int/lit8 v1, p1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method private static Hw(Ljava/lang/Object;J)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)I"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private final VH(I)I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/Tu;->v5:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/Tu;->Zo:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Tu;->DW(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static Zo(I)Z
    .registers 2

    const/high16 v0, 0x20000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static Zo(Ljava/lang/Object;J)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)Z"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private final j6(II)I
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/ads/Tu;->v5:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/Tu;->Zo:I

    if-gt p1, v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/Tu;->DW(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static j6(I[BIILjava/lang/Object;Lcom/google/android/gms/internal/ads/vt;)I
    .registers 12

    invoke-static {p4}, Lcom/google/android/gms/internal/ads/Tu;->v5(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/yv;

    move-result-object v4

    move v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ut;->j6(I[BIILcom/google/android/gms/internal/ads/yv;Lcom/google/android/gms/internal/ads/vt;)I

    move-result v0

    return v0
.end method

.method private static j6(Lcom/google/android/gms/internal/ads/fv;I[BIILcom/google/android/gms/internal/ads/ou;Lcom/google/android/gms/internal/ads/vt;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/fv",
            "<*>;I[BII",
            "Lcom/google/android/gms/internal/ads/ou",
            "<*>;",
            "Lcom/google/android/gms/internal/ads/vt;",
            ")I"
        }
    .end annotation

    invoke-static {p0, p2, p3, p4, p6}, Lcom/google/android/gms/internal/ads/Tu;->j6(Lcom/google/android/gms/internal/ads/fv;[BIILcom/google/android/gms/internal/ads/vt;)I

    move-result v0

    iget-object v1, p6, Lcom/google/android/gms/internal/ads/vt;->FH:Ljava/lang/Object;

    invoke-interface {p5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    if-ge v0, p4, :cond_0

    invoke-static {p2, v0, p6}, Lcom/google/android/gms/internal/ads/ut;->j6([BILcom/google/android/gms/internal/ads/vt;)I

    move-result v1

    iget v2, p6, Lcom/google/android/gms/internal/ads/vt;->j6:I

    if-ne p1, v2, :cond_0

    invoke-static {p0, p2, v1, p4, p6}, Lcom/google/android/gms/internal/ads/Tu;->j6(Lcom/google/android/gms/internal/ads/fv;[BIILcom/google/android/gms/internal/ads/vt;)I

    move-result v0

    iget-object v1, p6, Lcom/google/android/gms/internal/ads/vt;->FH:Ljava/lang/Object;

    invoke-interface {p5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return v0
.end method

.method private static j6(Lcom/google/android/gms/internal/ads/fv;[BIIILcom/google/android/gms/internal/ads/vt;)I
    .registers 13

    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/ads/Tu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Tu;->j6()Ljava/lang/Object;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/ads/vt;)I

    move-result v2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Tu;->Hw(Ljava/lang/Object;)V

    iput-object v1, p5, Lcom/google/android/gms/internal/ads/vt;->FH:Ljava/lang/Object;

    return v2
.end method

.method private static j6(Lcom/google/android/gms/internal/ads/fv;[BIILcom/google/android/gms/internal/ads/vt;)I
    .registers 11

    add-int/lit8 v3, p2, 0x1

    aget-byte v0, p1, p2

    if-gez v0, :cond_0

    invoke-static {v0, p1, v3, p4}, Lcom/google/android/gms/internal/ads/ut;->j6(I[BILcom/google/android/gms/internal/ads/vt;)I

    move-result v3

    iget v0, p4, Lcom/google/android/gms/internal/ads/vt;->j6:I

    :cond_0
    if-ltz v0, :cond_1

    sub-int v1, p3, v3

    if-gt v0, v1, :cond_1

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/fv;->j6()Ljava/lang/Object;

    move-result-object v1

    add-int v4, v0, v3

    move-object v0, p0

    move-object v2, p1

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/fv;->j6(Ljava/lang/Object;[BIILcom/google/android/gms/internal/ads/vt;)V

    invoke-interface {p0, v1}, Lcom/google/android/gms/internal/ads/fv;->Hw(Ljava/lang/Object;)V

    iput-object v1, p4, Lcom/google/android/gms/internal/ads/vt;->FH:Ljava/lang/Object;

    return v4

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->j6()Lcom/google/android/gms/internal/ads/pu;

    move-result-object v0

    throw v0
.end method

.method private static j6(Lcom/google/android/gms/internal/ads/xv;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/xv",
            "<TUT;TUB;>;TT;)I"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/xv;->DW(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/xv;->j6(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private final j6(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/ads/vt;)I
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIIJI",
            "Lcom/google/android/gms/internal/ads/vt;",
            ")I"
        }
    .end annotation

    sget-object v8, Lcom/google/android/gms/internal/ads/Tu;->DW:Lsun/misc/Unsafe;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Tu;->FH:[I

    add-int/lit8 v3, p12, 0x2

    aget v2, v2, v3

    const v3, 0xfffff

    and-int/2addr v2, v3

    int-to-long v10, v2

    packed-switch p9, :pswitch_data_0

    :cond_0
    :goto_0
    return p3

    :pswitch_0
    const/4 v2, 0x3

    move/from16 v0, p7

    if-ne v0, v2, :cond_0

    move/from16 v0, p12

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Tu;->j6(I)Lcom/google/android/gms/internal/ads/fv;

    move-result-object v2

    and-int/lit8 v3, p5, -0x8

    or-int/lit8 v6, v3, 0x4

    move-object v3, p2

    move v4, p3

    move/from16 v5, p4

    move-object/from16 v7, p13

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/Tu;->j6(Lcom/google/android/gms/internal/ads/fv;[BIIILcom/google/android/gms/internal/ads/vt;)I

    move-result v2

    invoke-virtual {v8, p1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    move/from16 v0, p6

    if-ne v3, v0, :cond_1

    move-wide/from16 v0, p10

    invoke-virtual {v8, p1, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    :goto_1
    if-nez v3, :cond_2

    move-object/from16 v0, p13

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/vt;->FH:Ljava/lang/Object;

    move-wide/from16 v0, p10

    invoke-virtual {v8, p1, v0, v1, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_2
    move/from16 v0, p6

    invoke-virtual {v8, p1, v10, v11, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move p3, v2

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    move-object/from16 v0, p13

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/vt;->FH:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/ju;->j6(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-wide/from16 v0, p10

    invoke-virtual {v8, p1, v0, v1, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_2

    :pswitch_1
    if-nez p7, :cond_0

    move-object/from16 v0, p13

    invoke-static {p2, p3, v0}, Lcom/google/android/gms/internal/ads/ut;->DW([BILcom/google/android/gms/internal/ads/vt;)I

    move-result v2

    move-object/from16 v0, p13

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/vt;->DW:J

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/Kt;->j6(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-wide/from16 v0, p10

    invoke-virtual {v8, p1, v0, v1, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_2

    :pswitch_2
    if-nez p7, :cond_0

    move-object/from16 v0, p13

    invoke-static {p2, p3, v0}, Lcom/google/android/gms/internal/ads/ut;->j6([BILcom/google/android/gms/internal/ads/vt;)I

    move-result v2

    move-object/from16 v0, p13

    iget v3, v0, Lcom/google/android/gms/internal/ads/vt;->j6:I

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/Kt;->VH(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-wide/from16 v0, p10

    invoke-virtual {v8, p1, v0, v1, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_2

    :pswitch_3
    if-nez p7, :cond_0

    move-object/from16 v0, p13

    invoke-static {p2, p3, v0}, Lcom/google/android/gms/internal/ads/ut;->j6([BILcom/google/android/gms/internal/ads/vt;)I

    move-result v2

    move-object/from16 v0, p13

    iget v3, v0, Lcom/google/android/gms/internal/ads/vt;->j6:I

    move/from16 v0, p12

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Tu;->FH(I)Lcom/google/android/gms/internal/ads/mu;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-interface {v4, v3}, Lcom/google/android/gms/internal/ads/mu;->j6(I)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-wide/from16 v0, p10

    invoke-virtual {v8, p1, v0, v1, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_2

    :cond_4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Tu;->v5(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/yv;

    move-result-object v4

    int-to-long v6, v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move/from16 v0, p5

    invoke-virtual {v4, v0, v3}, Lcom/google/android/gms/internal/ads/yv;->j6(ILjava/lang/Object;)V

    move p3, v2

    goto/16 :goto_0

    :pswitch_4
    const/4 v2, 0x2

    move/from16 v0, p7

    if-ne v0, v2, :cond_0

    move-object/from16 v0, p13

    invoke-static {p2, p3, v0}, Lcom/google/android/gms/internal/ads/ut;->v5([BILcom/google/android/gms/internal/ads/vt;)I

    move-result v2

    move-object/from16 v0, p13

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/vt;->FH:Ljava/lang/Object;

    move-wide/from16 v0, p10

    invoke-virtual {v8, p1, v0, v1, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_5
    const/4 v2, 0x2

    move/from16 v0, p7

    if-ne v0, v2, :cond_0

    move/from16 v0, p12

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Tu;->j6(I)Lcom/google/android/gms/internal/ads/fv;

    move-result-object v2

    move/from16 v0, p4

    move-object/from16 v1, p13

    invoke-static {v2, p2, p3, v0, v1}, Lcom/google/android/gms/internal/ads/Tu;->j6(Lcom/google/android/gms/internal/ads/fv;[BIILcom/google/android/gms/internal/ads/vt;)I

    move-result p3

    invoke-virtual {v8, p1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    move/from16 v0, p6

    if-ne v2, v0, :cond_5

    move-wide/from16 v0, p10

    invoke-virtual {v8, p1, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    :goto_3
    if-nez v2, :cond_6

    move-object/from16 v0, p13

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/vt;->FH:Ljava/lang/Object;

    move-wide/from16 v0, p10

    invoke-virtual {v8, p1, v0, v1, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_4
    move/from16 v0, p6

    invoke-virtual {v8, p1, v10, v11, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_0

    :cond_5
    const/4 v2, 0x0

    goto :goto_3

    :cond_6
    move-object/from16 v0, p13

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/vt;->FH:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/ju;->j6(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-wide/from16 v0, p10

    invoke-virtual {v8, p1, v0, v1, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_4

    :pswitch_6
    const/4 v2, 0x2

    move/from16 v0, p7

    if-ne v0, v2, :cond_0

    move-object/from16 v0, p13

    invoke-static {p2, p3, v0}, Lcom/google/android/gms/internal/ads/ut;->j6([BILcom/google/android/gms/internal/ads/vt;)I

    move-result v2

    move-object/from16 v0, p13

    iget v3, v0, Lcom/google/android/gms/internal/ads/vt;->j6:I

    if-nez v3, :cond_7

    const-string v3, ""

    move-wide/from16 v0, p10

    invoke-virtual {v8, p1, v0, v1, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_5
    move/from16 v0, p6

    invoke-virtual {v8, p1, v10, v11, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move p3, v2

    goto/16 :goto_0

    :cond_7
    const/high16 v4, 0x20000000

    and-int v4, v4, p8

    if-eqz v4, :cond_8

    add-int v4, v2, v3

    invoke-static {p2, v2, v4}, Lcom/google/android/gms/internal/ads/Gv;->j6([BII)Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_8
    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/google/android/gms/internal/ads/ju;->j6:Ljava/nio/charset/Charset;

    invoke-direct {v4, p2, v2, v3, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-wide/from16 v0, p10

    invoke-virtual {v8, p1, v0, v1, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/2addr v2, v3

    goto :goto_5

    :cond_9
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->u7()Lcom/google/android/gms/internal/ads/pu;

    move-result-object v2

    throw v2

    :pswitch_7
    if-nez p7, :cond_0

    move-object/from16 v0, p13

    invoke-static {p2, p3, v0}, Lcom/google/android/gms/internal/ads/ut;->DW([BILcom/google/android/gms/internal/ads/vt;)I

    move-result v3

    move-object/from16 v0, p13

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/vt;->DW:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    :goto_6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-wide/from16 v0, p10

    invoke-virtual {v8, p1, v0, v1, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move v2, v3

    goto/16 :goto_2

    :cond_a
    const/4 v2, 0x0

    goto :goto_6

    :pswitch_8
    const/4 v2, 0x5

    move/from16 v0, p7

    if-ne v0, v2, :cond_0

    invoke-static {p2, p3}, Lcom/google/android/gms/internal/ads/ut;->j6([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-wide/from16 v0, p10

    invoke-virtual {v8, p1, v0, v1, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_7
    add-int/lit8 v2, p3, 0x4

    goto/16 :goto_2

    :pswitch_9
    const/4 v2, 0x1

    move/from16 v0, p7

    if-ne v0, v2, :cond_0

    invoke-static {p2, p3}, Lcom/google/android/gms/internal/ads/ut;->DW([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-wide/from16 v0, p10

    invoke-virtual {v8, p1, v0, v1, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_8
    add-int/lit8 v2, p3, 0x8

    goto/16 :goto_2

    :pswitch_a
    if-nez p7, :cond_0

    move-object/from16 v0, p13

    invoke-static {p2, p3, v0}, Lcom/google/android/gms/internal/ads/ut;->j6([BILcom/google/android/gms/internal/ads/vt;)I

    move-result v2

    move-object/from16 v0, p13

    iget v3, v0, Lcom/google/android/gms/internal/ads/vt;->j6:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-wide/from16 v0, p10

    invoke-virtual {v8, p1, v0, v1, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_b
    if-nez p7, :cond_0

    move-object/from16 v0, p13

    invoke-static {p2, p3, v0}, Lcom/google/android/gms/internal/ads/ut;->DW([BILcom/google/android/gms/internal/ads/vt;)I

    move-result v2

    move-object/from16 v0, p13

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/vt;->DW:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-wide/from16 v0, p10

    invoke-virtual {v8, p1, v0, v1, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_c
    const/4 v2, 0x5

    move/from16 v0, p7

    if-ne v0, v2, :cond_0

    invoke-static {p2, p3}, Lcom/google/android/gms/internal/ads/ut;->Hw([BI)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    move-wide/from16 v0, p10

    invoke-virtual {v8, p1, v0, v1, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_7

    :pswitch_d
    const/4 v2, 0x1

    move/from16 v0, p7

    if-ne v0, v2, :cond_0

    invoke-static {p2, p3}, Lcom/google/android/gms/internal/ads/ut;->FH([BI)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    move-wide/from16 v0, p10

    invoke-virtual {v8, p1, v0, v1, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_8

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final j6(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/ads/vt;)I
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIJIJ",
            "Lcom/google/android/gms/internal/ads/vt;",
            ")I"
        }
    .end annotation

    sget-object v2, Lcom/google/android/gms/internal/ads/Tu;->DW:Lsun/misc/Unsafe;

    move-wide/from16 v0, p12

    invoke-virtual {v2, p1, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/ou;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/ou;->j3()Z

    move-result v3

    if-nez v3, :cond_2a

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    const/16 v3, 0xa

    :goto_0
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/ou;->j6(I)Lcom/google/android/gms/internal/ads/ou;

    move-result-object v8

    sget-object v2, Lcom/google/android/gms/internal/ads/Tu;->DW:Lsun/misc/Unsafe;

    move-wide/from16 v0, p12

    invoke-virtual {v2, p1, v0, v1, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_1
    packed-switch p11, :pswitch_data_0

    :cond_0
    move v3, p3

    :cond_1
    :goto_2
    return v3

    :cond_2
    shl-int/lit8 v3, v3, 0x1

    goto :goto_0

    :pswitch_0
    const/4 v2, 0x3

    move/from16 v0, p7

    if-ne v0, v2, :cond_0

    move/from16 v0, p8

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Tu;->j6(I)Lcom/google/android/gms/internal/ads/fv;

    move-result-object v2

    and-int/lit8 v3, p5, -0x8

    or-int/lit8 v6, v3, 0x4

    move-object v3, p2

    move v4, p3

    move/from16 v5, p4

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/Tu;->j6(Lcom/google/android/gms/internal/ads/fv;[BIIILcom/google/android/gms/internal/ads/vt;)I

    move-result p3

    move-object/from16 v0, p14

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/vt;->FH:Ljava/lang/Object;

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    move/from16 v0, p4

    if-ge p3, v0, :cond_0

    move-object/from16 v0, p14

    invoke-static {p2, p3, v0}, Lcom/google/android/gms/internal/ads/ut;->j6([BILcom/google/android/gms/internal/ads/vt;)I

    move-result v4

    move-object/from16 v0, p14

    iget v3, v0, Lcom/google/android/gms/internal/ads/vt;->j6:I

    move/from16 v0, p5

    if-ne v0, v3, :cond_0

    move-object v3, p2

    move/from16 v5, p4

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/Tu;->j6(Lcom/google/android/gms/internal/ads/fv;[BIIILcom/google/android/gms/internal/ads/vt;)I

    move-result p3

    move-object/from16 v0, p14

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/vt;->FH:Ljava/lang/Object;

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :pswitch_1
    const/4 v2, 0x2

    move/from16 v0, p7

    if-ne v0, v2, :cond_4

    move-object v2, v8

    check-cast v2, Lcom/google/android/gms/internal/ads/Du;

    move-object/from16 v0, p14

    invoke-static {p2, p3, v0}, Lcom/google/android/gms/internal/ads/ut;->j6([BILcom/google/android/gms/internal/ads/vt;)I

    move-result v3

    move-object/from16 v0, p14

    iget v4, v0, Lcom/google/android/gms/internal/ads/vt;->j6:I

    add-int/2addr v4, v3

    :goto_4
    if-ge v3, v4, :cond_3

    move-object/from16 v0, p14

    invoke-static {p2, v3, v0}, Lcom/google/android/gms/internal/ads/ut;->DW([BILcom/google/android/gms/internal/ads/vt;)I

    move-result v3

    move-object/from16 v0, p14

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/vt;->DW:J

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/Kt;->j6(J)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/internal/ads/Du;->j6(J)V

    goto :goto_4

    :cond_3
    if-eq v3, v4, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->j6()Lcom/google/android/gms/internal/ads/pu;

    move-result-object v2

    throw v2

    :cond_4
    if-nez p7, :cond_0

    check-cast v8, Lcom/google/android/gms/internal/ads/Du;

    move-object/from16 v0, p14

    invoke-static {p2, p3, v0}, Lcom/google/android/gms/internal/ads/ut;->DW([BILcom/google/android/gms/internal/ads/vt;)I

    move-result v3

    move-object/from16 v0, p14

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/vt;->DW:J

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/Kt;->j6(J)J

    move-result-wide v4

    invoke-virtual {v8, v4, v5}, Lcom/google/android/gms/internal/ads/Du;->j6(J)V

    :goto_5
    move/from16 v0, p4

    if-ge v3, v0, :cond_1

    move-object/from16 v0, p14

    invoke-static {p2, v3, v0}, Lcom/google/android/gms/internal/ads/ut;->j6([BILcom/google/android/gms/internal/ads/vt;)I

    move-result v2

    move-object/from16 v0, p14

    iget v4, v0, Lcom/google/android/gms/internal/ads/vt;->j6:I

    move/from16 v0, p5

    if-ne v0, v4, :cond_1

    move-object/from16 v0, p14

    invoke-static {p2, v2, v0}, Lcom/google/android/gms/internal/ads/ut;->DW([BILcom/google/android/gms/internal/ads/vt;)I

    move-result v3

    move-object/from16 v0, p14

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/vt;->DW:J

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/Kt;->j6(J)J

    move-result-wide v4

    invoke-virtual {v8, v4, v5}, Lcom/google/android/gms/internal/ads/Du;->j6(J)V

    goto :goto_5

    :pswitch_2
    const/4 v2, 0x2

    move/from16 v0, p7

    if-ne v0, v2, :cond_6

    check-cast v8, Lcom/google/android/gms/internal/ads/iu;

    move-object/from16 v0, p14

    invoke-static {p2, p3, v0}, Lcom/google/android/gms/internal/ads/ut;->j6([BILcom/google/android/gms/internal/ads/vt;)I

    move-result v3

    move-object/from16 v0, p14

    iget v2, v0, Lcom/google/android/gms/internal/ads/vt;->j6:I

    add-int/2addr v2, v3

    :goto_6
    if-ge v3, v2, :cond_5

    move-object/from16 v0, p14

    invoke-static {p2, v3, v0}, Lcom/google/android/gms/internal/ads/ut;->j6([BILcom/google/android/gms/internal/ads/vt;)I

    move-result v3

    move-object/from16 v0, p14

    iget v4, v0, Lcom/google/android/gms/internal/ads/vt;->j6:I

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/Kt;->VH(I)I

    move-result v4

    invoke-virtual {v8, v4}, Lcom/google/android/gms/internal/ads/iu;->Zo(I)V

    goto :goto_6

    :cond_5
    if-eq v3, v2, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->j6()Lcom/google/android/gms/internal/ads/pu;

    move-result-object v2

    throw v2

    :cond_6
    if-nez p7, :cond_0

    check-cast v8, Lcom/google/android/gms/internal/ads/iu;

    move-object/from16 v0, p14

    invoke-static {p2, p3, v0}, Lcom/google/android/gms/internal/ads/ut;->j6([BILcom/google/android/gms/internal/ads/vt;)I

    move-result v3

    move-object/from16 v0, p14

    iget v2, v0, Lcom/google/android/gms/internal/ads/vt;->j6:I

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Kt;->VH(I)I

    move-result v2

    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/ads/iu;->Zo(I)V

    :goto_7
    move/from16 v0, p4

    if-ge v3, v0, :cond_1

    move-object/from16 v0, p14

    invoke-static {p2, v3, v0}, Lcom/google/android/gms/internal/ads/ut;->j6([BILcom/google/android/gms/internal/ads/vt;)I

    move-result v2

    move-object/from16 v0, p14

    iget v4, v0, Lcom/google/android/gms/internal/ads/vt;->j6:I

    move/from16 v0, p5

    if-ne v0, v4, :cond_1

    move-object/from16 v0, p14

    invoke-static {p2, v2, v0}, Lcom/google/android/gms/internal/ads/ut;->j6([BILcom/google/android/gms/internal/ads/vt;)I

    move-result v3

    move-object/from16 v0, p14

    iget v2, v0, Lcom/google/android/gms/internal/ads/vt;->j6:I

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Kt;->VH(I)I

    move-result v2

    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/ads/iu;->Zo(I)V

    goto :goto_7

    :pswitch_3
    const/4 v2, 0x2

    move/from16 v0, p7

    if-ne v0, v2, :cond_8

    move-object/from16 v0, p14

    invoke-static {p2, p3, v8, v0}, Lcom/google/android/gms/internal/ads/ut;->j6([BILcom/google/android/gms/internal/ads/ou;Lcom/google/android/gms/internal/ads/vt;)I

    move-result v2

    move v3, v2

    :goto_8
    check-cast p1, Lcom/google/android/gms/internal/ads/hu;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/hu;->zzfpu:Lcom/google/android/gms/internal/ads/yv;

    invoke-static {}, Lcom/google/android/gms/internal/ads/yv;->FH()Lcom/google/android/gms/internal/ads/yv;

    move-result-object v4

    if-ne v2, v4, :cond_7

    const/4 v2, 0x0

    :cond_7
    move/from16 v0, p8

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Tu;->FH(I)Lcom/google/android/gms/internal/ads/mu;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/Tu;->XL:Lcom/google/android/gms/internal/ads/xv;

    move/from16 v0, p6

    invoke-static {v0, v8, v4, v2, v5}, Lcom/google/android/gms/internal/ads/hv;->j6(ILjava/util/List;Lcom/google/android/gms/internal/ads/mu;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/xv;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/yv;

    if-eqz v2, :cond_1

    iput-object v2, p1, Lcom/google/android/gms/internal/ads/hu;->zzfpu:Lcom/google/android/gms/internal/ads/yv;

    goto/16 :goto_2

    :cond_8
    if-nez p7, :cond_0

    move/from16 v2, p5

    move-object v3, p2

    move v4, p3

    move/from16 v5, p4

    move-object v6, v8

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/ut;->j6(I[BIILcom/google/android/gms/internal/ads/ou;Lcom/google/android/gms/internal/ads/vt;)I

    move-result v2

    move v3, v2

    goto :goto_8

    :pswitch_4
    const/4 v2, 0x2

    move/from16 v0, p7

    if-ne v0, v2, :cond_0

    move-object/from16 v0, p14

    invoke-static {p2, p3, v0}, Lcom/google/android/gms/internal/ads/ut;->j6([BILcom/google/android/gms/internal/ads/vt;)I

    move-result v3

    move-object/from16 v0, p14

    iget v2, v0, Lcom/google/android/gms/internal/ads/vt;->j6:I

    if-ltz v2, :cond_e

    array-length v4, p2

    sub-int/2addr v4, v3

    if-gt v2, v4, :cond_d

    if-nez v2, :cond_9

    sget-object v2, Lcom/google/android/gms/internal/ads/yt;->j6:Lcom/google/android/gms/internal/ads/yt;

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_9
    move/from16 v0, p4

    if-ge v3, v0, :cond_1

    move-object/from16 v0, p14

    invoke-static {p2, v3, v0}, Lcom/google/android/gms/internal/ads/ut;->j6([BILcom/google/android/gms/internal/ads/vt;)I

    move-result v2

    move-object/from16 v0, p14

    iget v4, v0, Lcom/google/android/gms/internal/ads/vt;->j6:I

    move/from16 v0, p5

    if-ne v0, v4, :cond_1

    move-object/from16 v0, p14

    invoke-static {p2, v2, v0}, Lcom/google/android/gms/internal/ads/ut;->j6([BILcom/google/android/gms/internal/ads/vt;)I

    move-result v3

    move-object/from16 v0, p14

    iget v2, v0, Lcom/google/android/gms/internal/ads/vt;->j6:I

    if-ltz v2, :cond_c

    array-length v4, p2

    sub-int/2addr v4, v3

    if-gt v2, v4, :cond_b

    if-nez v2, :cond_a

    sget-object v2, Lcom/google/android/gms/internal/ads/yt;->j6:Lcom/google/android/gms/internal/ads/yt;

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_9
    invoke-static {p2, v3, v2}, Lcom/google/android/gms/internal/ads/yt;->j6([BII)Lcom/google/android/gms/internal/ads/yt;

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_a
    add-int/2addr v3, v2

    goto :goto_9

    :cond_a
    invoke-static {p2, v3, v2}, Lcom/google/android/gms/internal/ads/yt;->j6([BII)Lcom/google/android/gms/internal/ads/yt;

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_b
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->j6()Lcom/google/android/gms/internal/ads/pu;

    move-result-object v2

    throw v2

    :cond_c
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->DW()Lcom/google/android/gms/internal/ads/pu;

    move-result-object v2

    throw v2

    :cond_d
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->j6()Lcom/google/android/gms/internal/ads/pu;

    move-result-object v2

    throw v2

    :cond_e
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->DW()Lcom/google/android/gms/internal/ads/pu;

    move-result-object v2

    throw v2

    :pswitch_5
    const/4 v2, 0x2

    move/from16 v0, p7

    if-ne v0, v2, :cond_0

    move/from16 v0, p8

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Tu;->j6(I)Lcom/google/android/gms/internal/ads/fv;

    move-result-object v2

    move/from16 v3, p5

    move-object v4, p2

    move v5, p3

    move/from16 v6, p4

    move-object v7, v8

    move-object/from16 v8, p14

    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/Tu;->j6(Lcom/google/android/gms/internal/ads/fv;I[BIILcom/google/android/gms/internal/ads/ou;Lcom/google/android/gms/internal/ads/vt;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_6
    const/4 v2, 0x2

    move/from16 v0, p7

    if-ne v0, v2, :cond_0

    const-wide/32 v2, 0x20000000

    and-long v2, v2, p9

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_13

    move-object/from16 v0, p14

    invoke-static {p2, p3, v0}, Lcom/google/android/gms/internal/ads/ut;->j6([BILcom/google/android/gms/internal/ads/vt;)I

    move-result v2

    move-object/from16 v0, p14

    iget v3, v0, Lcom/google/android/gms/internal/ads/vt;->j6:I

    if-ltz v3, :cond_12

    if-nez v3, :cond_f

    const-string v3, ""

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move p3, v2

    :goto_b
    move/from16 v0, p4

    if-ge p3, v0, :cond_0

    move-object/from16 v0, p14

    invoke-static {p2, p3, v0}, Lcom/google/android/gms/internal/ads/ut;->j6([BILcom/google/android/gms/internal/ads/vt;)I

    move-result v2

    move-object/from16 v0, p14

    iget v3, v0, Lcom/google/android/gms/internal/ads/vt;->j6:I

    move/from16 v0, p5

    if-ne v0, v3, :cond_0

    move-object/from16 v0, p14

    invoke-static {p2, v2, v0}, Lcom/google/android/gms/internal/ads/ut;->j6([BILcom/google/android/gms/internal/ads/vt;)I

    move-result v2

    move-object/from16 v0, p14

    iget v3, v0, Lcom/google/android/gms/internal/ads/vt;->j6:I

    if-ltz v3, :cond_11

    if-nez v3, :cond_10

    const-string v3, ""

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move p3, v2

    goto :goto_b

    :cond_f
    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/google/android/gms/internal/ads/ju;->j6:Ljava/nio/charset/Charset;

    invoke-direct {v4, p2, v2, v3, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_c
    add-int/2addr v2, v3

    move p3, v2

    goto :goto_b

    :cond_10
    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/google/android/gms/internal/ads/ju;->j6:Ljava/nio/charset/Charset;

    invoke-direct {v4, p2, v2, v3, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_11
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->DW()Lcom/google/android/gms/internal/ads/pu;

    move-result-object v2

    throw v2

    :cond_12
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->DW()Lcom/google/android/gms/internal/ads/pu;

    move-result-object v2

    throw v2

    :cond_13
    move-object/from16 v0, p14

    invoke-static {p2, p3, v0}, Lcom/google/android/gms/internal/ads/ut;->j6([BILcom/google/android/gms/internal/ads/vt;)I

    move-result p3

    move-object/from16 v0, p14

    iget v3, v0, Lcom/google/android/gms/internal/ads/vt;->j6:I

    if-ltz v3, :cond_19

    if-nez v3, :cond_14

    const-string v2, ""

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_d
    move/from16 v0, p4

    if-ge p3, v0, :cond_0

    move-object/from16 v0, p14

    invoke-static {p2, p3, v0}, Lcom/google/android/gms/internal/ads/ut;->j6([BILcom/google/android/gms/internal/ads/vt;)I

    move-result v2

    move-object/from16 v0, p14

    iget v3, v0, Lcom/google/android/gms/internal/ads/vt;->j6:I

    move/from16 v0, p5

    if-ne v0, v3, :cond_0

    move-object/from16 v0, p14

    invoke-static {p2, v2, v0}, Lcom/google/android/gms/internal/ads/ut;->j6([BILcom/google/android/gms/internal/ads/vt;)I

    move-result p3

    move-object/from16 v0, p14

    iget v3, v0, Lcom/google/android/gms/internal/ads/vt;->j6:I

    if-ltz v3, :cond_17

    if-nez v3, :cond_15

    const-string v2, ""

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_14
    add-int v2, p3, v3

    invoke-static {p2, p3, v2}, Lcom/google/android/gms/internal/ads/Gv;->j6([BII)Z

    move-result v4

    if-eqz v4, :cond_18

    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/google/android/gms/internal/ads/ju;->j6:Ljava/nio/charset/Charset;

    invoke-direct {v4, p2, p3, v3, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move p3, v2

    goto :goto_d

    :cond_15
    add-int v2, p3, v3

    invoke-static {p2, p3, v2}, Lcom/google/android/gms/internal/ads/Gv;->j6([BII)Z

    move-result v4

    if-eqz v4, :cond_16

    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/google/android/gms/internal/ads/ju;->j6:Ljava/nio/charset/Charset;

    invoke-direct {v4, p2, p3, v3, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move p3, v2

    goto :goto_d

    :cond_16
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->u7()Lcom/google/android/gms/internal/ads/pu;

    move-result-object v2

    throw v2

    :cond_17
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->DW()Lcom/google/android/gms/internal/ads/pu;

    move-result-object v2

    throw v2

    :cond_18
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->u7()Lcom/google/android/gms/internal/ads/pu;

    move-result-object v2

    throw v2

    :cond_19
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->DW()Lcom/google/android/gms/internal/ads/pu;

    move-result-object v2

    throw v2

    :pswitch_7
    const/4 v2, 0x2

    move/from16 v0, p7

    if-ne v0, v2, :cond_1c

    check-cast v8, Lcom/google/android/gms/internal/ads/wt;

    move-object/from16 v0, p14

    invoke-static {p2, p3, v0}, Lcom/google/android/gms/internal/ads/ut;->j6([BILcom/google/android/gms/internal/ads/vt;)I

    move-result v3

    move-object/from16 v0, p14

    iget v2, v0, Lcom/google/android/gms/internal/ads/vt;->j6:I

    add-int v4, v2, v3

    :goto_e
    if-ge v3, v4, :cond_1b

    move-object/from16 v0, p14

    invoke-static {p2, v3, v0}, Lcom/google/android/gms/internal/ads/ut;->DW([BILcom/google/android/gms/internal/ads/vt;)I

    move-result v3

    move-object/from16 v0, p14

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/vt;->DW:J

    const-wide/16 v10, 0x0

    cmp-long v2, v6, v10

    if-eqz v2, :cond_1a

    const/4 v2, 0x1

    :goto_f
    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/ads/wt;->j6(Z)V

    goto :goto_e

    :cond_1a
    const/4 v2, 0x0

    goto :goto_f

    :cond_1b
    if-eq v3, v4, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->j6()Lcom/google/android/gms/internal/ads/pu;

    move-result-object v2

    throw v2

    :cond_1c
    if-nez p7, :cond_0

    check-cast v8, Lcom/google/android/gms/internal/ads/wt;

    move-object/from16 v0, p14

    invoke-static {p2, p3, v0}, Lcom/google/android/gms/internal/ads/ut;->DW([BILcom/google/android/gms/internal/ads/vt;)I

    move-result p3

    move-object/from16 v0, p14

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/vt;->DW:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1d

    const/4 v2, 0x1

    :goto_10
    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/ads/wt;->j6(Z)V

    :goto_11
    move/from16 v0, p4

    if-ge p3, v0, :cond_0

    move-object/from16 v0, p14

    invoke-static {p2, p3, v0}, Lcom/google/android/gms/internal/ads/ut;->j6([BILcom/google/android/gms/internal/ads/vt;)I

    move-result v2

    move-object/from16 v0, p14

    iget v3, v0, Lcom/google/android/gms/internal/ads/vt;->j6:I

    move/from16 v0, p5

    if-ne v0, v3, :cond_0

    move-object/from16 v0, p14

    invoke-static {p2, v2, v0}, Lcom/google/android/gms/internal/ads/ut;->DW([BILcom/google/android/gms/internal/ads/vt;)I

    move-result p3

    move-object/from16 v0, p14

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/vt;->DW:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1e

    const/4 v2, 0x1

    :goto_12
    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/ads/wt;->j6(Z)V

    goto :goto_11

    :cond_1d
    const/4 v2, 0x0

    goto :goto_10

    :cond_1e
    const/4 v2, 0x0

    goto :goto_12

    :pswitch_8
    const/4 v2, 0x2

    move/from16 v0, p7

    if-ne v0, v2, :cond_20

    check-cast v8, Lcom/google/android/gms/internal/ads/iu;

    move-object/from16 v0, p14

    invoke-static {p2, p3, v0}, Lcom/google/android/gms/internal/ads/ut;->j6([BILcom/google/android/gms/internal/ads/vt;)I

    move-result v3

    move-object/from16 v0, p14

    iget v2, v0, Lcom/google/android/gms/internal/ads/vt;->j6:I

    add-int/2addr v2, v3

    :goto_13
    if-ge v3, v2, :cond_1f

    invoke-static {p2, v3}, Lcom/google/android/gms/internal/ads/ut;->j6([BI)I

    move-result v4

    invoke-virtual {v8, v4}, Lcom/google/android/gms/internal/ads/iu;->Zo(I)V

    add-int/lit8 v3, v3, 0x4

    goto :goto_13

    :cond_1f
    if-eq v3, v2, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->j6()Lcom/google/android/gms/internal/ads/pu;

    move-result-object v2

    throw v2

    :cond_20
    const/4 v2, 0x5

    move/from16 v0, p7

    if-ne v0, v2, :cond_0

    check-cast v8, Lcom/google/android/gms/internal/ads/iu;

    invoke-static {p2, p3}, Lcom/google/android/gms/internal/ads/ut;->j6([BI)I

    move-result v2

    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/ads/iu;->Zo(I)V

    :goto_14
    add-int/lit8 v3, p3, 0x4

    move/from16 v0, p4

    if-ge v3, v0, :cond_1

    move-object/from16 v0, p14

    invoke-static {p2, v3, v0}, Lcom/google/android/gms/internal/ads/ut;->j6([BILcom/google/android/gms/internal/ads/vt;)I

    move-result p3

    move-object/from16 v0, p14

    iget v2, v0, Lcom/google/android/gms/internal/ads/vt;->j6:I

    move/from16 v0, p5

    if-ne v0, v2, :cond_1

    invoke-static {p2, p3}, Lcom/google/android/gms/internal/ads/ut;->j6([BI)I

    move-result v2

    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/ads/iu;->Zo(I)V

    goto :goto_14

    :pswitch_9
    const/4 v2, 0x2

    move/from16 v0, p7

    if-ne v0, v2, :cond_22

    check-cast v8, Lcom/google/android/gms/internal/ads/Du;

    move-object/from16 v0, p14

    invoke-static {p2, p3, v0}, Lcom/google/android/gms/internal/ads/ut;->j6([BILcom/google/android/gms/internal/ads/vt;)I

    move-result v3

    move-object/from16 v0, p14

    iget v2, v0, Lcom/google/android/gms/internal/ads/vt;->j6:I

    add-int/2addr v2, v3

    :goto_15
    if-ge v3, v2, :cond_21

    invoke-static {p2, v3}, Lcom/google/android/gms/internal/ads/ut;->DW([BI)J

    move-result-wide v4

    invoke-virtual {v8, v4, v5}, Lcom/google/android/gms/internal/ads/Du;->j6(J)V

    add-int/lit8 v3, v3, 0x8

    goto :goto_15

    :cond_21
    if-eq v3, v2, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->j6()Lcom/google/android/gms/internal/ads/pu;

    move-result-object v2

    throw v2

    :cond_22
    const/4 v2, 0x1

    move/from16 v0, p7

    if-ne v0, v2, :cond_0

    check-cast v8, Lcom/google/android/gms/internal/ads/Du;

    invoke-static {p2, p3}, Lcom/google/android/gms/internal/ads/ut;->DW([BI)J

    move-result-wide v2

    invoke-virtual {v8, v2, v3}, Lcom/google/android/gms/internal/ads/Du;->j6(J)V

    :goto_16
    add-int/lit8 v3, p3, 0x8

    move/from16 v0, p4

    if-ge v3, v0, :cond_1

    move-object/from16 v0, p14

    invoke-static {p2, v3, v0}, Lcom/google/android/gms/internal/ads/ut;->j6([BILcom/google/android/gms/internal/ads/vt;)I

    move-result p3

    move-object/from16 v0, p14

    iget v2, v0, Lcom/google/android/gms/internal/ads/vt;->j6:I

    move/from16 v0, p5

    if-ne v0, v2, :cond_1

    invoke-static {p2, p3}, Lcom/google/android/gms/internal/ads/ut;->DW([BI)J

    move-result-wide v2

    invoke-virtual {v8, v2, v3}, Lcom/google/android/gms/internal/ads/Du;->j6(J)V

    goto :goto_16

    :pswitch_a
    const/4 v2, 0x2

    move/from16 v0, p7

    if-ne v0, v2, :cond_23

    move-object/from16 v0, p14

    invoke-static {p2, p3, v8, v0}, Lcom/google/android/gms/internal/ads/ut;->j6([BILcom/google/android/gms/internal/ads/ou;Lcom/google/android/gms/internal/ads/vt;)I

    move-result v3

    goto/16 :goto_2

    :cond_23
    if-nez p7, :cond_0

    move/from16 v2, p5

    move-object v3, p2

    move v4, p3

    move/from16 v5, p4

    move-object v6, v8

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/ut;->j6(I[BIILcom/google/android/gms/internal/ads/ou;Lcom/google/android/gms/internal/ads/vt;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_b
    const/4 v2, 0x2

    move/from16 v0, p7

    if-ne v0, v2, :cond_25

    check-cast v8, Lcom/google/android/gms/internal/ads/Du;

    move-object/from16 v0, p14

    invoke-static {p2, p3, v0}, Lcom/google/android/gms/internal/ads/ut;->j6([BILcom/google/android/gms/internal/ads/vt;)I

    move-result v3

    move-object/from16 v0, p14

    iget v2, v0, Lcom/google/android/gms/internal/ads/vt;->j6:I

    add-int/2addr v2, v3

    :goto_17
    if-ge v3, v2, :cond_24

    move-object/from16 v0, p14

    invoke-static {p2, v3, v0}, Lcom/google/android/gms/internal/ads/ut;->DW([BILcom/google/android/gms/internal/ads/vt;)I

    move-result v3

    move-object/from16 v0, p14

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/vt;->DW:J

    invoke-virtual {v8, v4, v5}, Lcom/google/android/gms/internal/ads/Du;->j6(J)V

    goto :goto_17

    :cond_24
    if-eq v3, v2, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->j6()Lcom/google/android/gms/internal/ads/pu;

    move-result-object v2

    throw v2

    :cond_25
    if-nez p7, :cond_0

    check-cast v8, Lcom/google/android/gms/internal/ads/Du;

    move-object/from16 v0, p14

    invoke-static {p2, p3, v0}, Lcom/google/android/gms/internal/ads/ut;->DW([BILcom/google/android/gms/internal/ads/vt;)I

    move-result v3

    move-object/from16 v0, p14

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/vt;->DW:J

    invoke-virtual {v8, v4, v5}, Lcom/google/android/gms/internal/ads/Du;->j6(J)V

    :goto_18
    move/from16 v0, p4

    if-ge v3, v0, :cond_1

    move-object/from16 v0, p14

    invoke-static {p2, v3, v0}, Lcom/google/android/gms/internal/ads/ut;->j6([BILcom/google/android/gms/internal/ads/vt;)I

    move-result v2

    move-object/from16 v0, p14

    iget v4, v0, Lcom/google/android/gms/internal/ads/vt;->j6:I

    move/from16 v0, p5

    if-ne v0, v4, :cond_1

    move-object/from16 v0, p14

    invoke-static {p2, v2, v0}, Lcom/google/android/gms/internal/ads/ut;->DW([BILcom/google/android/gms/internal/ads/vt;)I

    move-result v3

    move-object/from16 v0, p14

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/vt;->DW:J

    invoke-virtual {v8, v4, v5}, Lcom/google/android/gms/internal/ads/Du;->j6(J)V

    goto :goto_18

    :pswitch_c
    const/4 v2, 0x2

    move/from16 v0, p7

    if-ne v0, v2, :cond_27

    check-cast v8, Lcom/google/android/gms/internal/ads/eu;

    move-object/from16 v0, p14

    invoke-static {p2, p3, v0}, Lcom/google/android/gms/internal/ads/ut;->j6([BILcom/google/android/gms/internal/ads/vt;)I

    move-result v3

    move-object/from16 v0, p14

    iget v2, v0, Lcom/google/android/gms/internal/ads/vt;->j6:I

    add-int/2addr v2, v3

    :goto_19
    if-ge v3, v2, :cond_26

    invoke-static {p2, v3}, Lcom/google/android/gms/internal/ads/ut;->Hw([BI)F

    move-result v4

    invoke-virtual {v8, v4}, Lcom/google/android/gms/internal/ads/eu;->j6(F)V

    add-int/lit8 v3, v3, 0x4

    goto :goto_19

    :cond_26
    if-eq v3, v2, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->j6()Lcom/google/android/gms/internal/ads/pu;

    move-result-object v2

    throw v2

    :cond_27
    const/4 v2, 0x5

    move/from16 v0, p7

    if-ne v0, v2, :cond_0

    check-cast v8, Lcom/google/android/gms/internal/ads/eu;

    invoke-static {p2, p3}, Lcom/google/android/gms/internal/ads/ut;->Hw([BI)F

    move-result v2

    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/ads/eu;->j6(F)V

    :goto_1a
    add-int/lit8 v3, p3, 0x4

    move/from16 v0, p4

    if-ge v3, v0, :cond_1

    move-object/from16 v0, p14

    invoke-static {p2, v3, v0}, Lcom/google/android/gms/internal/ads/ut;->j6([BILcom/google/android/gms/internal/ads/vt;)I

    move-result p3

    move-object/from16 v0, p14

    iget v2, v0, Lcom/google/android/gms/internal/ads/vt;->j6:I

    move/from16 v0, p5

    if-ne v0, v2, :cond_1

    invoke-static {p2, p3}, Lcom/google/android/gms/internal/ads/ut;->Hw([BI)F

    move-result v2

    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/ads/eu;->j6(F)V

    goto :goto_1a

    :pswitch_d
    const/4 v2, 0x2

    move/from16 v0, p7

    if-ne v0, v2, :cond_29

    check-cast v8, Lcom/google/android/gms/internal/ads/Rt;

    move-object/from16 v0, p14

    invoke-static {p2, p3, v0}, Lcom/google/android/gms/internal/ads/ut;->j6([BILcom/google/android/gms/internal/ads/vt;)I

    move-result v3

    move-object/from16 v0, p14

    iget v2, v0, Lcom/google/android/gms/internal/ads/vt;->j6:I

    add-int/2addr v2, v3

    :goto_1b
    if-ge v3, v2, :cond_28

    invoke-static {p2, v3}, Lcom/google/android/gms/internal/ads/ut;->FH([BI)D

    move-result-wide v4

    invoke-virtual {v8, v4, v5}, Lcom/google/android/gms/internal/ads/Rt;->j6(D)V

    add-int/lit8 v3, v3, 0x8

    goto :goto_1b

    :cond_28
    if-eq v3, v2, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->j6()Lcom/google/android/gms/internal/ads/pu;

    move-result-object v2

    throw v2

    :cond_29
    const/4 v2, 0x1

    move/from16 v0, p7

    if-ne v0, v2, :cond_0

    check-cast v8, Lcom/google/android/gms/internal/ads/Rt;

    invoke-static {p2, p3}, Lcom/google/android/gms/internal/ads/ut;->FH([BI)D

    move-result-wide v2

    invoke-virtual {v8, v2, v3}, Lcom/google/android/gms/internal/ads/Rt;->j6(D)V

    :goto_1c
    add-int/lit8 v3, p3, 0x8

    move/from16 v0, p4

    if-ge v3, v0, :cond_1

    move-object/from16 v0, p14

    invoke-static {p2, v3, v0}, Lcom/google/android/gms/internal/ads/ut;->j6([BILcom/google/android/gms/internal/ads/vt;)I

    move-result p3

    move-object/from16 v0, p14

    iget v2, v0, Lcom/google/android/gms/internal/ads/vt;->j6:I

    move/from16 v0, p5

    if-ne v0, v2, :cond_1

    invoke-static {p2, p3}, Lcom/google/android/gms/internal/ads/ut;->FH([BI)D

    move-result-wide v2

    invoke-virtual {v8, v2, v3}, Lcom/google/android/gms/internal/ads/Rt;->j6(D)V

    goto :goto_1c

    :cond_2a
    move-object v8, v2

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final j6(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/ads/vt;)I
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TT;[BIIIJ",
            "Lcom/google/android/gms/internal/ads/vt;",
            ")I"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/Tu;->DW:Lsun/misc/Unsafe;

    invoke-direct {p0, p5}, Lcom/google/android/gms/internal/ads/Tu;->DW(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, p6, p7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Tu;->j3:Lcom/google/android/gms/internal/ads/Ku;

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/Ku;->DW(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Tu;->j3:Lcom/google/android/gms/internal/ads/Ku;

    invoke-interface {v3, v1}, Lcom/google/android/gms/internal/ads/Ku;->Hw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Tu;->j3:Lcom/google/android/gms/internal/ads/Ku;

    invoke-interface {v4, v3, v2}, Lcom/google/android/gms/internal/ads/Ku;->j6(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p1, p6, p7, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Tu;->j3:Lcom/google/android/gms/internal/ads/Ku;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/Ku;->v5(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Iu;

    const/4 v0, 0x0

    throw v0
.end method

.method private final j6(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/ads/vt;)I
    .registers 48
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIII",
            "Lcom/google/android/gms/internal/ads/vt;",
            ")I"
        }
    .end annotation

    sget-object v40, Lcom/google/android/gms/internal/ads/Tu;->DW:Lsun/misc/Unsafe;

    const/16 v18, -0x1

    const/16 v20, 0x0

    const/16 v17, 0x0

    const/16 v38, 0x0

    const/16 v39, -0x1

    move/from16 v8, v18

    move/from16 v12, p5

    move/from16 v6, p3

    :goto_0
    move/from16 v0, p4

    if-ge v6, v0, :cond_14

    add-int/lit8 v4, v6, 0x1

    aget-byte v17, p2, v6

    if-gez v17, :cond_1e

    move/from16 v0, v17

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    invoke-static {v0, v1, v4, v2}, Lcom/google/android/gms/internal/ads/ut;->j6(I[BILcom/google/android/gms/internal/ads/vt;)I

    move-result v6

    move-object/from16 v0, p6

    iget v0, v0, Lcom/google/android/gms/internal/ads/vt;->j6:I

    move/from16 v17, v0

    :goto_1
    ushr-int/lit8 v18, v17, 0x3

    and-int/lit8 v19, v17, 0x7

    move/from16 v0, v18

    if-le v0, v8, :cond_1

    div-int/lit8 v4, v20, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/ads/Tu;->j6(II)I

    move-result v20

    :goto_2
    const/4 v4, -0x1

    move/from16 v0, v20

    if-ne v0, v4, :cond_2

    const/16 v20, 0x0

    move/from16 v11, v39

    move/from16 v10, v38

    :goto_3
    move/from16 v0, v17

    if-ne v0, v12, :cond_0

    if-nez v12, :cond_15

    :cond_0
    move/from16 v4, v17

    move-object/from16 v5, p2

    move/from16 v7, p4

    move-object/from16 v8, p1

    move-object/from16 v9, p6

    invoke-static/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/Tu;->j6(I[BIILjava/lang/Object;Lcom/google/android/gms/internal/ads/vt;)I

    move-result v4

    move v5, v10

    move v6, v11

    move v7, v12

    :goto_4
    move/from16 v39, v6

    move/from16 v38, v5

    :goto_5
    move/from16 v8, v18

    move v12, v7

    move v6, v4

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/Tu;->VH(I)I

    move-result v20

    goto :goto_2

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Tu;->FH:[I

    add-int/lit8 v5, v20, 0x1

    aget v32, v4, v5

    const/high16 v5, 0xff00000

    and-int v5, v5, v32

    ushr-int/lit8 v23, v5, 0x14

    const v5, 0xfffff

    and-int v5, v5, v32

    int-to-long v10, v5

    const/16 v5, 0x11

    move/from16 v0, v23

    if-gt v0, v5, :cond_c

    add-int/lit8 v5, v20, 0x2

    aget v4, v4, v5

    const/4 v5, 0x1

    ushr-int/lit8 v7, v4, 0x14

    shl-int v15, v5, v7

    const v5, 0xfffff

    and-int/2addr v4, v5

    move/from16 v0, v39

    if-eq v4, v0, :cond_5

    const/4 v5, -0x1

    move/from16 v0, v39

    if-eq v0, v5, :cond_3

    move/from16 v0, v39

    int-to-long v8, v0

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    move/from16 v2, v38

    invoke-virtual {v0, v1, v8, v9, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_3
    int-to-long v8, v4

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v14

    move/from16 v39, v4

    :goto_6
    packed-switch v23, :pswitch_data_0

    :cond_4
    move/from16 v11, v39

    move/from16 v12, p5

    move v10, v14

    goto :goto_3

    :cond_5
    move/from16 v14, v38

    goto :goto_6

    :pswitch_0
    const/4 v4, 0x3

    move/from16 v0, v19

    if-ne v0, v4, :cond_4

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/Tu;->j6(I)Lcom/google/android/gms/internal/ads/fv;

    move-result-object v4

    shl-int/lit8 v5, v18, 0x3

    or-int/lit8 v8, v5, 0x4

    move-object/from16 v5, p2

    move/from16 v7, p4

    move-object/from16 v9, p6

    invoke-static/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/Tu;->j6(Lcom/google/android/gms/internal/ads/fv;[BIIILcom/google/android/gms/internal/ads/vt;)I

    move-result v6

    and-int v4, v14, v15

    if-nez v4, :cond_6

    move-object/from16 v0, p6

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/vt;->FH:Ljava/lang/Object;

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10, v11, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_7
    or-int v4, v14, v15

    move v5, v4

    :goto_8
    move v4, v6

    :goto_9
    move/from16 v8, v18

    move/from16 v12, p5

    move/from16 v38, v5

    move v6, v4

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, p6

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/vt;->FH:Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/ju;->j6(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10, v11, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_7

    :pswitch_1
    if-nez v19, :cond_4

    move-object/from16 v0, p2

    move-object/from16 v1, p6

    invoke-static {v0, v6, v1}, Lcom/google/android/gms/internal/ads/ut;->DW([BILcom/google/android/gms/internal/ads/vt;)I

    move-result v12

    move-object/from16 v0, p6

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/vt;->DW:J

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/Kt;->j6(J)J

    move-result-wide v8

    move-object/from16 v4, v40

    move-object/from16 v5, p1

    move-wide v6, v10

    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move v4, v12

    :goto_a
    or-int v5, v14, v15

    goto :goto_9

    :pswitch_2
    if-nez v19, :cond_4

    move-object/from16 v0, p2

    move-object/from16 v1, p6

    invoke-static {v0, v6, v1}, Lcom/google/android/gms/internal/ads/ut;->j6([BILcom/google/android/gms/internal/ads/vt;)I

    move-result v4

    move-object/from16 v0, p6

    iget v5, v0, Lcom/google/android/gms/internal/ads/vt;->j6:I

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/Kt;->VH(I)I

    move-result v5

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10, v11, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_b
    or-int v5, v14, v15

    move v6, v4

    goto :goto_8

    :pswitch_3
    if-nez v19, :cond_4

    move-object/from16 v0, p2

    move-object/from16 v1, p6

    invoke-static {v0, v6, v1}, Lcom/google/android/gms/internal/ads/ut;->j6([BILcom/google/android/gms/internal/ads/vt;)I

    move-result v4

    move-object/from16 v0, p6

    iget v5, v0, Lcom/google/android/gms/internal/ads/vt;->j6:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/Tu;->FH(I)Lcom/google/android/gms/internal/ads/mu;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-interface {v6, v5}, Lcom/google/android/gms/internal/ads/mu;->j6(I)Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_7
    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10, v11, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_b

    :cond_8
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/Tu;->v5(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/yv;

    move-result-object v6

    int-to-long v8, v5

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v6, v0, v5}, Lcom/google/android/gms/internal/ads/yv;->j6(ILjava/lang/Object;)V

    move v5, v14

    move v6, v4

    goto/16 :goto_8

    :pswitch_4
    const/4 v4, 0x2

    move/from16 v0, v19

    if-ne v0, v4, :cond_4

    move-object/from16 v0, p2

    move-object/from16 v1, p6

    invoke-static {v0, v6, v1}, Lcom/google/android/gms/internal/ads/ut;->v5([BILcom/google/android/gms/internal/ads/vt;)I

    move-result v4

    move-object/from16 v0, p6

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/vt;->FH:Ljava/lang/Object;

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10, v11, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_b

    :pswitch_5
    const/4 v4, 0x2

    move/from16 v0, v19

    if-ne v0, v4, :cond_4

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/Tu;->j6(I)Lcom/google/android/gms/internal/ads/fv;

    move-result-object v4

    move-object/from16 v0, p2

    move/from16 v1, p4

    move-object/from16 v2, p6

    invoke-static {v4, v0, v6, v1, v2}, Lcom/google/android/gms/internal/ads/Tu;->j6(Lcom/google/android/gms/internal/ads/fv;[BIILcom/google/android/gms/internal/ads/vt;)I

    move-result v4

    and-int v5, v14, v15

    if-nez v5, :cond_9

    move-object/from16 v0, p6

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/vt;->FH:Ljava/lang/Object;

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10, v11, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_c
    or-int v5, v14, v15

    goto/16 :goto_9

    :cond_9
    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, p6

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/vt;->FH:Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/ju;->j6(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10, v11, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_c

    :pswitch_6
    const/4 v4, 0x2

    move/from16 v0, v19

    if-ne v0, v4, :cond_4

    const/high16 v4, 0x20000000

    and-int v4, v4, v32

    if-nez v4, :cond_a

    move-object/from16 v0, p2

    move-object/from16 v1, p6

    invoke-static {v0, v6, v1}, Lcom/google/android/gms/internal/ads/ut;->FH([BILcom/google/android/gms/internal/ads/vt;)I

    move-result v4

    :goto_d
    move-object/from16 v0, p6

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/vt;->FH:Ljava/lang/Object;

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10, v11, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_c

    :cond_a
    move-object/from16 v0, p2

    move-object/from16 v1, p6

    invoke-static {v0, v6, v1}, Lcom/google/android/gms/internal/ads/ut;->Hw([BILcom/google/android/gms/internal/ads/vt;)I

    move-result v4

    goto :goto_d

    :pswitch_7
    if-nez v19, :cond_4

    move-object/from16 v0, p2

    move-object/from16 v1, p6

    invoke-static {v0, v6, v1}, Lcom/google/android/gms/internal/ads/ut;->DW([BILcom/google/android/gms/internal/ads/vt;)I

    move-result v5

    move-object/from16 v0, p6

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/vt;->DW:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-eqz v4, :cond_b

    const/4 v4, 0x1

    :goto_e
    move-object/from16 v0, p1

    invoke-static {v0, v10, v11, v4}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;JZ)V

    move v4, v5

    goto :goto_c

    :cond_b
    const/4 v4, 0x0

    goto :goto_e

    :pswitch_8
    const/4 v4, 0x5

    move/from16 v0, v19

    if-ne v0, v4, :cond_4

    move-object/from16 v0, p2

    invoke-static {v0, v6}, Lcom/google/android/gms/internal/ads/ut;->j6([BI)I

    move-result v4

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10, v11, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v4, v6, 0x4

    goto :goto_c

    :pswitch_9
    const/4 v4, 0x1

    move/from16 v0, v19

    if-ne v0, v4, :cond_4

    move-object/from16 v0, p2

    invoke-static {v0, v6}, Lcom/google/android/gms/internal/ads/ut;->DW([BI)J

    move-result-wide v12

    move-object/from16 v8, v40

    move-object/from16 v9, p1

    invoke-virtual/range {v8 .. v13}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    :goto_f
    add-int/lit8 v4, v6, 0x8

    goto/16 :goto_b

    :pswitch_a
    if-nez v19, :cond_4

    move-object/from16 v0, p2

    move-object/from16 v1, p6

    invoke-static {v0, v6, v1}, Lcom/google/android/gms/internal/ads/ut;->j6([BILcom/google/android/gms/internal/ads/vt;)I

    move-result v4

    move-object/from16 v0, p6

    iget v5, v0, Lcom/google/android/gms/internal/ads/vt;->j6:I

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10, v11, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_b

    :pswitch_b
    if-nez v19, :cond_4

    move-object/from16 v0, p2

    move-object/from16 v1, p6

    invoke-static {v0, v6, v1}, Lcom/google/android/gms/internal/ads/ut;->DW([BILcom/google/android/gms/internal/ads/vt;)I

    move-result v4

    move-object/from16 v0, p6

    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/vt;->DW:J

    move-object/from16 v8, v40

    move-object/from16 v9, p1

    invoke-virtual/range {v8 .. v13}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto/16 :goto_a

    :pswitch_c
    const/4 v4, 0x5

    move/from16 v0, v19

    if-ne v0, v4, :cond_4

    move-object/from16 v0, p2

    invoke-static {v0, v6}, Lcom/google/android/gms/internal/ads/ut;->Hw([BI)F

    move-result v4

    move-object/from16 v0, p1

    invoke-static {v0, v10, v11, v4}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;JF)V

    add-int/lit8 v4, v6, 0x4

    goto/16 :goto_b

    :pswitch_d
    const/4 v4, 0x1

    move/from16 v0, v19

    if-ne v0, v4, :cond_4

    move-object/from16 v0, p2

    invoke-static {v0, v6}, Lcom/google/android/gms/internal/ads/ut;->FH([BI)D

    move-result-wide v4

    move-object/from16 v0, p1

    invoke-static {v0, v10, v11, v4, v5}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;JD)V

    goto :goto_f

    :cond_c
    const/16 v4, 0x1b

    move/from16 v0, v23

    if-ne v0, v4, :cond_e

    const/4 v4, 0x2

    move/from16 v0, v19

    if-ne v0, v4, :cond_f

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/ou;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/ou;->j3()Z

    move-result v5

    if-nez v5, :cond_1d

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_d

    const/16 v5, 0xa

    :goto_10
    invoke-interface {v4, v5}, Lcom/google/android/gms/internal/ads/ou;->j6(I)Lcom/google/android/gms/internal/ads/ou;

    move-result-object v12

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10, v11, v12}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_11
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/Tu;->j6(I)Lcom/google/android/gms/internal/ads/fv;

    move-result-object v7

    move/from16 v8, v17

    move-object/from16 v9, p2

    move v10, v6

    move/from16 v11, p4

    move-object/from16 v13, p6

    invoke-static/range {v7 .. v13}, Lcom/google/android/gms/internal/ads/Tu;->j6(Lcom/google/android/gms/internal/ads/fv;I[BIILcom/google/android/gms/internal/ads/ou;Lcom/google/android/gms/internal/ads/vt;)I

    move-result v4

    move/from16 v8, v18

    move/from16 v12, p5

    move v6, v4

    goto/16 :goto_0

    :cond_d
    shl-int/lit8 v5, v5, 0x1

    goto :goto_10

    :cond_e
    const/16 v4, 0x31

    move/from16 v0, v23

    if-gt v0, v4, :cond_11

    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v21, v0

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move v15, v6

    move/from16 v16, p4

    move-wide/from16 v24, v10

    move-object/from16 v26, p6

    invoke-direct/range {v12 .. v26}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/ads/vt;)I

    move-result v4

    if-ne v4, v6, :cond_10

    move v6, v4

    :cond_f
    :goto_12
    move/from16 v11, v39

    move/from16 v12, p5

    move/from16 v10, v38

    goto/16 :goto_3

    :cond_10
    move/from16 v7, p5

    goto/16 :goto_5

    :cond_11
    const/16 v4, 0x32

    move/from16 v0, v23

    if-ne v0, v4, :cond_12

    const/4 v4, 0x2

    move/from16 v0, v19

    if-ne v0, v4, :cond_f

    move-object/from16 v15, p0

    move-object/from16 v16, p1

    move-object/from16 v17, p2

    move/from16 v18, v6

    move/from16 v19, p4

    move-wide/from16 v21, v10

    move-object/from16 v23, p6

    invoke-direct/range {v15 .. v23}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/ads/vt;)I

    const/4 v4, 0x0

    throw v4

    :cond_12
    move-object/from16 v24, p0

    move-object/from16 v25, p1

    move-object/from16 v26, p2

    move/from16 v27, v6

    move/from16 v28, p4

    move/from16 v29, v17

    move/from16 v30, v18

    move/from16 v31, v19

    move/from16 v33, v23

    move-wide/from16 v34, v10

    move/from16 v36, v20

    move-object/from16 v37, p6

    invoke-direct/range {v24 .. v37}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/ads/vt;)I

    move-result v4

    if-ne v4, v6, :cond_13

    move v6, v4

    goto :goto_12

    :cond_13
    move/from16 v5, v38

    move/from16 v6, v39

    move/from16 v7, p5

    goto/16 :goto_4

    :cond_14
    move/from16 v11, v39

    move/from16 v10, v38

    :cond_15
    const/4 v4, -0x1

    if-eq v11, v4, :cond_16

    int-to-long v4, v11

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4, v5, v10}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_16
    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/gms/internal/ads/Tu;->J0:I

    const/4 v4, 0x0

    :goto_13
    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/gms/internal/ads/Tu;->J8:I

    if-ge v5, v7, :cond_17

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/Tu;->we:[I

    aget v7, v7, v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/Tu;->XL:Lcom/google/android/gms/internal/ads/xv;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v7, v4, v8}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/xv;)Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/ads/yv;

    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    :cond_17
    if-eqz v4, :cond_18

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Tu;->XL:Lcom/google/android/gms/internal/ads/xv;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v4}, Lcom/google/android/gms/internal/ads/xv;->DW(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    if-nez v12, :cond_1b

    move/from16 v0, p4

    if-ne v6, v0, :cond_1a

    :cond_19
    return v6

    :cond_1a
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->gn()Lcom/google/android/gms/internal/ads/pu;

    move-result-object v4

    throw v4

    :cond_1b
    move/from16 v0, p4

    if-gt v6, v0, :cond_1c

    move/from16 v0, v17

    if-eq v0, v12, :cond_19

    :cond_1c
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->gn()Lcom/google/android/gms/internal/ads/pu;

    move-result-object v4

    throw v4

    :cond_1d
    move-object v12, v4

    goto/16 :goto_11

    :cond_1e
    move v6, v4

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static j6(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/Nu;Lcom/google/android/gms/internal/ads/Wu;Lcom/google/android/gms/internal/ads/zu;Lcom/google/android/gms/internal/ads/xv;Lcom/google/android/gms/internal/ads/Vt;Lcom/google/android/gms/internal/ads/Ku;)Lcom/google/android/gms/internal/ads/Tu;
    .registers 42
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/google/android/gms/internal/ads/Nu;",
            "Lcom/google/android/gms/internal/ads/Wu;",
            "Lcom/google/android/gms/internal/ads/zu;",
            "Lcom/google/android/gms/internal/ads/xv",
            "<**>;",
            "Lcom/google/android/gms/internal/ads/Vt",
            "<*>;",
            "Lcom/google/android/gms/internal/ads/Ku;",
            ")",
            "Lcom/google/android/gms/internal/ads/Tu",
            "<TT;>;"
        }
    .end annotation

    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/google/android/gms/internal/ads/dv;

    if-eqz v2, :cond_27

    check-cast p1, Lcom/google/android/gms/internal/ads/dv;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/dv;->FH()I

    move-result v2

    sget v3, Lcom/google/android/gms/internal/ads/hu$e;->tp:I

    const/4 v11, 0x0

    if-ne v2, v3, :cond_0

    const/4 v8, 0x1

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/dv;->Hw()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v30

    const/4 v2, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const v3, 0xd800

    if-lt v2, v3, :cond_2

    and-int/lit16 v3, v2, 0x1fff

    const/4 v2, 0x1

    const/16 v5, 0xd

    move v4, v3

    :goto_1
    add-int/lit8 v3, v2, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const v6, 0xd800

    if-lt v2, v6, :cond_1

    and-int/lit16 v2, v2, 0x1fff

    shl-int/2addr v2, v5

    or-int/2addr v4, v2

    add-int/lit8 v5, v5, 0xd

    move v2, v3

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    :cond_1
    shl-int/2addr v2, v5

    or-int/2addr v2, v4

    move v7, v2

    :goto_2
    add-int/lit8 v2, v3, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const v4, 0xd800

    if-lt v3, v4, :cond_4

    and-int/lit16 v3, v3, 0x1fff

    const/16 v5, 0xd

    move v4, v3

    :goto_3
    add-int/lit8 v3, v2, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const v6, 0xd800

    if-lt v2, v6, :cond_3

    and-int/lit16 v2, v2, 0x1fff

    shl-int/2addr v2, v5

    or-int/2addr v4, v2

    add-int/lit8 v5, v5, 0xd

    move v2, v3

    goto :goto_3

    :cond_2
    const/4 v3, 0x1

    move v7, v2

    goto :goto_2

    :cond_3
    shl-int/2addr v2, v5

    or-int/2addr v2, v4

    move v14, v3

    move v4, v2

    :goto_4
    if-nez v4, :cond_5

    sget-object v10, Lcom/google/android/gms/internal/ads/Tu;->j6:[I

    const/4 v13, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v12, 0x0

    const/4 v4, 0x0

    move v15, v4

    :goto_5
    sget-object v31, Lcom/google/android/gms/internal/ads/Tu;->DW:Lsun/misc/Unsafe;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/dv;->v5()[Ljava/lang/Object;

    move-result-object v32

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/dv;->DW()Lcom/google/android/gms/internal/ads/Pu;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v33

    mul-int/lit8 v3, v12, 0x3

    new-array v3, v3, [I

    shl-int/lit8 v4, v12, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    add-int v12, v11, v13

    const/16 v17, 0x0

    const/4 v9, 0x0

    move/from16 v20, v12

    move/from16 v28, v9

    move/from16 v18, v2

    move/from16 v19, v11

    :goto_6
    move/from16 v0, v30

    if-ge v14, v0, :cond_26

    add-int/lit8 v2, v14, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const v13, 0xd800

    if-lt v9, v13, :cond_2f

    const/16 v14, 0xd

    and-int/lit16 v9, v9, 0x1fff

    move v13, v9

    :goto_7
    add-int/lit8 v9, v2, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const v16, 0xd800

    move/from16 v0, v16

    if-lt v2, v0, :cond_10

    and-int/lit16 v2, v2, 0x1fff

    shl-int/2addr v2, v14

    or-int/2addr v13, v2

    add-int/lit8 v14, v14, 0xd

    move v2, v9

    goto :goto_7

    :cond_4
    move v14, v2

    move v4, v3

    goto :goto_4

    :cond_5
    add-int/lit8 v2, v14, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v3, 0xd800

    if-lt v4, v3, :cond_7

    and-int/lit16 v3, v4, 0x1fff

    const/16 v5, 0xd

    move v4, v3

    :goto_8
    add-int/lit8 v3, v2, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const v6, 0xd800

    if-lt v2, v6, :cond_6

    and-int/lit16 v2, v2, 0x1fff

    shl-int/2addr v2, v5

    or-int/2addr v4, v2

    add-int/lit8 v5, v5, 0xd

    move v2, v3

    goto :goto_8

    :cond_6
    shl-int/2addr v2, v5

    or-int/2addr v2, v4

    move v4, v2

    :goto_9
    add-int/lit8 v2, v3, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const v5, 0xd800

    if-lt v3, v5, :cond_35

    and-int/lit16 v3, v3, 0x1fff

    const/16 v6, 0xd

    move v5, v3

    :goto_a
    add-int/lit8 v3, v2, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const v9, 0xd800

    if-lt v2, v9, :cond_8

    and-int/lit16 v2, v2, 0x1fff

    shl-int/2addr v2, v6

    or-int/2addr v5, v2

    add-int/lit8 v6, v6, 0xd

    move v2, v3

    goto :goto_a

    :cond_7
    move v3, v2

    goto :goto_9

    :cond_8
    shl-int/2addr v2, v6

    or-int/2addr v2, v5

    move v5, v2

    move v6, v3

    :goto_b
    add-int/lit8 v2, v6, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const v3, 0xd800

    if-lt v6, v3, :cond_34

    and-int/lit16 v3, v6, 0x1fff

    const/16 v9, 0xd

    move v6, v3

    :goto_c
    add-int/lit8 v3, v2, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const v10, 0xd800

    if-lt v2, v10, :cond_9

    and-int/lit16 v2, v2, 0x1fff

    shl-int/2addr v2, v9

    or-int/2addr v6, v2

    add-int/lit8 v9, v9, 0xd

    move v2, v3

    goto :goto_c

    :cond_9
    shl-int/2addr v2, v9

    or-int/2addr v2, v6

    move v9, v2

    :goto_d
    add-int/lit8 v2, v3, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const v3, 0xd800

    if-lt v6, v3, :cond_33

    and-int/lit16 v3, v6, 0x1fff

    const/16 v10, 0xd

    move v6, v3

    :goto_e
    add-int/lit8 v3, v2, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const v11, 0xd800

    if-lt v2, v11, :cond_a

    and-int/lit16 v2, v2, 0x1fff

    shl-int/2addr v2, v10

    or-int/2addr v6, v2

    add-int/lit8 v10, v10, 0xd

    move v2, v3

    goto :goto_e

    :cond_a
    shl-int/2addr v2, v10

    or-int/2addr v2, v6

    move v6, v2

    :goto_f
    add-int/lit8 v2, v3, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const v3, 0xd800

    if-lt v10, v3, :cond_32

    and-int/lit16 v3, v10, 0x1fff

    const/16 v11, 0xd

    move v10, v3

    :goto_10
    add-int/lit8 v3, v2, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const v12, 0xd800

    if-lt v2, v12, :cond_b

    and-int/lit16 v2, v2, 0x1fff

    shl-int/2addr v2, v11

    or-int/2addr v10, v2

    add-int/lit8 v11, v11, 0xd

    move v2, v3

    goto :goto_10

    :cond_b
    shl-int/2addr v2, v11

    or-int/2addr v2, v10

    move v12, v2

    :goto_11
    add-int/lit8 v2, v3, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const v3, 0xd800

    if-lt v10, v3, :cond_31

    and-int/lit16 v3, v10, 0x1fff

    const/16 v11, 0xd

    move v10, v3

    :goto_12
    add-int/lit8 v3, v2, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const v13, 0xd800

    if-lt v2, v13, :cond_c

    and-int/lit16 v2, v2, 0x1fff

    shl-int/2addr v2, v11

    or-int/2addr v10, v2

    add-int/lit8 v11, v11, 0xd

    move v2, v3

    goto :goto_12

    :cond_c
    shl-int/2addr v2, v11

    or-int/2addr v2, v10

    move v13, v2

    :goto_13
    add-int/lit8 v2, v3, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const v10, 0xd800

    if-lt v3, v10, :cond_e

    const/16 v11, 0xd

    and-int/lit16 v3, v3, 0x1fff

    move v10, v3

    :goto_14
    add-int/lit8 v3, v2, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const v14, 0xd800

    if-lt v2, v14, :cond_d

    and-int/lit16 v2, v2, 0x1fff

    shl-int/2addr v2, v11

    or-int/2addr v10, v2

    add-int/lit8 v11, v11, 0xd

    move v2, v3

    goto :goto_14

    :cond_d
    shl-int/2addr v2, v11

    or-int/2addr v2, v10

    move v10, v2

    move v11, v3

    :goto_15
    add-int/lit8 v2, v11, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const v11, 0xd800

    if-lt v3, v11, :cond_30

    const/16 v14, 0xd

    and-int/lit16 v3, v3, 0x1fff

    move v11, v3

    :goto_16
    add-int/lit8 v3, v2, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const v15, 0xd800

    if-lt v2, v15, :cond_f

    and-int/lit16 v2, v2, 0x1fff

    shl-int/2addr v2, v14

    or-int/2addr v11, v2

    add-int/lit8 v14, v14, 0xd

    move v2, v3

    goto :goto_16

    :cond_e
    move v10, v3

    move v11, v2

    goto :goto_15

    :cond_f
    shl-int/2addr v2, v14

    or-int/2addr v2, v11

    move v11, v2

    move v14, v3

    :goto_17
    add-int v2, v11, v13

    add-int/2addr v2, v10

    new-array v10, v2, [I

    shl-int/lit8 v2, v4, 0x1

    add-int/2addr v2, v5

    move v15, v4

    move v5, v9

    goto/16 :goto_5

    :cond_10
    shl-int/2addr v2, v14

    or-int/2addr v2, v13

    move v13, v2

    move v14, v9

    :goto_18
    add-int/lit8 v2, v14, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const v14, 0xd800

    if-lt v9, v14, :cond_12

    const/16 v16, 0xd

    and-int/lit16 v9, v9, 0x1fff

    move v14, v9

    :goto_19
    add-int/lit8 v9, v2, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const v21, 0xd800

    move/from16 v0, v21

    if-lt v2, v0, :cond_11

    and-int/lit16 v2, v2, 0x1fff

    shl-int v2, v2, v16

    or-int/2addr v14, v2

    add-int/lit8 v16, v16, 0xd

    move v2, v9

    goto :goto_19

    :cond_11
    shl-int v2, v2, v16

    or-int/2addr v2, v14

    move/from16 v27, v2

    move/from16 v25, v9

    :goto_1a
    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v34, v0

    move/from16 v0, v27

    and-int/lit16 v2, v0, 0x400

    if-eqz v2, :cond_2e

    aput v28, v10, v17

    add-int/lit8 v2, v17, 0x1

    move v9, v2

    :goto_1b
    sget-object v2, Lcom/google/android/gms/internal/ads/au;->aj:Lcom/google/android/gms/internal/ads/au;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/au;->Hw()I

    move-result v2

    move/from16 v0, v34

    if-le v0, v2, :cond_19

    add-int/lit8 v2, v25, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const v16, 0xd800

    move/from16 v0, v16

    if-lt v14, v0, :cond_2d

    and-int/lit16 v14, v14, 0x1fff

    const/16 v17, 0xd

    move/from16 v16, v14

    :goto_1c
    add-int/lit8 v14, v2, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const v21, 0xd800

    move/from16 v0, v21

    if-lt v2, v0, :cond_13

    and-int/lit16 v2, v2, 0x1fff

    shl-int v2, v2, v17

    or-int v16, v16, v2

    add-int/lit8 v17, v17, 0xd

    move v2, v14

    goto :goto_1c

    :cond_12
    move/from16 v27, v9

    move/from16 v25, v2

    goto :goto_1a

    :cond_13
    shl-int v2, v2, v17

    or-int v2, v2, v16

    move/from16 v16, v2

    move/from16 v17, v14

    :goto_1d
    sget-object v2, Lcom/google/android/gms/internal/ads/au;->tp:Lcom/google/android/gms/internal/ads/au;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/au;->Hw()I

    move-result v2

    add-int/lit8 v2, v2, 0x33

    move/from16 v0, v34

    if-eq v0, v2, :cond_14

    sget-object v2, Lcom/google/android/gms/internal/ads/au;->aM:Lcom/google/android/gms/internal/ads/au;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/au;->Hw()I

    move-result v2

    add-int/lit8 v2, v2, 0x33

    move/from16 v0, v34

    if-ne v0, v2, :cond_15

    :cond_14
    div-int/lit8 v2, v28, 0x3

    shl-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    aget-object v14, v32, v18

    aput-object v14, v4, v2

    add-int/lit8 v2, v18, 0x1

    move v14, v2

    :goto_1e
    shl-int/lit8 v18, v16, 0x1

    aget-object v2, v32, v18

    instance-of v0, v2, Ljava/lang/reflect/Field;

    move/from16 v16, v0

    if-eqz v16, :cond_17

    check-cast v2, Ljava/lang/reflect/Field;

    :goto_1f
    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v16, v0

    add-int/lit8 v18, v18, 0x1

    aget-object v2, v32, v18

    instance-of v0, v2, Ljava/lang/reflect/Field;

    move/from16 v21, v0

    if-eqz v21, :cond_18

    check-cast v2, Ljava/lang/reflect/Field;

    :goto_20
    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v2, v0

    const/16 v21, 0x0

    move/from16 v18, v16

    move/from16 v22, v19

    move/from16 v23, v2

    move/from16 v24, v21

    move/from16 v25, v17

    move/from16 v26, v14

    :goto_21
    const/16 v2, 0x12

    move/from16 v0, v34

    if-lt v0, v2, :cond_28

    const/16 v2, 0x31

    move/from16 v0, v34

    if-gt v0, v2, :cond_28

    aput v18, v10, v20

    add-int/lit8 v2, v20, 0x1

    :goto_22
    add-int/lit8 v16, v28, 0x1

    aput v13, v3, v28

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v27

    and-int/lit16 v13, v0, 0x200

    if-eqz v13, :cond_24

    const/high16 v13, 0x20000000

    move v14, v13

    :goto_23
    move/from16 v0, v27

    and-int/lit16 v13, v0, 0x100

    if-eqz v13, :cond_25

    const/high16 v13, 0x10000000

    :goto_24
    shl-int/lit8 v19, v34, 0x14

    or-int/2addr v13, v14

    or-int v13, v13, v19

    or-int v13, v13, v18

    aput v13, v3, v16

    add-int/lit8 v13, v17, 0x1

    shl-int/lit8 v14, v24, 0x14

    or-int v14, v14, v23

    aput v14, v3, v17

    move/from16 v20, v2

    move/from16 v28, v13

    move/from16 v14, v25

    move/from16 v17, v9

    move/from16 v18, v26

    move/from16 v19, v22

    goto/16 :goto_6

    :cond_15
    sget-object v2, Lcom/google/android/gms/internal/ads/au;->J0:Lcom/google/android/gms/internal/ads/au;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/au;->Hw()I

    move-result v2

    add-int/lit8 v2, v2, 0x33

    move/from16 v0, v34

    if-ne v0, v2, :cond_16

    and-int/lit8 v2, v7, 0x1

    const/4 v14, 0x1

    if-ne v2, v14, :cond_2c

    div-int/lit8 v2, v28, 0x3

    shl-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    aget-object v14, v32, v18

    aput-object v14, v4, v2

    add-int/lit8 v2, v18, 0x1

    :goto_25
    move v14, v2

    goto/16 :goto_1e

    :cond_16
    move/from16 v2, v18

    goto :goto_25

    :cond_17
    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v33

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    aput-object v2, v32, v18

    goto/16 :goto_1f

    :cond_18
    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v33

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    aput-object v2, v32, v18

    goto/16 :goto_20

    :cond_19
    add-int/lit8 v16, v18, 0x1

    aget-object v2, v32, v18

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v33

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v17

    sget-object v2, Lcom/google/android/gms/internal/ads/au;->tp:Lcom/google/android/gms/internal/ads/au;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/au;->Hw()I

    move-result v2

    move/from16 v0, v34

    if-eq v0, v2, :cond_1a

    sget-object v2, Lcom/google/android/gms/internal/ads/au;->aM:Lcom/google/android/gms/internal/ads/au;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/au;->Hw()I

    move-result v2

    move/from16 v0, v34

    if-ne v0, v2, :cond_1b

    :cond_1a
    div-int/lit8 v2, v28, 0x3

    shl-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v14

    aput-object v14, v4, v2

    move/from16 v14, v19

    :goto_26
    move-object/from16 v0, v31

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v21, v0

    and-int/lit8 v2, v7, 0x1

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v2, v0, :cond_23

    sget-object v2, Lcom/google/android/gms/internal/ads/au;->aM:Lcom/google/android/gms/internal/ads/au;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/au;->Hw()I

    move-result v2

    move/from16 v0, v34

    if-gt v0, v2, :cond_23

    add-int/lit8 v2, v25, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const v18, 0xd800

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_29

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x1fff

    move/from16 v17, v0

    const/16 v19, 0xd

    move/from16 v18, v17

    :goto_27
    add-int/lit8 v17, v2, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const v22, 0xd800

    move/from16 v0, v22

    if-lt v2, v0, :cond_21

    and-int/lit16 v2, v2, 0x1fff

    shl-int v2, v2, v19

    or-int v18, v18, v2

    add-int/lit8 v19, v19, 0xd

    move/from16 v2, v17

    goto :goto_27

    :cond_1b
    sget-object v2, Lcom/google/android/gms/internal/ads/au;->BT:Lcom/google/android/gms/internal/ads/au;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/au;->Hw()I

    move-result v2

    move/from16 v0, v34

    if-eq v0, v2, :cond_1c

    sget-object v2, Lcom/google/android/gms/internal/ads/au;->sy:Lcom/google/android/gms/internal/ads/au;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/au;->Hw()I

    move-result v2

    move/from16 v0, v34

    if-ne v0, v2, :cond_1d

    :cond_1c
    div-int/lit8 v14, v28, 0x3

    add-int/lit8 v2, v16, 0x1

    shl-int/lit8 v14, v14, 0x1

    add-int/lit8 v14, v14, 0x1

    aget-object v16, v32, v16

    aput-object v16, v4, v14

    :goto_28
    move/from16 v14, v19

    move/from16 v16, v2

    goto :goto_26

    :cond_1d
    sget-object v2, Lcom/google/android/gms/internal/ads/au;->J0:Lcom/google/android/gms/internal/ads/au;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/au;->Hw()I

    move-result v2

    move/from16 v0, v34

    if-eq v0, v2, :cond_1e

    sget-object v2, Lcom/google/android/gms/internal/ads/au;->ei:Lcom/google/android/gms/internal/ads/au;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/au;->Hw()I

    move-result v2

    move/from16 v0, v34

    if-eq v0, v2, :cond_1e

    sget-object v2, Lcom/google/android/gms/internal/ads/au;->Mz:Lcom/google/android/gms/internal/ads/au;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/au;->Hw()I

    move-result v2

    move/from16 v0, v34

    if-ne v0, v2, :cond_1f

    :cond_1e
    and-int/lit8 v2, v7, 0x1

    const/4 v14, 0x1

    if-ne v2, v14, :cond_2a

    div-int/lit8 v14, v28, 0x3

    add-int/lit8 v2, v16, 0x1

    shl-int/lit8 v14, v14, 0x1

    add-int/lit8 v14, v14, 0x1

    aget-object v16, v32, v16

    aput-object v16, v4, v14

    goto :goto_28

    :cond_1f
    sget-object v2, Lcom/google/android/gms/internal/ads/au;->aj:Lcom/google/android/gms/internal/ads/au;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/au;->Hw()I

    move-result v2

    move/from16 v0, v34

    if-ne v0, v2, :cond_20

    aput v28, v10, v19

    div-int/lit8 v2, v28, 0x3

    shl-int/lit8 v18, v2, 0x1

    add-int/lit8 v14, v16, 0x1

    aget-object v2, v32, v16

    aput-object v2, v4, v18

    move/from16 v0, v27

    and-int/lit16 v2, v0, 0x800

    if-eqz v2, :cond_2b

    add-int/lit8 v2, v14, 0x1

    add-int/lit8 v16, v18, 0x1

    aget-object v14, v32, v14

    aput-object v14, v4, v16

    :goto_29
    add-int/lit8 v14, v19, 0x1

    move/from16 v16, v2

    goto/16 :goto_26

    :cond_20
    move/from16 v14, v19

    goto/16 :goto_26

    :cond_21
    shl-int v2, v2, v19

    or-int v2, v2, v18

    move/from16 v18, v2

    move/from16 v19, v17

    :goto_2a
    shl-int/lit8 v2, v15, 0x1

    div-int/lit8 v17, v18, 0x20

    add-int v17, v17, v2

    aget-object v2, v32, v17

    instance-of v0, v2, Ljava/lang/reflect/Field;

    move/from16 v22, v0

    if-eqz v22, :cond_22

    check-cast v2, Ljava/lang/reflect/Field;

    :goto_2b
    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v2, v0

    rem-int/lit8 v17, v18, 0x20

    move/from16 v18, v21

    move/from16 v22, v14

    move/from16 v23, v2

    move/from16 v24, v17

    move/from16 v25, v19

    move/from16 v26, v16

    goto/16 :goto_21

    :cond_22
    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v33

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    aput-object v2, v32, v17

    goto :goto_2b

    :cond_23
    const/16 v17, 0x0

    const/4 v2, 0x0

    move/from16 v18, v21

    move/from16 v22, v14

    move/from16 v23, v2

    move/from16 v24, v17

    move/from16 v26, v16

    goto/16 :goto_21

    :cond_24
    const/4 v13, 0x0

    move v14, v13

    goto/16 :goto_23

    :cond_25
    const/4 v13, 0x0

    goto/16 :goto_24

    :cond_26
    new-instance v2, Lcom/google/android/gms/internal/ads/Tu;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/dv;->DW()Lcom/google/android/gms/internal/ads/Pu;

    move-result-object v7

    const/4 v9, 0x0

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    move-object/from16 v16, p5

    move-object/from16 v17, p6

    invoke-direct/range {v2 .. v17}, Lcom/google/android/gms/internal/ads/Tu;-><init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/ads/Pu;ZZ[IIILcom/google/android/gms/internal/ads/Wu;Lcom/google/android/gms/internal/ads/zu;Lcom/google/android/gms/internal/ads/xv;Lcom/google/android/gms/internal/ads/Vt;Lcom/google/android/gms/internal/ads/Ku;)V

    return-object v2

    :cond_27
    check-cast p1, Lcom/google/android/gms/internal/ads/sv;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/sv;->FH()I

    const/4 v2, 0x0

    throw v2

    :cond_28
    move/from16 v2, v20

    goto/16 :goto_22

    :cond_29
    move/from16 v18, v17

    move/from16 v19, v2

    goto :goto_2a

    :cond_2a
    move/from16 v14, v19

    goto/16 :goto_26

    :cond_2b
    move v2, v14

    goto/16 :goto_29

    :cond_2c
    move/from16 v2, v18

    goto/16 :goto_25

    :cond_2d
    move/from16 v16, v14

    move/from16 v17, v2

    goto/16 :goto_1d

    :cond_2e
    move/from16 v9, v17

    goto/16 :goto_1b

    :cond_2f
    move v13, v9

    move v14, v2

    goto/16 :goto_18

    :cond_30
    move v11, v3

    move v14, v2

    goto/16 :goto_17

    :cond_31
    move v3, v2

    move v13, v10

    goto/16 :goto_13

    :cond_32
    move v3, v2

    move v12, v10

    goto/16 :goto_11

    :cond_33
    move v3, v2

    goto/16 :goto_f

    :cond_34
    move v3, v2

    move v9, v6

    goto/16 :goto_d

    :cond_35
    move v5, v3

    move v6, v2

    goto/16 :goto_b
.end method

.method private final j6(I)Lcom/google/android/gms/internal/ads/fv;
    .registers 6

    div-int/lit8 v0, p1, 0x3

    shl-int/lit8 v1, v0, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Tu;->Hw:[Ljava/lang/Object;

    aget-object v0, v0, v1

    check-cast v0, Lcom/google/android/gms/internal/ads/fv;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/av;->j6()Lcom/google/android/gms/internal/ads/av;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Tu;->Hw:[Ljava/lang/Object;

    add-int/lit8 v3, v1, 0x1

    aget-object v0, v0, v3

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/av;->j6(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/fv;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Tu;->Hw:[Ljava/lang/Object;

    aput-object v0, v2, v1

    goto :goto_0
.end method

.method private final j6(IILjava/util/Map;Lcom/google/android/gms/internal/ads/mu;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/xv;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Lcom/google/android/gms/internal/ads/mu;",
            "TUB;",
            "Lcom/google/android/gms/internal/ads/xv",
            "<TUT;TUB;>;)TUB;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Tu;->j3:Lcom/google/android/gms/internal/ads/Ku;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/Tu;->DW(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/Ku;->v5(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Iu;

    const/4 v0, 0x0

    throw v0
.end method

.method private final j6(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/xv;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "ITUB;",
            "Lcom/google/android/gms/internal/ads/xv",
            "<TUT;TUB;>;)TUB;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Tu;->FH:[I

    aget v2, v0, p2

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/Tu;->Hw(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return-object p3

    :cond_1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/Tu;->FH(I)Lcom/google/android/gms/internal/ads/mu;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Tu;->j3:Lcom/google/android/gms/internal/ads/Ku;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/Ku;->FH(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    move-object v0, p0

    move v1, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/Tu;->j6(IILjava/util/Map;Lcom/google/android/gms/internal/ads/mu;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/xv;)Ljava/lang/Object;

    const/4 v0, 0x0

    throw v0
.end method

.method private static j6(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x28

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Field "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not found. Known fields are "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static j6(Ljava/lang/Object;J)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private static j6(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/Tv;)V
    .registers 4

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/ads/Tv;->j6(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/yt;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/ads/Tv;->j6(ILcom/google/android/gms/internal/ads/yt;)V

    goto :goto_0
.end method

.method private final j6(Lcom/google/android/gms/internal/ads/Tv;ILjava/lang/Object;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/Tv;",
            "I",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    if-nez p3, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Tu;->j3:Lcom/google/android/gms/internal/ads/Ku;

    invoke-direct {p0, p4}, Lcom/google/android/gms/internal/ads/Tu;->DW(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/Ku;->v5(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Iu;

    const/4 v0, 0x0

    throw v0
.end method

.method private static j6(Lcom/google/android/gms/internal/ads/xv;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/Tv;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/xv",
            "<TUT;TUB;>;TT;",
            "Lcom/google/android/gms/internal/ads/Tv;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/xv;->DW(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/ads/xv;->j6(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/Tv;)V

    return-void
.end method

.method private final j6(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/ev;)V
    .registers 7

    const v1, 0xfffff

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/Tu;->Zo(I)Z

    move-result v0

    if-eqz v0, :cond_0

    and-int v0, p2, v1

    int-to-long v0, v0

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/ev;->J8()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Tu;->u7:Z

    if-eqz v0, :cond_1

    and-int v0, p2, v1

    int-to-long v0, v0

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/ev;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    and-int v0, p2, v1

    int-to-long v0, v0

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/ev;->QX()Lcom/google/android/gms/internal/ads/yt;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0
.end method

.method private final j6(Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/Tu;->Hw(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;I)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/ju;->j6(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/Tu;->DW(Ljava/lang/Object;I)V

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_0

    invoke-static {p1, v0, v1, v3}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/Tu;->DW(Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method private final j6(Ljava/lang/Object;I)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    const v3, 0xfffff

    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Tu;->tp:Z

    if-eqz v0, :cond_14

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/Tu;->Hw(I)I

    move-result v0

    and-int/2addr v3, v0

    int-to-long v4, v3

    const/high16 v3, 0xff00000

    and-int/2addr v0, v3

    ushr-int/lit8 v0, v0, 0x14

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_0
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :pswitch_1
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/Ev;->DW(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v0, v4, v6

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    :pswitch_2
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;J)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    :pswitch_3
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/Ev;->DW(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v0, v4, v6

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0

    :pswitch_4
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;J)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0

    :pswitch_5
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;J)I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_0

    :pswitch_6
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;J)I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_0

    :pswitch_7
    sget-object v0, Lcom/google/android/gms/internal/ads/yt;->j6:Lcom/google/android/gms/internal/ads/yt;

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/yt;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    move v0, v2

    goto :goto_0

    :pswitch_8
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_0

    :cond_8
    move v0, v2

    goto :goto_0

    :pswitch_9
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_a

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    goto :goto_0

    :cond_9
    move v0, v2

    goto :goto_0

    :cond_a
    instance-of v3, v0, Lcom/google/android/gms/internal/ads/yt;

    if-eqz v3, :cond_c

    sget-object v3, Lcom/google/android/gms/internal/ads/yt;->j6:Lcom/google/android/gms/internal/ads/yt;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/yt;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v1

    goto :goto_0

    :cond_b
    move v0, v2

    goto :goto_0

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_a
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/Ev;->FH(Ljava/lang/Object;J)Z

    move-result v0

    goto/16 :goto_0

    :pswitch_b
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;J)I

    move-result v0

    if-eqz v0, :cond_d

    move v0, v1

    goto/16 :goto_0

    :cond_d
    move v0, v2

    goto/16 :goto_0

    :pswitch_c
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/Ev;->DW(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v0, v4, v6

    if-eqz v0, :cond_e

    move v0, v1

    goto/16 :goto_0

    :cond_e
    move v0, v2

    goto/16 :goto_0

    :pswitch_d
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;J)I

    move-result v0

    if-eqz v0, :cond_f

    move v0, v1

    goto/16 :goto_0

    :cond_f
    move v0, v2

    goto/16 :goto_0

    :pswitch_e
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/Ev;->DW(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v0, v4, v6

    if-eqz v0, :cond_10

    move v0, v1

    goto/16 :goto_0

    :cond_10
    move v0, v2

    goto/16 :goto_0

    :pswitch_f
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/Ev;->DW(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v0, v4, v6

    if-eqz v0, :cond_11

    move v0, v1

    goto/16 :goto_0

    :cond_11
    move v0, v2

    goto/16 :goto_0

    :pswitch_10
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/Ev;->Hw(Ljava/lang/Object;J)F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_12

    move v0, v1

    goto/16 :goto_0

    :cond_12
    move v0, v2

    goto/16 :goto_0

    :pswitch_11
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/Ev;->v5(Ljava/lang/Object;J)D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v0, v4, v6

    if-eqz v0, :cond_13

    move v0, v1

    goto/16 :goto_0

    :cond_13
    move v0, v2

    goto/16 :goto_0

    :cond_14
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/Tu;->v5(I)I

    move-result v0

    and-int/2addr v3, v0

    int-to-long v4, v3

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;J)I

    move-result v3

    ushr-int/lit8 v0, v0, 0x14

    shl-int v0, v1, v0

    and-int/2addr v0, v3

    if-eqz v0, :cond_15

    move v0, v1

    goto/16 :goto_0

    :cond_15
    move v0, v2

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final j6(Ljava/lang/Object;II)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/Tu;->v5(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;J)I

    move-result v0

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final j6(Ljava/lang/Object;III)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;III)Z"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Tu;->tp:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    and-int v0, p3, p4

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static j6(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/fv;)Z
    .registers 5

    const v0, 0xfffff

    and-int/2addr v0, p1

    int-to-long v0, v0

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/fv;->FH(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private final v5(I)I
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Tu;->FH:[I

    add-int/lit8 v1, p1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method private static v5(Ljava/lang/Object;J)J
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)J"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private static v5(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/yv;
    .registers 3

    check-cast p0, Lcom/google/android/gms/internal/ads/hu;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hu;->zzfpu:Lcom/google/android/gms/internal/ads/yv;

    invoke-static {}, Lcom/google/android/gms/internal/ads/yv;->FH()Lcom/google/android/gms/internal/ads/yv;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/yv;->Hw()Lcom/google/android/gms/internal/ads/yv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/hu;->zzfpu:Lcom/google/android/gms/internal/ads/yv;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final DW(Ljava/lang/Object;)I
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Tu;->tp:Z

    if-eqz v0, :cond_13

    sget-object v5, Lcom/google/android/gms/internal/ads/Tu;->DW:Lsun/misc/Unsafe;

    const/4 v2, 0x0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Tu;->FH:[I

    array-length v0, v0

    if-ge v2, v0, :cond_11

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/Tu;->Hw(I)I

    move-result v0

    const/high16 v3, 0xff00000

    and-int/2addr v3, v0

    ushr-int/lit8 v3, v3, 0x14

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Tu;->FH:[I

    aget v6, v4, v2

    const v4, 0xfffff

    and-int/2addr v0, v4

    int-to-long v8, v0

    sget-object v0, Lcom/google/android/gms/internal/ads/au;->cn:Lcom/google/android/gms/internal/ads/au;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/au;->Hw()I

    move-result v0

    if-lt v3, v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/au;->Qq:Lcom/google/android/gms/internal/ads/au;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/au;->Hw()I

    move-result v0

    if-gt v3, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Tu;->FH:[I

    add-int/lit8 v4, v2, 0x2

    aget v0, v0, v4

    const v4, 0xfffff

    and-int/2addr v0, v4

    move v4, v0

    :goto_1
    packed-switch v3, :pswitch_data_0

    move v0, v1

    :goto_2
    add-int/lit8 v2, v2, 0x3

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move v4, v0

    goto :goto_1

    :pswitch_0
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/Pu;

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/Tu;->j6(I)Lcom/google/android/gms/internal/ads/fv;

    move-result-object v3

    invoke-static {v6, v0, v3}, Lcom/google/android/gms/internal/ads/Ot;->FH(ILcom/google/android/gms/internal/ads/Pu;Lcom/google/android/gms/internal/ads/fv;)I

    move-result v0

    :goto_3
    add-int/2addr v1, v0

    move v0, v1

    goto :goto_2

    :pswitch_1
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Tu;->v5(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v6, v8, v9}, Lcom/google/android/gms/internal/ads/Ot;->Zo(IJ)I

    move-result v0

    goto :goto_3

    :pswitch_2
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Tu;->Hw(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/Ot;->DW(II)I

    move-result v0

    goto :goto_3

    :pswitch_3
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_29

    const-wide/16 v8, 0x0

    invoke-static {v6, v8, v9}, Lcom/google/android/gms/internal/ads/Ot;->gn(IJ)I

    move-result v0

    goto :goto_3

    :pswitch_4
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_29

    const/4 v0, 0x0

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/Ot;->Hw(II)I

    move-result v0

    goto :goto_3

    :pswitch_5
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Tu;->Hw(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/Ot;->v5(II)I

    move-result v0

    goto :goto_3

    :pswitch_6
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Tu;->Hw(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/Ot;->j6(II)I

    move-result v0

    goto :goto_3

    :pswitch_7
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/yt;

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/Ot;->FH(ILcom/google/android/gms/internal/ads/yt;)I

    move-result v0

    goto :goto_3

    :pswitch_8
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/Tu;->j6(I)Lcom/google/android/gms/internal/ads/fv;

    move-result-object v3

    invoke-static {v6, v0, v3}, Lcom/google/android/gms/internal/ads/hv;->j6(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/fv;)I

    move-result v0

    goto :goto_3

    :pswitch_9
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Lcom/google/android/gms/internal/ads/yt;

    if-eqz v3, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/ads/yt;

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/Ot;->FH(ILcom/google/android/gms/internal/ads/yt;)I

    move-result v0

    goto/16 :goto_3

    :cond_1
    check-cast v0, Ljava/lang/String;

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/Ot;->DW(ILjava/lang/String;)I

    move-result v0

    goto/16 :goto_3

    :pswitch_a
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_29

    const/4 v0, 0x1

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/Ot;->DW(IZ)I

    move-result v0

    goto/16 :goto_3

    :pswitch_b
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_29

    const/4 v0, 0x0

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/Ot;->FH(II)I

    move-result v0

    goto/16 :goto_3

    :pswitch_c
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_29

    const-wide/16 v8, 0x0

    invoke-static {v6, v8, v9}, Lcom/google/android/gms/internal/ads/Ot;->VH(IJ)I

    move-result v0

    goto/16 :goto_3

    :pswitch_d
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Tu;->Hw(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/Ot;->EQ(II)I

    move-result v0

    goto/16 :goto_3

    :pswitch_e
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Tu;->v5(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v6, v8, v9}, Lcom/google/android/gms/internal/ads/Ot;->v5(IJ)I

    move-result v0

    goto/16 :goto_3

    :pswitch_f
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Tu;->v5(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v6, v8, v9}, Lcom/google/android/gms/internal/ads/Ot;->Hw(IJ)I

    move-result v0

    goto/16 :goto_3

    :pswitch_10
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_29

    const/4 v0, 0x0

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/Ot;->DW(IF)I

    move-result v0

    goto/16 :goto_3

    :pswitch_11
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_29

    const-wide/16 v8, 0x0

    invoke-static {v6, v8, v9}, Lcom/google/android/gms/internal/ads/Ot;->DW(ID)I

    move-result v0

    goto/16 :goto_3

    :pswitch_12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Tu;->j3:Lcom/google/android/gms/internal/ads/Ku;

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/Tu;->DW(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v6, v3, v4}, Lcom/google/android/gms/internal/ads/Ku;->j6(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto/16 :goto_3

    :pswitch_13
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/Tu;->j6(I)Lcom/google/android/gms/internal/ads/fv;

    move-result-object v3

    invoke-static {v6, v0, v3}, Lcom/google/android/gms/internal/ads/hv;->DW(ILjava/util/List;Lcom/google/android/gms/internal/ads/fv;)I

    move-result v0

    goto/16 :goto_3

    :pswitch_14
    invoke-virtual {v5, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/hv;->FH(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_29

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Tu;->EQ:Z

    if-eqz v0, :cond_2

    int-to-long v8, v4

    invoke-virtual {v5, p1, v8, v9, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_2
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/Ot;->v5(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/Ot;->VH(I)I

    move-result v0

    :goto_4
    add-int/2addr v0, v4

    add-int/2addr v0, v3

    goto/16 :goto_3

    :pswitch_15
    invoke-virtual {v5, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/hv;->VH(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_29

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Tu;->EQ:Z

    if-eqz v0, :cond_3

    int-to-long v8, v4

    invoke-virtual {v5, p1, v8, v9, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_3
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/Ot;->v5(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/Ot;->VH(I)I

    move-result v0

    goto :goto_4

    :pswitch_16
    invoke-virtual {v5, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/hv;->u7(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_29

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Tu;->EQ:Z

    if-eqz v0, :cond_4

    int-to-long v8, v4

    invoke-virtual {v5, p1, v8, v9, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_4
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/Ot;->v5(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/Ot;->VH(I)I

    move-result v0

    goto :goto_4

    :pswitch_17
    invoke-virtual {v5, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/hv;->gn(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_29

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Tu;->EQ:Z

    if-eqz v0, :cond_5

    int-to-long v8, v4

    invoke-virtual {v5, p1, v8, v9, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_5
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/Ot;->v5(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/Ot;->VH(I)I

    move-result v0

    goto :goto_4

    :pswitch_18
    invoke-virtual {v5, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/hv;->Hw(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_29

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Tu;->EQ:Z

    if-eqz v0, :cond_6

    int-to-long v8, v4

    invoke-virtual {v5, p1, v8, v9, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_6
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/Ot;->v5(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/Ot;->VH(I)I

    move-result v0

    goto :goto_4

    :pswitch_19
    invoke-virtual {v5, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/hv;->Zo(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_29

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Tu;->EQ:Z

    if-eqz v0, :cond_7

    int-to-long v8, v4

    invoke-virtual {v5, p1, v8, v9, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_7
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/Ot;->v5(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/Ot;->VH(I)I

    move-result v0

    goto/16 :goto_4

    :pswitch_1a
    invoke-virtual {v5, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/hv;->tp(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_29

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Tu;->EQ:Z

    if-eqz v0, :cond_8

    int-to-long v8, v4

    invoke-virtual {v5, p1, v8, v9, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_8
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/Ot;->v5(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/Ot;->VH(I)I

    move-result v0

    goto/16 :goto_4

    :pswitch_1b
    invoke-virtual {v5, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/hv;->gn(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_29

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Tu;->EQ:Z

    if-eqz v0, :cond_9

    int-to-long v8, v4

    invoke-virtual {v5, p1, v8, v9, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_9
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/Ot;->v5(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/Ot;->VH(I)I

    move-result v0

    goto/16 :goto_4

    :pswitch_1c
    invoke-virtual {v5, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/hv;->u7(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_29

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Tu;->EQ:Z

    if-eqz v0, :cond_a

    int-to-long v8, v4

    invoke-virtual {v5, p1, v8, v9, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_a
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/Ot;->v5(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/Ot;->VH(I)I

    move-result v0

    goto/16 :goto_4

    :pswitch_1d
    invoke-virtual {v5, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/hv;->v5(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_29

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Tu;->EQ:Z

    if-eqz v0, :cond_b

    int-to-long v8, v4

    invoke-virtual {v5, p1, v8, v9, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_b
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/Ot;->v5(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/Ot;->VH(I)I

    move-result v0

    goto/16 :goto_4

    :pswitch_1e
    invoke-virtual {v5, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/hv;->DW(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_29

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Tu;->EQ:Z

    if-eqz v0, :cond_c

    int-to-long v8, v4

    invoke-virtual {v5, p1, v8, v9, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_c
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/Ot;->v5(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/Ot;->VH(I)I

    move-result v0

    goto/16 :goto_4

    :pswitch_1f
    invoke-virtual {v5, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/hv;->j6(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_29

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Tu;->EQ:Z

    if-eqz v0, :cond_d

    int-to-long v8, v4

    invoke-virtual {v5, p1, v8, v9, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_d
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/Ot;->v5(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/Ot;->VH(I)I

    move-result v0

    goto/16 :goto_4

    :pswitch_20
    invoke-virtual {v5, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/hv;->gn(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_29

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Tu;->EQ:Z

    if-eqz v0, :cond_e

    int-to-long v8, v4

    invoke-virtual {v5, p1, v8, v9, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_e
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/Ot;->v5(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/Ot;->VH(I)I

    move-result v0

    goto/16 :goto_4

    :pswitch_21
    invoke-virtual {v5, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/hv;->u7(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_29

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Tu;->EQ:Z

    if-eqz v0, :cond_f

    int-to-long v8, v4

    invoke-virtual {v5, p1, v8, v9, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_f
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/Ot;->v5(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/Ot;->VH(I)I

    move-result v0

    goto/16 :goto_4

    :pswitch_22
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v6, v0, v3}, Lcom/google/android/gms/internal/ads/hv;->FH(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_3

    :pswitch_23
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v6, v0, v3}, Lcom/google/android/gms/internal/ads/hv;->VH(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_3

    :pswitch_24
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v6, v0, v3}, Lcom/google/android/gms/internal/ads/hv;->u7(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_3

    :pswitch_25
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v6, v0, v3}, Lcom/google/android/gms/internal/ads/hv;->gn(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_3

    :pswitch_26
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v6, v0, v3}, Lcom/google/android/gms/internal/ads/hv;->Hw(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_3

    :pswitch_27
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v6, v0, v3}, Lcom/google/android/gms/internal/ads/hv;->Zo(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_3

    :pswitch_28
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/hv;->DW(ILjava/util/List;)I

    move-result v0

    goto/16 :goto_3

    :pswitch_29
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/Tu;->j6(I)Lcom/google/android/gms/internal/ads/fv;

    move-result-object v3

    invoke-static {v6, v0, v3}, Lcom/google/android/gms/internal/ads/hv;->j6(ILjava/util/List;Lcom/google/android/gms/internal/ads/fv;)I

    move-result v0

    goto/16 :goto_3

    :pswitch_2a
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/hv;->j6(ILjava/util/List;)I

    move-result v0

    goto/16 :goto_3

    :pswitch_2b
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v6, v0, v3}, Lcom/google/android/gms/internal/ads/hv;->tp(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_3

    :pswitch_2c
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v6, v0, v3}, Lcom/google/android/gms/internal/ads/hv;->gn(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_3

    :pswitch_2d
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v6, v0, v3}, Lcom/google/android/gms/internal/ads/hv;->u7(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_3

    :pswitch_2e
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v6, v0, v3}, Lcom/google/android/gms/internal/ads/hv;->v5(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_3

    :pswitch_2f
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v6, v0, v3}, Lcom/google/android/gms/internal/ads/hv;->DW(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_3

    :pswitch_30
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v6, v0, v3}, Lcom/google/android/gms/internal/ads/hv;->j6(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_3

    :pswitch_31
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v6, v0, v3}, Lcom/google/android/gms/internal/ads/hv;->gn(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_3

    :pswitch_32
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v6, v0, v3}, Lcom/google/android/gms/internal/ads/hv;->u7(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_3

    :pswitch_33
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/Pu;

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/Tu;->j6(I)Lcom/google/android/gms/internal/ads/fv;

    move-result-object v3

    invoke-static {v6, v0, v3}, Lcom/google/android/gms/internal/ads/Ot;->FH(ILcom/google/android/gms/internal/ads/Pu;Lcom/google/android/gms/internal/ads/fv;)I

    move-result v0

    goto/16 :goto_3

    :pswitch_34
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->DW(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v6, v8, v9}, Lcom/google/android/gms/internal/ads/Ot;->Zo(IJ)I

    move-result v0

    goto/16 :goto_3

    :pswitch_35
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/Ot;->DW(II)I

    move-result v0

    goto/16 :goto_3

    :pswitch_36
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_29

    const-wide/16 v8, 0x0

    invoke-static {v6, v8, v9}, Lcom/google/android/gms/internal/ads/Ot;->gn(IJ)I

    move-result v0

    goto/16 :goto_3

    :pswitch_37
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_29

    const/4 v0, 0x0

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/Ot;->Hw(II)I

    move-result v0

    goto/16 :goto_3

    :pswitch_38
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/Ot;->v5(II)I

    move-result v0

    goto/16 :goto_3

    :pswitch_39
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/Ot;->j6(II)I

    move-result v0

    goto/16 :goto_3

    :pswitch_3a
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/yt;

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/Ot;->FH(ILcom/google/android/gms/internal/ads/yt;)I

    move-result v0

    goto/16 :goto_3

    :pswitch_3b
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/Tu;->j6(I)Lcom/google/android/gms/internal/ads/fv;

    move-result-object v3

    invoke-static {v6, v0, v3}, Lcom/google/android/gms/internal/ads/hv;->j6(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/fv;)I

    move-result v0

    goto/16 :goto_3

    :pswitch_3c
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Lcom/google/android/gms/internal/ads/yt;

    if-eqz v3, :cond_10

    check-cast v0, Lcom/google/android/gms/internal/ads/yt;

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/Ot;->FH(ILcom/google/android/gms/internal/ads/yt;)I

    move-result v0

    goto/16 :goto_3

    :cond_10
    check-cast v0, Ljava/lang/String;

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/Ot;->DW(ILjava/lang/String;)I

    move-result v0

    goto/16 :goto_3

    :pswitch_3d
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_29

    const/4 v0, 0x1

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/Ot;->DW(IZ)I

    move-result v0

    goto/16 :goto_3

    :pswitch_3e
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_29

    const/4 v0, 0x0

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/Ot;->FH(II)I

    move-result v0

    goto/16 :goto_3

    :pswitch_3f
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_29

    const-wide/16 v8, 0x0

    invoke-static {v6, v8, v9}, Lcom/google/android/gms/internal/ads/Ot;->VH(IJ)I

    move-result v0

    goto/16 :goto_3

    :pswitch_40
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/Ot;->EQ(II)I

    move-result v0

    goto/16 :goto_3

    :pswitch_41
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->DW(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v6, v8, v9}, Lcom/google/android/gms/internal/ads/Ot;->v5(IJ)I

    move-result v0

    goto/16 :goto_3

    :pswitch_42
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->DW(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v6, v8, v9}, Lcom/google/android/gms/internal/ads/Ot;->Hw(IJ)I

    move-result v0

    goto/16 :goto_3

    :pswitch_43
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_29

    const/4 v0, 0x0

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/Ot;->DW(IF)I

    move-result v0

    goto/16 :goto_3

    :pswitch_44
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_29

    const-wide/16 v8, 0x0

    invoke-static {v6, v8, v9}, Lcom/google/android/gms/internal/ads/Ot;->DW(ID)I

    move-result v0

    goto/16 :goto_3

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Tu;->XL:Lcom/google/android/gms/internal/ads/xv;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/Tu;->j6(Lcom/google/android/gms/internal/ads/xv;Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v1

    :cond_12
    :goto_5
    return v0

    :cond_13
    sget-object v8, Lcom/google/android/gms/internal/ads/Tu;->DW:Lsun/misc/Unsafe;

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    move v1, v0

    :goto_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Tu;->FH:[I

    array-length v0, v0

    if-ge v1, v0, :cond_28

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/Tu;->Hw(I)I

    move-result v9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Tu;->FH:[I

    aget v10, v0, v1

    const/high16 v5, 0xff00000

    and-int/2addr v5, v9

    ushr-int/lit8 v11, v5, 0x14

    const/16 v5, 0x11

    if-gt v11, v5, :cond_16

    add-int/lit8 v5, v1, 0x2

    aget v6, v0, v5

    const v0, 0xfffff

    and-int/2addr v0, v6

    const/4 v5, 0x1

    ushr-int/lit8 v7, v6, 0x14

    shl-int/2addr v5, v7

    if-eq v0, v3, :cond_14

    int-to-long v12, v0

    invoke-virtual {v8, p1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    move v3, v0

    :cond_14
    move v7, v6

    :goto_7
    const v0, 0xfffff

    and-int/2addr v0, v9

    int-to-long v12, v0

    packed-switch v11, :pswitch_data_1

    :cond_15
    :goto_8
    add-int/lit8 v0, v1, 0x3

    move v1, v0

    goto :goto_6

    :cond_16
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Tu;->EQ:Z

    if-eqz v0, :cond_17

    sget-object v0, Lcom/google/android/gms/internal/ads/au;->cn:Lcom/google/android/gms/internal/ads/au;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/au;->Hw()I

    move-result v0

    if-lt v11, v0, :cond_17

    sget-object v0, Lcom/google/android/gms/internal/ads/au;->Qq:Lcom/google/android/gms/internal/ads/au;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/au;->Hw()I

    move-result v0

    if-gt v11, v0, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Tu;->FH:[I

    add-int/lit8 v5, v1, 0x2

    aget v0, v0, v5

    const v5, 0xfffff

    and-int/2addr v0, v5

    :goto_9
    const/4 v5, 0x0

    move v7, v0

    goto :goto_7

    :cond_17
    const/4 v0, 0x0

    goto :goto_9

    :pswitch_45
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {v8, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/Pu;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/Tu;->j6(I)Lcom/google/android/gms/internal/ads/fv;

    move-result-object v5

    invoke-static {v10, v0, v5}, Lcom/google/android/gms/internal/ads/Ot;->FH(ILcom/google/android/gms/internal/ads/Pu;Lcom/google/android/gms/internal/ads/fv;)I

    move-result v0

    :goto_a
    add-int/2addr v2, v0

    goto :goto_8

    :pswitch_46
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {p1, v12, v13}, Lcom/google/android/gms/internal/ads/Tu;->v5(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v10, v6, v7}, Lcom/google/android/gms/internal/ads/Ot;->Zo(IJ)I

    move-result v0

    goto :goto_a

    :pswitch_47
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {p1, v12, v13}, Lcom/google/android/gms/internal/ads/Tu;->Hw(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v10, v0}, Lcom/google/android/gms/internal/ads/Ot;->DW(II)I

    move-result v0

    goto :goto_a

    :pswitch_48
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_15

    const-wide/16 v6, 0x0

    invoke-static {v10, v6, v7}, Lcom/google/android/gms/internal/ads/Ot;->gn(IJ)I

    move-result v0

    goto :goto_a

    :pswitch_49
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    invoke-static {v10, v0}, Lcom/google/android/gms/internal/ads/Ot;->Hw(II)I

    move-result v0

    :goto_b
    add-int/2addr v2, v0

    goto :goto_8

    :pswitch_4a
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {p1, v12, v13}, Lcom/google/android/gms/internal/ads/Tu;->Hw(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v10, v0}, Lcom/google/android/gms/internal/ads/Ot;->v5(II)I

    move-result v0

    goto :goto_a

    :pswitch_4b
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {p1, v12, v13}, Lcom/google/android/gms/internal/ads/Tu;->Hw(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v10, v0}, Lcom/google/android/gms/internal/ads/Ot;->j6(II)I

    move-result v0

    goto :goto_a

    :pswitch_4c
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {v8, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/yt;

    invoke-static {v10, v0}, Lcom/google/android/gms/internal/ads/Ot;->FH(ILcom/google/android/gms/internal/ads/yt;)I

    move-result v0

    goto :goto_a

    :pswitch_4d
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {v8, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/Tu;->j6(I)Lcom/google/android/gms/internal/ads/fv;

    move-result-object v5

    invoke-static {v10, v0, v5}, Lcom/google/android/gms/internal/ads/hv;->j6(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/fv;)I

    move-result v0

    goto :goto_a

    :pswitch_4e
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {v8, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    instance-of v5, v0, Lcom/google/android/gms/internal/ads/yt;

    if-eqz v5, :cond_18

    check-cast v0, Lcom/google/android/gms/internal/ads/yt;

    invoke-static {v10, v0}, Lcom/google/android/gms/internal/ads/Ot;->FH(ILcom/google/android/gms/internal/ads/yt;)I

    move-result v0

    goto/16 :goto_a

    :cond_18
    check-cast v0, Ljava/lang/String;

    invoke-static {v10, v0}, Lcom/google/android/gms/internal/ads/Ot;->DW(ILjava/lang/String;)I

    move-result v0

    goto/16 :goto_a

    :pswitch_4f
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    invoke-static {v10, v0}, Lcom/google/android/gms/internal/ads/Ot;->DW(IZ)I

    move-result v0

    goto/16 :goto_a

    :pswitch_50
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    invoke-static {v10, v0}, Lcom/google/android/gms/internal/ads/Ot;->FH(II)I

    move-result v0

    goto :goto_b

    :pswitch_51
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_15

    const-wide/16 v6, 0x0

    invoke-static {v10, v6, v7}, Lcom/google/android/gms/internal/ads/Ot;->VH(IJ)I

    move-result v0

    goto/16 :goto_a

    :pswitch_52
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {p1, v12, v13}, Lcom/google/android/gms/internal/ads/Tu;->Hw(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v10, v0}, Lcom/google/android/gms/internal/ads/Ot;->EQ(II)I

    move-result v0

    goto/16 :goto_a

    :pswitch_53
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {p1, v12, v13}, Lcom/google/android/gms/internal/ads/Tu;->v5(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v10, v6, v7}, Lcom/google/android/gms/internal/ads/Ot;->v5(IJ)I

    move-result v0

    goto/16 :goto_a

    :pswitch_54
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {p1, v12, v13}, Lcom/google/android/gms/internal/ads/Tu;->v5(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v10, v6, v7}, Lcom/google/android/gms/internal/ads/Ot;->Hw(IJ)I

    move-result v0

    goto/16 :goto_a

    :pswitch_55
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    invoke-static {v10, v0}, Lcom/google/android/gms/internal/ads/Ot;->DW(IF)I

    move-result v0

    goto/16 :goto_b

    :pswitch_56
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_15

    const-wide/16 v6, 0x0

    invoke-static {v10, v6, v7}, Lcom/google/android/gms/internal/ads/Ot;->DW(ID)I

    move-result v0

    goto/16 :goto_a

    :pswitch_57
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Tu;->j3:Lcom/google/android/gms/internal/ads/Ku;

    invoke-virtual {v8, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/Tu;->DW(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v10, v5, v6}, Lcom/google/android/gms/internal/ads/Ku;->j6(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto/16 :goto_a

    :pswitch_58
    invoke-virtual {v8, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/Tu;->j6(I)Lcom/google/android/gms/internal/ads/fv;

    move-result-object v5

    invoke-static {v10, v0, v5}, Lcom/google/android/gms/internal/ads/hv;->DW(ILjava/util/List;Lcom/google/android/gms/internal/ads/fv;)I

    move-result v0

    goto/16 :goto_a

    :pswitch_59
    invoke-virtual {v8, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/hv;->FH(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_15

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Tu;->EQ:Z

    if-eqz v0, :cond_19

    int-to-long v12, v7

    invoke-virtual {v8, p1, v12, v13, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_19
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/Ot;->v5(I)I

    move-result v5

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/Ot;->VH(I)I

    move-result v0

    :goto_c
    add-int/2addr v0, v5

    add-int/2addr v0, v6

    goto/16 :goto_b

    :pswitch_5a
    invoke-virtual {v8, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/hv;->VH(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_15

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Tu;->EQ:Z

    if-eqz v0, :cond_1a

    int-to-long v12, v7

    invoke-virtual {v8, p1, v12, v13, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_1a
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/Ot;->v5(I)I

    move-result v5

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/Ot;->VH(I)I

    move-result v0

    goto :goto_c

    :pswitch_5b
    invoke-virtual {v8, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/hv;->u7(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_15

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Tu;->EQ:Z

    if-eqz v0, :cond_1b

    int-to-long v12, v7

    invoke-virtual {v8, p1, v12, v13, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_1b
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/Ot;->v5(I)I

    move-result v5

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/Ot;->VH(I)I

    move-result v0

    goto :goto_c

    :pswitch_5c
    invoke-virtual {v8, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/hv;->gn(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_15

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Tu;->EQ:Z

    if-eqz v0, :cond_1c

    int-to-long v12, v7

    invoke-virtual {v8, p1, v12, v13, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_1c
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/Ot;->v5(I)I

    move-result v5

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/Ot;->VH(I)I

    move-result v0

    goto :goto_c

    :pswitch_5d
    invoke-virtual {v8, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/hv;->Hw(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_15

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Tu;->EQ:Z

    if-eqz v0, :cond_1d

    int-to-long v12, v7

    invoke-virtual {v8, p1, v12, v13, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_1d
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/Ot;->v5(I)I

    move-result v5

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/Ot;->VH(I)I

    move-result v0

    goto :goto_c

    :pswitch_5e
    invoke-virtual {v8, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/hv;->Zo(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_15

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Tu;->EQ:Z

    if-eqz v0, :cond_1e

    int-to-long v12, v7

    invoke-virtual {v8, p1, v12, v13, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_1e
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/Ot;->v5(I)I

    move-result v5

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/Ot;->VH(I)I

    move-result v0

    goto/16 :goto_c

    :pswitch_5f
    invoke-virtual {v8, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/hv;->tp(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_15

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Tu;->EQ:Z

    if-eqz v0, :cond_1f

    int-to-long v12, v7

    invoke-virtual {v8, p1, v12, v13, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_1f
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/Ot;->v5(I)I

    move-result v5

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/Ot;->VH(I)I

    move-result v0

    goto/16 :goto_c

    :pswitch_60
    invoke-virtual {v8, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/hv;->gn(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_15

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Tu;->EQ:Z

    if-eqz v0, :cond_20

    int-to-long v12, v7

    invoke-virtual {v8, p1, v12, v13, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_20
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/Ot;->v5(I)I

    move-result v5

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/Ot;->VH(I)I

    move-result v0

    goto/16 :goto_c

    :pswitch_61
    invoke-virtual {v8, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/hv;->u7(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_15

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Tu;->EQ:Z

    if-eqz v0, :cond_21

    int-to-long v12, v7

    invoke-virtual {v8, p1, v12, v13, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_21
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/Ot;->v5(I)I

    move-result v5

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/Ot;->VH(I)I

    move-result v0

    goto/16 :goto_c

    :pswitch_62
    invoke-virtual {v8, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/hv;->v5(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_15

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Tu;->EQ:Z

    if-eqz v0, :cond_22

    int-to-long v12, v7

    invoke-virtual {v8, p1, v12, v13, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_22
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/Ot;->v5(I)I

    move-result v5

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/Ot;->VH(I)I

    move-result v0

    goto/16 :goto_c

    :pswitch_63
    invoke-virtual {v8, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/hv;->DW(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_15

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Tu;->EQ:Z

    if-eqz v0, :cond_23

    int-to-long v12, v7

    invoke-virtual {v8, p1, v12, v13, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_23
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/Ot;->v5(I)I

    move-result v5

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/Ot;->VH(I)I

    move-result v0

    goto/16 :goto_c

    :pswitch_64
    invoke-virtual {v8, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/hv;->j6(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_15

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Tu;->EQ:Z

    if-eqz v0, :cond_24

    int-to-long v12, v7

    invoke-virtual {v8, p1, v12, v13, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_24
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/Ot;->v5(I)I

    move-result v5

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/Ot;->VH(I)I

    move-result v0

    goto/16 :goto_c

    :pswitch_65
    invoke-virtual {v8, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/hv;->gn(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_15

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Tu;->EQ:Z

    if-eqz v0, :cond_25

    int-to-long v12, v7

    invoke-virtual {v8, p1, v12, v13, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_25
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/Ot;->v5(I)I

    move-result v5

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/Ot;->VH(I)I

    move-result v0

    goto/16 :goto_c

    :pswitch_66
    invoke-virtual {v8, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/hv;->u7(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_15

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Tu;->EQ:Z

    if-eqz v0, :cond_26

    int-to-long v12, v7

    invoke-virtual {v8, p1, v12, v13, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_26
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/Ot;->v5(I)I

    move-result v5

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/Ot;->VH(I)I

    move-result v0

    goto/16 :goto_c

    :pswitch_67
    invoke-virtual {v8, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    invoke-static {v10, v0, v5}, Lcom/google/android/gms/internal/ads/hv;->FH(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_a

    :pswitch_68
    invoke-virtual {v8, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    invoke-static {v10, v0, v5}, Lcom/google/android/gms/internal/ads/hv;->VH(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_a

    :pswitch_69
    invoke-virtual {v8, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    invoke-static {v10, v0, v5}, Lcom/google/android/gms/internal/ads/hv;->u7(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_a

    :pswitch_6a
    invoke-virtual {v8, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    invoke-static {v10, v0, v5}, Lcom/google/android/gms/internal/ads/hv;->gn(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_a

    :pswitch_6b
    invoke-virtual {v8, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    invoke-static {v10, v0, v5}, Lcom/google/android/gms/internal/ads/hv;->Hw(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_a

    :pswitch_6c
    invoke-virtual {v8, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    invoke-static {v10, v0, v5}, Lcom/google/android/gms/internal/ads/hv;->Zo(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_a

    :pswitch_6d
    invoke-virtual {v8, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v10, v0}, Lcom/google/android/gms/internal/ads/hv;->DW(ILjava/util/List;)I

    move-result v0

    goto/16 :goto_a

    :pswitch_6e
    invoke-virtual {v8, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/Tu;->j6(I)Lcom/google/android/gms/internal/ads/fv;

    move-result-object v5

    invoke-static {v10, v0, v5}, Lcom/google/android/gms/internal/ads/hv;->j6(ILjava/util/List;Lcom/google/android/gms/internal/ads/fv;)I

    move-result v0

    goto/16 :goto_a

    :pswitch_6f
    invoke-virtual {v8, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v10, v0}, Lcom/google/android/gms/internal/ads/hv;->j6(ILjava/util/List;)I

    move-result v0

    goto/16 :goto_a

    :pswitch_70
    invoke-virtual {v8, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    invoke-static {v10, v0, v5}, Lcom/google/android/gms/internal/ads/hv;->tp(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_a

    :pswitch_71
    invoke-virtual {v8, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    invoke-static {v10, v0, v5}, Lcom/google/android/gms/internal/ads/hv;->gn(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_a

    :pswitch_72
    invoke-virtual {v8, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    invoke-static {v10, v0, v5}, Lcom/google/android/gms/internal/ads/hv;->u7(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_a

    :pswitch_73
    invoke-virtual {v8, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    invoke-static {v10, v0, v5}, Lcom/google/android/gms/internal/ads/hv;->v5(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_a

    :pswitch_74
    invoke-virtual {v8, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    invoke-static {v10, v0, v5}, Lcom/google/android/gms/internal/ads/hv;->DW(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_a

    :pswitch_75
    invoke-virtual {v8, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    invoke-static {v10, v0, v5}, Lcom/google/android/gms/internal/ads/hv;->j6(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_a

    :pswitch_76
    invoke-virtual {v8, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    invoke-static {v10, v0, v5}, Lcom/google/android/gms/internal/ads/hv;->gn(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_a

    :pswitch_77
    invoke-virtual {v8, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    invoke-static {v10, v0, v5}, Lcom/google/android/gms/internal/ads/hv;->u7(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_a

    :pswitch_78
    and-int v0, v4, v5

    if-eqz v0, :cond_15

    invoke-virtual {v8, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/Pu;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/Tu;->j6(I)Lcom/google/android/gms/internal/ads/fv;

    move-result-object v5

    invoke-static {v10, v0, v5}, Lcom/google/android/gms/internal/ads/Ot;->FH(ILcom/google/android/gms/internal/ads/Pu;Lcom/google/android/gms/internal/ads/fv;)I

    move-result v0

    goto/16 :goto_a

    :pswitch_79
    and-int v0, v4, v5

    if-eqz v0, :cond_15

    invoke-virtual {v8, p1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v10, v6, v7}, Lcom/google/android/gms/internal/ads/Ot;->Zo(IJ)I

    move-result v0

    goto/16 :goto_a

    :pswitch_7a
    and-int v0, v4, v5

    if-eqz v0, :cond_15

    invoke-virtual {v8, p1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v10, v0}, Lcom/google/android/gms/internal/ads/Ot;->DW(II)I

    move-result v0

    goto/16 :goto_a

    :pswitch_7b
    and-int v0, v4, v5

    if-eqz v0, :cond_15

    const-wide/16 v6, 0x0

    invoke-static {v10, v6, v7}, Lcom/google/android/gms/internal/ads/Ot;->gn(IJ)I

    move-result v0

    goto/16 :goto_a

    :pswitch_7c
    and-int v0, v4, v5

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    invoke-static {v10, v0}, Lcom/google/android/gms/internal/ads/Ot;->Hw(II)I

    move-result v0

    goto/16 :goto_b

    :pswitch_7d
    and-int v0, v4, v5

    if-eqz v0, :cond_15

    invoke-virtual {v8, p1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v10, v0}, Lcom/google/android/gms/internal/ads/Ot;->v5(II)I

    move-result v0

    goto/16 :goto_a

    :pswitch_7e
    and-int v0, v4, v5

    if-eqz v0, :cond_15

    invoke-virtual {v8, p1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v10, v0}, Lcom/google/android/gms/internal/ads/Ot;->j6(II)I

    move-result v0

    goto/16 :goto_a

    :pswitch_7f
    and-int v0, v4, v5

    if-eqz v0, :cond_15

    invoke-virtual {v8, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/yt;

    invoke-static {v10, v0}, Lcom/google/android/gms/internal/ads/Ot;->FH(ILcom/google/android/gms/internal/ads/yt;)I

    move-result v0

    goto/16 :goto_a

    :pswitch_80
    and-int v0, v4, v5

    if-eqz v0, :cond_15

    invoke-virtual {v8, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/Tu;->j6(I)Lcom/google/android/gms/internal/ads/fv;

    move-result-object v5

    invoke-static {v10, v0, v5}, Lcom/google/android/gms/internal/ads/hv;->j6(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/fv;)I

    move-result v0

    goto/16 :goto_a

    :pswitch_81
    and-int v0, v4, v5

    if-eqz v0, :cond_15

    invoke-virtual {v8, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    instance-of v5, v0, Lcom/google/android/gms/internal/ads/yt;

    if-eqz v5, :cond_27

    check-cast v0, Lcom/google/android/gms/internal/ads/yt;

    invoke-static {v10, v0}, Lcom/google/android/gms/internal/ads/Ot;->FH(ILcom/google/android/gms/internal/ads/yt;)I

    move-result v0

    goto/16 :goto_a

    :cond_27
    check-cast v0, Ljava/lang/String;

    invoke-static {v10, v0}, Lcom/google/android/gms/internal/ads/Ot;->DW(ILjava/lang/String;)I

    move-result v0

    goto/16 :goto_a

    :pswitch_82
    and-int v0, v4, v5

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    invoke-static {v10, v0}, Lcom/google/android/gms/internal/ads/Ot;->DW(IZ)I

    move-result v0

    goto/16 :goto_a

    :pswitch_83
    and-int v0, v4, v5

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    invoke-static {v10, v0}, Lcom/google/android/gms/internal/ads/Ot;->FH(II)I

    move-result v0

    add-int/2addr v2, v0

    goto/16 :goto_8

    :pswitch_84
    and-int v0, v4, v5

    if-eqz v0, :cond_15

    const-wide/16 v6, 0x0

    invoke-static {v10, v6, v7}, Lcom/google/android/gms/internal/ads/Ot;->VH(IJ)I

    move-result v0

    :goto_d
    add-int/2addr v2, v0

    goto/16 :goto_8

    :pswitch_85
    and-int v0, v4, v5

    if-eqz v0, :cond_15

    invoke-virtual {v8, p1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v10, v0}, Lcom/google/android/gms/internal/ads/Ot;->EQ(II)I

    move-result v0

    goto :goto_d

    :pswitch_86
    and-int v0, v4, v5

    if-eqz v0, :cond_15

    invoke-virtual {v8, p1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v10, v6, v7}, Lcom/google/android/gms/internal/ads/Ot;->v5(IJ)I

    move-result v0

    goto :goto_d

    :pswitch_87
    and-int v0, v4, v5

    if-eqz v0, :cond_15

    invoke-virtual {v8, p1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v10, v6, v7}, Lcom/google/android/gms/internal/ads/Ot;->Hw(IJ)I

    move-result v0

    goto :goto_d

    :pswitch_88
    and-int v0, v4, v5

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    invoke-static {v10, v0}, Lcom/google/android/gms/internal/ads/Ot;->DW(IF)I

    move-result v0

    add-int/2addr v2, v0

    goto/16 :goto_8

    :pswitch_89
    and-int v0, v4, v5

    if-eqz v0, :cond_15

    const-wide/16 v6, 0x0

    invoke-static {v10, v6, v7}, Lcom/google/android/gms/internal/ads/Ot;->DW(ID)I

    move-result v0

    add-int/2addr v2, v0

    goto/16 :goto_8

    :cond_28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Tu;->XL:Lcom/google/android/gms/internal/ads/xv;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/Tu;->j6(Lcom/google/android/gms/internal/ads/xv;Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v2

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/Tu;->gn:Z

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Tu;->aM:Lcom/google/android/gms/internal/ads/Vt;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/Vt;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Yt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Yt;->gn()I

    move-result v1

    add-int/2addr v0, v1

    goto/16 :goto_5

    :cond_29
    move v0, v1

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
    .end packed-switch
.end method

.method public final DW(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    const v10, 0xfffff

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Tu;->FH:[I

    array-length v4, v2

    move v3, v0

    :goto_0
    if-ge v3, v4, :cond_4

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/Tu;->Hw(I)I

    move-result v2

    and-int v5, v2, v10

    int-to-long v6, v5

    const/high16 v5, 0xff00000

    and-int/2addr v2, v5

    ushr-int/lit8 v2, v2, 0x14

    packed-switch v2, :pswitch_data_0

    move v2, v1

    :goto_1
    if-nez v2, :cond_3

    :cond_0
    :goto_2
    return v0

    :pswitch_0
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/Tu;->v5(I)I

    move-result v2

    and-int/2addr v2, v10

    int-to-long v8, v2

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;J)I

    move-result v5

    if-ne v2, v5, :cond_1

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/google/android/gms/internal/ads/hv;->j6(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    :goto_3
    move v2, v0

    goto :goto_1

    :pswitch_1
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/google/android/gms/internal/ads/hv;->j6(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    :pswitch_2
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/google/android/gms/internal/ads/hv;->j6(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    :pswitch_3
    invoke-direct {p0, p1, p2, v3}, Lcom/google/android/gms/internal/ads/Tu;->FH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/google/android/gms/internal/ads/hv;->j6(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_2
    move v2, v1

    goto :goto_1

    :pswitch_4
    invoke-direct {p0, p1, p2, v3}, Lcom/google/android/gms/internal/ads/Tu;->FH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->DW(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->DW(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v2, v8, v6

    if-eqz v2, :cond_2

    goto :goto_3

    :pswitch_5
    invoke-direct {p0, p1, p2, v3}, Lcom/google/android/gms/internal/ads/Tu;->FH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;J)I

    move-result v5

    if-eq v2, v5, :cond_2

    goto :goto_3

    :pswitch_6
    invoke-direct {p0, p1, p2, v3}, Lcom/google/android/gms/internal/ads/Tu;->FH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->DW(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->DW(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v2, v8, v6

    if-eqz v2, :cond_2

    goto :goto_3

    :pswitch_7
    invoke-direct {p0, p1, p2, v3}, Lcom/google/android/gms/internal/ads/Tu;->FH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;J)I

    move-result v5

    if-eq v2, v5, :cond_2

    goto :goto_3

    :pswitch_8
    invoke-direct {p0, p1, p2, v3}, Lcom/google/android/gms/internal/ads/Tu;->FH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;J)I

    move-result v5

    if-eq v2, v5, :cond_2

    goto/16 :goto_3

    :pswitch_9
    invoke-direct {p0, p1, p2, v3}, Lcom/google/android/gms/internal/ads/Tu;->FH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;J)I

    move-result v5

    if-eq v2, v5, :cond_2

    goto/16 :goto_3

    :pswitch_a
    invoke-direct {p0, p1, p2, v3}, Lcom/google/android/gms/internal/ads/Tu;->FH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/google/android/gms/internal/ads/hv;->j6(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_3

    :pswitch_b
    invoke-direct {p0, p1, p2, v3}, Lcom/google/android/gms/internal/ads/Tu;->FH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/google/android/gms/internal/ads/hv;->j6(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_3

    :pswitch_c
    invoke-direct {p0, p1, p2, v3}, Lcom/google/android/gms/internal/ads/Tu;->FH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/google/android/gms/internal/ads/hv;->j6(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_3

    :pswitch_d
    invoke-direct {p0, p1, p2, v3}, Lcom/google/android/gms/internal/ads/Tu;->FH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->FH(Ljava/lang/Object;J)Z

    move-result v2

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->FH(Ljava/lang/Object;J)Z

    move-result v5

    if-eq v2, v5, :cond_2

    goto/16 :goto_3

    :pswitch_e
    invoke-direct {p0, p1, p2, v3}, Lcom/google/android/gms/internal/ads/Tu;->FH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;J)I

    move-result v5

    if-eq v2, v5, :cond_2

    goto/16 :goto_3

    :pswitch_f
    invoke-direct {p0, p1, p2, v3}, Lcom/google/android/gms/internal/ads/Tu;->FH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->DW(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->DW(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v2, v8, v6

    if-eqz v2, :cond_2

    goto/16 :goto_3

    :pswitch_10
    invoke-direct {p0, p1, p2, v3}, Lcom/google/android/gms/internal/ads/Tu;->FH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;J)I

    move-result v5

    if-eq v2, v5, :cond_2

    goto/16 :goto_3

    :pswitch_11
    invoke-direct {p0, p1, p2, v3}, Lcom/google/android/gms/internal/ads/Tu;->FH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->DW(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->DW(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v2, v8, v6

    if-eqz v2, :cond_2

    goto/16 :goto_3

    :pswitch_12
    invoke-direct {p0, p1, p2, v3}, Lcom/google/android/gms/internal/ads/Tu;->FH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->DW(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->DW(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v2, v8, v6

    if-eqz v2, :cond_2

    goto/16 :goto_3

    :pswitch_13
    invoke-direct {p0, p1, p2, v3}, Lcom/google/android/gms/internal/ads/Tu;->FH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;J)I

    move-result v5

    if-eq v2, v5, :cond_2

    goto/16 :goto_3

    :pswitch_14
    invoke-direct {p0, p1, p2, v3}, Lcom/google/android/gms/internal/ads/Tu;->FH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->DW(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->DW(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v2, v8, v6

    if-eqz v2, :cond_2

    goto/16 :goto_3

    :cond_3
    add-int/lit8 v2, v3, 0x3

    move v3, v2

    goto/16 :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Tu;->XL:Lcom/google/android/gms/internal/ads/xv;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/xv;->DW(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Tu;->XL:Lcom/google/android/gms/internal/ads/xv;

    invoke-virtual {v3, p2}, Lcom/google/android/gms/internal/ads/xv;->DW(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Tu;->gn:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Tu;->aM:Lcom/google/android/gms/internal/ads/Vt;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/Vt;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Yt;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Tu;->aM:Lcom/google/android/gms/internal/ads/Vt;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/Vt;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Yt;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Yt;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_2

    :cond_5
    move v0, v1

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final FH(Ljava/lang/Object;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const v12, 0xfffff

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v0, -0x1

    move v2, v3

    move v4, v3

    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/Tu;->J0:I

    if-ge v4, v1, :cond_a

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Tu;->we:[I

    aget v7, v1, v4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Tu;->FH:[I

    aget v8, v1, v7

    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/ads/Tu;->Hw(I)I

    move-result v9

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/Tu;->tp:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Tu;->FH:[I

    add-int/lit8 v5, v7, 0x2

    aget v5, v1, v5

    and-int v1, v5, v12

    ushr-int/lit8 v5, v5, 0x14

    shl-int v5, v6, v5

    if-eq v1, v0, :cond_d

    sget-object v0, Lcom/google/android/gms/internal/ads/Tu;->DW:Lsun/misc/Unsafe;

    int-to-long v10, v1

    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    :goto_1
    const/high16 v0, 0x10000000

    and-int/2addr v0, v9

    if-eqz v0, :cond_2

    move v0, v6

    :goto_2
    if-eqz v0, :cond_3

    invoke-direct {p0, p1, v7, v2, v5}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;III)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    :goto_3
    return v3

    :cond_1
    move v5, v3

    move v1, v0

    goto :goto_1

    :cond_2
    move v0, v3

    goto :goto_2

    :cond_3
    const/high16 v0, 0xff00000

    and-int/2addr v0, v9

    ushr-int/lit8 v0, v0, 0x14

    const/16 v10, 0x9

    if-eq v0, v10, :cond_9

    const/16 v10, 0x11

    if-eq v0, v10, :cond_9

    const/16 v5, 0x1b

    if-eq v0, v5, :cond_7

    const/16 v5, 0x3c

    if-eq v0, v5, :cond_6

    const/16 v5, 0x44

    if-eq v0, v5, :cond_6

    const/16 v5, 0x31

    if-eq v0, v5, :cond_7

    const/16 v5, 0x32

    if-eq v0, v5, :cond_5

    :cond_4
    add-int/lit8 v4, v4, 0x1

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Tu;->j3:Lcom/google/android/gms/internal/ads/Ku;

    and-int v5, v9, v12

    int-to-long v8, v5

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/google/android/gms/internal/ads/Ku;->VH(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/ads/Tu;->DW(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Tu;->j3:Lcom/google/android/gms/internal/ads/Ku;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/Ku;->v5(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Iu;

    const/4 v0, 0x0

    throw v0

    :cond_6
    invoke-direct {p0, p1, v8, v7}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/ads/Tu;->j6(I)Lcom/google/android/gms/internal/ads/fv;

    move-result-object v0

    invoke-static {p1, v9, v0}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/fv;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_7
    and-int v0, v9, v12

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_c

    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/ads/Tu;->j6(I)Lcom/google/android/gms/internal/ads/fv;

    move-result-object v7

    move v5, v3

    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_c

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/google/android/gms/internal/ads/fv;->FH(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    move v0, v3

    :goto_5
    if-nez v0, :cond_4

    goto/16 :goto_3

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_9
    invoke-direct {p0, p1, v7, v2, v5}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;III)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/ads/Tu;->j6(I)Lcom/google/android/gms/internal/ads/fv;

    move-result-object v0

    invoke-static {p1, v9, v0}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/fv;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_3

    :cond_a
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Tu;->gn:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Tu;->aM:Lcom/google/android/gms/internal/ads/Vt;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/Vt;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Yt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Yt;->Hw()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_b
    move v3, v6

    goto/16 :goto_3

    :cond_c
    move v0, v6

    goto :goto_5

    :cond_d
    move v1, v0

    goto/16 :goto_1
.end method

.method public final Hw(Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/ads/Tu;->J0:I

    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/Tu;->J8:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Tu;->we:[I

    aget v1, v1, v0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/Tu;->Hw(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v2, v1

    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Tu;->j3:Lcom/google/android/gms/internal/ads/Ku;

    invoke-interface {v4, v1}, Lcom/google/android/gms/internal/ads/Ku;->Zo(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Tu;->we:[I

    array-length v2, v0

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Tu;->QX:Lcom/google/android/gms/internal/ads/zu;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Tu;->we:[I

    aget v3, v3, v0

    int-to-long v4, v3

    invoke-virtual {v1, p1, v4, v5}, Lcom/google/android/gms/internal/ads/zu;->DW(Ljava/lang/Object;J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Tu;->XL:Lcom/google/android/gms/internal/ads/xv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/xv;->v5(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Tu;->gn:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Tu;->aM:Lcom/google/android/gms/internal/ads/Vt;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/Vt;->FH(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final j6(Ljava/lang/Object;)I
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Tu;->FH:[I

    array-length v3, v1

    move v2, v0

    move v1, v0

    :goto_0
    if-ge v2, v3, :cond_1

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/Tu;->Hw(I)I

    move-result v4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Tu;->FH:[I

    aget v5, v0, v2

    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    const/16 v0, 0x25

    const/high16 v8, 0xff00000

    and-int/2addr v4, v8

    ushr-int/lit8 v4, v4, 0x14

    packed-switch v4, :pswitch_data_0

    move v0, v1

    :goto_1
    add-int/lit8 v2, v2, 0x3

    move v1, v0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1, v5, v2}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v1

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, p1, v5, v2}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Tu;->v5(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/ju;->j6(J)I

    move-result v0

    goto :goto_2

    :pswitch_2
    invoke-direct {p0, p1, v5, v2}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Tu;->Hw(Ljava/lang/Object;J)I

    move-result v0

    goto :goto_2

    :pswitch_3
    invoke-direct {p0, p1, v5, v2}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Tu;->v5(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/ju;->j6(J)I

    move-result v0

    goto :goto_2

    :pswitch_4
    invoke-direct {p0, p1, v5, v2}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Tu;->Hw(Ljava/lang/Object;J)I

    move-result v0

    goto :goto_2

    :pswitch_5
    invoke-direct {p0, p1, v5, v2}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Tu;->Hw(Ljava/lang/Object;J)I

    move-result v0

    goto :goto_2

    :pswitch_6
    invoke-direct {p0, p1, v5, v2}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Tu;->Hw(Ljava/lang/Object;J)I

    move-result v0

    goto :goto_2

    :pswitch_7
    invoke-direct {p0, p1, v5, v2}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_2

    :pswitch_8
    invoke-direct {p0, p1, v5, v2}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_2

    :pswitch_9
    invoke-direct {p0, p1, v5, v2}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_2

    :pswitch_a
    invoke-direct {p0, p1, v5, v2}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Tu;->Zo(Ljava/lang/Object;J)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ju;->j6(Z)I

    move-result v0

    goto/16 :goto_2

    :pswitch_b
    invoke-direct {p0, p1, v5, v2}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Tu;->Hw(Ljava/lang/Object;J)I

    move-result v0

    goto/16 :goto_2

    :pswitch_c
    invoke-direct {p0, p1, v5, v2}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Tu;->v5(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/ju;->j6(J)I

    move-result v0

    goto/16 :goto_2

    :pswitch_d
    invoke-direct {p0, p1, v5, v2}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Tu;->Hw(Ljava/lang/Object;J)I

    move-result v0

    goto/16 :goto_2

    :pswitch_e
    invoke-direct {p0, p1, v5, v2}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Tu;->v5(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/ju;->j6(J)I

    move-result v0

    goto/16 :goto_2

    :pswitch_f
    invoke-direct {p0, p1, v5, v2}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Tu;->v5(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/ju;->j6(J)I

    move-result v0

    goto/16 :goto_2

    :pswitch_10
    invoke-direct {p0, p1, v5, v2}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Tu;->FH(Ljava/lang/Object;J)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    goto/16 :goto_2

    :pswitch_11
    invoke-direct {p0, p1, v5, v2}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Tu;->DW(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/ju;->j6(J)I

    move-result v0

    goto/16 :goto_2

    :pswitch_12
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto/16 :goto_2

    :pswitch_13
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto/16 :goto_2

    :pswitch_14
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :cond_0
    :goto_3
    mul-int/lit8 v1, v1, 0x35

    add-int/2addr v0, v1

    goto/16 :goto_1

    :pswitch_15
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->DW(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/ju;->j6(J)I

    move-result v0

    goto/16 :goto_2

    :pswitch_16
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;J)I

    move-result v0

    goto/16 :goto_2

    :pswitch_17
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->DW(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/ju;->j6(J)I

    move-result v0

    goto/16 :goto_2

    :pswitch_18
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;J)I

    move-result v0

    goto/16 :goto_2

    :pswitch_19
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;J)I

    move-result v0

    goto/16 :goto_2

    :pswitch_1a
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;J)I

    move-result v0

    goto/16 :goto_2

    :pswitch_1b
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto/16 :goto_2

    :pswitch_1c
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_3

    :pswitch_1d
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_2

    :pswitch_1e
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->FH(Ljava/lang/Object;J)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ju;->j6(Z)I

    move-result v0

    goto/16 :goto_2

    :pswitch_1f
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;J)I

    move-result v0

    goto/16 :goto_2

    :pswitch_20
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->DW(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/ju;->j6(J)I

    move-result v0

    goto/16 :goto_2

    :pswitch_21
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;J)I

    move-result v0

    goto/16 :goto_2

    :pswitch_22
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->DW(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/ju;->j6(J)I

    move-result v0

    goto/16 :goto_2

    :pswitch_23
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->DW(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/ju;->j6(J)I

    move-result v0

    goto/16 :goto_2

    :pswitch_24
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->Hw(Ljava/lang/Object;J)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    goto/16 :goto_2

    :pswitch_25
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->v5(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/ju;->j6(J)I

    move-result v0

    goto/16 :goto_2

    :cond_1
    mul-int/lit8 v0, v1, 0x35

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Tu;->XL:Lcom/google/android/gms/internal/ads/xv;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/xv;->DW(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/Tu;->gn:Z

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x35

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Tu;->aM:Lcom/google/android/gms/internal/ads/Vt;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/Vt;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Yt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Yt;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    return v0

    :cond_3
    move v0, v1

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final j6()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Tu;->Ws:Lcom/google/android/gms/internal/ads/Wu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Tu;->VH:Lcom/google/android/gms/internal/ads/Pu;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/Wu;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final j6(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/Tv;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/ads/Tv;",
            ")V"
        }
    .end annotation

    const/high16 v12, 0xff00000

    const/4 v2, 0x0

    const/4 v11, 0x1

    const/4 v4, 0x0

    const v10, 0xfffff

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/Tv;->j6()I

    move-result v0

    sget v1, Lcom/google/android/gms/internal/ads/hu$e;->J0:I

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Tu;->XL:Lcom/google/android/gms/internal/ads/xv;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/Tu;->j6(Lcom/google/android/gms/internal/ads/xv;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/Tv;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Tu;->gn:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Tu;->aM:Lcom/google/android/gms/internal/ads/Vt;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/Vt;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Yt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Yt;->DW()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Yt;->j6()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Tu;->FH:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x3

    move v3, v0

    :goto_1
    if-ltz v3, :cond_3

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/Tu;->Hw(I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/Tu;->FH:[I

    aget v6, v5, v3

    if-nez v1, :cond_2

    and-int v7, v0, v12

    ushr-int/lit8 v7, v7, 0x14

    packed-switch v7, :pswitch_data_0

    :cond_0
    :goto_2
    add-int/lit8 v0, v3, -0x3

    move v3, v0

    goto :goto_1

    :cond_1
    move-object v1, v2

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1, v6, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(I)Lcom/google/android/gms/internal/ads/fv;

    move-result-object v5

    invoke-interface {p2, v6, v0, v5}, Lcom/google/android/gms/internal/ads/Tv;->j6(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/fv;)V

    goto :goto_2

    :pswitch_1
    invoke-direct {p0, p1, v6, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Tu;->v5(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v6, v8, v9}, Lcom/google/android/gms/internal/ads/Tv;->v5(IJ)V

    goto :goto_2

    :pswitch_2
    invoke-direct {p0, p1, v6, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Tu;->Hw(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {p2, v6, v0}, Lcom/google/android/gms/internal/ads/Tv;->DW(II)V

    goto :goto_2

    :pswitch_3
    invoke-direct {p0, p1, v6, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Tu;->v5(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v6, v8, v9}, Lcom/google/android/gms/internal/ads/Tv;->FH(IJ)V

    goto :goto_2

    :pswitch_4
    invoke-direct {p0, p1, v6, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Tu;->Hw(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {p2, v6, v0}, Lcom/google/android/gms/internal/ads/Tv;->FH(II)V

    goto :goto_2

    :pswitch_5
    invoke-direct {p0, p1, v6, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Tu;->Hw(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {p2, v6, v0}, Lcom/google/android/gms/internal/ads/Tv;->Zo(II)V

    goto :goto_2

    :pswitch_6
    invoke-direct {p0, p1, v6, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Tu;->Hw(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {p2, v6, v0}, Lcom/google/android/gms/internal/ads/Tv;->j6(II)V

    goto :goto_2

    :pswitch_7
    invoke-direct {p0, p1, v6, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/yt;

    invoke-interface {p2, v6, v0}, Lcom/google/android/gms/internal/ads/Tv;->j6(ILcom/google/android/gms/internal/ads/yt;)V

    goto/16 :goto_2

    :pswitch_8
    invoke-direct {p0, p1, v6, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(I)Lcom/google/android/gms/internal/ads/fv;

    move-result-object v5

    invoke-interface {p2, v6, v0, v5}, Lcom/google/android/gms/internal/ads/Tv;->DW(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/fv;)V

    goto/16 :goto_2

    :pswitch_9
    invoke-direct {p0, p1, v6, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v6, v0, p2}, Lcom/google/android/gms/internal/ads/Tu;->j6(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/Tv;)V

    goto/16 :goto_2

    :pswitch_a
    invoke-direct {p0, p1, v6, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Tu;->Zo(Ljava/lang/Object;J)Z

    move-result v0

    invoke-interface {p2, v6, v0}, Lcom/google/android/gms/internal/ads/Tv;->j6(IZ)V

    goto/16 :goto_2

    :pswitch_b
    invoke-direct {p0, p1, v6, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Tu;->Hw(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {p2, v6, v0}, Lcom/google/android/gms/internal/ads/Tv;->v5(II)V

    goto/16 :goto_2

    :pswitch_c
    invoke-direct {p0, p1, v6, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Tu;->v5(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v6, v8, v9}, Lcom/google/android/gms/internal/ads/Tv;->Zo(IJ)V

    goto/16 :goto_2

    :pswitch_d
    invoke-direct {p0, p1, v6, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Tu;->Hw(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {p2, v6, v0}, Lcom/google/android/gms/internal/ads/Tv;->Hw(II)V

    goto/16 :goto_2

    :pswitch_e
    invoke-direct {p0, p1, v6, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Tu;->v5(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v6, v8, v9}, Lcom/google/android/gms/internal/ads/Tv;->DW(IJ)V

    goto/16 :goto_2

    :pswitch_f
    invoke-direct {p0, p1, v6, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Tu;->v5(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v6, v8, v9}, Lcom/google/android/gms/internal/ads/Tv;->Hw(IJ)V

    goto/16 :goto_2

    :pswitch_10
    invoke-direct {p0, p1, v6, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Tu;->FH(Ljava/lang/Object;J)F

    move-result v0

    invoke-interface {p2, v6, v0}, Lcom/google/android/gms/internal/ads/Tv;->j6(IF)V

    goto/16 :goto_2

    :pswitch_11
    invoke-direct {p0, p1, v6, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Tu;->DW(Ljava/lang/Object;J)D

    move-result-wide v8

    invoke-interface {p2, v6, v8, v9}, Lcom/google/android/gms/internal/ads/Tv;->j6(ID)V

    goto/16 :goto_2

    :pswitch_12
    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p2, v6, v0, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(Lcom/google/android/gms/internal/ads/Tv;ILjava/lang/Object;I)V

    goto/16 :goto_2

    :pswitch_13
    aget v5, v5, v3

    and-int/2addr v0, v10

    int-to-long v6, v0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(I)Lcom/google/android/gms/internal/ads/fv;

    move-result-object v6

    invoke-static {v5, v0, p2, v6}, Lcom/google/android/gms/internal/ads/hv;->DW(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Lcom/google/android/gms/internal/ads/fv;)V

    goto/16 :goto_2

    :pswitch_14
    aget v5, v5, v3

    and-int/2addr v0, v10

    int-to-long v6, v0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v5, v0, p2, v11}, Lcom/google/android/gms/internal/ads/hv;->v5(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_2

    :pswitch_15
    aget v5, v5, v3

    and-int/2addr v0, v10

    int-to-long v6, v0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v5, v0, p2, v11}, Lcom/google/android/gms/internal/ads/hv;->tp(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_2

    :pswitch_16
    aget v5, v5, v3

    and-int/2addr v0, v10

    int-to-long v6, v0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v5, v0, p2, v11}, Lcom/google/android/gms/internal/ads/hv;->VH(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_2

    :pswitch_17
    aget v5, v5, v3

    and-int/2addr v0, v10

    int-to-long v6, v0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v5, v0, p2, v11}, Lcom/google/android/gms/internal/ads/hv;->we(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_2

    :pswitch_18
    aget v5, v5, v3

    and-int/2addr v0, v10

    int-to-long v6, v0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v5, v0, p2, v11}, Lcom/google/android/gms/internal/ads/hv;->J0(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_2

    :pswitch_19
    aget v5, v5, v3

    and-int/2addr v0, v10

    int-to-long v6, v0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v5, v0, p2, v11}, Lcom/google/android/gms/internal/ads/hv;->u7(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_2

    :pswitch_1a
    aget v5, v5, v3

    and-int/2addr v0, v10

    int-to-long v6, v0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v5, v0, p2, v11}, Lcom/google/android/gms/internal/ads/hv;->J8(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_2

    :pswitch_1b
    aget v5, v5, v3

    and-int/2addr v0, v10

    int-to-long v6, v0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v5, v0, p2, v11}, Lcom/google/android/gms/internal/ads/hv;->EQ(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_2

    :pswitch_1c
    aget v5, v5, v3

    and-int/2addr v0, v10

    int-to-long v6, v0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v5, v0, p2, v11}, Lcom/google/android/gms/internal/ads/hv;->Zo(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_2

    :pswitch_1d
    aget v5, v5, v3

    and-int/2addr v0, v10

    int-to-long v6, v0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v5, v0, p2, v11}, Lcom/google/android/gms/internal/ads/hv;->gn(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_2

    :pswitch_1e
    aget v5, v5, v3

    and-int/2addr v0, v10

    int-to-long v6, v0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v5, v0, p2, v11}, Lcom/google/android/gms/internal/ads/hv;->Hw(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_2

    :pswitch_1f
    aget v5, v5, v3

    and-int/2addr v0, v10

    int-to-long v6, v0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v5, v0, p2, v11}, Lcom/google/android/gms/internal/ads/hv;->FH(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_2

    :pswitch_20
    aget v5, v5, v3

    and-int/2addr v0, v10

    int-to-long v6, v0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v5, v0, p2, v11}, Lcom/google/android/gms/internal/ads/hv;->DW(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_2

    :pswitch_21
    aget v5, v5, v3

    and-int/2addr v0, v10

    int-to-long v6, v0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v5, v0, p2, v11}, Lcom/google/android/gms/internal/ads/hv;->j6(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_2

    :pswitch_22
    aget v5, v5, v3

    and-int/2addr v0, v10

    int-to-long v6, v0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v5, v0, p2, v4}, Lcom/google/android/gms/internal/ads/hv;->v5(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_2

    :pswitch_23
    aget v5, v5, v3

    and-int/2addr v0, v10

    int-to-long v6, v0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v5, v0, p2, v4}, Lcom/google/android/gms/internal/ads/hv;->tp(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_2

    :pswitch_24
    aget v5, v5, v3

    and-int/2addr v0, v10

    int-to-long v6, v0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v5, v0, p2, v4}, Lcom/google/android/gms/internal/ads/hv;->VH(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_2

    :pswitch_25
    aget v5, v5, v3

    and-int/2addr v0, v10

    int-to-long v6, v0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v5, v0, p2, v4}, Lcom/google/android/gms/internal/ads/hv;->we(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_2

    :pswitch_26
    aget v5, v5, v3

    and-int/2addr v0, v10

    int-to-long v6, v0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v5, v0, p2, v4}, Lcom/google/android/gms/internal/ads/hv;->J0(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_2

    :pswitch_27
    aget v5, v5, v3

    and-int/2addr v0, v10

    int-to-long v6, v0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v5, v0, p2, v4}, Lcom/google/android/gms/internal/ads/hv;->u7(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_2

    :pswitch_28
    aget v5, v5, v3

    and-int/2addr v0, v10

    int-to-long v6, v0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v5, v0, p2}, Lcom/google/android/gms/internal/ads/hv;->DW(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;)V

    goto/16 :goto_2

    :pswitch_29
    aget v5, v5, v3

    and-int/2addr v0, v10

    int-to-long v6, v0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(I)Lcom/google/android/gms/internal/ads/fv;

    move-result-object v6

    invoke-static {v5, v0, p2, v6}, Lcom/google/android/gms/internal/ads/hv;->j6(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Lcom/google/android/gms/internal/ads/fv;)V

    goto/16 :goto_2

    :pswitch_2a
    aget v5, v5, v3

    and-int/2addr v0, v10

    int-to-long v6, v0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v5, v0, p2}, Lcom/google/android/gms/internal/ads/hv;->j6(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;)V

    goto/16 :goto_2

    :pswitch_2b
    aget v5, v5, v3

    and-int/2addr v0, v10

    int-to-long v6, v0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v5, v0, p2, v4}, Lcom/google/android/gms/internal/ads/hv;->J8(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_2

    :pswitch_2c
    aget v5, v5, v3

    and-int/2addr v0, v10

    int-to-long v6, v0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v5, v0, p2, v4}, Lcom/google/android/gms/internal/ads/hv;->EQ(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_2

    :pswitch_2d
    aget v5, v5, v3

    and-int/2addr v0, v10

    int-to-long v6, v0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v5, v0, p2, v4}, Lcom/google/android/gms/internal/ads/hv;->Zo(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_2

    :pswitch_2e
    aget v5, v5, v3

    and-int/2addr v0, v10

    int-to-long v6, v0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v5, v0, p2, v4}, Lcom/google/android/gms/internal/ads/hv;->gn(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_2

    :pswitch_2f
    aget v5, v5, v3

    and-int/2addr v0, v10

    int-to-long v6, v0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v5, v0, p2, v4}, Lcom/google/android/gms/internal/ads/hv;->Hw(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_2

    :pswitch_30
    aget v5, v5, v3

    and-int/2addr v0, v10

    int-to-long v6, v0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v5, v0, p2, v4}, Lcom/google/android/gms/internal/ads/hv;->FH(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_2

    :pswitch_31
    aget v5, v5, v3

    and-int/2addr v0, v10

    int-to-long v6, v0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v5, v0, p2, v4}, Lcom/google/android/gms/internal/ads/hv;->DW(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_2

    :pswitch_32
    aget v5, v5, v3

    and-int/2addr v0, v10

    int-to-long v6, v0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v5, v0, p2, v4}, Lcom/google/android/gms/internal/ads/hv;->j6(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_2

    :pswitch_33
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(I)Lcom/google/android/gms/internal/ads/fv;

    move-result-object v5

    invoke-interface {p2, v6, v0, v5}, Lcom/google/android/gms/internal/ads/Tv;->j6(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/fv;)V

    goto/16 :goto_2

    :pswitch_34
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->DW(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v6, v8, v9}, Lcom/google/android/gms/internal/ads/Tv;->v5(IJ)V

    goto/16 :goto_2

    :pswitch_35
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {p2, v6, v0}, Lcom/google/android/gms/internal/ads/Tv;->DW(II)V

    goto/16 :goto_2

    :pswitch_36
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->DW(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v6, v8, v9}, Lcom/google/android/gms/internal/ads/Tv;->FH(IJ)V

    goto/16 :goto_2

    :pswitch_37
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {p2, v6, v0}, Lcom/google/android/gms/internal/ads/Tv;->FH(II)V

    goto/16 :goto_2

    :pswitch_38
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {p2, v6, v0}, Lcom/google/android/gms/internal/ads/Tv;->Zo(II)V

    goto/16 :goto_2

    :pswitch_39
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {p2, v6, v0}, Lcom/google/android/gms/internal/ads/Tv;->j6(II)V

    goto/16 :goto_2

    :pswitch_3a
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/yt;

    invoke-interface {p2, v6, v0}, Lcom/google/android/gms/internal/ads/Tv;->j6(ILcom/google/android/gms/internal/ads/yt;)V

    goto/16 :goto_2

    :pswitch_3b
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(I)Lcom/google/android/gms/internal/ads/fv;

    move-result-object v5

    invoke-interface {p2, v6, v0, v5}, Lcom/google/android/gms/internal/ads/Tv;->DW(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/fv;)V

    goto/16 :goto_2

    :pswitch_3c
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v6, v0, p2}, Lcom/google/android/gms/internal/ads/Tu;->j6(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/Tv;)V

    goto/16 :goto_2

    :pswitch_3d
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->FH(Ljava/lang/Object;J)Z

    move-result v0

    invoke-interface {p2, v6, v0}, Lcom/google/android/gms/internal/ads/Tv;->j6(IZ)V

    goto/16 :goto_2

    :pswitch_3e
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {p2, v6, v0}, Lcom/google/android/gms/internal/ads/Tv;->v5(II)V

    goto/16 :goto_2

    :pswitch_3f
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->DW(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v6, v8, v9}, Lcom/google/android/gms/internal/ads/Tv;->Zo(IJ)V

    goto/16 :goto_2

    :pswitch_40
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {p2, v6, v0}, Lcom/google/android/gms/internal/ads/Tv;->Hw(II)V

    goto/16 :goto_2

    :pswitch_41
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->DW(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v6, v8, v9}, Lcom/google/android/gms/internal/ads/Tv;->DW(IJ)V

    goto/16 :goto_2

    :pswitch_42
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->DW(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v6, v8, v9}, Lcom/google/android/gms/internal/ads/Tv;->Hw(IJ)V

    goto/16 :goto_2

    :pswitch_43
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->Hw(Ljava/lang/Object;J)F

    move-result v0

    invoke-interface {p2, v6, v0}, Lcom/google/android/gms/internal/ads/Tv;->j6(IF)V

    goto/16 :goto_2

    :pswitch_44
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->v5(Ljava/lang/Object;J)D

    move-result-wide v8

    invoke-interface {p2, v6, v8, v9}, Lcom/google/android/gms/internal/ads/Tv;->j6(ID)V

    goto/16 :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Tu;->aM:Lcom/google/android/gms/internal/ads/Vt;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Vt;->j6(Ljava/util/Map$Entry;)I

    throw v2

    :cond_3
    if-nez v1, :cond_4

    :goto_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Tu;->aM:Lcom/google/android/gms/internal/ads/Vt;

    invoke-virtual {v0, p2, v1}, Lcom/google/android/gms/internal/ads/Vt;->j6(Lcom/google/android/gms/internal/ads/Tv;Ljava/util/Map$Entry;)V

    throw v2

    :cond_5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Tu;->tp:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Tu;->gn:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Tu;->aM:Lcom/google/android/gms/internal/ads/Vt;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/Vt;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Yt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Yt;->DW()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Yt;->v5()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    move-object v1, v0

    :goto_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Tu;->FH:[I

    array-length v5, v0

    move v3, v4

    :goto_5
    if-ge v3, v5, :cond_9

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/Tu;->Hw(I)I

    move-result v0

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/Tu;->FH:[I

    aget v7, v6, v3

    if-nez v1, :cond_8

    and-int v8, v0, v12

    ushr-int/lit8 v8, v8, 0x14

    packed-switch v8, :pswitch_data_1

    :cond_6
    :goto_6
    add-int/lit8 v0, v3, 0x3

    move v3, v0

    goto :goto_5

    :cond_7
    move-object v1, v2

    goto :goto_4

    :pswitch_45
    invoke-direct {p0, p1, v7, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_6

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(I)Lcom/google/android/gms/internal/ads/fv;

    move-result-object v6

    invoke-interface {p2, v7, v0, v6}, Lcom/google/android/gms/internal/ads/Tv;->j6(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/fv;)V

    goto :goto_6

    :pswitch_46
    invoke-direct {p0, p1, v7, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_6

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Tu;->v5(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/android/gms/internal/ads/Tv;->v5(IJ)V

    goto :goto_6

    :pswitch_47
    invoke-direct {p0, p1, v7, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_6

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Tu;->Hw(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {p2, v7, v0}, Lcom/google/android/gms/internal/ads/Tv;->DW(II)V

    goto :goto_6

    :pswitch_48
    invoke-direct {p0, p1, v7, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_6

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Tu;->v5(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/android/gms/internal/ads/Tv;->FH(IJ)V

    goto :goto_6

    :pswitch_49
    invoke-direct {p0, p1, v7, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_6

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Tu;->Hw(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {p2, v7, v0}, Lcom/google/android/gms/internal/ads/Tv;->FH(II)V

    goto :goto_6

    :pswitch_4a
    invoke-direct {p0, p1, v7, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_6

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Tu;->Hw(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {p2, v7, v0}, Lcom/google/android/gms/internal/ads/Tv;->Zo(II)V

    goto :goto_6

    :pswitch_4b
    invoke-direct {p0, p1, v7, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_6

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Tu;->Hw(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {p2, v7, v0}, Lcom/google/android/gms/internal/ads/Tv;->j6(II)V

    goto :goto_6

    :pswitch_4c
    invoke-direct {p0, p1, v7, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_6

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/yt;

    invoke-interface {p2, v7, v0}, Lcom/google/android/gms/internal/ads/Tv;->j6(ILcom/google/android/gms/internal/ads/yt;)V

    goto/16 :goto_6

    :pswitch_4d
    invoke-direct {p0, p1, v7, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_6

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(I)Lcom/google/android/gms/internal/ads/fv;

    move-result-object v6

    invoke-interface {p2, v7, v0, v6}, Lcom/google/android/gms/internal/ads/Tv;->DW(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/fv;)V

    goto/16 :goto_6

    :pswitch_4e
    invoke-direct {p0, p1, v7, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_6

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v7, v0, p2}, Lcom/google/android/gms/internal/ads/Tu;->j6(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/Tv;)V

    goto/16 :goto_6

    :pswitch_4f
    invoke-direct {p0, p1, v7, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_6

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Tu;->Zo(Ljava/lang/Object;J)Z

    move-result v0

    invoke-interface {p2, v7, v0}, Lcom/google/android/gms/internal/ads/Tv;->j6(IZ)V

    goto/16 :goto_6

    :pswitch_50
    invoke-direct {p0, p1, v7, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_6

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Tu;->Hw(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {p2, v7, v0}, Lcom/google/android/gms/internal/ads/Tv;->v5(II)V

    goto/16 :goto_6

    :pswitch_51
    invoke-direct {p0, p1, v7, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_6

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Tu;->v5(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/android/gms/internal/ads/Tv;->Zo(IJ)V

    goto/16 :goto_6

    :pswitch_52
    invoke-direct {p0, p1, v7, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_6

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Tu;->Hw(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {p2, v7, v0}, Lcom/google/android/gms/internal/ads/Tv;->Hw(II)V

    goto/16 :goto_6

    :pswitch_53
    invoke-direct {p0, p1, v7, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_6

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Tu;->v5(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/android/gms/internal/ads/Tv;->DW(IJ)V

    goto/16 :goto_6

    :pswitch_54
    invoke-direct {p0, p1, v7, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_6

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Tu;->v5(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/android/gms/internal/ads/Tv;->Hw(IJ)V

    goto/16 :goto_6

    :pswitch_55
    invoke-direct {p0, p1, v7, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_6

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Tu;->FH(Ljava/lang/Object;J)F

    move-result v0

    invoke-interface {p2, v7, v0}, Lcom/google/android/gms/internal/ads/Tv;->j6(IF)V

    goto/16 :goto_6

    :pswitch_56
    invoke-direct {p0, p1, v7, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_6

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Tu;->DW(Ljava/lang/Object;J)D

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/android/gms/internal/ads/Tv;->j6(ID)V

    goto/16 :goto_6

    :pswitch_57
    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p2, v7, v0, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(Lcom/google/android/gms/internal/ads/Tv;ILjava/lang/Object;I)V

    goto/16 :goto_6

    :pswitch_58
    aget v6, v6, v3

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(I)Lcom/google/android/gms/internal/ads/fv;

    move-result-object v7

    invoke-static {v6, v0, p2, v7}, Lcom/google/android/gms/internal/ads/hv;->DW(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Lcom/google/android/gms/internal/ads/fv;)V

    goto/16 :goto_6

    :pswitch_59
    aget v6, v6, v3

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v6, v0, p2, v11}, Lcom/google/android/gms/internal/ads/hv;->v5(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_6

    :pswitch_5a
    aget v6, v6, v3

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v6, v0, p2, v11}, Lcom/google/android/gms/internal/ads/hv;->tp(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_6

    :pswitch_5b
    aget v6, v6, v3

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v6, v0, p2, v11}, Lcom/google/android/gms/internal/ads/hv;->VH(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_6

    :pswitch_5c
    aget v6, v6, v3

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v6, v0, p2, v11}, Lcom/google/android/gms/internal/ads/hv;->we(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_6

    :pswitch_5d
    aget v6, v6, v3

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v6, v0, p2, v11}, Lcom/google/android/gms/internal/ads/hv;->J0(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_6

    :pswitch_5e
    aget v6, v6, v3

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v6, v0, p2, v11}, Lcom/google/android/gms/internal/ads/hv;->u7(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_6

    :pswitch_5f
    aget v6, v6, v3

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v6, v0, p2, v11}, Lcom/google/android/gms/internal/ads/hv;->J8(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_6

    :pswitch_60
    aget v6, v6, v3

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v6, v0, p2, v11}, Lcom/google/android/gms/internal/ads/hv;->EQ(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_6

    :pswitch_61
    aget v6, v6, v3

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v6, v0, p2, v11}, Lcom/google/android/gms/internal/ads/hv;->Zo(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_6

    :pswitch_62
    aget v6, v6, v3

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v6, v0, p2, v11}, Lcom/google/android/gms/internal/ads/hv;->gn(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_6

    :pswitch_63
    aget v6, v6, v3

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v6, v0, p2, v11}, Lcom/google/android/gms/internal/ads/hv;->Hw(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_6

    :pswitch_64
    aget v6, v6, v3

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v6, v0, p2, v11}, Lcom/google/android/gms/internal/ads/hv;->FH(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_6

    :pswitch_65
    aget v6, v6, v3

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v6, v0, p2, v11}, Lcom/google/android/gms/internal/ads/hv;->DW(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_6

    :pswitch_66
    aget v6, v6, v3

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v6, v0, p2, v11}, Lcom/google/android/gms/internal/ads/hv;->j6(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_6

    :pswitch_67
    aget v6, v6, v3

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v6, v0, p2, v4}, Lcom/google/android/gms/internal/ads/hv;->v5(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_6

    :pswitch_68
    aget v6, v6, v3

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v6, v0, p2, v4}, Lcom/google/android/gms/internal/ads/hv;->tp(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_6

    :pswitch_69
    aget v6, v6, v3

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v6, v0, p2, v4}, Lcom/google/android/gms/internal/ads/hv;->VH(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_6

    :pswitch_6a
    aget v6, v6, v3

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v6, v0, p2, v4}, Lcom/google/android/gms/internal/ads/hv;->we(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_6

    :pswitch_6b
    aget v6, v6, v3

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v6, v0, p2, v4}, Lcom/google/android/gms/internal/ads/hv;->J0(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_6

    :pswitch_6c
    aget v6, v6, v3

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v6, v0, p2, v4}, Lcom/google/android/gms/internal/ads/hv;->u7(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_6

    :pswitch_6d
    aget v6, v6, v3

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v6, v0, p2}, Lcom/google/android/gms/internal/ads/hv;->DW(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;)V

    goto/16 :goto_6

    :pswitch_6e
    aget v6, v6, v3

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(I)Lcom/google/android/gms/internal/ads/fv;

    move-result-object v7

    invoke-static {v6, v0, p2, v7}, Lcom/google/android/gms/internal/ads/hv;->j6(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Lcom/google/android/gms/internal/ads/fv;)V

    goto/16 :goto_6

    :pswitch_6f
    aget v6, v6, v3

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v6, v0, p2}, Lcom/google/android/gms/internal/ads/hv;->j6(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;)V

    goto/16 :goto_6

    :pswitch_70
    aget v6, v6, v3

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v6, v0, p2, v4}, Lcom/google/android/gms/internal/ads/hv;->J8(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_6

    :pswitch_71
    aget v6, v6, v3

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v6, v0, p2, v4}, Lcom/google/android/gms/internal/ads/hv;->EQ(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_6

    :pswitch_72
    aget v6, v6, v3

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v6, v0, p2, v4}, Lcom/google/android/gms/internal/ads/hv;->Zo(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_6

    :pswitch_73
    aget v6, v6, v3

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v6, v0, p2, v4}, Lcom/google/android/gms/internal/ads/hv;->gn(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_6

    :pswitch_74
    aget v6, v6, v3

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v6, v0, p2, v4}, Lcom/google/android/gms/internal/ads/hv;->Hw(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_6

    :pswitch_75
    aget v6, v6, v3

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v6, v0, p2, v4}, Lcom/google/android/gms/internal/ads/hv;->FH(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_6

    :pswitch_76
    aget v6, v6, v3

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v6, v0, p2, v4}, Lcom/google/android/gms/internal/ads/hv;->DW(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_6

    :pswitch_77
    aget v6, v6, v3

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v6, v0, p2, v4}, Lcom/google/android/gms/internal/ads/hv;->j6(ILjava/util/List;Lcom/google/android/gms/internal/ads/Tv;Z)V

    goto/16 :goto_6

    :pswitch_78
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_6

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(I)Lcom/google/android/gms/internal/ads/fv;

    move-result-object v6

    invoke-interface {p2, v7, v0, v6}, Lcom/google/android/gms/internal/ads/Tv;->j6(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/fv;)V

    goto/16 :goto_6

    :pswitch_79
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_6

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->DW(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/android/gms/internal/ads/Tv;->v5(IJ)V

    goto/16 :goto_6

    :pswitch_7a
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_6

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {p2, v7, v0}, Lcom/google/android/gms/internal/ads/Tv;->DW(II)V

    goto/16 :goto_6

    :pswitch_7b
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_6

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->DW(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/android/gms/internal/ads/Tv;->FH(IJ)V

    goto/16 :goto_6

    :pswitch_7c
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_6

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {p2, v7, v0}, Lcom/google/android/gms/internal/ads/Tv;->FH(II)V

    goto/16 :goto_6

    :pswitch_7d
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_6

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {p2, v7, v0}, Lcom/google/android/gms/internal/ads/Tv;->Zo(II)V

    goto/16 :goto_6

    :pswitch_7e
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_6

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {p2, v7, v0}, Lcom/google/android/gms/internal/ads/Tv;->j6(II)V

    goto/16 :goto_6

    :pswitch_7f
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_6

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/yt;

    invoke-interface {p2, v7, v0}, Lcom/google/android/gms/internal/ads/Tv;->j6(ILcom/google/android/gms/internal/ads/yt;)V

    goto/16 :goto_6

    :pswitch_80
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_6

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(I)Lcom/google/android/gms/internal/ads/fv;

    move-result-object v6

    invoke-interface {p2, v7, v0, v6}, Lcom/google/android/gms/internal/ads/Tv;->DW(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/fv;)V

    goto/16 :goto_6

    :pswitch_81
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_6

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v7, v0, p2}, Lcom/google/android/gms/internal/ads/Tu;->j6(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/Tv;)V

    goto/16 :goto_6

    :pswitch_82
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_6

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->FH(Ljava/lang/Object;J)Z

    move-result v0

    invoke-interface {p2, v7, v0}, Lcom/google/android/gms/internal/ads/Tv;->j6(IZ)V

    goto/16 :goto_6

    :pswitch_83
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_6

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {p2, v7, v0}, Lcom/google/android/gms/internal/ads/Tv;->v5(II)V

    goto/16 :goto_6

    :pswitch_84
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_6

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->DW(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/android/gms/internal/ads/Tv;->Zo(IJ)V

    goto/16 :goto_6

    :pswitch_85
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_6

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {p2, v7, v0}, Lcom/google/android/gms/internal/ads/Tv;->Hw(II)V

    goto/16 :goto_6

    :pswitch_86
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_6

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->DW(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/android/gms/internal/ads/Tv;->DW(IJ)V

    goto/16 :goto_6

    :pswitch_87
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_6

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->DW(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/android/gms/internal/ads/Tv;->Hw(IJ)V

    goto/16 :goto_6

    :pswitch_88
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_6

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->Hw(Ljava/lang/Object;J)F

    move-result v0

    invoke-interface {p2, v7, v0}, Lcom/google/android/gms/internal/ads/Tv;->j6(IF)V

    goto/16 :goto_6

    :pswitch_89
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_6

    and-int/2addr v0, v10

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->v5(Ljava/lang/Object;J)D

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/android/gms/internal/ads/Tv;->j6(ID)V

    goto/16 :goto_6

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Tu;->aM:Lcom/google/android/gms/internal/ads/Vt;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Vt;->j6(Ljava/util/Map$Entry;)I

    throw v2

    :cond_9
    if-nez v1, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Tu;->XL:Lcom/google/android/gms/internal/ads/xv;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/Tu;->j6(Lcom/google/android/gms/internal/ads/xv;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/Tv;)V

    goto/16 :goto_3

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Tu;->aM:Lcom/google/android/gms/internal/ads/Vt;

    invoke-virtual {v0, p2, v1}, Lcom/google/android/gms/internal/ads/Vt;->j6(Lcom/google/android/gms/internal/ads/Tv;Ljava/util/Map$Entry;)V

    throw v2

    :cond_b
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/Tu;->DW(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/Tv;)V

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
    .end packed-switch
.end method

.method public final j6(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/ev;Lcom/google/android/gms/internal/ads/Ut;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/ads/ev;",
            "Lcom/google/android/gms/internal/ads/Ut;",
            ")V"
        }
    .end annotation

    if-eqz p3, :cond_18

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/Tu;->XL:Lcom/google/android/gms/internal/ads/xv;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Tu;->aM:Lcom/google/android/gms/internal/ads/Vt;

    const/4 v5, 0x0

    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/ev;->J0()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/Tu;->VH(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-gez v2, :cond_8

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_3

    iget v0, p0, Lcom/google/android/gms/internal/ads/Tu;->J0:I

    :goto_1
    iget v1, p0, Lcom/google/android/gms/internal/ads/Tu;->J8:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Tu;->we:[I

    aget v1, v1, v0

    invoke-direct {p0, p1, v1, v5, v6}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/xv;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    if-eqz v5, :cond_2

    invoke-virtual {v6, p1, v5}, Lcom/google/android/gms/internal/ads/xv;->DW(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    :try_start_1
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/Tu;->gn:Z

    if-nez v2, :cond_4

    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_5

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/Vt;->DW(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Yt;

    move-result-object v4

    move-object v1, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/Vt;->j6(Lcom/google/android/gms/internal/ads/ev;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/Ut;Lcom/google/android/gms/internal/ads/Yt;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/xv;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    throw v0

    :cond_4
    :try_start_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Tu;->VH:Lcom/google/android/gms/internal/ads/Pu;

    invoke-virtual {v0, p3, v2, v1}, Lcom/google/android/gms/internal/ads/Vt;->j6(Lcom/google/android/gms/internal/ads/Ut;Lcom/google/android/gms/internal/ads/Pu;I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_3

    :cond_5
    invoke-virtual {v6, p2}, Lcom/google/android/gms/internal/ads/xv;->j6(Lcom/google/android/gms/internal/ads/ev;)Z

    if-nez v5, :cond_6

    invoke-virtual {v6, p1}, Lcom/google/android/gms/internal/ads/xv;->FH(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    :cond_6
    invoke-virtual {v6, v5, p2}, Lcom/google/android/gms/internal/ads/xv;->j6(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/ev;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/Tu;->J0:I

    :goto_4
    iget v1, p0, Lcom/google/android/gms/internal/ads/Tu;->J8:I

    if-ge v0, v1, :cond_7

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Tu;->we:[I

    aget v1, v1, v0

    invoke-direct {p0, p1, v1, v5, v6}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/xv;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    if-eqz v5, :cond_2

    invoke-virtual {v6, p1, v5}, Lcom/google/android/gms/internal/ads/xv;->DW(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_8
    :try_start_3
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/Tu;->Hw(I)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v3

    const/high16 v4, 0xff00000

    and-int/2addr v4, v3

    ushr-int/lit8 v4, v4, 0x14

    packed-switch v4, :pswitch_data_0

    if-nez v5, :cond_9

    :try_start_4
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/xv;->j6()Ljava/lang/Object;

    move-result-object v5

    :cond_9
    invoke-virtual {v6, v5, p2}, Lcom/google/android/gms/internal/ads/xv;->j6(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/ev;)Z
    :try_end_4
    .catch Lcom/google/android/gms/internal/ads/qu; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/Tu;->J0:I

    :goto_5
    iget v1, p0, Lcom/google/android/gms/internal/ads/Tu;->J8:I

    if-ge v0, v1, :cond_14

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Tu;->we:[I

    aget v1, v1, v0

    invoke-direct {p0, p1, v1, v5, v6}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/xv;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :pswitch_0
    const v4, 0xfffff

    and-int/2addr v3, v4

    int-to-long v8, v3

    :try_start_5
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/Tu;->j6(I)Lcom/google/android/gms/internal/ads/fv;

    move-result-object v3

    invoke-interface {p2, v3, p3}, Lcom/google/android/gms/internal/ads/ev;->DW(Lcom/google/android/gms/internal/ads/fv;Lcom/google/android/gms/internal/ads/Ut;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v8, v9, v3}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/Tu;->DW(Ljava/lang/Object;II)V
    :try_end_5
    .catch Lcom/google/android/gms/internal/ads/qu; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    :try_start_6
    invoke-virtual {v6, p2}, Lcom/google/android/gms/internal/ads/xv;->j6(Lcom/google/android/gms/internal/ads/ev;)Z

    if-nez v5, :cond_a

    invoke-virtual {v6, p1}, Lcom/google/android/gms/internal/ads/xv;->FH(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    :cond_a
    invoke-virtual {v6, v5, p2}, Lcom/google/android/gms/internal/ads/xv;->j6(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/ev;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/Tu;->J0:I

    :goto_6
    iget v1, p0, Lcom/google/android/gms/internal/ads/Tu;->J8:I

    if-ge v0, v1, :cond_15

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Tu;->we:[I

    aget v1, v1, v0

    invoke-direct {p0, p1, v1, v5, v6}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/xv;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :pswitch_1
    const v4, 0xfffff

    and-int/2addr v3, v4

    int-to-long v8, v3

    :try_start_7
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/ev;->j6()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p1, v8, v9, v3}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/Tu;->DW(Ljava/lang/Object;II)V
    :try_end_7
    .catch Lcom/google/android/gms/internal/ads/qu; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    iget v0, p0, Lcom/google/android/gms/internal/ads/Tu;->J0:I

    :goto_7
    iget v2, p0, Lcom/google/android/gms/internal/ads/Tu;->J8:I

    if-ge v0, v2, :cond_16

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Tu;->we:[I

    aget v2, v2, v0

    invoke-direct {p0, p1, v2, v5, v6}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/xv;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :pswitch_2
    const v4, 0xfffff

    and-int/2addr v3, v4

    int-to-long v8, v3

    :try_start_8
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/ev;->FH()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1, v8, v9, v3}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/Tu;->DW(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_3
    const v4, 0xfffff

    and-int/2addr v3, v4

    int-to-long v8, v3

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/ev;->EQ()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p1, v8, v9, v3}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/Tu;->DW(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_4
    const v4, 0xfffff

    and-int/2addr v3, v4

    int-to-long v8, v3

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/ev;->tp()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1, v8, v9, v3}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/Tu;->DW(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_5
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/ev;->u7()I

    move-result v4

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/Tu;->FH(I)Lcom/google/android/gms/internal/ads/mu;

    move-result-object v7

    if-eqz v7, :cond_b

    invoke-interface {v7, v4}, Lcom/google/android/gms/internal/ads/mu;->j6(I)Z

    move-result v7

    if-eqz v7, :cond_c

    :cond_b
    const v7, 0xfffff

    and-int/2addr v3, v7

    int-to-long v8, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1, v8, v9, v3}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/Tu;->DW(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :cond_c
    invoke-static {v1, v4, v5, v6}, Lcom/google/android/gms/internal/ads/hv;->j6(IILjava/lang/Object;Lcom/google/android/gms/internal/ads/xv;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_0

    :pswitch_6
    const v4, 0xfffff

    and-int/2addr v3, v4

    int-to-long v8, v3

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/ev;->gn()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1, v8, v9, v3}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/Tu;->DW(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_7
    const v4, 0xfffff

    and-int/2addr v3, v4

    int-to-long v8, v3

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/ev;->QX()Lcom/google/android/gms/internal/ads/yt;

    move-result-object v3

    invoke-static {p1, v8, v9, v3}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/Tu;->DW(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_8
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_d

    const v4, 0xfffff

    and-int/2addr v3, v4

    int-to-long v8, v3

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/Tu;->j6(I)Lcom/google/android/gms/internal/ads/fv;

    move-result-object v4

    invoke-interface {p2, v4, p3}, Lcom/google/android/gms/internal/ads/ev;->j6(Lcom/google/android/gms/internal/ads/fv;Lcom/google/android/gms/internal/ads/Ut;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/ju;->j6(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v8, v9, v3}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_8
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/Tu;->DW(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :cond_d
    const v4, 0xfffff

    and-int/2addr v3, v4

    int-to-long v8, v3

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/Tu;->j6(I)Lcom/google/android/gms/internal/ads/fv;

    move-result-object v3

    invoke-interface {p2, v3, p3}, Lcom/google/android/gms/internal/ads/ev;->j6(Lcom/google/android/gms/internal/ads/fv;Lcom/google/android/gms/internal/ads/Ut;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v8, v9, v3}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/Tu;->DW(Ljava/lang/Object;I)V

    goto :goto_8

    :pswitch_9
    invoke-direct {p0, p1, v3, p2}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/ev;)V

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/Tu;->DW(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_a
    const v4, 0xfffff

    and-int/2addr v3, v4

    int-to-long v8, v3

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/ev;->we()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p1, v8, v9, v3}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/Tu;->DW(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_b
    const v4, 0xfffff

    and-int/2addr v3, v4

    int-to-long v8, v3

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/ev;->VH()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1, v8, v9, v3}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/Tu;->DW(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_c
    const v4, 0xfffff

    and-int/2addr v3, v4

    int-to-long v8, v3

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/ev;->Zo()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p1, v8, v9, v3}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/Tu;->DW(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_d
    const v4, 0xfffff

    and-int/2addr v3, v4

    int-to-long v8, v3

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/ev;->Hw()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1, v8, v9, v3}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/Tu;->DW(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_e
    const v4, 0xfffff

    and-int/2addr v3, v4

    int-to-long v8, v3

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/ev;->DW()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p1, v8, v9, v3}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/Tu;->DW(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_f
    const v4, 0xfffff

    and-int/2addr v3, v4

    int-to-long v8, v3

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/ev;->v5()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p1, v8, v9, v3}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/Tu;->DW(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_10
    const v4, 0xfffff

    and-int/2addr v3, v4

    int-to-long v8, v3

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/ev;->readFloat()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {p1, v8, v9, v3}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/Tu;->DW(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_11
    const v4, 0xfffff

    and-int/2addr v3, v4

    int-to-long v8, v3

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/ev;->readDouble()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {p1, v8, v9, v3}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/Tu;->DW(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_12
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/Tu;->DW(I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/Tu;->Hw(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v8, v1

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_e

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Tu;->j3:Lcom/google/android/gms/internal/ads/Ku;

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/Ku;->DW(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Tu;->j3:Lcom/google/android/gms/internal/ads/Ku;

    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/Ku;->Hw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Tu;->j3:Lcom/google/android/gms/internal/ads/Ku;

    invoke-interface {v4, v1, v2}, Lcom/google/android/gms/internal/ads/Ku;->j6(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v8, v9, v1}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_9
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Tu;->j3:Lcom/google/android/gms/internal/ads/Ku;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/Ku;->FH(Ljava/lang/Object;)Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Tu;->j3:Lcom/google/android/gms/internal/ads/Ku;

    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/Ku;->v5(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Iu;
    :try_end_8
    .catch Lcom/google/android/gms/internal/ads/qu; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const/4 v0, 0x0

    throw v0

    :cond_e
    :try_start_9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Tu;->j3:Lcom/google/android/gms/internal/ads/Ku;

    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/Ku;->Hw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v8, v9, v1}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_9

    :pswitch_13
    const v1, 0xfffff

    and-int/2addr v1, v3

    int-to-long v8, v1

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/Tu;->j6(I)Lcom/google/android/gms/internal/ads/fv;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Tu;->QX:Lcom/google/android/gms/internal/ads/zu;

    invoke-virtual {v2, p1, v8, v9}, Lcom/google/android/gms/internal/ads/zu;->j6(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    invoke-interface {p2, v2, v1, p3}, Lcom/google/android/gms/internal/ads/ev;->DW(Ljava/util/List;Lcom/google/android/gms/internal/ads/fv;Lcom/google/android/gms/internal/ads/Ut;)V

    goto/16 :goto_0

    :pswitch_14
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Tu;->QX:Lcom/google/android/gms/internal/ads/zu;

    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zu;->j6(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/ev;->J8(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_15
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Tu;->QX:Lcom/google/android/gms/internal/ads/zu;

    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zu;->j6(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/ev;->J0(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_16
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Tu;->QX:Lcom/google/android/gms/internal/ads/zu;

    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zu;->j6(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/ev;->QX(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_17
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Tu;->QX:Lcom/google/android/gms/internal/ads/zu;

    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zu;->j6(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/ev;->Ws(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_18
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Tu;->QX:Lcom/google/android/gms/internal/ads/zu;

    const v7, 0xfffff

    and-int/2addr v3, v7

    int-to-long v8, v3

    invoke-virtual {v4, p1, v8, v9}, Lcom/google/android/gms/internal/ads/zu;->j6(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-interface {p2, v3}, Lcom/google/android/gms/internal/ads/ev;->XL(Ljava/util/List;)V

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/Tu;->FH(I)Lcom/google/android/gms/internal/ads/mu;

    move-result-object v2

    invoke-static {v1, v3, v2, v5, v6}, Lcom/google/android/gms/internal/ads/hv;->j6(ILjava/util/List;Lcom/google/android/gms/internal/ads/mu;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/xv;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_0

    :pswitch_19
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Tu;->QX:Lcom/google/android/gms/internal/ads/zu;

    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zu;->j6(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/ev;->we(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_1a
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Tu;->QX:Lcom/google/android/gms/internal/ads/zu;

    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zu;->j6(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/ev;->DW(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_1b
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Tu;->QX:Lcom/google/android/gms/internal/ads/zu;

    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zu;->j6(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/ev;->v5(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_1c
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Tu;->QX:Lcom/google/android/gms/internal/ads/zu;

    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zu;->j6(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/ev;->Zo(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_1d
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Tu;->QX:Lcom/google/android/gms/internal/ads/zu;

    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zu;->j6(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/ev;->FH(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_1e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Tu;->QX:Lcom/google/android/gms/internal/ads/zu;

    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zu;->j6(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/ev;->gn(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_1f
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Tu;->QX:Lcom/google/android/gms/internal/ads/zu;

    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zu;->j6(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/ev;->Hw(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_20
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Tu;->QX:Lcom/google/android/gms/internal/ads/zu;

    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zu;->j6(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/ev;->u7(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_21
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Tu;->QX:Lcom/google/android/gms/internal/ads/zu;

    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zu;->j6(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/ev;->VH(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_22
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Tu;->QX:Lcom/google/android/gms/internal/ads/zu;

    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zu;->j6(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/ev;->J8(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_23
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Tu;->QX:Lcom/google/android/gms/internal/ads/zu;

    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zu;->j6(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/ev;->J0(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_24
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Tu;->QX:Lcom/google/android/gms/internal/ads/zu;

    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zu;->j6(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/ev;->QX(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_25
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Tu;->QX:Lcom/google/android/gms/internal/ads/zu;

    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zu;->j6(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/ev;->Ws(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_26
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Tu;->QX:Lcom/google/android/gms/internal/ads/zu;

    const v7, 0xfffff

    and-int/2addr v3, v7

    int-to-long v8, v3

    invoke-virtual {v4, p1, v8, v9}, Lcom/google/android/gms/internal/ads/zu;->j6(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-interface {p2, v3}, Lcom/google/android/gms/internal/ads/ev;->XL(Ljava/util/List;)V

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/Tu;->FH(I)Lcom/google/android/gms/internal/ads/mu;

    move-result-object v2

    invoke-static {v1, v3, v2, v5, v6}, Lcom/google/android/gms/internal/ads/hv;->j6(ILjava/util/List;Lcom/google/android/gms/internal/ads/mu;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/xv;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_0

    :pswitch_27
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Tu;->QX:Lcom/google/android/gms/internal/ads/zu;

    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zu;->j6(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/ev;->we(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_28
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Tu;->QX:Lcom/google/android/gms/internal/ads/zu;

    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zu;->j6(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/ev;->EQ(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_29
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/Tu;->j6(I)Lcom/google/android/gms/internal/ads/fv;

    move-result-object v1

    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Tu;->QX:Lcom/google/android/gms/internal/ads/zu;

    invoke-virtual {v4, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zu;->j6(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    invoke-interface {p2, v2, v1, p3}, Lcom/google/android/gms/internal/ads/ev;->j6(Ljava/util/List;Lcom/google/android/gms/internal/ads/fv;Lcom/google/android/gms/internal/ads/Ut;)V

    goto/16 :goto_0

    :pswitch_2a
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/Tu;->Zo(I)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Tu;->QX:Lcom/google/android/gms/internal/ads/zu;

    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zu;->j6(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/ev;->j6(Ljava/util/List;)V

    goto/16 :goto_0

    :cond_f
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Tu;->QX:Lcom/google/android/gms/internal/ads/zu;

    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zu;->j6(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/ev;->tp(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_2b
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Tu;->QX:Lcom/google/android/gms/internal/ads/zu;

    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zu;->j6(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/ev;->DW(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_2c
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Tu;->QX:Lcom/google/android/gms/internal/ads/zu;

    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zu;->j6(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/ev;->v5(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_2d
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Tu;->QX:Lcom/google/android/gms/internal/ads/zu;

    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zu;->j6(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/ev;->Zo(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_2e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Tu;->QX:Lcom/google/android/gms/internal/ads/zu;

    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zu;->j6(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/ev;->FH(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_2f
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Tu;->QX:Lcom/google/android/gms/internal/ads/zu;

    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zu;->j6(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/ev;->gn(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_30
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Tu;->QX:Lcom/google/android/gms/internal/ads/zu;

    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zu;->j6(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/ev;->Hw(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_31
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Tu;->QX:Lcom/google/android/gms/internal/ads/zu;

    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zu;->j6(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/ev;->u7(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_32
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Tu;->QX:Lcom/google/android/gms/internal/ads/zu;

    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zu;->j6(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/ev;->VH(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_33
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_10

    const v1, 0xfffff

    and-int/2addr v1, v3

    int-to-long v8, v1

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/Tu;->j6(I)Lcom/google/android/gms/internal/ads/fv;

    move-result-object v2

    invoke-interface {p2, v2, p3}, Lcom/google/android/gms/internal/ads/ev;->DW(Lcom/google/android/gms/internal/ads/fv;Lcom/google/android/gms/internal/ads/Ut;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/ju;->j6(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v8, v9, v1}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_0

    :cond_10
    const v1, 0xfffff

    and-int/2addr v1, v3

    int-to-long v8, v1

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/Tu;->j6(I)Lcom/google/android/gms/internal/ads/fv;

    move-result-object v1

    invoke-interface {p2, v1, p3}, Lcom/google/android/gms/internal/ads/ev;->DW(Lcom/google/android/gms/internal/ads/fv;Lcom/google/android/gms/internal/ads/Ut;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v8, v9, v1}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/Tu;->DW(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_34
    const v1, 0xfffff

    and-int/2addr v1, v3

    int-to-long v8, v1

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/ev;->j6()J

    move-result-wide v10

    invoke-static {p1, v8, v9, v10, v11}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/Tu;->DW(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_35
    const v1, 0xfffff

    and-int/2addr v1, v3

    int-to-long v8, v1

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/ev;->FH()I

    move-result v1

    invoke-static {p1, v8, v9, v1}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/Tu;->DW(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_36
    const v1, 0xfffff

    and-int/2addr v1, v3

    int-to-long v8, v1

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/ev;->EQ()J

    move-result-wide v10

    invoke-static {p1, v8, v9, v10, v11}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/Tu;->DW(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_37
    const v1, 0xfffff

    and-int/2addr v1, v3

    int-to-long v8, v1

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/ev;->tp()I

    move-result v1

    invoke-static {p1, v8, v9, v1}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/Tu;->DW(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_38
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/ev;->u7()I

    move-result v4

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/Tu;->FH(I)Lcom/google/android/gms/internal/ads/mu;

    move-result-object v7

    if-eqz v7, :cond_11

    invoke-interface {v7, v4}, Lcom/google/android/gms/internal/ads/mu;->j6(I)Z

    move-result v7

    if-eqz v7, :cond_12

    :cond_11
    const v1, 0xfffff

    and-int/2addr v1, v3

    int-to-long v8, v1

    invoke-static {p1, v8, v9, v4}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/Tu;->DW(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :cond_12
    invoke-static {v1, v4, v5, v6}, Lcom/google/android/gms/internal/ads/hv;->j6(IILjava/lang/Object;Lcom/google/android/gms/internal/ads/xv;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_0

    :pswitch_39
    const v1, 0xfffff

    and-int/2addr v1, v3

    int-to-long v8, v1

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/ev;->gn()I

    move-result v1

    invoke-static {p1, v8, v9, v1}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/Tu;->DW(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_3a
    const v1, 0xfffff

    and-int/2addr v1, v3

    int-to-long v8, v1

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/ev;->QX()Lcom/google/android/gms/internal/ads/yt;

    move-result-object v1

    invoke-static {p1, v8, v9, v1}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/Tu;->DW(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_3b
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_13

    const v1, 0xfffff

    and-int/2addr v1, v3

    int-to-long v8, v1

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/Tu;->j6(I)Lcom/google/android/gms/internal/ads/fv;

    move-result-object v2

    invoke-interface {p2, v2, p3}, Lcom/google/android/gms/internal/ads/ev;->j6(Lcom/google/android/gms/internal/ads/fv;Lcom/google/android/gms/internal/ads/Ut;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/ju;->j6(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v8, v9, v1}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_0

    :cond_13
    const v1, 0xfffff

    and-int/2addr v1, v3

    int-to-long v8, v1

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/Tu;->j6(I)Lcom/google/android/gms/internal/ads/fv;

    move-result-object v1

    invoke-interface {p2, v1, p3}, Lcom/google/android/gms/internal/ads/ev;->j6(Lcom/google/android/gms/internal/ads/fv;Lcom/google/android/gms/internal/ads/Ut;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v8, v9, v1}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/Tu;->DW(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_3c
    invoke-direct {p0, p1, v3, p2}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/ev;)V

    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/Tu;->DW(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_3d
    const v1, 0xfffff

    and-int/2addr v1, v3

    int-to-long v8, v1

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/ev;->we()Z

    move-result v1

    invoke-static {p1, v8, v9, v1}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;JZ)V

    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/Tu;->DW(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_3e
    const v1, 0xfffff

    and-int/2addr v1, v3

    int-to-long v8, v1

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/ev;->VH()I

    move-result v1

    invoke-static {p1, v8, v9, v1}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/Tu;->DW(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_3f
    const v1, 0xfffff

    and-int/2addr v1, v3

    int-to-long v8, v1

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/ev;->Zo()J

    move-result-wide v10

    invoke-static {p1, v8, v9, v10, v11}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/Tu;->DW(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_40
    const v1, 0xfffff

    and-int/2addr v1, v3

    int-to-long v8, v1

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/ev;->Hw()I

    move-result v1

    invoke-static {p1, v8, v9, v1}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/Tu;->DW(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_41
    const v1, 0xfffff

    and-int/2addr v1, v3

    int-to-long v8, v1

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/ev;->DW()J

    move-result-wide v10

    invoke-static {p1, v8, v9, v10, v11}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/Tu;->DW(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_42
    const v1, 0xfffff

    and-int/2addr v1, v3

    int-to-long v8, v1

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/ev;->v5()J

    move-result-wide v10

    invoke-static {p1, v8, v9, v10, v11}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/Tu;->DW(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_43
    const v1, 0xfffff

    and-int/2addr v1, v3

    int-to-long v8, v1

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/ev;->readFloat()F

    move-result v1

    invoke-static {p1, v8, v9, v1}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;JF)V

    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/Tu;->DW(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_44
    const v1, 0xfffff

    and-int/2addr v1, v3

    int-to-long v8, v1

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/ev;->readDouble()D

    move-result-wide v10

    invoke-static {p1, v8, v9, v10, v11}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;JD)V

    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/Tu;->DW(Ljava/lang/Object;I)V
    :try_end_9
    .catch Lcom/google/android/gms/internal/ads/qu; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    :cond_14
    if-eqz v5, :cond_2

    invoke-virtual {v6, p1, v5}, Lcom/google/android/gms/internal/ads/xv;->DW(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_15
    if-eqz v5, :cond_2

    invoke-virtual {v6, p1, v5}, Lcom/google/android/gms/internal/ads/xv;->DW(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_16
    if-eqz v5, :cond_17

    invoke-virtual {v6, p1, v5}, Lcom/google/android/gms/internal/ads/xv;->DW(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_17
    throw v1

    :cond_18
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_19
    move-object v1, v2

    goto/16 :goto_9

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final j6(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    if-eqz p2, :cond_3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Tu;->FH:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Tu;->Hw(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v2, v1

    int-to-long v2, v2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Tu;->FH:[I

    aget v4, v4, v0

    const/high16 v5, 0xff00000

    and-int/2addr v1, v5

    ushr-int/lit8 v1, v1, 0x14

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/Tu;->DW(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, p2, v4, v0}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v4, v0}, Lcom/google/android/gms/internal/ads/Tu;->DW(Ljava/lang/Object;II)V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/Tu;->DW(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_3
    invoke-direct {p0, p2, v4, v0}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v4, v0}, Lcom/google/android/gms/internal/ads/Tu;->DW(Ljava/lang/Object;II)V

    goto :goto_1

    :pswitch_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Tu;->j3:Lcom/google/android/gms/internal/ads/Ku;

    invoke-static {v1, p1, p2, v2, v3}, Lcom/google/android/gms/internal/ads/hv;->j6(Lcom/google/android/gms/internal/ads/Ku;Ljava/lang/Object;Ljava/lang/Object;J)V

    goto :goto_1

    :pswitch_5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Tu;->QX:Lcom/google/android/gms/internal/ads/zu;

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/google/android/gms/internal/ads/zu;->j6(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto :goto_1

    :pswitch_6
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_7
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/Ev;->DW(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Tu;->DW(Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_8
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Tu;->DW(Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_9
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/Ev;->DW(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Tu;->DW(Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_a
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Tu;->DW(Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_b
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Tu;->DW(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_c
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Tu;->DW(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_d
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Tu;->DW(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_e
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_f
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/Ev;->Zo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Tu;->DW(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_10
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/Ev;->FH(Ljava/lang/Object;J)Z

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;JZ)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Tu;->DW(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_11
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Tu;->DW(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_12
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/Ev;->DW(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Tu;->DW(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_13
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Tu;->DW(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_14
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/Ev;->DW(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Tu;->DW(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_15
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/Ev;->DW(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Tu;->DW(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_16
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/Ev;->Hw(Ljava/lang/Object;J)F

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;JF)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Tu;->DW(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_17
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/Ev;->v5(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;JD)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Tu;->DW(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Tu;->tp:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Tu;->XL:Lcom/google/android/gms/internal/ads/xv;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/hv;->j6(Lcom/google/android/gms/internal/ads/xv;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Tu;->gn:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Tu;->aM:Lcom/google/android/gms/internal/ads/Vt;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/hv;->j6(Lcom/google/android/gms/internal/ads/Vt;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final j6(Ljava/lang/Object;[BIILcom/google/android/gms/internal/ads/vt;)V
    .registers 38
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/google/android/gms/internal/ads/vt;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/Tu;->tp:Z

    if-eqz v2, :cond_f

    sget-object v2, Lcom/google/android/gms/internal/ads/Tu;->DW:Lsun/misc/Unsafe;

    const/4 v12, -0x1

    const/4 v14, 0x0

    move-object/from16 v10, p5

    move-object/from16 v15, p2

    move-object/from16 v16, p1

    move-object/from16 v18, p0

    move/from16 v17, v12

    move/from16 v19, p4

    :goto_0
    move/from16 v0, p3

    move/from16 v1, v19

    if-ge v0, v1, :cond_d

    add-int/lit8 v9, p3, 0x1

    aget-byte v11, v15, p3

    if-gez v11, :cond_0

    invoke-static {v11, v15, v9, v10}, Lcom/google/android/gms/internal/ads/ut;->j6(I[BILcom/google/android/gms/internal/ads/vt;)I

    move-result v9

    iget v11, v10, Lcom/google/android/gms/internal/ads/vt;->j6:I

    :cond_0
    ushr-int/lit8 v12, v11, 0x3

    and-int/lit8 v13, v11, 0x7

    move/from16 v0, v17

    if-le v12, v0, :cond_2

    div-int/lit8 v3, v14, 0x3

    move-object/from16 v0, v18

    invoke-direct {v0, v12, v3}, Lcom/google/android/gms/internal/ads/Tu;->j6(II)I

    move-result v14

    :goto_1
    const/4 v3, -0x1

    if-ne v14, v3, :cond_3

    const/4 v14, 0x0

    move v5, v9

    :goto_2
    move v3, v11

    move-object/from16 v4, p2

    move/from16 v6, p4

    move-object/from16 v7, p1

    move-object/from16 v8, p5

    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/Tu;->j6(I[BIILjava/lang/Object;Lcom/google/android/gms/internal/ads/vt;)I

    move-result v3

    :cond_1
    move-object/from16 v4, p5

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    move-object/from16 v7, p0

    move/from16 v8, p4

    :goto_3
    move-object v10, v4

    move-object v15, v5

    move-object/from16 v16, v6

    move-object/from16 v18, v7

    move/from16 v17, v12

    move/from16 v19, v8

    move/from16 p3, v3

    goto :goto_0

    :cond_2
    move-object/from16 v0, v18

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/ads/Tu;->VH(I)I

    move-result v14

    goto :goto_1

    :cond_3
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/Tu;->FH:[I

    add-int/lit8 v4, v14, 0x1

    aget v26, v3, v4

    const/high16 v3, 0xff00000

    and-int v3, v3, v26

    ushr-int/lit8 v17, v3, 0x14

    const v3, 0xfffff

    and-int v3, v3, v26

    int-to-long v4, v3

    const/16 v3, 0x11

    move/from16 v0, v17

    if-gt v0, v3, :cond_8

    const/4 v3, 0x1

    packed-switch v17, :pswitch_data_0

    :cond_4
    move v5, v9

    goto :goto_2

    :pswitch_0
    if-nez v13, :cond_4

    invoke-static {v15, v9, v10}, Lcom/google/android/gms/internal/ads/ut;->DW([BILcom/google/android/gms/internal/ads/vt;)I

    move-result v8

    iget-wide v6, v10, Lcom/google/android/gms/internal/ads/vt;->DW:J

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/Kt;->j6(J)J

    move-result-wide v6

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move v3, v8

    :goto_4
    move-object v4, v10

    move-object v5, v15

    move-object/from16 v6, v16

    move-object/from16 v7, v18

    move/from16 v8, v19

    goto :goto_3

    :pswitch_1
    if-nez v13, :cond_4

    invoke-static {v15, v9, v10}, Lcom/google/android/gms/internal/ads/ut;->j6([BILcom/google/android/gms/internal/ads/vt;)I

    move-result v3

    iget v6, v10, Lcom/google/android/gms/internal/ads/vt;->j6:I

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/Kt;->VH(I)I

    move-result v6

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v4, v5, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_4

    :pswitch_2
    if-nez v13, :cond_4

    invoke-static {v15, v9, v10}, Lcom/google/android/gms/internal/ads/ut;->j6([BILcom/google/android/gms/internal/ads/vt;)I

    move-result v3

    iget v6, v10, Lcom/google/android/gms/internal/ads/vt;->j6:I

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v4, v5, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_4

    :pswitch_3
    const/4 v3, 0x2

    if-ne v13, v3, :cond_4

    invoke-static {v15, v9, v10}, Lcom/google/android/gms/internal/ads/ut;->v5([BILcom/google/android/gms/internal/ads/vt;)I

    move-result v3

    iget-object v6, v10, Lcom/google/android/gms/internal/ads/vt;->FH:Ljava/lang/Object;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v4, v5, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_5
    move-object v4, v10

    move-object v5, v15

    move-object/from16 v6, v16

    move-object/from16 v7, v18

    move/from16 v8, v19

    goto/16 :goto_3

    :pswitch_4
    const/4 v3, 0x2

    if-ne v13, v3, :cond_4

    move-object/from16 v0, v18

    invoke-direct {v0, v14}, Lcom/google/android/gms/internal/ads/Tu;->j6(I)Lcom/google/android/gms/internal/ads/fv;

    move-result-object v3

    move/from16 v0, v19

    invoke-static {v3, v15, v9, v0, v10}, Lcom/google/android/gms/internal/ads/Tu;->j6(Lcom/google/android/gms/internal/ads/fv;[BIILcom/google/android/gms/internal/ads/vt;)I

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_5

    iget-object v6, v10, Lcom/google/android/gms/internal/ads/vt;->FH:Ljava/lang/Object;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v4, v5, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    :cond_5
    iget-object v7, v10, Lcom/google/android/gms/internal/ads/vt;->FH:Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/ju;->j6(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v4, v5, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    :pswitch_5
    const/4 v3, 0x2

    if-ne v13, v3, :cond_4

    const/high16 v3, 0x20000000

    and-int v3, v3, v26

    if-nez v3, :cond_6

    invoke-static {v15, v9, v10}, Lcom/google/android/gms/internal/ads/ut;->FH([BILcom/google/android/gms/internal/ads/vt;)I

    move-result v3

    :goto_6
    iget-object v6, v10, Lcom/google/android/gms/internal/ads/vt;->FH:Ljava/lang/Object;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v4, v5, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    :cond_6
    invoke-static {v15, v9, v10}, Lcom/google/android/gms/internal/ads/ut;->Hw([BILcom/google/android/gms/internal/ads/vt;)I

    move-result v3

    goto :goto_6

    :pswitch_6
    if-nez v13, :cond_4

    invoke-static {v15, v9, v10}, Lcom/google/android/gms/internal/ads/ut;->DW([BILcom/google/android/gms/internal/ads/vt;)I

    move-result v6

    iget-wide v8, v10, Lcom/google/android/gms/internal/ads/vt;->DW:J

    const-wide/16 v20, 0x0

    cmp-long v7, v8, v20

    if-eqz v7, :cond_7

    :goto_7
    move-object/from16 v0, v16

    invoke-static {v0, v4, v5, v3}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;JZ)V

    move v3, v6

    goto :goto_5

    :cond_7
    const/4 v3, 0x0

    goto :goto_7

    :pswitch_7
    const/4 v3, 0x5

    if-ne v13, v3, :cond_4

    invoke-static {v15, v9}, Lcom/google/android/gms/internal/ads/ut;->j6([BI)I

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v4, v5, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v3, v9, 0x4

    goto :goto_5

    :pswitch_8
    const/4 v3, 0x1

    if-ne v13, v3, :cond_4

    invoke-static {v15, v9}, Lcom/google/android/gms/internal/ads/ut;->DW([BI)J

    move-result-wide v6

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    :goto_8
    add-int/lit8 v3, v9, 0x8

    goto/16 :goto_4

    :pswitch_9
    if-nez v13, :cond_4

    invoke-static {v15, v9, v10}, Lcom/google/android/gms/internal/ads/ut;->j6([BILcom/google/android/gms/internal/ads/vt;)I

    move-result v3

    iget v6, v10, Lcom/google/android/gms/internal/ads/vt;->j6:I

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v4, v5, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_4

    :pswitch_a
    if-nez v13, :cond_4

    invoke-static {v15, v9, v10}, Lcom/google/android/gms/internal/ads/ut;->DW([BILcom/google/android/gms/internal/ads/vt;)I

    move-result v8

    iget-wide v6, v10, Lcom/google/android/gms/internal/ads/vt;->DW:J

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move v3, v8

    goto/16 :goto_4

    :pswitch_b
    const/4 v3, 0x5

    if-ne v13, v3, :cond_4

    invoke-static {v15, v9}, Lcom/google/android/gms/internal/ads/ut;->Hw([BI)F

    move-result v3

    move-object/from16 v0, v16

    invoke-static {v0, v4, v5, v3}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;JF)V

    add-int/lit8 v3, v9, 0x4

    goto/16 :goto_4

    :pswitch_c
    const/4 v3, 0x1

    if-ne v13, v3, :cond_4

    invoke-static {v15, v9}, Lcom/google/android/gms/internal/ads/ut;->FH([BI)D

    move-result-wide v6

    move-object/from16 v0, v16

    invoke-static {v0, v4, v5, v6, v7}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;JD)V

    goto :goto_8

    :cond_8
    const/16 v3, 0x1b

    move/from16 v0, v17

    if-ne v0, v3, :cond_a

    const/4 v3, 0x2

    if-ne v13, v3, :cond_4

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/ou;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/ou;->j3()Z

    move-result v6

    if-nez v6, :cond_10

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_9

    const/16 v6, 0xa

    :goto_9
    invoke-interface {v3, v6}, Lcom/google/android/gms/internal/ads/ou;->j6(I)Lcom/google/android/gms/internal/ads/ou;

    move-result-object v8

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v4, v5, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_a
    move-object/from16 v0, v18

    invoke-direct {v0, v14}, Lcom/google/android/gms/internal/ads/Tu;->j6(I)Lcom/google/android/gms/internal/ads/fv;

    move-result-object v3

    move v4, v11

    move-object/from16 v5, p2

    move v6, v9

    move/from16 v7, p4

    move-object/from16 v9, p5

    invoke-static/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/Tu;->j6(Lcom/google/android/gms/internal/ads/fv;I[BIILcom/google/android/gms/internal/ads/ou;Lcom/google/android/gms/internal/ads/vt;)I

    move-result v3

    move-object v4, v10

    move-object v5, v15

    move-object/from16 v6, v16

    move-object/from16 v7, v18

    move/from16 v8, v19

    goto/16 :goto_3

    :cond_9
    shl-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_a
    const/16 v3, 0x31

    move/from16 v0, v17

    if-gt v0, v3, :cond_b

    move/from16 v0, v26

    int-to-long v15, v0

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v10, p4

    move-wide/from16 v18, v4

    move-object/from16 v20, p5

    invoke-direct/range {v6 .. v20}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/ads/vt;)I

    move-result v3

    if-ne v3, v9, :cond_1

    :goto_b
    move v5, v3

    goto/16 :goto_2

    :cond_b
    const/16 v3, 0x32

    move/from16 v0, v17

    if-ne v0, v3, :cond_c

    const/4 v3, 0x2

    if-ne v13, v3, :cond_4

    move-object/from16 v16, p0

    move-object/from16 v17, p1

    move-object/from16 v18, p2

    move/from16 v19, v9

    move/from16 v20, p4

    move/from16 v21, v14

    move-wide/from16 v22, v4

    move-object/from16 v24, p5

    invoke-direct/range {v16 .. v24}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/ads/vt;)I

    const/4 v2, 0x0

    throw v2

    :cond_c
    move-object/from16 v18, p0

    move-object/from16 v19, p1

    move-object/from16 v20, p2

    move/from16 v21, v9

    move/from16 v22, p4

    move/from16 v23, v11

    move/from16 v24, v12

    move/from16 v25, v13

    move/from16 v27, v17

    move-wide/from16 v28, v4

    move/from16 v30, v14

    move-object/from16 v31, p5

    invoke-direct/range {v18 .. v31}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/ads/vt;)I

    move-result v3

    if-ne v3, v9, :cond_1

    goto :goto_b

    :cond_d
    move/from16 v0, p3

    move/from16 v1, v19

    if-ne v0, v1, :cond_e

    :goto_c
    return-void

    :cond_e
    invoke-static {}, Lcom/google/android/gms/internal/ads/pu;->gn()Lcom/google/android/gms/internal/ads/pu;

    move-result-object v2

    throw v2

    :cond_f
    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/Tu;->j6(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/ads/vt;)I

    goto :goto_c

    :cond_10
    move-object v8, v3

    goto/16 :goto_a

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
