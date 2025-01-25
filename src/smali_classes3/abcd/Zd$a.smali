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
    .registers 3

    const-class v0, Labcd/Zd$a;

    const-wide v1, 0x4c6227aef57537f1L  # 9.11686929441322E59

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>()V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0xedb7542974d1ffL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x521a4fe9f0f485c7L  # 3.2714125659884917E87

    :try_start_6
    sget-boolean v3, Labcd/Zd$a;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v3, 0x2710

    new-array v3, v3, [C

    iput-object v3, p0, Labcd/Zd$a;->Hw:[C
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_17

    return-void

    :catchall_17
    move-exception v3

    sget-boolean v4, Labcd/Zd$a;->DW:Z

    if-eqz v4, :cond_1f

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1f
    throw v3
.end method

.method synthetic constructor <init>(Labcd/Yd;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, 0x509c17b715186e4L

    :try_start_6
    sget-boolean v3, Labcd/Zd$a;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Labcd/Zd$a;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/Zd$a;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    throw v3
.end method


# virtual methods
.method public j6([I[CII)I
    .registers 24
    .annotation runtime Labcd/su;
        method = 0x376dc8b560be7e3cL
    .end annotation

    move-object/from16 v9, p0

    move/from16 v8, p3

    move/from16 v10, p4

    :try_start_6
    sget-boolean v0, Labcd/Zd$a;->j6:Z

    if-eqz v0, :cond_22

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v8}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v10}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x1a5ef335d81d3669L

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    iget-object v0, v9, Labcd/Zd$a;->Hw:[C

    iget v1, v9, Labcd/Zd$a;->v5:I

    iget v2, v9, Labcd/Zd$a;->Zo:I

    iget v3, v9, Labcd/Zd$a;->VH:I

    add-int v4, v8, v10

    move v5, v8

    :goto_2d
    if-ge v5, v4, :cond_192

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-lt v1, v2, :cond_47

    iget-object v2, v9, Labcd/Zd$a;->FH:Ljava/io/Reader;

    invoke-virtual {v2, v0}, Ljava/io/Reader;->read([C)I

    move-result v2

    if-ne v2, v6, :cond_46

    iput v1, v9, Labcd/Zd$a;->v5:I

    iput v2, v9, Labcd/Zd$a;->Zo:I

    iput v3, v9, Labcd/Zd$a;->VH:I

    if-ne v5, v8, :cond_44

    return v6

    :cond_44
    sub-int/2addr v5, v8

    return v5

    :cond_46
    const/4 v1, 0x0

    :cond_47
    sub-int v11, v2, v1

    sub-int v12, v4, v5

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11
    :try_end_4f
    .catchall {:try_start_6 .. :try_end_4f} :catchall_199

    move v12, v5

    :goto_50
    add-int v13, v11, v5

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    const/16 v15, 0x5c

    if-ge v12, v13, :cond_66

    aget-char v13, v0, v1

    if-ne v13, v15, :cond_5d

    goto :goto_66

    :cond_5d
    aput v14, p1, v12

    aput-char v13, p2, v12

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v12, v12, 0x1

    goto :goto_50

    :cond_66
    :goto_66
    add-int/lit8 v5, v1, 0x1

    aget-char v1, v0, v1

    if-eq v1, v15, :cond_73

    aput v14, p1, v12

    add-int/lit8 v6, v12, 0x1

    aput-char v1, p2, v12

    goto :goto_7d

    :cond_73
    if-lez v3, :cond_80

    aput v14, p1, v12

    add-int/lit8 v6, v12, 0x1

    aput-char v1, p2, v12

    add-int/lit8 v3, v3, -0x1

    :goto_7d
    move v1, v5

    move v5, v6

    goto :goto_2d

    :cond_80
    move v3, v5

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_87
    if-lt v3, v2, :cond_9c

    sub-int v3, v2, v5

    :try_start_8b
    invoke-static {v0, v5, v0, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, v9, Labcd/Zd$a;->FH:Ljava/io/Reader;

    array-length v5, v0

    sub-int/2addr v5, v3

    invoke-virtual {v2, v0, v3, v5}, Ljava/io/Reader;->read([CII)I

    move-result v2
    :try_end_96
    .catchall {:try_start_8b .. :try_end_96} :catchall_199

    if-ne v2, v6, :cond_9a

    move v2, v3

    goto :goto_9b

    :cond_9a
    add-int/2addr v2, v3

    :goto_9b
    const/4 v5, 0x0

    :cond_9c
    const/4 v15, 0x2

    if-eqz v11, :cond_16f

    if-eq v11, v14, :cond_159

    const/4 v6, 0x3

    const/16 v7, 0x10

    if-eq v11, v15, :cond_135

    const/4 v14, 0x4

    if-eq v11, v6, :cond_119

    const/4 v6, 0x5

    if-eq v11, v14, :cond_100

    if-eq v11, v6, :cond_b3

    const/4 v6, 0x1

    :goto_af
    const/16 v14, 0x5c

    goto/16 :goto_189

    :cond_b3
    aget-char v6, v0, v3

    packed-switch v6, :pswitch_data_1ba

    packed-switch v6, :pswitch_data_1d2

    packed-switch v6, :pswitch_data_1e2

    const/4 v11, 0x0

    add-int/lit8 v3, v12, 0x1

    aput-char v1, p2, v12

    goto/16 :goto_181

    :pswitch_c5  #0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66
    :try_start_c5
    invoke-static {v6, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    shl-int/lit8 v6, v16, 0xc

    shl-int/lit8 v7, v17, 0x8

    or-int/2addr v6, v7

    shl-int/lit8 v7, v13, 0x4

    or-int/2addr v6, v7

    or-int/2addr v1, v6

    int-to-char v1, v1

    const/16 v6, 0xa

    if-eq v1, v6, :cond_f2

    const/16 v6, 0xd

    if-eq v1, v6, :cond_f2

    iget-boolean v6, v9, Labcd/Zd$a;->gn:Z
    :try_end_dd
    .catchall {:try_start_c5 .. :try_end_dd} :catchall_199

    if-eqz v6, :cond_e5

    const v6, 0xfffe

    if-ne v1, v6, :cond_e5

    goto :goto_f2

    :cond_e5
    sub-int v5, v3, v5

    add-int/2addr v5, v15

    aput v5, p1, v12

    aput-char v1, p2, v12

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v12, v12, 0x1

    const/4 v11, 0x0

    goto :goto_fc

    :cond_f2
    :goto_f2
    const/4 v1, 0x1

    aput v1, p1, v12

    const/4 v11, 0x0

    aput-char v11, p2, v12

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v12, v12, 0x1

    :goto_fc
    move v1, v3

    move v5, v12

    goto/16 :goto_183

    :cond_100
    const/4 v11, 0x0

    aget-char v13, v0, v3

    packed-switch v13, :pswitch_data_1f2

    packed-switch v13, :pswitch_data_20a

    packed-switch v13, :pswitch_data_21a

    add-int/lit8 v3, v12, 0x1

    aput-char v1, p2, v12

    goto/16 :goto_181

    :pswitch_112  #0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66
    :try_start_112
    invoke-static {v13, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v13
    :try_end_116
    .catchall {:try_start_112 .. :try_end_116} :catchall_199

    const/4 v6, 0x1

    const/4 v11, 0x5

    goto :goto_af

    :cond_119
    const/4 v11, 0x0

    aget-char v6, v0, v3

    packed-switch v6, :pswitch_data_22a

    packed-switch v6, :pswitch_data_242

    packed-switch v6, :pswitch_data_252

    const/4 v3, 0x1

    aput v3, p1, v12

    add-int/lit8 v3, v12, 0x1

    aput-char v1, p2, v12

    goto :goto_181

    :pswitch_12d  #0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66
    :try_start_12d
    invoke-static {v6, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v17
    :try_end_131
    .catchall {:try_start_12d .. :try_end_131} :catchall_199

    const/4 v6, 0x1

    const/4 v11, 0x4

    goto/16 :goto_af

    :cond_135
    const/4 v11, 0x0

    aget-char v14, v0, v3

    const/16 v6, 0x75

    if-eq v14, v6, :cond_155

    packed-switch v14, :pswitch_data_262

    packed-switch v14, :pswitch_data_27a

    packed-switch v14, :pswitch_data_28a

    const/4 v6, 0x1

    aput v6, p1, v12

    add-int/lit8 v3, v12, 0x1

    aput-char v1, p2, v12

    goto :goto_181

    :pswitch_14d  #0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66
    :try_start_14d
    invoke-static {v14, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v16
    :try_end_151
    .catchall {:try_start_14d .. :try_end_151} :catchall_199

    const/4 v6, 0x1

    const/4 v11, 0x3

    goto/16 :goto_af

    :cond_155
    const/4 v6, 0x1

    const/16 v14, 0x5c

    goto :goto_186

    :cond_159
    const/4 v6, 0x1

    const/4 v11, 0x0

    aget-char v7, v0, v3

    const/16 v14, 0x5c

    if-eq v7, v14, :cond_189

    aput v6, p1, v12

    aput-char v1, p2, v12

    add-int/lit8 v1, v12, 0x1

    sub-int/2addr v3, v5

    move/from16 v18, v5

    move v5, v1

    move/from16 v1, v18

    goto/16 :goto_2d

    :cond_16f
    const/4 v6, 0x1

    const/4 v11, 0x0

    const/16 v14, 0x5c

    aget-char v7, v0, v3

    if-eq v7, v14, :cond_188

    const/16 v11, 0x75

    if-eq v7, v11, :cond_186

    aput v6, p1, v12

    add-int/lit8 v3, v12, 0x1

    aput-char v1, p2, v12

    :goto_181
    move v1, v5

    move v5, v3

    :goto_183
    const/4 v3, 0x0

    goto/16 :goto_2d

    :cond_186
    :goto_186
    const/4 v11, 0x2

    goto :goto_189

    :cond_188
    const/4 v11, 0x1

    :cond_189
    :goto_189
    add-int/lit8 v3, v3, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v14, 0x1

    const/16 v15, 0x5c

    goto/16 :goto_87

    :cond_192
    :try_start_192
    iput v1, v9, Labcd/Zd$a;->v5:I

    iput v2, v9, Labcd/Zd$a;->Zo:I

    iput v3, v9, Labcd/Zd$a;->VH:I
    :try_end_198
    .catchall {:try_start_192 .. :try_end_198} :catchall_199

    return v10

    :catchall_199
    move-exception v0

    sget-boolean v1, Labcd/Zd$a;->DW:Z

    if-eqz v1, :cond_1b7

    const-wide v2, 0x1a5ef335d81d3669L

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v10}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1b7
    goto :goto_1b9

    :goto_1b8
    throw v0

    :goto_1b9
    goto :goto_1b8

    :pswitch_data_1ba
    .packed-switch 0x30
        :pswitch_c5  #00000030
        :pswitch_c5  #00000031
        :pswitch_c5  #00000032
        :pswitch_c5  #00000033
        :pswitch_c5  #00000034
        :pswitch_c5  #00000035
        :pswitch_c5  #00000036
        :pswitch_c5  #00000037
        :pswitch_c5  #00000038
        :pswitch_c5  #00000039
    .end packed-switch

    :pswitch_data_1d2
    .packed-switch 0x41
        :pswitch_c5  #00000041
        :pswitch_c5  #00000042
        :pswitch_c5  #00000043
        :pswitch_c5  #00000044
        :pswitch_c5  #00000045
        :pswitch_c5  #00000046
    .end packed-switch

    :pswitch_data_1e2
    .packed-switch 0x61
        :pswitch_c5  #00000061
        :pswitch_c5  #00000062
        :pswitch_c5  #00000063
        :pswitch_c5  #00000064
        :pswitch_c5  #00000065
        :pswitch_c5  #00000066
    .end packed-switch

    :pswitch_data_1f2
    .packed-switch 0x30
        :pswitch_112  #00000030
        :pswitch_112  #00000031
        :pswitch_112  #00000032
        :pswitch_112  #00000033
        :pswitch_112  #00000034
        :pswitch_112  #00000035
        :pswitch_112  #00000036
        :pswitch_112  #00000037
        :pswitch_112  #00000038
        :pswitch_112  #00000039
    .end packed-switch

    :pswitch_data_20a
    .packed-switch 0x41
        :pswitch_112  #00000041
        :pswitch_112  #00000042
        :pswitch_112  #00000043
        :pswitch_112  #00000044
        :pswitch_112  #00000045
        :pswitch_112  #00000046
    .end packed-switch

    :pswitch_data_21a
    .packed-switch 0x61
        :pswitch_112  #00000061
        :pswitch_112  #00000062
        :pswitch_112  #00000063
        :pswitch_112  #00000064
        :pswitch_112  #00000065
        :pswitch_112  #00000066
    .end packed-switch

    :pswitch_data_22a
    .packed-switch 0x30
        :pswitch_12d  #00000030
        :pswitch_12d  #00000031
        :pswitch_12d  #00000032
        :pswitch_12d  #00000033
        :pswitch_12d  #00000034
        :pswitch_12d  #00000035
        :pswitch_12d  #00000036
        :pswitch_12d  #00000037
        :pswitch_12d  #00000038
        :pswitch_12d  #00000039
    .end packed-switch

    :pswitch_data_242
    .packed-switch 0x41
        :pswitch_12d  #00000041
        :pswitch_12d  #00000042
        :pswitch_12d  #00000043
        :pswitch_12d  #00000044
        :pswitch_12d  #00000045
        :pswitch_12d  #00000046
    .end packed-switch

    :pswitch_data_252
    .packed-switch 0x61
        :pswitch_12d  #00000061
        :pswitch_12d  #00000062
        :pswitch_12d  #00000063
        :pswitch_12d  #00000064
        :pswitch_12d  #00000065
        :pswitch_12d  #00000066
    .end packed-switch

    :pswitch_data_262
    .packed-switch 0x30
        :pswitch_14d  #00000030
        :pswitch_14d  #00000031
        :pswitch_14d  #00000032
        :pswitch_14d  #00000033
        :pswitch_14d  #00000034
        :pswitch_14d  #00000035
        :pswitch_14d  #00000036
        :pswitch_14d  #00000037
        :pswitch_14d  #00000038
        :pswitch_14d  #00000039
    .end packed-switch

    :pswitch_data_27a
    .packed-switch 0x41
        :pswitch_14d  #00000041
        :pswitch_14d  #00000042
        :pswitch_14d  #00000043
        :pswitch_14d  #00000044
        :pswitch_14d  #00000045
        :pswitch_14d  #00000046
    .end packed-switch

    :pswitch_data_28a
    .packed-switch 0x61
        :pswitch_14d  #00000061
        :pswitch_14d  #00000062
        :pswitch_14d  #00000063
        :pswitch_14d  #00000064
        :pswitch_14d  #00000065
        :pswitch_14d  #00000066
    .end packed-switch
.end method

.method public j6()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x23f610e270b4486fL
    .end annotation

    const-wide v0, -0xe1ec15536eeb578L  # -3.593391619000152E240

    :try_start_5
    sget-boolean v2, Labcd/Zd$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    iput-object v2, p0, Labcd/Zd$a;->FH:Ljava/io/Reader;
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    sget-boolean v3, Labcd/Zd$a;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public j6(Ljava/io/Reader;Z)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x103c54abcfddf3d8L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Zd$a;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, 0x4850aef768ca9c23L  # 2.2708352658994634E40

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iput-boolean p2, p0, Labcd/Zd$a;->gn:Z

    iput-object p1, p0, Labcd/Zd$a;->FH:Ljava/io/Reader;

    const/4 v0, 0x0

    iput v0, p0, Labcd/Zd$a;->VH:I

    iput v0, p0, Labcd/Zd$a;->Zo:I

    iput v0, p0, Labcd/Zd$a;->v5:I
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception v0

    sget-boolean v1, Labcd/Zd$a;->DW:Z

    if-eqz v1, :cond_32

    const-wide v2, 0x4850aef768ca9c23L  # 2.2708352658994634E40

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_32
    throw v0
.end method
