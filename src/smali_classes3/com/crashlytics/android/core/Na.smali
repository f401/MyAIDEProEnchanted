.class Lcom/crashlytics/android/core/Na;
.super Ljava/lang/Object;


# static fields
.field private static final DW:Lcom/crashlytics/android/core/d;

.field private static final j6:Lcom/crashlytics/android/core/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "0"

    invoke-static {v0}, Lcom/crashlytics/android/core/d;->j6(Ljava/lang/String;)Lcom/crashlytics/android/core/d;

    move-result-object v0

    sput-object v0, Lcom/crashlytics/android/core/Na;->j6:Lcom/crashlytics/android/core/d;

    const-string v0, "Unity"

    invoke-static {v0}, Lcom/crashlytics/android/core/d;->j6(Ljava/lang/String;)Lcom/crashlytics/android/core/d;

    move-result-object v0

    sput-object v0, Lcom/crashlytics/android/core/Na;->DW:Lcom/crashlytics/android/core/d;

    return-void
.end method

.method private static DW(Lcom/crashlytics/android/core/d;)I
    .registers 2

    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/crashlytics/android/core/h;->j6(ILcom/crashlytics/android/core/d;)I

    move-result p0

    add-int/lit8 p0, p0, 0x0

    return p0
.end method

.method private static j6()I
    .registers 4

    sget-object v0, Lcom/crashlytics/android/core/Na;->j6:Lcom/crashlytics/android/core/d;

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/crashlytics/android/core/h;->j6(ILcom/crashlytics/android/core/d;)I

    move-result v1

    add-int/lit8 v1, v1, 0x0

    const/4 v2, 0x2

    invoke-static {v2, v0}, Lcom/crashlytics/android/core/h;->j6(ILcom/crashlytics/android/core/d;)I

    move-result v0

    add-int/2addr v1, v0

    const/4 v0, 0x3

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/crashlytics/android/core/h;->j6(IJ)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method private static j6(ILcom/crashlytics/android/core/d;IJJZLjava/util/Map;ILcom/crashlytics/android/core/d;Lcom/crashlytics/android/core/d;)I
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/crashlytics/android/core/d;",
            "IJJZ",
            "Ljava/util/Map<",
            "Lio/fabric/sdk/android/services/common/v$a;",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/crashlytics/android/core/d;",
            "Lcom/crashlytics/android/core/d;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x3

    invoke-static {v0, p0}, Lcom/crashlytics/android/core/h;->j6(II)I

    move-result p0

    const/4 v0, 0x0

    if-nez p1, :cond_a

    const/4 p1, 0x0

    goto :goto_f

    :cond_a
    const/4 v1, 0x4

    invoke-static {v1, p1}, Lcom/crashlytics/android/core/h;->j6(ILcom/crashlytics/android/core/d;)I

    move-result p1

    :goto_f
    add-int/2addr p0, v0

    add-int/2addr p0, p1

    const/4 p1, 0x5

    invoke-static {p1, p2}, Lcom/crashlytics/android/core/h;->FH(II)I

    move-result p1

    add-int/2addr p0, p1

    const/4 p1, 0x6

    invoke-static {p1, p3, p4}, Lcom/crashlytics/android/core/h;->j6(IJ)I

    move-result p1

    add-int/2addr p0, p1

    const/4 p1, 0x7

    invoke-static {p1, p5, p6}, Lcom/crashlytics/android/core/h;->j6(IJ)I

    move-result p1

    add-int/2addr p0, p1

    const/16 p1, 0xa

    invoke-static {p1, p7}, Lcom/crashlytics/android/core/h;->j6(IZ)I

    move-result p1

    add-int/2addr p0, p1

    if-eqz p8, :cond_5e

    invoke-interface {p8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_34
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/fabric/sdk/android/services/common/v$a;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p3, p2}, Lcom/crashlytics/android/core/Na;->j6(Lio/fabric/sdk/android/services/common/v$a;Ljava/lang/String;)I

    move-result p2

    const/16 p3, 0xb

    invoke-static {p3}, Lcom/crashlytics/android/core/h;->v5(I)I

    move-result p3

    invoke-static {p2}, Lcom/crashlytics/android/core/h;->FH(I)I

    move-result p4

    add-int/2addr p3, p4

    add-int/2addr p3, p2

    add-int/2addr p0, p3

    goto :goto_34

    :cond_5e
    const/16 p1, 0xc

    invoke-static {p1, p9}, Lcom/crashlytics/android/core/h;->FH(II)I

    move-result p1

    if-nez p10, :cond_68

    const/4 p2, 0x0

    goto :goto_6e

    :cond_68
    const/16 p2, 0xd

    invoke-static {p2, p10}, Lcom/crashlytics/android/core/h;->j6(ILcom/crashlytics/android/core/d;)I

    move-result p2

    :goto_6e
    if-nez p11, :cond_71

    goto :goto_77

    :cond_71
    const/16 p3, 0xe

    invoke-static {p3, p11}, Lcom/crashlytics/android/core/h;->j6(ILcom/crashlytics/android/core/d;)I

    move-result v0

    :goto_77
    add-int/2addr p0, p1

    add-int/2addr p0, p2

    add-int/2addr p0, v0

    return p0
.end method

