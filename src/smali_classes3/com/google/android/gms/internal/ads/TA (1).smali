.class public final Lcom/google/android/gms/internal/ads/TA;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/TA$a;
    }
.end annotation


# static fields
.field private static final DW:Ljava/util/regex/Pattern;

.field private static final FH:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/google/android/gms/internal/ads/TA$a;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/NA;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final Hw:Landroid/util/SparseIntArray;

.field private static VH:I

.field private static final Zo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final j6:Lcom/google/android/gms/internal/ads/NA;

.field private static final v5:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    const-string v0, "OMX.google.raw.decoder"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/NA;->j6(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/NA;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/TA;->j6:Lcom/google/android/gms/internal/ads/NA;

    const-string v0, "^\\D?(\\d+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/TA;->DW:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/TA;->FH:Ljava/util/HashMap;

    const/4 v0, -0x1

    sput v0, Lcom/google/android/gms/internal/ads/TA;->VH:I

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/TA;->Hw:Landroid/util/SparseIntArray;

    const/16 v1, 0x42

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0x4d

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0x58

    const/4 v4, 0x4

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0x64

    const/16 v5, 0x8

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/TA;->v5:Landroid/util/SparseIntArray;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0xd

    const/16 v6, 0x10

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0x14

    const/16 v7, 0x20

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0x15

    const/16 v8, 0x40

    invoke-virtual {v0, v1, v8}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0x16

    const/16 v9, 0x80

    invoke-virtual {v0, v1, v9}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0x1e

    const/16 v10, 0x100

    invoke-virtual {v0, v1, v10}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0x1f

    const/16 v11, 0x200

    invoke-virtual {v0, v1, v11}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0x400

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v12, 0x28

    const/16 v13, 0x800

    invoke-virtual {v0, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v12, 0x29

    const/16 v14, 0x1000

    invoke-virtual {v0, v12, v14}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v12, 0x2a

    const/16 v15, 0x2000

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v12, 0x32

    const/16 v15, 0x4000

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v12, 0x33

    const v13, 0x8000

    invoke-virtual {v0, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v12, 0x34

    const/high16 v13, 0x10000

    invoke-virtual {v0, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/TA;->Zo:Ljava/util/Map;

    const-string v12, "L30"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "L60"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "L63"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "L90"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "L93"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "L120"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "L123"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "L150"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "L153"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v1, 0x40000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "L156"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v1, 0x100000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "L180"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v1, 0x400000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "L183"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v1, 0x1000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "L186"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "H30"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "H60"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "H63"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "H90"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "H93"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "H120"

    const/16 v2, 0x800

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "H123"

    const/16 v2, 0x2000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "H150"

    const v2, 0x8000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v1, 0x20000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "H153"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v1, 0x80000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "H156"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v1, 0x200000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "H180"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v1, 0x800000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "H183"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v1, 0x2000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "H186"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static DW()I
    .registers 7

    sget v0, Lcom/google/android/gms/internal/ads/TA;->VH:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_61

    const-string v0, "video/avc"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/TA;->j6(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/NA;

    move-result-object v0

    if-eqz v0, :cond_5f

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/NA;->j6()[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x0

    :goto_14
    if-ge v2, v3, :cond_4e

    aget-object v5, v0, v2

    iget v5, v5, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_45

    const/4 v6, 0x2

    if-eq v5, v6, :cond_45

    sparse-switch v5, :sswitch_data_64

    const/4 v5, -0x1

    goto :goto_47

    :sswitch_25
    const/high16 v5, 0x900000

    goto :goto_47

    :sswitch_28
    const v5, 0x564000

    goto :goto_47

    :sswitch_2c
    const/high16 v5, 0x220000

    goto :goto_47

    :sswitch_2f
    const/high16 v5, 0x200000

    goto :goto_47

    :sswitch_32
    const/high16 v5, 0x140000

    goto :goto_47

    :sswitch_35
    const v5, 0xe1000

    goto :goto_47

    :sswitch_39
    const v5, 0x65400

    goto :goto_47

    :sswitch_3d
    const v5, 0x31800

    goto :goto_47

    :sswitch_41
    const v5, 0x18c00

    goto :goto_47

    :cond_45
    const/16 v5, 0x6300

    :goto_47
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_4e
    sget v0, Lcom/google/android/gms/internal/ads/TD;->j6:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_58

    const v0, 0x54600

    goto :goto_5b

    :cond_58
    const v0, 0x2a300

    :goto_5b
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_5f
    sput v2, Lcom/google/android/gms/internal/ads/TA;->VH:I

    :cond_61
    sget v0, Lcom/google/android/gms/internal/ads/TA;->VH:I

    return v0

    :sswitch_data_64
    .sparse-switch
        0x8 -> :sswitch_41
        0x10 -> :sswitch_41
        0x20 -> :sswitch_41
        0x40 -> :sswitch_3d
        0x80 -> :sswitch_39
        0x100 -> :sswitch_39
        0x200 -> :sswitch_35
        0x400 -> :sswitch_32
        0x800 -> :sswitch_2f
        0x1000 -> :sswitch_2f
        0x2000 -> :sswitch_2c
        0x4000 -> :sswitch_28
        0x8000 -> :sswitch_25
        0x10000 -> :sswitch_25
    .end sparse-switch
.end method

.method private static DW(Ljava/lang/String;Z)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/NA;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/google/android/gms/internal/ads/TA;

    monitor-enter v0

    :try_start_3
    new-instance v0, Lcom/google/android/gms/internal/ads/TA$a;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/TA$a;-><init>(Ljava/lang/String;Z)V

    sget-object v1, Lcom/google/android/gms/internal/ads/TA;->FH:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_92

    if-eqz v2, :cond_16

    const-class p0, Lcom/google/android/gms/internal/ads/TA;

    monitor-exit p0

    return-object v2

    :cond_16
    :try_start_16
    sget v2, Lcom/google/android/gms/internal/ads/TD;->j6:I

    const/4 v3, 0x0

    const/16 v4, 0x15

    if-lt v2, v4, :cond_23

    new-instance v2, Lcom/google/android/gms/internal/ads/YA;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/ads/YA;-><init>(Z)V

    goto :goto_28

    :cond_23
    new-instance v2, Lcom/google/android/gms/internal/ads/XA;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/XA;-><init>(Lcom/google/android/gms/internal/ads/UA;)V

    :goto_28
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/TA;->j6(Lcom/google/android/gms/internal/ads/TA$a;Lcom/google/android/gms/internal/ads/WA;)Ljava/util/List;

    move-result-object v2

    if-eqz p1, :cond_87

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_87

    sget p1, Lcom/google/android/gms/internal/ads/TD;->j6:I

    if-gt v4, p1, :cond_87

    sget p1, Lcom/google/android/gms/internal/ads/TD;->j6:I

    const/16 v4, 0x17

    if-gt p1, v4, :cond_87

    new-instance p1, Lcom/google/android/gms/internal/ads/XA;

    invoke-direct {p1, v3}, Lcom/google/android/gms/internal/ads/XA;-><init>(Lcom/google/android/gms/internal/ads/UA;)V

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/TA;->j6(Lcom/google/android/gms/internal/ads/TA$a;Lcom/google/android/gms/internal/ads/WA;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_87

    const/4 p1, 0x0

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/NA;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/NA;->j6:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x3f

    add-int/2addr v3, v4

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "MediaCodecList API didn\'t list secure decoder for: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ". Assuming: "

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "MediaCodecUtil"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_87
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8e
    .catchall {:try_start_16 .. :try_end_8e} :catchall_92

    const-class p1, Lcom/google/android/gms/internal/ads/TA;

    monitor-exit p1

    return-object p0

    :catchall_92
    move-exception p0

    const-class p1, Lcom/google/android/gms/internal/ads/TA;

    monitor-exit p1

    throw p0
.end method

.method public static j6(Ljava/lang/String;)Landroid/util/Pair;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const-string v1, "\\."

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    sparse-switch v4, :sswitch_data_f8

    goto :goto_3f

    :sswitch_18
    const-string v2, "hvc1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    const/4 v2, 0x1

    goto :goto_40

    :sswitch_22
    const-string v4, "hev1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    goto :goto_40

    :sswitch_2b
    const-string v2, "avc2"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    const/4 v2, 0x3

    goto :goto_40

    :sswitch_35
    const-string v2, "avc1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    const/4 v2, 0x2

    goto :goto_40

    :cond_3f
    :goto_3f
    const/4 v2, -0x1

    :goto_40
    if-eqz v2, :cond_4e

    if-eq v2, v7, :cond_4e

    if-eq v2, v6, :cond_49

    if-eq v2, v5, :cond_49

    return-object v0

    :cond_49
    invoke-static {p0, v1}, Lcom/google/android/gms/internal/ads/TA;->j6(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_4e
    array-length v2, v1

    const/4 v3, 0x4

    const-string v4, "MediaCodecUtil"

    const-string v8, "Ignoring malformed HEVC codec string: "

    if-ge v2, v3, :cond_6e

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_65

    invoke-virtual {v8, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_6a

    :cond_65
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_6a
    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_6e
    sget-object v2, Lcom/google/android/gms/internal/ads/TA;->DW:Ljava/util/regex/Pattern;

    aget-object v3, v1, v7

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_94

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_8b

    invoke-virtual {v8, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_90

    :cond_8b
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_90
    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_94
    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const-string v3, "1"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a2

    const/4 v6, 0x1

    goto :goto_aa

    :cond_a2
    const-string v3, "2"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_de

    :goto_aa
    sget-object p0, Lcom/google/android/gms/internal/ads/TA;->Zo:Ljava/util/Map;

    aget-object v1, v1, v5

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_d4

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Unknown HEVC level string: "

    if-eqz v1, :cond_cb

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_d0

    :cond_cb
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_d0
    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_d4
    new-instance v0, Landroid/util/Pair;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_de
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Unknown HEVC profile string: "

    if-eqz v1, :cond_ef

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_f4

    :cond_ef
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_f4
    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :sswitch_data_f8
    .sparse-switch
        0x2ddf23 -> :sswitch_35
        0x2ddf24 -> :sswitch_2b
        0x30d038 -> :sswitch_22
        0x310dbc -> :sswitch_18
    .end sparse-switch
.end method

.method private static j6(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    const-string v2, "MediaCodecUtil"

    const-string v3, "Ignoring malformed AVC codec string: "

    const/4 v4, 0x2

    if-ge v0, v4, :cond_21

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_18

    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1d

    :cond_18
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1d
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_21
    const/4 v0, 0x1

    :try_start_22
    aget-object v5, p1, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_4c

    aget-object v5, p1, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    aget-object p1, p1, v0

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_65

    :cond_4c
    array-length v5, p1

    const/4 v6, 0x3

    if-lt v5, v6, :cond_c4

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aget-object p1, p1, v4

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_64
    .catch Ljava/lang/NumberFormatException; {:try_start_22 .. :try_end_64} :catch_dc

    move-object p0, v0

    :goto_65
    sget-object v0, Lcom/google/android/gms/internal/ads/TA;->Hw:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_98

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x15

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unknown AVC profile: "

    :goto_8a
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_98
    sget-object p0, Lcom/google/android/gms/internal/ads/TA;->v5:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    if-nez p0, :cond_be

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x13

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unknown AVC level: "

    goto :goto_8a

    :cond_be
    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_c4
    :try_start_c4
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_d3

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_d8

    :cond_d3
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_d8
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_db
    .catch Ljava/lang/NumberFormatException; {:try_start_c4 .. :try_end_db} :catch_dc

    return-object v1

    :catch_dc
    move-exception p1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_ec

    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_f1

    :cond_ec
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_f1
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static j6()Lcom/google/android/gms/internal/ads/NA;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/TA;->j6:Lcom/google/android/gms/internal/ads/NA;

    return-object v0
.end method

.method public static j6(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/NA;
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/TA;->DW(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p0, 0x0

    return-object p0

    :cond_c
    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/NA;

    return-object p0
.end method

.method private static j6(Lcom/google/android/gms/internal/ads/TA$a;Lcom/google/android/gms/internal/ads/WA;)Ljava/util/List;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/TA$a;",
            "Lcom/google/android/gms/internal/ads/WA;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/NA;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    :try_start_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/TA$a;->j6:Ljava/lang/String;

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/WA;->DW()I

    move-result v5

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/WA;->j6()Z

    move-result v6

    const/4 v8, 0x0

    :goto_14
    if-ge v8, v5, :cond_2ab

    invoke-interface {v2, v8}, Lcom/google/android/gms/internal/ads/WA;->j6(I)Landroid/media/MediaCodecInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v0
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_22} :catch_2ac

    const-string v11, ".secure"

    if-nez v0, :cond_1af

    if-nez v6, :cond_30

    :try_start_28
    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    goto/16 :goto_1af

    :cond_30
    sget v0, Lcom/google/android/gms/internal/ads/TD;->j6:I

    const/16 v13, 0x15

    if-ge v0, v13, :cond_68

    const-string v0, "CIPAACDecoder"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1af

    const-string v0, "CIPMP3Decoder"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1af

    const-string v0, "CIPVorbisDecoder"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1af

    const-string v0, "CIPAMRNBDecoder"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1af

    const-string v0, "AACDecoder"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1af

    const-string v0, "MP3Decoder"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    goto/16 :goto_1af

    :cond_68
    sget v0, Lcom/google/android/gms/internal/ads/TD;->j6:I

    const/16 v13, 0x12

    if-ge v0, v13, :cond_78

    const-string v0, "OMX.SEC.MP3.Decoder"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    goto/16 :goto_1af

    :cond_78
    sget v0, Lcom/google/android/gms/internal/ads/TD;->j6:I

    if-ge v0, v13, :cond_90

    const-string v0, "OMX.MTK.AUDIO.DECODER.AAC"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90

    const-string v0, "a70"

    sget-object v13, Lcom/google/android/gms/internal/ads/TD;->DW:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90

    goto/16 :goto_1af

    :cond_90
    sget v0, Lcom/google/android/gms/internal/ads/TD;->j6:I

    const/16 v13, 0x10

    if-ne v0, v13, :cond_118

    const-string v0, "OMX.qcom.audio.decoder.mp3"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_118

    const-string v0, "dlxu"

    sget-object v14, Lcom/google/android/gms/internal/ads/TD;->DW:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1af

    const-string v0, "protou"

    sget-object v14, Lcom/google/android/gms/internal/ads/TD;->DW:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1af

    const-string v0, "ville"

    sget-object v14, Lcom/google/android/gms/internal/ads/TD;->DW:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1af

    const-string v0, "villeplus"

    sget-object v14, Lcom/google/android/gms/internal/ads/TD;->DW:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1af

    const-string v0, "villec2"

    sget-object v14, Lcom/google/android/gms/internal/ads/TD;->DW:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1af

    sget-object v0, Lcom/google/android/gms/internal/ads/TD;->DW:Ljava/lang/String;

    const-string v14, "gee"

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1af

    const-string v0, "C6602"

    sget-object v14, Lcom/google/android/gms/internal/ads/TD;->DW:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1af

    const-string v0, "C6603"

    sget-object v14, Lcom/google/android/gms/internal/ads/TD;->DW:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1af

    const-string v0, "C6606"

    sget-object v14, Lcom/google/android/gms/internal/ads/TD;->DW:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1af

    const-string v0, "C6616"

    sget-object v14, Lcom/google/android/gms/internal/ads/TD;->DW:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1af

    const-string v0, "L36h"

    sget-object v14, Lcom/google/android/gms/internal/ads/TD;->DW:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1af

    const-string v0, "SO-02E"

    sget-object v14, Lcom/google/android/gms/internal/ads/TD;->DW:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_118

    goto/16 :goto_1af

    :cond_118
    sget v0, Lcom/google/android/gms/internal/ads/TD;->j6:I

    if-ne v0, v13, :cond_14d

    const-string v0, "OMX.qcom.audio.decoder.aac"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14d

    const-string v0, "C1504"

    sget-object v13, Lcom/google/android/gms/internal/ads/TD;->DW:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1af

    const-string v0, "C1505"

    sget-object v13, Lcom/google/android/gms/internal/ads/TD;->DW:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1af

    const-string v0, "C1604"

    sget-object v13, Lcom/google/android/gms/internal/ads/TD;->DW:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1af

    const-string v0, "C1605"

    sget-object v13, Lcom/google/android/gms/internal/ads/TD;->DW:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14d

    goto :goto_1af

    :cond_14d
    sget v0, Lcom/google/android/gms/internal/ads/TD;->j6:I
    :try_end_14f
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_14f} :catch_2ac

    const-string v13, "jflte"

    const/16 v14, 0x13

    if-gt v0, v14, :cond_198

    :try_start_155
    const-string v0, "OMX.SEC.vp8.dec"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_198

    const-string v0, "samsung"

    sget-object v15, Lcom/google/android/gms/internal/ads/TD;->FH:Ljava/lang/String;

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_198

    sget-object v0, Lcom/google/android/gms/internal/ads/TD;->DW:Ljava/lang/String;

    const-string v15, "d2"

    invoke-virtual {v0, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1af

    sget-object v0, Lcom/google/android/gms/internal/ads/TD;->DW:Ljava/lang/String;

    const-string v15, "serrano"

    invoke-virtual {v0, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1af

    sget-object v0, Lcom/google/android/gms/internal/ads/TD;->DW:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1af

    sget-object v0, Lcom/google/android/gms/internal/ads/TD;->DW:Ljava/lang/String;

    const-string v15, "santos"

    invoke-virtual {v0, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1af

    sget-object v0, Lcom/google/android/gms/internal/ads/TD;->DW:Ljava/lang/String;

    const-string v15, "t0"

    invoke-virtual {v0, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_198

    goto :goto_1af

    :cond_198
    sget v0, Lcom/google/android/gms/internal/ads/TD;->j6:I

    if-gt v0, v14, :cond_1ad

    sget-object v0, Lcom/google/android/gms/internal/ads/TD;->DW:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1ad

    const-string v0, "OMX.qcom.video.decoder.vp8"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ad

    goto :goto_1af

    :cond_1ad
    const/4 v0, 0x1

    goto :goto_1b0

    :cond_1af
    :goto_1af
    const/4 v0, 0x0

    :goto_1b0
    if-eqz v0, :cond_2a1

    invoke-virtual {v9}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v13

    array-length v14, v13
    :try_end_1b7
    .catch Ljava/lang/Exception; {:try_start_155 .. :try_end_1b7} :catch_2ac

    const/4 v15, 0x0

    :goto_1b8
    if-ge v15, v14, :cond_2a1

    aget-object v12, v13, v15

    :try_start_1bc
    invoke-virtual {v12, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_1c0
    .catch Ljava/lang/Exception; {:try_start_1bc .. :try_end_1c0} :catch_2ac

    if-eqz v0, :cond_297

    :try_start_1c2
    invoke-virtual {v9, v12}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Lcom/google/android/gms/internal/ads/WA;->j6(Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v7

    sget v2, Lcom/google/android/gms/internal/ads/TD;->j6:I
    :try_end_1cc
    .catch Ljava/lang/Exception; {:try_start_1c2 .. :try_end_1cc} :catch_22c

    move/from16 v16, v5

    const/16 v5, 0x16

    if-gt v2, v5, :cond_1fb

    :try_start_1d2
    sget-object v2, Lcom/google/android/gms/internal/ads/TD;->Hw:Ljava/lang/String;

    const-string v5, "ODROID-XU3"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e6

    sget-object v2, Lcom/google/android/gms/internal/ads/TD;->Hw:Ljava/lang/String;

    const-string v5, "Nexus 10"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1fb

    :cond_1e6
    const-string v2, "OMX.Exynos.AVC.Decoder"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f6

    const-string v2, "OMX.Exynos.AVC.Decoder.secure"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1fb

    :cond_1f6
    const/4 v2, 0x1

    goto :goto_1fc

    :catch_1f8
    move-exception v0

    :goto_1f9
    const/4 v5, 0x1

    goto :goto_230

    :cond_1fb
    const/4 v2, 0x0

    :goto_1fc
    if-eqz v6, :cond_202

    iget-boolean v5, v1, Lcom/google/android/gms/internal/ads/TA$a;->DW:Z

    if-eq v5, v7, :cond_208

    :cond_202
    if-nez v6, :cond_212

    iget-boolean v5, v1, Lcom/google/android/gms/internal/ads/TA$a;->DW:Z

    if-nez v5, :cond_212

    :cond_208
    const/4 v5, 0x0

    invoke-static {v10, v4, v0, v2, v5}, Lcom/google/android/gms/internal/ads/NA;->j6(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZ)Lcom/google/android/gms/internal/ads/NA;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_299

    :cond_212
    const/4 v5, 0x0

    if-nez v6, :cond_22a

    if-eqz v7, :cond_22a

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_21f
    .catch Ljava/lang/Exception; {:try_start_1d2 .. :try_end_21f} :catch_1f8

    const/4 v5, 0x1

    :try_start_220
    invoke-static {v7, v4, v0, v2, v5}, Lcom/google/android/gms/internal/ads/NA;->j6(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZ)Lcom/google/android/gms/internal/ads/NA;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_227
    .catch Ljava/lang/Exception; {:try_start_220 .. :try_end_227} :catch_228

    return-object v3

    :catch_228
    move-exception v0

    goto :goto_230

    :cond_22a
    const/4 v5, 0x1

    goto :goto_299

    :catch_22c
    move-exception v0

    move/from16 v16, v5

    goto :goto_1f9

    :goto_230
    :try_start_230
    sget v2, Lcom/google/android/gms/internal/ads/TD;->j6:I
    :try_end_232
    .catch Ljava/lang/Exception; {:try_start_230 .. :try_end_232} :catch_2ac

    const/16 v7, 0x17

    const-string v5, "MediaCodecUtil"

    if-gt v2, v7, :cond_262

    :try_start_238
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_262

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x2e

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Skipping codec "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (failed to query capabilities)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_299

    :cond_262
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x19

    add-int/2addr v1, v2

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Failed to query codec "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
    :try_end_297
    .catch Ljava/lang/Exception; {:try_start_238 .. :try_end_297} :catch_2ac

    :cond_297
    move/from16 v16, v5

    :goto_299
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, p1

    move/from16 v5, v16

    goto/16 :goto_1b8

    :cond_2a1
    move/from16 v16, v5

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v2, p1

    move/from16 v5, v16

    goto/16 :goto_14

    :cond_2ab
    return-object v3

    :catch_2ac
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/ads/VA;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/VA;-><init>(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/UA;)V

    goto :goto_2b5

    :goto_2b4
    throw v1

    :goto_2b5
    goto :goto_2b4
.end method
