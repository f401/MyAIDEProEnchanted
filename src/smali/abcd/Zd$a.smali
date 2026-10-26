.class Labcd/Zd$a;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Zd;
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
.field private FH:Ljava/io/Reader;
    .annotation runtime Labcd/ru;
        field = -0x291aa178b966cc01L
    .end annotation
.end field

.field private Hw:[C
    .annotation runtime Labcd/ru;
        field = 0x206011f3695db6f0L
    .end annotation
.end field

.field private VH:I
    .annotation runtime Labcd/ru;
        field = -0x2169ce148da97834L
    .end annotation
.end field

.field private Zo:I
    .annotation runtime Labcd/ru;
        field = -0x3fccd7707bd55b8L
    .end annotation
.end field

.field private gn:Z
    .annotation runtime Labcd/ru;
        field = -0x34ec9dbea0bf4870L
    .end annotation
.end field

.field private v5:I
    .annotation runtime Labcd/ru;
        field = -0x24b5ac4faac73e97L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide v2, 0x4c6227aef57537f1L    # 9.11686929441322E59

    const-class v0, Labcd/Zd$a;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>()V
    .locals 6
    .annotation runtime Labcd/su;
        method = -0xedb7542974d1ffL
    .end annotation

    const-wide v4, 0x521a4fe9f0f485c7L    # 3.2714125659884917E87

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Zd$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x521a4fe9f0f485c7L    # 3.2714125659884917E87

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2710

    new-array v0, v0, [C

    iput-object v0, p0, Labcd/Zd$a;->Hw:[C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    sget-boolean v1, Labcd/Zd$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method synthetic constructor <init>(Labcd/Yd;)V
    .locals 6

    const-wide v4, 0x509c17b715186e4L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Zd$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x509c17b715186e4L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Labcd/Zd$a;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    sget-boolean v1, Labcd/Zd$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method


# virtual methods
.method public j6([I[CII)I
    .locals 15
    .annotation runtime Labcd/su;
        method = 0x376dc8b560be7e3cL
    .end annotation

    :try_start_0
    sget-boolean v2, Labcd/Zd$a;->j6:Z

    if-eqz v2, :cond_0

    new-instance v7, Ljava/lang/Integer;

    move/from16 v0, p3

    invoke-direct {v7, v0}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    move/from16 v0, p4

    invoke-direct {v8, v0}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x1a5ef335d81d3669L

    move-object v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-static/range {v2 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v12, p0, Labcd/Zd$a;->Hw:[C

    iget v4, p0, Labcd/Zd$a;->v5:I

    iget v10, p0, Labcd/Zd$a;->Zo:I

    iget v2, p0, Labcd/Zd$a;->VH:I

    add-int v13, p3, p4

    move/from16 v3, p3

    :goto_0
    if-ge v3, v13, :cond_14

    if-lt v4, v10, :cond_3

    iget-object v5, p0, Labcd/Zd$a;->FH:Ljava/io/Reader;

    invoke-virtual {v5, v12}, Ljava/io/Reader;->read([C)I

    move-result v10

    const/4 v5, -0x1

    if-ne v10, v5, :cond_2

    iput v4, p0, Labcd/Zd$a;->v5:I

    iput v10, p0, Labcd/Zd$a;->Zo:I

    iput v2, p0, Labcd/Zd$a;->VH:I

    move/from16 v0, p3

    if-ne v3, v0, :cond_1

    const/16 p4, -0x1

    :goto_1
    return p4

    :cond_1
    sub-int p4, v3, p3

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :cond_3
    sub-int v5, v10, v4

    sub-int v6, v13, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    move v11, v3

    move v5, v4

    :goto_2
    add-int v4, v6, v3

    add-int/lit8 v4, v4, -0x1

    if-ge v11, v4, :cond_4

    aget-char v4, v12, v5

    const/16 v7, 0x5c

    if-ne v4, v7, :cond_5

    :cond_4
    add-int/lit8 v9, v5, 0x1

    aget-char v14, v12, v5

    const/16 v3, 0x5c

    if-eq v14, v3, :cond_6

    const/4 v3, 0x1

    aput v3, p1, v11

    add-int/lit8 v3, v11, 0x1

    aput-char v14, p2, v11

    :goto_3
    move v4, v9

    goto :goto_0

    :cond_5
    const/4 v7, 0x1

    aput v7, p1, v11

    aput-char v4, p2, v11

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v11, 0x1

    move v11, v4

    goto :goto_2

    :cond_6
    if-lez v2, :cond_7

    const/4 v3, 0x1

    aput v3, p1, v11

    add-int/lit8 v3, v11, 0x1

    aput-char v14, p2, v11

    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_7
    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v2, v10

    move v8, v9

    move v3, v9

    :goto_4
    if-lt v3, v2, :cond_16

    sub-int v3, v2, v8

    const/4 v2, 0x0

    :try_start_1
    invoke-static {v12, v8, v12, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Labcd/Zd$a;->FH:Ljava/io/Reader;

    array-length v8, v12

    sub-int/2addr v8, v3

    invoke-virtual {v2, v12, v3, v8}, Ljava/io/Reader;->read([CII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    const/4 v8, -0x1

    if-ne v2, v8, :cond_9

    move v2, v3

    :goto_5
    const/4 v8, 0x0

    move v9, v3

    move v10, v2

    :goto_6
    if-eqz v7, :cond_11

    const/4 v2, 0x1

    if-eq v7, v2, :cond_10

    const/4 v2, 0x2

    if-eq v7, v2, :cond_f

    const/4 v2, 0x3

    if-eq v7, v2, :cond_e

    const/4 v2, 0x4

    if-eq v7, v2, :cond_d

    const/4 v2, 0x5

    if-eq v7, v2, :cond_a

    move v2, v4

    move v3, v5

    :goto_7
    move v4, v2

    move v5, v3

    :cond_8
    :goto_8
    add-int/lit8 v3, v9, 0x1

    move v2, v10

    goto :goto_4

    :cond_9
    add-int/2addr v2, v3

    goto :goto_5

    :cond_a
    aget-char v2, v12, v9

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    add-int/lit8 v3, v11, 0x1

    aput-char v14, p2, v11

    move v4, v8

    :goto_9
    const/4 v2, 0x0

    goto/16 :goto_0

    :pswitch_0
    const/16 v3, 0x10

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    shl-int/lit8 v3, v5, 0xc

    shl-int/lit8 v5, v6, 0x8

    or-int/2addr v3, v5

    shl-int/lit8 v4, v4, 0x4

    or-int/2addr v3, v4

    or-int/2addr v2, v3

    int-to-char v2, v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_b

    const/16 v3, 0xd

    if-eq v2, v3, :cond_b

    iget-boolean v3, p0, Labcd/Zd$a;->gn:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_c

    const v3, 0xfffe

    if-ne v2, v3, :cond_c

    :cond_b
    const/4 v2, 0x1

    aput v2, p1, v11

    const/4 v2, 0x0

    aput-char v2, p2, v11

    add-int/lit8 v2, v9, 0x1

    add-int/lit8 v3, v11, 0x1

    :goto_a
    move v4, v2

    goto :goto_9

    :cond_c
    sub-int v3, v9, v8

    add-int/lit8 v3, v3, 0x2

    aput v3, p1, v11

    aput-char v2, p2, v11

    add-int/lit8 v2, v9, 0x1

    add-int/lit8 v3, v11, 0x1

    goto :goto_a

    :cond_d
    aget-char v2, v12, v9

    packed-switch v2, :pswitch_data_3

    packed-switch v2, :pswitch_data_4

    packed-switch v2, :pswitch_data_5

    add-int/lit8 v3, v11, 0x1

    aput-char v14, p2, v11

    move v4, v8

    goto :goto_9

    :pswitch_1
    const/16 v3, 0x10

    :try_start_3
    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    const/4 v4, 0x5

    move v3, v5

    move v7, v4

    goto :goto_7

    :cond_e
    aget-char v2, v12, v9

    packed-switch v2, :pswitch_data_6

    packed-switch v2, :pswitch_data_7

    packed-switch v2, :pswitch_data_8

    const/4 v2, 0x1

    aput v2, p1, v11

    add-int/lit8 v3, v11, 0x1

    aput-char v14, p2, v11

    move v4, v8

    goto :goto_9

    :pswitch_2
    const/16 v3, 0x10

    :try_start_4
    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v6

    const/4 v7, 0x4

    move v2, v4

    move v3, v5

    goto/16 :goto_7

    :cond_f
    aget-char v2, v12, v9

    const/16 v3, 0x75

    if-eq v2, v3, :cond_12

    packed-switch v2, :pswitch_data_9

    packed-switch v2, :pswitch_data_a

    packed-switch v2, :pswitch_data_b

    const/4 v2, 0x1

    aput v2, p1, v11

    add-int/lit8 v3, v11, 0x1

    aput-char v14, p2, v11

    move v4, v8

    goto/16 :goto_9

    :pswitch_3
    const/16 v3, 0x10

    :try_start_5
    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v3

    const/4 v5, 0x3

    move v2, v4

    move v7, v5

    goto/16 :goto_7

    :cond_10
    const/4 v7, 0x0

    aget-char v2, v12, v9

    const/16 v3, 0x5c

    if-eq v2, v3, :cond_8

    const/4 v2, 0x1

    aput v2, p1, v11

    aput-char v14, p2, v11

    sub-int v2, v9, v8

    add-int/lit8 v3, v11, 0x1

    move v4, v8

    goto/16 :goto_0

    :cond_11
    aget-char v2, v12, v9

    const/16 v3, 0x5c

    if-eq v2, v3, :cond_13

    const/16 v3, 0x75

    if-eq v2, v3, :cond_12

    const/4 v2, 0x1

    aput v2, p1, v11

    add-int/lit8 v3, v11, 0x1

    aput-char v14, p2, v11

    move v4, v8

    goto/16 :goto_9

    :cond_12
    const/4 v7, 0x2

    goto/16 :goto_8

    :cond_13
    const/4 v7, 0x1

    goto/16 :goto_8

    :cond_14
    :try_start_6
    iput v4, p0, Labcd/Zd$a;->v5:I

    iput v10, p0, Labcd/Zd$a;->Zo:I

    iput v2, p0, Labcd/Zd$a;->VH:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v3

    sget-boolean v2, Labcd/Zd$a;->DW:Z

    if-eqz v2, :cond_15

    const-wide v4, 0x1a5ef335d81d3669L

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

    :cond_15
    throw v3

    :cond_16
    move v9, v3

    move v10, v2

    goto/16 :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x30
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

    :pswitch_data_1
    .packed-switch 0x41
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x61
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x30
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x41
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x61
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x30
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
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x41
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x61
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x30
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x41
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0x61
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public j6()V
    .locals 4
    .annotation runtime Labcd/su;
        method = 0x23f610e270b4486fL
    .end annotation

    const-wide v2, -0xe1ec15536eeb578L    # -3.593391619000152E240

    :try_start_0
    sget-boolean v0, Labcd/Zd$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xe1ec15536eeb578L    # -3.593391619000152E240

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Labcd/Zd$a;->FH:Ljava/io/Reader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    sget-boolean v1, Labcd/Zd$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Ljava/io/Reader;Z)V
    .locals 7
    .annotation runtime Labcd/su;
        method = 0x103c54abcfddf3d8L
    .end annotation

    const-wide v2, 0x4850aef768ca9c23L    # 2.2708352658994634E40

    :try_start_0
    sget-boolean v0, Labcd/Zd$a;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v4, 0x4850aef768ca9c23L    # 2.2708352658994634E40

    invoke-static {v4, v5, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-boolean p2, p0, Labcd/Zd$a;->gn:Z

    iput-object p1, p0, Labcd/Zd$a;->FH:Ljava/io/Reader;

    const/4 v0, 0x0

    iput v0, p0, Labcd/Zd$a;->VH:I

    const/4 v0, 0x0

    iput v0, p0, Labcd/Zd$a;->Zo:I

    const/4 v0, 0x0

    iput v0, p0, Labcd/Zd$a;->v5:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    sget-boolean v0, Labcd/Zd$a;->DW:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method