.method private static j6(JLjava/lang/String;Lcom/crashlytics/android/core/Ra;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;ILjava/util/Map;Landroid/app/ActivityManager$RunningAppProcessInfo;ILcom/crashlytics/android/core/d;Lcom/crashlytics/android/core/d;Ljava/lang/Float;IZJJLcom/crashlytics/android/core/d;)I
    .registers 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lcom/crashlytics/android/core/Ra;",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            "[",
            "Ljava/lang/Thread;",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            "I",
            "Lcom/crashlytics/android/core/d;",
            "Lcom/crashlytics/android/core/d;",
            "Ljava/lang/Float;",
            "IZJJ",
            "Lcom/crashlytics/android/core/d;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x1

    move-wide v1, p0

    invoke-static {v0, p0, p1}, Lcom/crashlytics/android/core/h;->j6(IJ)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {p2}, Lcom/crashlytics/android/core/d;->j6(Ljava/lang/String;)Lcom/crashlytics/android/core/d;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/crashlytics/android/core/h;->j6(ILcom/crashlytics/android/core/d;)I

    move-result v1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p12

    move-object/from16 v9, p13

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    invoke-static/range {v2 .. v12}, Lcom/crashlytics/android/core/Na;->j6(Lcom/crashlytics/android/core/Ra;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;ILcom/crashlytics/android/core/d;Lcom/crashlytics/android/core/d;Ljava/util/Map;Landroid/app/ActivityManager$RunningAppProcessInfo;I)I

    move-result v2

    const/4 v3, 0x3

    invoke-static {v3}, Lcom/crashlytics/android/core/h;->v5(I)I

    move-result v3

    invoke-static {v2}, Lcom/crashlytics/android/core/h;->FH(I)I

    move-result v4

    move-object/from16 p0, p14

    move/from16 p1, p15

    move/from16 p2, p16

    move/from16 p3, p11

    move-wide/from16 p4, p17

    move-wide/from16 p6, p19

    invoke-static/range {p0 .. p7}, Lcom/crashlytics/android/core/Na;->j6(Ljava/lang/Float;IZIJJ)I

    move-result v5

    add-int/lit8 v0, v0, 0x0

    add-int/2addr v0, v1

    add-int/2addr v3, v4

    add-int/2addr v3, v2

    add-int/2addr v0, v3

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/crashlytics/android/core/h;->v5(I)I

    move-result v1

    invoke-static {v5}, Lcom/crashlytics/android/core/h;->FH(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, v5

    add-int/2addr v0, v1

    if-eqz p21, :cond_66

    invoke-static/range {p21 .. p21}, Lcom/crashlytics/android/core/Na;->j6(Lcom/crashlytics/android/core/d;)I

    move-result v1

    const/4 v2, 0x6

    invoke-static {v2}, Lcom/crashlytics/android/core/h;->v5(I)I

    move-result v2

    invoke-static {v1}, Lcom/crashlytics/android/core/h;->FH(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    add-int/2addr v0, v2

    :cond_66
    return v0
.end method

.method private static j6(Lcom/crashlytics/android/core/Ra;II)I
    .registers 12

    iget-object v0, p0, Lcom/crashlytics/android/core/Ra;->DW:Ljava/lang/String;

    invoke-static {v0}, Lcom/crashlytics/android/core/d;->j6(Ljava/lang/String;)Lcom/crashlytics/android/core/d;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/crashlytics/android/core/h;->j6(ILcom/crashlytics/android/core/d;)I

    move-result v0

    const/4 v2, 0x0

    add-int/2addr v0, v2

    iget-object v3, p0, Lcom/crashlytics/android/core/Ra;->j6:Ljava/lang/String;

    if-eqz v3, :cond_1b

    const/4 v4, 0x3

    invoke-static {v3}, Lcom/crashlytics/android/core/d;->j6(Ljava/lang/String;)Lcom/crashlytics/android/core/d;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/crashlytics/android/core/h;->j6(ILcom/crashlytics/android/core/d;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_1b
    iget-object v3, p0, Lcom/crashlytics/android/core/Ra;->FH:[Ljava/lang/StackTraceElement;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1f
    if-ge v5, v4, :cond_36

    aget-object v6, v3, v5

    invoke-static {v6, v1}, Lcom/crashlytics/android/core/Na;->j6(Ljava/lang/StackTraceElement;Z)I

    move-result v6

    const/4 v7, 0x4

    invoke-static {v7}, Lcom/crashlytics/android/core/h;->v5(I)I

    move-result v7

    invoke-static {v6}, Lcom/crashlytics/android/core/h;->FH(I)I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v7, v6

    add-int/2addr v0, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    :cond_36
    iget-object p0, p0, Lcom/crashlytics/android/core/Ra;->Hw:Lcom/crashlytics/android/core/Ra;

    if-eqz p0, :cond_5b

    if-ge p1, p2, :cond_4e

    add-int/2addr p1, v1

    invoke-static {p0, p1, p2}, Lcom/crashlytics/android/core/Na;->j6(Lcom/crashlytics/android/core/Ra;II)I

    move-result p0

    const/4 p1, 0x6

    invoke-static {p1}, Lcom/crashlytics/android/core/h;->v5(I)I

    move-result p1

    invoke-static {p0}, Lcom/crashlytics/android/core/h;->FH(I)I

    move-result p2

    add-int/2addr p1, p2

    add-int/2addr p1, p0

    add-int/2addr v0, p1

    goto :goto_5b

    :cond_4e
    :goto_4e
    if-eqz p0, :cond_55

    iget-object p0, p0, Lcom/crashlytics/android/core/Ra;->Hw:Lcom/crashlytics/android/core/Ra;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4e

    :cond_55
    const/4 p0, 0x7

    invoke-static {p0, v2}, Lcom/crashlytics/android/core/h;->FH(II)I

    move-result p0

    add-int/2addr v0, p0

    :cond_5b
    :goto_5b
    return v0
.end method

.method private static j6(Lcom/crashlytics/android/core/Ra;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;ILcom/crashlytics/android/core/d;Lcom/crashlytics/android/core/d;)I
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/crashlytics/android/core/Ra;",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            "[",
            "Ljava/lang/Thread;",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;I",
            "Lcom/crashlytics/android/core/d;",
            "Lcom/crashlytics/android/core/d;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-static {p1, p2, v0, v1}, Lcom/crashlytics/android/core/Na;->j6(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)I

    move-result p1

    invoke-static {v1}, Lcom/crashlytics/android/core/h;->v5(I)I

    move-result p2

    invoke-static {p1}, Lcom/crashlytics/android/core/h;->FH(I)I

    move-result v0

    array-length v2, p3

    add-int/2addr p2, v0

    add-int/2addr p2, p1

    const/4 p1, 0x0

    add-int/2addr p2, p1

    const/4 v0, 0x0

    :goto_14
    if-ge v0, v2, :cond_30

    aget-object v3, p3, v0

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/StackTraceElement;

    invoke-static {v3, v4, p1, p1}, Lcom/crashlytics/android/core/Na;->j6(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)I

    move-result v3

    invoke-static {v1}, Lcom/crashlytics/android/core/h;->v5(I)I

    move-result v4

    invoke-static {v3}, Lcom/crashlytics/android/core/h;->FH(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    add-int/2addr p2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_30
    invoke-static {p0, v1, p5}, Lcom/crashlytics/android/core/Na;->j6(Lcom/crashlytics/android/core/Ra;II)I

    move-result p0

    const/4 p1, 0x2

    invoke-static {p1}, Lcom/crashlytics/android/core/h;->v5(I)I

    move-result p1

    invoke-static {p0}, Lcom/crashlytics/android/core/h;->FH(I)I

    move-result p3

    invoke-static {}, Lcom/crashlytics/android/core/Na;->j6()I

    move-result p4

    const/4 p5, 0x3

    invoke-static {p5}, Lcom/crashlytics/android/core/h;->v5(I)I

    move-result v0

    invoke-static {p4}, Lcom/crashlytics/android/core/h;->FH(I)I

    move-result v1

    invoke-static {p6, p7}, Lcom/crashlytics/android/core/Na;->j6(Lcom/crashlytics/android/core/d;Lcom/crashlytics/android/core/d;)I

    move-result p6

    add-int/2addr p1, p3

    add-int/2addr p1, p0

    add-int/2addr p2, p1

    add-int/2addr v0, v1

    add-int/2addr v0, p4

    add-int/2addr p2, v0

    invoke-static {p5}, Lcom/crashlytics/android/core/h;->v5(I)I

    move-result p0

    invoke-static {p6}, Lcom/crashlytics/android/core/h;->FH(I)I

    move-result p1

    add-int/2addr p0, p1

    add-int/2addr p0, p6

    add-int/2addr p2, p0

    return p2
.end method

.method private static j6(Lcom/crashlytics/android/core/Ra;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;ILcom/crashlytics/android/core/d;Lcom/crashlytics/android/core/d;Ljava/util/Map;Landroid/app/ActivityManager$RunningAppProcessInfo;I)I
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/crashlytics/android/core/Ra;",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            "[",
            "Ljava/lang/Thread;",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;I",
            "Lcom/crashlytics/android/core/d;",
            "Lcom/crashlytics/android/core/d;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            "I)I"
        }
    .end annotation

    invoke-static/range {p0 .. p7}, Lcom/crashlytics/android/core/Na;->j6(Lcom/crashlytics/android/core/Ra;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;ILcom/crashlytics/android/core/d;Lcom/crashlytics/android/core/d;)I

    move-result p0

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/crashlytics/android/core/h;->v5(I)I

    move-result p2

    invoke-static {p0}, Lcom/crashlytics/android/core/h;->FH(I)I

    move-result p3

    add-int/2addr p2, p3

    add-int/2addr p2, p0

    const/4 p0, 0x0

    add-int/2addr p2, p0

    if-eqz p8, :cond_44

    invoke-interface {p8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1b
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_44

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-static {p5, p4}, Lcom/crashlytics/android/core/Na;->j6(Ljava/lang/String;Ljava/lang/String;)I

    move-result p4

    const/4 p5, 0x2

    invoke-static {p5}, Lcom/crashlytics/android/core/h;->v5(I)I

    move-result p5

    invoke-static {p4}, Lcom/crashlytics/android/core/h;->FH(I)I

    move-result p6

    add-int/2addr p5, p6

    add-int/2addr p5, p4

    add-int/2addr p2, p5

    goto :goto_1b

    :cond_44
    if-eqz p9, :cond_54

    iget p3, p9, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 p4, 0x64

    if-eq p3, p4, :cond_4d

    goto :goto_4e

    :cond_4d
    const/4 p1, 0x0

    :goto_4e
    const/4 p0, 0x3

    invoke-static {p0, p1}, Lcom/crashlytics/android/core/h;->j6(IZ)I

    move-result p0

    add-int/2addr p2, p0

    :cond_54
    const/4 p0, 0x4

    invoke-static {p0, p10}, Lcom/crashlytics/android/core/h;->FH(II)I

    move-result p0

    add-int/2addr p2, p0

    return p2
.end method

.method private static j6(Lcom/crashlytics/android/core/d;)I
    .registers 2

    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/crashlytics/android/core/h;->j6(ILcom/crashlytics/android/core/d;)I

    move-result p0

    return p0
.end method

.method private static j6(Lcom/crashlytics/android/core/d;Lcom/crashlytics/android/core/d;)I
    .registers 6

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/crashlytics/android/core/h;->j6(IJ)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    const/4 v3, 0x2

    invoke-static {v3, v1, v2}, Lcom/crashlytics/android/core/h;->j6(IJ)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x3

    invoke-static {v1, p0}, Lcom/crashlytics/android/core/h;->j6(ILcom/crashlytics/android/core/d;)I

    move-result p0

    add-int/2addr v0, p0

    if-eqz p1, :cond_1d

    const/4 p0, 0x4

    invoke-static {p0, p1}, Lcom/crashlytics/android/core/h;->j6(ILcom/crashlytics/android/core/d;)I

    move-result p0

    add-int/2addr v0, p0

    :cond_1d
    return v0
.end method

.method private static j6(Lcom/crashlytics/android/core/d;Lcom/crashlytics/android/core/d;Lcom/crashlytics/android/core/d;Lcom/crashlytics/android/core/d;Lcom/crashlytics/android/core/d;ILcom/crashlytics/android/core/d;)I
    .registers 8

    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/crashlytics/android/core/h;->j6(ILcom/crashlytics/android/core/d;)I

    move-result p0

    const/4 v0, 0x2

    invoke-static {v0, p2}, Lcom/crashlytics/android/core/h;->j6(ILcom/crashlytics/android/core/d;)I

    move-result p2

    const/4 v0, 0x3

    invoke-static {v0, p3}, Lcom/crashlytics/android/core/h;->j6(ILcom/crashlytics/android/core/d;)I

    move-result p3

    invoke-static {p1}, Lcom/crashlytics/android/core/Na;->DW(Lcom/crashlytics/android/core/d;)I

    move-result p1

    add-int/lit8 p0, p0, 0x0

    add-int/2addr p0, p2

    add-int/2addr p0, p3

    const/4 p2, 0x5

    invoke-static {p2}, Lcom/crashlytics/android/core/h;->v5(I)I

    move-result p2

    invoke-static {p1}, Lcom/crashlytics/android/core/h;->FH(I)I

    move-result p3

    add-int/2addr p2, p3

    add-int/2addr p2, p1

    add-int/2addr p0, p2

    const/4 p1, 0x6

    invoke-static {p1, p4}, Lcom/crashlytics/android/core/h;->j6(ILcom/crashlytics/android/core/d;)I

    move-result p1

    add-int/2addr p0, p1

    if-eqz p6, :cond_3b

    const/16 p1, 0x8

    sget-object p2, Lcom/crashlytics/android/core/Na;->DW:Lcom/crashlytics/android/core/d;

    invoke-static {p1, p2}, Lcom/crashlytics/android/core/h;->j6(ILcom/crashlytics/android/core/d;)I

    move-result p1

    add-int/2addr p0, p1

    const/16 p1, 0x9

    invoke-static {p1, p6}, Lcom/crashlytics/android/core/h;->j6(ILcom/crashlytics/android/core/d;)I

    move-result p1

    add-int/2addr p0, p1

    :cond_3b
    const/16 p1, 0xa

    invoke-static {p1, p5}, Lcom/crashlytics/android/core/h;->j6(II)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method private static j6(Lcom/crashlytics/android/core/d;Lcom/crashlytics/android/core/d;Z)I
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/crashlytics/android/core/h;->j6(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    const/4 v2, 0x2

    invoke-static {v2, p0}, Lcom/crashlytics/android/core/h;->j6(ILcom/crashlytics/android/core/d;)I

    move-result p0

    add-int/2addr v0, p0

    invoke-static {v1, p1}, Lcom/crashlytics/android/core/h;->j6(ILcom/crashlytics/android/core/d;)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x4

    invoke-static {p0, p2}, Lcom/crashlytics/android/core/h;->j6(IZ)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private static j6(Lio/fabric/sdk/android/services/common/v$a;Ljava/lang/String;)I
    .registers 3

    const/4 v0, 0x1

    iget p0, p0, Lio/fabric/sdk/android/services/common/v$a;->u7:I

    invoke-static {v0, p0}, Lcom/crashlytics/android/core/h;->j6(II)I

    move-result p0

    const/4 v0, 0x2

    invoke-static {p1}, Lcom/crashlytics/android/core/d;->j6(Ljava/lang/String;)Lcom/crashlytics/android/core/d;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/crashlytics/android/core/h;->j6(ILcom/crashlytics/android/core/d;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method private static j6(Ljava/lang/Float;IZIJJ)I
    .registers 10

    const/4 v0, 0x0

    if-eqz p0, :cond_d

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {v1, p0}, Lcom/crashlytics/android/core/h;->j6(IF)I

    move-result p0

    add-int/2addr v0, p0

    :cond_d
    const/4 p0, 0x2

    invoke-static {p0, p1}, Lcom/crashlytics/android/core/h;->DW(II)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x3

    invoke-static {p0, p2}, Lcom/crashlytics/android/core/h;->j6(IZ)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x4

    invoke-static {p0, p3}, Lcom/crashlytics/android/core/h;->FH(II)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x5

    invoke-static {p0, p4, p5}, Lcom/crashlytics/android/core/h;->j6(IJ)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x6

    invoke-static {p0, p6, p7}, Lcom/crashlytics/android/core/h;->j6(IJ)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private static j6(Ljava/lang/StackTraceElement;Z)I
    .registers 8

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v3, v0

    goto :goto_14

    :cond_12
    const-wide/16 v3, 0x0

    :goto_14
    invoke-static {v1, v3, v4}, Lcom/crashlytics/android/core/h;->j6(IJ)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v0, v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/crashlytics/android/core/d;->j6(Ljava/lang/String;)Lcom/crashlytics/android/core/d;

    move-result-object v1

    const/4 v3, 0x2

    invoke-static {v3, v1}, Lcom/crashlytics/android/core/h;->j6(ILcom/crashlytics/android/core/d;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_53

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/crashlytics/android/core/d;->j6(Ljava/lang/String;)Lcom/crashlytics/android/core/d;

    move-result-object v1

    const/4 v4, 0x3

    invoke-static {v4, v1}, Lcom/crashlytics/android/core/h;->j6(ILcom/crashlytics/android/core/d;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_53
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v1

    if-nez v1, :cond_6a

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    if-lez v1, :cond_6a

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p0

    int-to-long v4, p0

    const/4 p0, 0x4

    invoke-static {p0, v4, v5}, Lcom/crashlytics/android/core/h;->j6(IJ)I

    move-result p0

    add-int/2addr v0, p0

    :cond_6a
    if-eqz p1, :cond_6d

    const/4 v2, 0x2

    :cond_6d
    const/4 p0, 0x5

    invoke-static {p0, v2}, Lcom/crashlytics/android/core/h;->FH(II)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private static j6(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    const/4 v0, 0x1

    invoke-static {p0}, Lcom/crashlytics/android/core/d;->j6(Ljava/lang/String;)Lcom/crashlytics/android/core/d;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/crashlytics/android/core/h;->j6(ILcom/crashlytics/android/core/d;)I

    move-result p0

    if-nez p1, :cond_d

    const-string p1, ""

    :cond_d
    const/4 v0, 0x2

    invoke-static {p1}, Lcom/crashlytics/android/core/d;->j6(Ljava/lang/String;)Lcom/crashlytics/android/core/d;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/crashlytics/android/core/h;->j6(ILcom/crashlytics/android/core/d;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method private static j6(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)I
    .registers 8

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/crashlytics/android/core/d;->j6(Ljava/lang/String;)Lcom/crashlytics/android/core/d;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/crashlytics/android/core/h;->j6(ILcom/crashlytics/android/core/d;)I

    move-result p0

    const/4 v0, 0x2

    invoke-static {v0, p2}, Lcom/crashlytics/android/core/h;->FH(II)I

    move-result p2

    add-int/2addr p0, p2

    array-length p2, p1

    const/4 v0, 0x0

    :goto_15
    if-ge v0, p2, :cond_2c

    aget-object v1, p1, v0

    invoke-static {v1, p3}, Lcom/crashlytics/android/core/Na;->j6(Ljava/lang/StackTraceElement;Z)I

    move-result v1

    const/4 v2, 0x3

    invoke-static {v2}, Lcom/crashlytics/android/core/h;->v5(I)I

    move-result v2

    invoke-static {v1}, Lcom/crashlytics/android/core/h;->FH(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    add-int/2addr p0, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_2c
    return p0
.end method

.method private static j6(Ljava/lang/String;)Lcom/crashlytics/android/core/d;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_8

    :cond_4
    invoke-static {p0}, Lcom/crashlytics/android/core/d;->j6(Ljava/lang/String;)Lcom/crashlytics/android/core/d;

    move-result-object p0

    :goto_8
    return-object p0
.end method

.method private static j6(Lcom/crashlytics/android/core/h;ILjava/lang/StackTraceElement;Z)V
    .registers 9

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/crashlytics/android/core/h;->Zo(II)V

    invoke-static {p2, p3}, Lcom/crashlytics/android/core/Na;->j6(Ljava/lang/StackTraceElement;Z)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/crashlytics/android/core/h;->we(I)V

    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1d

    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-long v3, p1

    goto :goto_1f

    :cond_1d
    const-wide/16 v3, 0x0

    :goto_1f
    invoke-virtual {p0, v2, v3, v4}, Lcom/crashlytics/android/core/h;->DW(IJ)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/crashlytics/android/core/d;->j6(Ljava/lang/String;)Lcom/crashlytics/android/core/d;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/crashlytics/android/core/h;->DW(ILcom/crashlytics/android/core/d;)V

    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_57

    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/crashlytics/android/core/d;->j6(Ljava/lang/String;)Lcom/crashlytics/android/core/d;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/crashlytics/android/core/h;->DW(ILcom/crashlytics/android/core/d;)V

    :cond_57
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result p1

    const/4 v0, 0x4

    if-nez p1, :cond_6c

    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p1

    if-lez p1, :cond_6c

    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p1

    int-to-long p1, p1

    invoke-virtual {p0, v0, p1, p2}, Lcom/crashlytics/android/core/h;->DW(IJ)V

    :cond_6c
    if-eqz p3, :cond_6f

    const/4 v1, 0x4

    :cond_6f
    const/4 p1, 0x5

    invoke-virtual {p0, p1, v1}, Lcom/crashlytics/android/core/h;->VH(II)V

    return-void
.end method

.method public static j6(Lcom/crashlytics/android/core/h;ILjava/lang/String;IJJZLjava/util/Map;ILjava/lang/String;Ljava/lang/String;)V
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/crashlytics/android/core/h;",
            "I",
            "Ljava/lang/String;",
            "IJJZ",
            "Ljava/util/Map<",
            "Lio/fabric/sdk/android/services/common/v$a;",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-static/range {p2 .. p2}, Lcom/crashlytics/android/core/Na;->j6(Ljava/lang/String;)Lcom/crashlytics/android/core/d;

    move-result-object v13

    invoke-static/range {p12 .. p12}, Lcom/crashlytics/android/core/Na;->j6(Ljava/lang/String;)Lcom/crashlytics/android/core/d;

    move-result-object v14

    invoke-static/range {p11 .. p11}, Lcom/crashlytics/android/core/Na;->j6(Ljava/lang/String;)Lcom/crashlytics/android/core/d;

    move-result-object v15

    const/16 v1, 0x9

    const/4 v12, 0x2

    invoke-virtual {v0, v1, v12}, Lcom/crashlytics/android/core/h;->Zo(II)V

    move/from16 v1, p1

    move-object v2, v13

    move/from16 v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move-object v11, v15

    move-object/from16 p2, v15

    const/4 v15, 0x2

    move-object v12, v14

    invoke-static/range {v1 .. v12}, Lcom/crashlytics/android/core/Na;->j6(ILcom/crashlytics/android/core/d;IJJZLjava/util/Map;ILcom/crashlytics/android/core/d;Lcom/crashlytics/android/core/d;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/core/h;->we(I)V

    const/4 v1, 0x3

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/crashlytics/android/core/h;->Hw(II)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v13}, Lcom/crashlytics/android/core/h;->DW(ILcom/crashlytics/android/core/d;)V

    const/4 v1, 0x5

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/crashlytics/android/core/h;->VH(II)V

    const/4 v1, 0x6

    move-wide/from16 v2, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/crashlytics/android/core/h;->DW(IJ)V

    const/4 v1, 0x7

    move-wide/from16 v2, p6

    invoke-virtual {v0, v1, v2, v3}, Lcom/crashlytics/android/core/h;->DW(IJ)V

    const/16 v1, 0xa

    move/from16 v2, p8

    invoke-virtual {v0, v1, v2}, Lcom/crashlytics/android/core/h;->DW(IZ)V

    invoke-interface/range {p9 .. p9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_98

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    const/16 v3, 0xb

    invoke-virtual {v0, v3, v15}, Lcom/crashlytics/android/core/h;->Zo(II)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/fabric/sdk/android/services/common/v$a;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/crashlytics/android/core/Na;->j6(Lio/fabric/sdk/android/services/common/v$a;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/crashlytics/android/core/h;->we(I)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/fabric/sdk/android/services/common/v$a;

    iget v3, v3, Lio/fabric/sdk/android/services/common/v$a;->u7:I

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Lcom/crashlytics/android/core/h;->Hw(II)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/crashlytics/android/core/d;->j6(Ljava/lang/String;)Lcom/crashlytics/android/core/d;

    move-result-object v2

    invoke-virtual {v0, v15, v2}, Lcom/crashlytics/android/core/h;->DW(ILcom/crashlytics/android/core/d;)V

    goto :goto_5a

    :cond_98
    const/16 v1, 0xc

    move/from16 v2, p10

    invoke-virtual {v0, v1, v2}, Lcom/crashlytics/android/core/h;->VH(II)V

    if-eqz p2, :cond_a8

    const/16 v1, 0xd

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/crashlytics/android/core/h;->DW(ILcom/crashlytics/android/core/d;)V

    :cond_a8
    if-eqz v14, :cond_af

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v14}, Lcom/crashlytics/android/core/h;->DW(ILcom/crashlytics/android/core/d;)V

    :cond_af
    return-void
.end method

.method public static j6(Lcom/crashlytics/android/core/h;JLjava/lang/String;Lcom/crashlytics/android/core/Ra;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;Ljava/util/Map;Lcom/crashlytics/android/core/ua;Landroid/app/ActivityManager$RunningAppProcessInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Float;IZJJ)V
    .registers 57
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/crashlytics/android/core/h;",
            "J",
            "Ljava/lang/String;",
            "Lcom/crashlytics/android/core/Ra;",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            "[",
            "Ljava/lang/Thread;",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/crashlytics/android/core/ua;",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            "IZJJ)V"
        }
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v0, p14

    invoke-static/range {p13 .. p13}, Lcom/crashlytics/android/core/d;->j6(Ljava/lang/String;)Lcom/crashlytics/android/core/d;

    move-result-object v7

    if-nez v0, :cond_c

    const/4 v0, 0x0

    goto :goto_18

    :cond_c
    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/core/d;->j6(Ljava/lang/String;)Lcom/crashlytics/android/core/d;

    move-result-object v0

    :goto_18
    move-object v8, v0

    invoke-virtual/range {p10 .. p10}, Lcom/crashlytics/android/core/ua;->DW()Lcom/crashlytics/android/core/d;

    move-result-object v11

    if-nez v11, :cond_2a

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "No log data to include with this event."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    invoke-virtual/range {p10 .. p10}, Lcom/crashlytics/android/core/ua;->j6()V

    const/16 v0, 0xa

    const/4 v1, 0x2

    invoke-virtual {v12, v0, v1}, Lcom/crashlytics/android/core/h;->Zo(II)V

    const/16 v21, 0x8

    move-wide/from16 v13, p1

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    move-object/from16 v17, p5

    move-object/from16 v18, p6

    move-object/from16 v19, p7

    move-object/from16 v20, p8

    move-object/from16 v22, p9

    move-object/from16 v23, p11

    move/from16 v24, p12

    move-object/from16 v25, v7

    move-object/from16 v26, v8

    move-object/from16 v27, p15

    move/from16 v28, p16

    move/from16 v29, p17

    move-wide/from16 v30, p18

    move-wide/from16 v32, p20

    move-object/from16 v34, v11

    invoke-static/range {v13 .. v34}, Lcom/crashlytics/android/core/Na;->j6(JLjava/lang/String;Lcom/crashlytics/android/core/Ra;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;ILjava/util/Map;Landroid/app/ActivityManager$RunningAppProcessInfo;ILcom/crashlytics/android/core/d;Lcom/crashlytics/android/core/d;Ljava/lang/Float;IZJJLcom/crashlytics/android/core/d;)I

    move-result v0

    invoke-virtual {v12, v0}, Lcom/crashlytics/android/core/h;->we(I)V

    const/4 v0, 0x1

    move-wide/from16 v2, p1

    invoke-virtual {v12, v0, v2, v3}, Lcom/crashlytics/android/core/h;->DW(IJ)V

    invoke-static/range {p3 .. p3}, Lcom/crashlytics/android/core/d;->j6(Ljava/lang/String;)Lcom/crashlytics/android/core/d;

    move-result-object v0

    invoke-virtual {v12, v1, v0}, Lcom/crashlytics/android/core/h;->DW(ILcom/crashlytics/android/core/d;)V

    const/16 v6, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p11

    move-object v13, v11

    move/from16 v11, p12

    invoke-static/range {v0 .. v11}, Lcom/crashlytics/android/core/Na;->j6(Lcom/crashlytics/android/core/h;Lcom/crashlytics/android/core/Ra;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;ILcom/crashlytics/android/core/d;Lcom/crashlytics/android/core/d;Ljava/util/Map;Landroid/app/ActivityManager$RunningAppProcessInfo;I)V

    move-object/from16 p1, p0

    move-object/from16 p2, p15

    move/from16 p3, p16

    move/from16 p4, p17

    move/from16 p5, p12

    move-wide/from16 p6, p18

    move-wide/from16 p8, p20

    invoke-static/range {p1 .. p9}, Lcom/crashlytics/android/core/Na;->j6(Lcom/crashlytics/android/core/h;Ljava/lang/Float;IZIJJ)V

    invoke-static {v12, v13}, Lcom/crashlytics/android/core/Na;->j6(Lcom/crashlytics/android/core/h;Lcom/crashlytics/android/core/d;)V

    return-void
.end method

.method private static j6(Lcom/crashlytics/android/core/h;Lcom/crashlytics/android/core/Ra;III)V
    .registers 11

    const/4 v0, 0x2

    invoke-virtual {p0, p4, v0}, Lcom/crashlytics/android/core/h;->Zo(II)V

    const/4 p4, 0x1

    invoke-static {p1, p4, p3}, Lcom/crashlytics/android/core/Na;->j6(Lcom/crashlytics/android/core/Ra;II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/core/h;->we(I)V

    iget-object v0, p1, Lcom/crashlytics/android/core/Ra;->DW:Ljava/lang/String;

    invoke-static {v0}, Lcom/crashlytics/android/core/d;->j6(Ljava/lang/String;)Lcom/crashlytics/android/core/d;

    move-result-object v0

    invoke-virtual {p0, p4, v0}, Lcom/crashlytics/android/core/h;->DW(ILcom/crashlytics/android/core/d;)V

    iget-object v0, p1, Lcom/crashlytics/android/core/Ra;->j6:Ljava/lang/String;

    if-eqz v0, :cond_21

    const/4 v1, 0x3

    invoke-static {v0}, Lcom/crashlytics/android/core/d;->j6(Ljava/lang/String;)Lcom/crashlytics/android/core/d;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/crashlytics/android/core/h;->DW(ILcom/crashlytics/android/core/d;)V

    :cond_21
    iget-object v0, p1, Lcom/crashlytics/android/core/Ra;->FH:[Ljava/lang/StackTraceElement;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_26
    if-ge v3, v1, :cond_31

    const/4 v4, 0x4

    aget-object v5, v0, v3

    invoke-static {p0, v4, v5, p4}, Lcom/crashlytics/android/core/Na;->j6(Lcom/crashlytics/android/core/h;ILjava/lang/StackTraceElement;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    :cond_31
    iget-object p1, p1, Lcom/crashlytics/android/core/Ra;->Hw:Lcom/crashlytics/android/core/Ra;

    if-eqz p1, :cond_48

    if-ge p2, p3, :cond_3d

    add-int/2addr p2, p4

    const/4 p4, 0x6

    invoke-static {p0, p1, p2, p3, p4}, Lcom/crashlytics/android/core/Na;->j6(Lcom/crashlytics/android/core/h;Lcom/crashlytics/android/core/Ra;III)V

    goto :goto_48

    :cond_3d
    :goto_3d
    if-eqz p1, :cond_44

    iget-object p1, p1, Lcom/crashlytics/android/core/Ra;->Hw:Lcom/crashlytics/android/core/Ra;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    :cond_44
    const/4 p1, 0x7

    invoke-virtual {p0, p1, v2}, Lcom/crashlytics/android/core/h;->VH(II)V

    :cond_48
    :goto_48
    return-void
.end method

.method private static j6(Lcom/crashlytics/android/core/h;Lcom/crashlytics/android/core/Ra;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;ILcom/crashlytics/android/core/d;Lcom/crashlytics/android/core/d;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/crashlytics/android/core/h;",
            "Lcom/crashlytics/android/core/Ra;",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            "[",
            "Ljava/lang/Thread;",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;I",
            "Lcom/crashlytics/android/core/d;",
            "Lcom/crashlytics/android/core/d;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/crashlytics/android/core/h;->Zo(II)V

    invoke-static/range {p1 .. p8}, Lcom/crashlytics/android/core/Na;->j6(Lcom/crashlytics/android/core/Ra;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;ILcom/crashlytics/android/core/d;Lcom/crashlytics/android/core/d;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/crashlytics/android/core/h;->we(I)V

    const/4 v2, 0x4

    invoke-static {p0, p2, p3, v2, v0}, Lcom/crashlytics/android/core/Na;->j6(Lcom/crashlytics/android/core/h;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)V

    array-length p2, p4

    const/4 p3, 0x0

    const/4 v3, 0x0

    :goto_13
    if-ge v3, p2, :cond_23

    aget-object v4, p4, v3

    invoke-interface {p5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/StackTraceElement;

    invoke-static {p0, v4, v5, p3, p3}, Lcom/crashlytics/android/core/Na;->j6(Lcom/crashlytics/android/core/h;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_23
    invoke-static {p0, p1, v0, p6, v1}, Lcom/crashlytics/android/core/Na;->j6(Lcom/crashlytics/android/core/h;Lcom/crashlytics/android/core/Ra;III)V

    const/4 p1, 0x3

    invoke-virtual {p0, p1, v1}, Lcom/crashlytics/android/core/h;->Zo(II)V

    invoke-static {}, Lcom/crashlytics/android/core/Na;->j6()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/crashlytics/android/core/h;->we(I)V

    sget-object p2, Lcom/crashlytics/android/core/Na;->j6:Lcom/crashlytics/android/core/d;

    invoke-virtual {p0, v0, p2}, Lcom/crashlytics/android/core/h;->DW(ILcom/crashlytics/android/core/d;)V

    invoke-virtual {p0, v1, p2}, Lcom/crashlytics/android/core/h;->DW(ILcom/crashlytics/android/core/d;)V

    const-wide/16 p2, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/crashlytics/android/core/h;->DW(IJ)V

    invoke-virtual {p0, v2, v1}, Lcom/crashlytics/android/core/h;->Zo(II)V

    invoke-static {p7, p8}, Lcom/crashlytics/android/core/Na;->j6(Lcom/crashlytics/android/core/d;Lcom/crashlytics/android/core/d;)I

    move-result p4

    invoke-virtual {p0, p4}, Lcom/crashlytics/android/core/h;->we(I)V

    invoke-virtual {p0, v0, p2, p3}, Lcom/crashlytics/android/core/h;->DW(IJ)V

    invoke-virtual {p0, v1, p2, p3}, Lcom/crashlytics/android/core/h;->DW(IJ)V

    invoke-virtual {p0, p1, p7}, Lcom/crashlytics/android/core/h;->DW(ILcom/crashlytics/android/core/d;)V

    if-eqz p8, :cond_56

    invoke-virtual {p0, v2, p8}, Lcom/crashlytics/android/core/h;->DW(ILcom/crashlytics/android/core/d;)V

    :cond_56
    return-void
.end method

.method private static j6(Lcom/crashlytics/android/core/h;Lcom/crashlytics/android/core/Ra;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;ILcom/crashlytics/android/core/d;Lcom/crashlytics/android/core/d;Ljava/util/Map;Landroid/app/ActivityManager$RunningAppProcessInfo;I)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/crashlytics/android/core/h;",
            "Lcom/crashlytics/android/core/Ra;",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            "[",
            "Ljava/lang/Thread;",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;I",
            "Lcom/crashlytics/android/core/d;",
            "Lcom/crashlytics/android/core/d;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            "I)V"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/crashlytics/android/core/h;->Zo(II)V

    invoke-static/range {p1 .. p11}, Lcom/crashlytics/android/core/Na;->j6(Lcom/crashlytics/android/core/Ra;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;ILcom/crashlytics/android/core/d;Lcom/crashlytics/android/core/d;Ljava/util/Map;Landroid/app/ActivityManager$RunningAppProcessInfo;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/core/h;->we(I)V

    invoke-static/range {p0 .. p8}, Lcom/crashlytics/android/core/Na;->j6(Lcom/crashlytics/android/core/h;Lcom/crashlytics/android/core/Ra;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;ILcom/crashlytics/android/core/d;Lcom/crashlytics/android/core/d;)V

    if-eqz p9, :cond_1a

    invoke-interface {p9}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1a

    invoke-static {p0, p9}, Lcom/crashlytics/android/core/Na;->j6(Lcom/crashlytics/android/core/h;Ljava/util/Map;)V

    :cond_1a
    if-eqz p10, :cond_28

    iget p1, p10, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 p2, 0x64

    if-eq p1, p2, :cond_24

    const/4 p1, 0x1

    goto :goto_25

    :cond_24
    const/4 p1, 0x0

    :goto_25
    invoke-virtual {p0, v1, p1}, Lcom/crashlytics/android/core/h;->DW(IZ)V

    :cond_28
    const/4 p1, 0x4

    invoke-virtual {p0, p1, p11}, Lcom/crashlytics/android/core/h;->VH(II)V

    return-void
.end method

.method private static j6(Lcom/crashlytics/android/core/h;Lcom/crashlytics/android/core/d;)V
    .registers 4

    if-eqz p1, :cond_12

    const/4 v0, 0x6

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/crashlytics/android/core/h;->Zo(II)V

    invoke-static {p1}, Lcom/crashlytics/android/core/Na;->j6(Lcom/crashlytics/android/core/d;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/core/h;->we(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/crashlytics/android/core/h;->DW(ILcom/crashlytics/android/core/d;)V

    :cond_12
    return-void
.end method

.method private static j6(Lcom/crashlytics/android/core/h;Ljava/lang/Float;IZIJJ)V
    .registers 12

    const/4 v0, 0x5

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/crashlytics/android/core/h;->Zo(II)V

    invoke-static/range {p1 .. p8}, Lcom/crashlytics/android/core/Na;->j6(Ljava/lang/Float;IZIJJ)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/crashlytics/android/core/h;->we(I)V

    if-eqz p1, :cond_16

    const/4 v2, 0x1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, v2, p1}, Lcom/crashlytics/android/core/h;->DW(IF)V

    :cond_16
    invoke-virtual {p0, v1, p2}, Lcom/crashlytics/android/core/h;->v5(II)V

    const/4 p1, 0x3

    invoke-virtual {p0, p1, p3}, Lcom/crashlytics/android/core/h;->DW(IZ)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1, p4}, Lcom/crashlytics/android/core/h;->VH(II)V

    invoke-virtual {p0, v0, p5, p6}, Lcom/crashlytics/android/core/h;->DW(IJ)V

    const/4 p1, 0x6

    invoke-virtual {p0, p1, p7, p8}, Lcom/crashlytics/android/core/h;->DW(IJ)V

    return-void
.end method

.method public static j6(Lcom/crashlytics/android/core/h;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 6

    const/4 v0, 0x1

    invoke-static {p2}, Lcom/crashlytics/android/core/d;->j6(Ljava/lang/String;)Lcom/crashlytics/android/core/d;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Lcom/crashlytics/android/core/h;->DW(ILcom/crashlytics/android/core/d;)V

    const/4 p2, 0x2

    invoke-static {p1}, Lcom/crashlytics/android/core/d;->j6(Ljava/lang/String;)Lcom/crashlytics/android/core/d;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/crashlytics/android/core/h;->DW(ILcom/crashlytics/android/core/d;)V

    const/4 p1, 0x3

    invoke-virtual {p0, p1, p3, p4}, Lcom/crashlytics/android/core/h;->DW(IJ)V

    return-void
.end method

.method public static j6(Lcom/crashlytics/android/core/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    if-nez p1, :cond_4

    const-string p1, ""

    :cond_4
    invoke-static {p1}, Lcom/crashlytics/android/core/d;->j6(Ljava/lang/String;)Lcom/crashlytics/android/core/d;

    move-result-object p1

    invoke-static {p2}, Lcom/crashlytics/android/core/Na;->j6(Ljava/lang/String;)Lcom/crashlytics/android/core/d;

    move-result-object v0

    invoke-static {p3}, Lcom/crashlytics/android/core/Na;->j6(Ljava/lang/String;)Lcom/crashlytics/android/core/d;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2, p1}, Lcom/crashlytics/android/core/h;->j6(ILcom/crashlytics/android/core/d;)I

    move-result v3

    add-int/lit8 v3, v3, 0x0

    const/4 v4, 0x2

    if-eqz p2, :cond_1f

    invoke-static {v4, v0}, Lcom/crashlytics/android/core/h;->j6(ILcom/crashlytics/android/core/d;)I

    move-result v5

    add-int/2addr v3, v5

    :cond_1f
    const/4 v5, 0x3

    if-eqz p3, :cond_27

    invoke-static {v5, v1}, Lcom/crashlytics/android/core/h;->j6(ILcom/crashlytics/android/core/d;)I

    move-result v6

    add-int/2addr v3, v6

    :cond_27
    const/4 v6, 0x6

    invoke-virtual {p0, v6, v4}, Lcom/crashlytics/android/core/h;->Zo(II)V

    invoke-virtual {p0, v3}, Lcom/crashlytics/android/core/h;->we(I)V

    invoke-virtual {p0, v2, p1}, Lcom/crashlytics/android/core/h;->DW(ILcom/crashlytics/android/core/d;)V

    if-eqz p2, :cond_36

    invoke-virtual {p0, v4, v0}, Lcom/crashlytics/android/core/h;->DW(ILcom/crashlytics/android/core/d;)V

    :cond_36
    if-eqz p3, :cond_3b

    invoke-virtual {p0, v5, v1}, Lcom/crashlytics/android/core/h;->DW(ILcom/crashlytics/android/core/d;)V

    :cond_3b
    return-void
.end method

.method public static j6(Lcom/crashlytics/android/core/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 16

    invoke-static {p1}, Lcom/crashlytics/android/core/d;->j6(Ljava/lang/String;)Lcom/crashlytics/android/core/d;

    move-result-object p1

    invoke-static {p2}, Lcom/crashlytics/android/core/d;->j6(Ljava/lang/String;)Lcom/crashlytics/android/core/d;

    move-result-object p2

    invoke-static {p3}, Lcom/crashlytics/android/core/d;->j6(Ljava/lang/String;)Lcom/crashlytics/android/core/d;

    move-result-object p3

    invoke-static {p4}, Lcom/crashlytics/android/core/d;->j6(Ljava/lang/String;)Lcom/crashlytics/android/core/d;

    move-result-object p4

    invoke-static {p5}, Lcom/crashlytics/android/core/d;->j6(Ljava/lang/String;)Lcom/crashlytics/android/core/d;

    move-result-object p5

    if-eqz p7, :cond_1b

    invoke-static {p7}, Lcom/crashlytics/android/core/d;->j6(Ljava/lang/String;)Lcom/crashlytics/android/core/d;

    move-result-object p7

    goto :goto_1c

    :cond_1b
    const/4 p7, 0x0

    :goto_1c
    const/4 v0, 0x7

    const/4 v7, 0x2

    invoke-virtual {p0, v0, v7}, Lcom/crashlytics/android/core/h;->Zo(II)V

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    move-object v6, p7

    invoke-static/range {v0 .. v6}, Lcom/crashlytics/android/core/Na;->j6(Lcom/crashlytics/android/core/d;Lcom/crashlytics/android/core/d;Lcom/crashlytics/android/core/d;Lcom/crashlytics/android/core/d;Lcom/crashlytics/android/core/d;ILcom/crashlytics/android/core/d;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/core/h;->we(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/crashlytics/android/core/h;->DW(ILcom/crashlytics/android/core/d;)V

    invoke-virtual {p0, v7, p3}, Lcom/crashlytics/android/core/h;->DW(ILcom/crashlytics/android/core/d;)V

    const/4 p1, 0x3

    invoke-virtual {p0, p1, p4}, Lcom/crashlytics/android/core/h;->DW(ILcom/crashlytics/android/core/d;)V

    const/4 p1, 0x5

    invoke-virtual {p0, p1, v7}, Lcom/crashlytics/android/core/h;->Zo(II)V

    invoke-static {p2}, Lcom/crashlytics/android/core/Na;->DW(Lcom/crashlytics/android/core/d;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/crashlytics/android/core/h;->we(I)V

    invoke-virtual {p0, v0, p2}, Lcom/crashlytics/android/core/h;->DW(ILcom/crashlytics/android/core/d;)V

    const/4 p1, 0x6

    invoke-virtual {p0, p1, p5}, Lcom/crashlytics/android/core/h;->DW(ILcom/crashlytics/android/core/d;)V

    if-eqz p7, :cond_5a

    const/16 p1, 0x8

    sget-object p2, Lcom/crashlytics/android/core/Na;->DW:Lcom/crashlytics/android/core/d;

    invoke-virtual {p0, p1, p2}, Lcom/crashlytics/android/core/h;->DW(ILcom/crashlytics/android/core/d;)V

    const/16 p1, 0x9

    invoke-virtual {p0, p1, p7}, Lcom/crashlytics/android/core/h;->DW(ILcom/crashlytics/android/core/d;)V

    :cond_5a
    const/16 p1, 0xa

    invoke-virtual {p0, p1, p6}, Lcom/crashlytics/android/core/h;->Hw(II)V

    return-void
.end method

.method public static j6(Lcom/crashlytics/android/core/h;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7

    invoke-static {p1}, Lcom/crashlytics/android/core/d;->j6(Ljava/lang/String;)Lcom/crashlytics/android/core/d;

    move-result-object p1

    invoke-static {p2}, Lcom/crashlytics/android/core/d;->j6(Ljava/lang/String;)Lcom/crashlytics/android/core/d;

    move-result-object p2

    const/16 v0, 0x8

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/crashlytics/android/core/h;->Zo(II)V

    invoke-static {p1, p2, p3}, Lcom/crashlytics/android/core/Na;->j6(Lcom/crashlytics/android/core/d;Lcom/crashlytics/android/core/d;Z)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/core/h;->we(I)V

    const/4 v0, 0x1

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Lcom/crashlytics/android/core/h;->Hw(II)V

    invoke-virtual {p0, v1, p1}, Lcom/crashlytics/android/core/h;->DW(ILcom/crashlytics/android/core/d;)V

    invoke-virtual {p0, v2, p2}, Lcom/crashlytics/android/core/h;->DW(ILcom/crashlytics/android/core/d;)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1, p3}, Lcom/crashlytics/android/core/h;->DW(IZ)V

    return-void
.end method

.method private static j6(Lcom/crashlytics/android/core/h;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)V
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/crashlytics/android/core/h;->Zo(II)V

    invoke-static {p1, p2, p3, p4}, Lcom/crashlytics/android/core/Na;->j6(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/crashlytics/android/core/h;->we(I)V

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/crashlytics/android/core/d;->j6(Ljava/lang/String;)Lcom/crashlytics/android/core/d;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/crashlytics/android/core/h;->DW(ILcom/crashlytics/android/core/d;)V

    invoke-virtual {p0, v1, p3}, Lcom/crashlytics/android/core/h;->VH(II)V

    array-length p1, p2

    const/4 p3, 0x0

    :goto_1c
    if-ge p3, p1, :cond_27

    const/4 v0, 0x3

    aget-object v1, p2, p3

    invoke-static {p0, v0, v1, p4}, Lcom/crashlytics/android/core/Na;->j6(Lcom/crashlytics/android/core/h;ILjava/lang/StackTraceElement;Z)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_1c

    :cond_27
    return-void
.end method

.method private static j6(Lcom/crashlytics/android/core/h;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/crashlytics/android/core/h;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v1}, Lcom/crashlytics/android/core/h;->Zo(II)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/crashlytics/android/core/Na;->j6(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/crashlytics/android/core/h;->we(I)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/crashlytics/android/core/d;->j6(Ljava/lang/String;)Lcom/crashlytics/android/core/d;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v3, v2}, Lcom/crashlytics/android/core/h;->DW(ILcom/crashlytics/android/core/d;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_43

    const-string v0, ""

    :cond_43
    invoke-static {v0}, Lcom/crashlytics/android/core/d;->j6(Ljava/lang/String;)Lcom/crashlytics/android/core/d;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/crashlytics/android/core/h;->DW(ILcom/crashlytics/android/core/d;)V

    goto :goto_8

    :cond_4b
    return-void
.end method
