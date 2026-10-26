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
    .locals 4

    const-wide v2, 0x1631243822c87640L    # 8.747647411874676E-202

    const-class v0, Labcd/Va$a;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>()V
    .locals 6
    .annotation runtime Labcd/su;
        method = -0x10d234073dc9406bL
    .end annotation

    const-wide v4, -0x3b53e0369de5a813L    # -6.640631088827467E22

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Va$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3b53e0369de5a813L    # -6.640631088827467E22

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2710

    new-array v0, v0, [C

    iput-object v0, p0, Labcd/Va$a;->FH:[C

    const/16 v0, 0x2710

    new-array v0, v0, [C

    iput-object v0, p0, Labcd/Va$a;->Hw:[C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    sget-boolean v1, Labcd/Va$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method synthetic constructor <init>(Labcd/Ua;)V
    .locals 6

    const-wide v4, 0x2aaf9744df614b60L    # 4.407714145283013E-103

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Va$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2aaf9744df614b60L    # 4.407714145283013E-103

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Labcd/Va$a;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    sget-boolean v1, Labcd/Va$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private j6(I)V
    .locals 8
    .annotation runtime Labcd/su;
        method = -0x1d6f289c6640a43L
    .end annotation

    const-wide v6, 0x180cc761dedad9b8L    # 7.884715535959115E-193

    :try_start_0
    sget-boolean v0, Labcd/Va$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x180cc761dedad9b8L    # 7.884715535959115E-193

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iget-object v0, p0, Labcd/Va$a;->Hw:[C

    array-length v1, v0

    if-gt v1, p1, :cond_1

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [C

    iget-object v1, p0, Labcd/Va$a;->Hw:[C

    const/4 v2, 0x0

    const/4 v3, 0x0

    array-length v4, v1

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Labcd/Va$a;->Hw:[C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    sget-boolean v1, Labcd/Va$a;->DW:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v6, v7, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method


# virtual methods
.method public j6(Ljava/io/Reader;Ljava/lang/String;II)Ljava/io/Reader;
    .locals 15
    .annotation runtime Labcd/su;
        method = 0x7557e3646b93f080L
    .end annotation

    :try_start_0
    sget-boolean v2, Labcd/Va$a;->j6:Z

    if-eqz v2, :cond_0

    new-instance v7, Ljava/lang/Integer;

    move/from16 v0, p3

    invoke-direct {v7, v0}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    move/from16 v0, p4

    invoke-direct {v8, v0}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0x20140ca8a43e45c1L    # -1.1711113411950113E154

    move-object v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-static/range {v2 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x1

    :cond_1
    iget-object v2, p0, Labcd/Va$a;->FH:[C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/Reader;->read([C)I

    move-result v8

    const/4 v2, -0x1

    if-ne v8, v2, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/io/Reader;->close()V

    new-instance v2, Ljava/io/CharArrayReader;

    iget-object v4, p0, Labcd/Va$a;->Hw:[C

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5, v3}, Ljava/io/CharArrayReader;-><init>([CII)V

    return-object v2

    :cond_2
    const/4 v5, 0x0

    :goto_0
    if-ge v5, v8, :cond_1

    move/from16 v0, p3

    if-ne v4, v0, :cond_3

    move/from16 v0, p4

    if-ne v6, v0, :cond_3

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v3

    invoke-direct {p0, v2}, Labcd/Va$a;->j6(I)V

    const/4 v2, 0x0

    :goto_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v2, v7, :cond_3

    iget-object v7, p0, Labcd/Va$a;->Hw:[C

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    aput-char v9, v7, v3

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Labcd/Va$a;->FH:[C

    aget-char v9, v2, v5

    const/16 v2, 0xa

    if-eq v9, v2, :cond_5

    const v2, 0xfffe

    if-eq v9, v2, :cond_4

    add-int/lit8 v7, v3, 0x1

    invoke-direct {p0, v7}, Labcd/Va$a;->j6(I)V

    iget-object v2, p0, Labcd/Va$a;->Hw:[C

    aput-char v9, v2, v3

    add-int/lit8 v6, v6, 0x1

    move v2, v4

    move v3, v5

    :goto_2
    add-int/lit8 v5, v3, 0x1

    move v4, v2

    move v3, v7

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v3, 0xa

    invoke-direct {p0, v2}, Labcd/Va$a;->j6(I)V

    iget-object v2, p0, Labcd/Va$a;->Hw:[C
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v4, v3, 0x1

    aput-char v9, v2, v3

    add-int/lit8 v3, v4, 0x1

    :try_start_2
    iget-object v6, p0, Labcd/Va$a;->FH:[C
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    add-int/lit8 v7, v5, 0x1

    aget-char v5, v6, v5

    aput-char v5, v2, v4

    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v9, v7, 0x1

    aget-char v7, v6, v7

    aput-char v7, v2, v3

    add-int/lit8 v3, v4, 0x1

    add-int/lit8 v10, v9, 0x1

    aget-char v9, v6, v9

    aput-char v9, v2, v4

    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v11, v10, 0x1

    aget-char v10, v6, v10

    aput-char v10, v2, v3

    add-int/lit8 v3, v4, 0x1

    add-int/lit8 v12, v11, 0x1

    aget-char v11, v6, v11

    aput-char v11, v2, v4

    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v13, v12, 0x1

    aget-char v12, v6, v12

    aput-char v12, v2, v3

    add-int/lit8 v3, v4, 0x1

    add-int/lit8 v14, v13, 0x1

    aget-char v13, v6, v13

    aput-char v13, v2, v4

    aget-char v4, v6, v14

    aput-char v4, v2, v3

    shl-int/lit8 v2, v10, 0x0

    shl-int/lit8 v5, v5, 0x18

    or-int/lit8 v5, v5, 0x0

    shl-int/lit8 v6, v7, 0x10

    or-int/2addr v5, v6

    shl-int/lit8 v6, v9, 0x8

    or-int/2addr v5, v6

    or-int/2addr v2, v5

    add-int/lit8 v5, v3, 0x1

    add-int/lit8 v3, v14, 0x1

    shl-int/lit8 v6, v11, 0x18

    or-int/lit8 v6, v6, 0x0

    shl-int/lit8 v7, v12, 0x10

    or-int/2addr v6, v7

    shl-int/lit8 v7, v13, 0x8

    or-int/2addr v6, v7

    shl-int/lit8 v4, v4, 0x0

    or-int/2addr v4, v6

    move v6, v4

    move v7, v5

    goto :goto_2

    :cond_5
    move/from16 v0, p3

    if-ne v4, v0, :cond_7

    move/from16 v0, p4

    if-ge v6, v0, :cond_7

    sub-int v6, p4, v6

    :try_start_3
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v3

    add-int/2addr v2, v6

    invoke-direct {p0, v2}, Labcd/Va$a;->j6(I)V

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v6, :cond_6

    iget-object v7, p0, Labcd/Va$a;->Hw:[C

    const/16 v10, 0x20

    aput-char v10, v7, v3

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    :goto_4
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_7

    iget-object v6, p0, Labcd/Va$a;->Hw:[C

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    aput-char v7, v6, v3

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_7
    add-int/lit8 v7, v3, 0x1

    invoke-direct {p0, v7}, Labcd/Va$a;->j6(I)V

    iget-object v2, p0, Labcd/Va$a;->Hw:[C

    aput-char v9, v2, v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    add-int/lit8 v2, v4, 0x1

    const/4 v4, 0x1

    move v3, v5

    move v6, v4

    goto/16 :goto_2

    :catchall_0
    move-exception v3

    :goto_5
    sget-boolean v2, Labcd/Va$a;->DW:Z

    if-eqz v2, :cond_8

    const-wide v4, -0x20140ca8a43e45c1L    # -1.1711113411950113E154

    new-instance v9, Ljava/lang/Integer;

    move/from16 v0, p3

    invoke-direct {v9, v0}, Ljava/lang/Integer;-><init>(I)V

    new-instance v10, Ljava/lang/Integer;

    move/from16 v0, p4

    invoke-direct {v10, v0}, Ljava/lang/Integer;-><init>(I)V

    move-object v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    invoke-static/range {v3 .. v10}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8
    throw v3

    :catchall_1
    move-exception v3

    goto :goto_5
.end method
