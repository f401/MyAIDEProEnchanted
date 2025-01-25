.class Labcd/Va$a;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Va;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field private FH:[C
    .annotation runtime Labcd/ru;
        field = -0x780ec610d10d848L
    .end annotation
.end field

.field private Hw:[C
    .annotation runtime Labcd/ru;
        field = 0x20a7888ab4677fb9L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/Va$a;

    const-wide v1, 0x1631243822c87640L  # 8.747647411874676E-202

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>()V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x10d234073dc9406bL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x3b53e0369de5a813L  # -6.640631088827467E22

    :try_start_6
    sget-boolean v3, Labcd/Va$a;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v3, 0x2710

    new-array v4, v3, [C

    iput-object v4, p0, Labcd/Va$a;->FH:[C

    new-array v3, v3, [C

    iput-object v3, p0, Labcd/Va$a;->Hw:[C
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v3

    sget-boolean v4, Labcd/Va$a;->DW:Z

    if-eqz v4, :cond_23

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_23
    throw v3
.end method

.method synthetic constructor <init>(Labcd/Ua;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, 0x2aaf9744df614b60L  # 4.407714145283013E-103

    :try_start_6
    sget-boolean v3, Labcd/Va$a;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Labcd/Va$a;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/Va$a;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method private j6(I)V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x1d6f289c6640a43L
    .end annotation

    const-wide v0, 0x180cc761dedad9b8L  # 7.884715535959115E-193

    :try_start_5
    sget-boolean v2, Labcd/Va$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Labcd/Va$a;->Hw:[C

    array-length v3, v2

    if-gt v3, p1, :cond_25

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-array v2, v2, [C

    iget-object v3, p0, Labcd/Va$a;->Hw:[C

    array-length v4, v3

    const/4 v5, 0x0

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Labcd/Va$a;->Hw:[C
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_26

    :cond_25
    return-void

    :catchall_26
    move-exception v2

    sget-boolean v3, Labcd/Va$a;->DW:Z

    if-eqz v3, :cond_33

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_33
    throw v2
.end method


# virtual methods
.method public j6(Ljava/io/Reader;Ljava/lang/String;II)Ljava/io/Reader;
    .registers 23
    .annotation runtime Labcd/su;
        method = 0x7557e3646b93f080L
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v8, p2

    move/from16 v10, p3

    move/from16 v11, p4

    :try_start_8
    sget-boolean v0, Labcd/Va$a;->j6:Z

    if-eqz v0, :cond_24

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v10}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v11}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x20140ca8a43e45c1L  # -1.1711113411950113E154

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_24
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    :cond_29
    iget-object v5, v9, Labcd/Va$a;->FH:[C
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_12b

    move-object/from16 v6, p1

    :try_start_2d
    invoke-virtual {v6, v5}, Ljava/io/Reader;->read([C)I

    move-result v5

    const/4 v7, -0x1

    if-ne v5, v7, :cond_3f

    invoke-virtual/range {p1 .. p1}, Ljava/io/Reader;->close()V

    new-instance v1, Ljava/io/CharArrayReader;

    iget-object v3, v9, Labcd/Va$a;->Hw:[C

    invoke-direct {v1, v3, v0, v2}, Ljava/io/CharArrayReader;-><init>([CII)V

    return-object v1

    :cond_3f
    const/4 v7, 0x0

    :goto_40
    if-ge v7, v5, :cond_29

    if-ne v3, v10, :cond_62

    if-ne v4, v11, :cond_62

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v12, v2

    invoke-direct {v9, v12}, Labcd/Va$a;->j6(I)V

    const/4 v12, 0x0

    :goto_4f
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v12, v13, :cond_62

    iget-object v13, v9, Labcd/Va$a;->Hw:[C

    invoke-virtual {v8, v12}, Ljava/lang/String;->charAt(I)C

    move-result v14

    aput-char v14, v13, v2

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_4f

    :cond_62
    iget-object v12, v9, Labcd/Va$a;->FH:[C

    aget-char v12, v12, v7

    const/16 v13, 0xa

    if-eq v12, v13, :cond_e8

    const v13, 0xfffe

    if-eq v12, v13, :cond_7d

    add-int/lit8 v13, v2, 0x1

    invoke-direct {v9, v13}, Labcd/Va$a;->j6(I)V

    iget-object v14, v9, Labcd/Va$a;->Hw:[C

    aput-char v12, v14, v2

    add-int/lit8 v4, v4, 0x1

    move v2, v13

    goto/16 :goto_126

    :cond_7d
    add-int/lit8 v3, v2, 0xa

    invoke-direct {v9, v3}, Labcd/Va$a;->j6(I)V

    iget-object v3, v9, Labcd/Va$a;->Hw:[C
    :try_end_84
    .catchall {:try_start_2d .. :try_end_84} :catchall_129

    add-int/lit8 v4, v2, 0x1

    aput-char v12, v3, v2

    add-int/lit8 v2, v4, 0x1

    :try_start_8a
    iget-object v12, v9, Labcd/Va$a;->FH:[C
    :try_end_8c
    .catchall {:try_start_8a .. :try_end_8c} :catchall_129

    add-int/lit8 v13, v7, 0x1

    aget-char v7, v12, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v2, 0x1

    add-int/lit8 v14, v13, 0x1

    aget-char v13, v12, v13

    aput-char v13, v3, v2

    add-int/lit8 v2, v4, 0x1

    add-int/lit8 v15, v14, 0x1

    aget-char v14, v12, v14

    aput-char v14, v3, v4

    add-int/lit8 v4, v2, 0x1

    add-int/lit8 v16, v15, 0x1

    aget-char v15, v12, v15

    aput-char v15, v3, v2

    shl-int/lit8 v2, v15, 0x0

    shl-int/lit8 v7, v7, 0x18

    or-int/2addr v7, v0

    shl-int/lit8 v13, v13, 0x10

    or-int/2addr v7, v13

    shl-int/lit8 v13, v14, 0x8

    or-int/2addr v7, v13

    or-int/2addr v2, v7

    add-int/lit8 v7, v4, 0x1

    add-int/lit8 v13, v16, 0x1

    aget-char v14, v12, v16

    aput-char v14, v3, v4

    add-int/lit8 v4, v7, 0x1

    add-int/lit8 v15, v13, 0x1

    aget-char v13, v12, v13

    aput-char v13, v3, v7

    add-int/lit8 v7, v4, 0x1

    add-int/lit8 v16, v15, 0x1

    aget-char v15, v12, v15

    aput-char v15, v3, v4

    :try_start_ce
    aget-char v4, v12, v16
    :try_end_d0
    .catchall {:try_start_ce .. :try_end_d0} :catchall_129

    aput-char v4, v3, v7

    shl-int/lit8 v3, v14, 0x18

    or-int/2addr v3, v0

    shl-int/lit8 v12, v13, 0x10

    or-int/2addr v3, v12

    shl-int/lit8 v12, v15, 0x8

    or-int/2addr v3, v12

    shl-int/2addr v4, v0

    or-int/2addr v3, v4

    add-int/2addr v7, v1

    add-int/lit8 v4, v16, 0x1

    move/from16 v17, v3

    move v3, v2

    move v2, v7

    move v7, v4

    move/from16 v4, v17

    goto :goto_126

    :cond_e8
    if-ne v3, v10, :cond_119

    if-ge v4, v11, :cond_119

    sub-int v4, v11, v4

    :try_start_ee
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v13, v2

    add-int/2addr v13, v4

    invoke-direct {v9, v13}, Labcd/Va$a;->j6(I)V

    const/4 v13, 0x0

    :goto_f8
    if-ge v13, v4, :cond_105

    iget-object v14, v9, Labcd/Va$a;->Hw:[C

    const/16 v15, 0x20

    aput-char v15, v14, v2

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_f8

    :cond_105
    const/4 v4, 0x0

    :goto_106
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v4, v13, :cond_119

    iget-object v13, v9, Labcd/Va$a;->Hw:[C

    invoke-virtual {v8, v4}, Ljava/lang/String;->charAt(I)C

    move-result v14

    aput-char v14, v13, v2

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_106

    :cond_119
    add-int/lit8 v4, v2, 0x1

    invoke-direct {v9, v4}, Labcd/Va$a;->j6(I)V

    iget-object v13, v9, Labcd/Va$a;->Hw:[C

    aput-char v12, v13, v2
    :try_end_122
    .catchall {:try_start_ee .. :try_end_122} :catchall_129

    add-int/lit8 v3, v3, 0x1

    move v2, v4

    const/4 v4, 0x1

    :goto_126
    add-int/2addr v7, v1

    goto/16 :goto_40

    :catchall_129
    move-exception v0

    goto :goto_12e

    :catchall_12b
    move-exception v0

    move-object/from16 v6, p1

    :goto_12e
    sget-boolean v1, Labcd/Va$a;->DW:Z

    if-eqz v1, :cond_14c

    const-wide v2, -0x20140ca8a43e45c1L  # -1.1711113411950113E154

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v10}, Ljava/lang/Integer;-><init>(I)V

    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, v11}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object v8, v10

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14c
    goto :goto_14e

    :goto_14d
    throw v0

    :goto_14e
    goto :goto_14d
.end method
