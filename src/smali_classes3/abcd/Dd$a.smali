.class Labcd/Dd$a;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Dd;
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
        field = 0xefd57a30c786c03L
    .end annotation
.end field

.field private Hw:[C
    .annotation runtime Labcd/ru;
        field = -0x2267174efe0f288L
    .end annotation
.end field

.field private VH:I
    .annotation runtime Labcd/ru;
        field = 0x110a2be0c0b90b94L
    .end annotation
.end field

.field private Zo:I
    .annotation runtime Labcd/ru;
        field = 0x16cfa3d65e49f2f0L
    .end annotation
.end field

.field private gn:Z
    .annotation runtime Labcd/ru;
        field = -0xad335bf66ed67f8L
    .end annotation
.end field

.field private v5:I
    .annotation runtime Labcd/ru;
        field = -0x80c644496370783L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/Dd$a;

    const-wide v1, 0x4ff377321b303cdL

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x8301a75f2fa1457L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x4c446a517be41dL

    :try_start_6
    sget-boolean v3, Labcd/Dd$a;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v3, 0x2710

    new-array v3, v3, [C

    iput-object v3, p0, Labcd/Dd$a;->Hw:[C
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_17

    return-void

    :catchall_17
    move-exception v3

    sget-boolean v4, Labcd/Dd$a;->DW:Z

    if-eqz v4, :cond_1f

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1f
    throw v3
.end method

.method synthetic constructor <init>(Labcd/Cd;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, 0x655c57bd0ce9c30L

    :try_start_6
    sget-boolean v3, Labcd/Dd$a;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Labcd/Dd$a;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/Dd$a;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    throw v3
.end method


# virtual methods
.method public j6([I[CII)I
    .registers 24
    .annotation runtime Labcd/su;
        method = 0x14d17a6edd0718b8L
    .end annotation

    move-object/from16 v9, p0

    move/from16 v8, p3

    move/from16 v10, p4

    :try_start_6
    sget-boolean v0, Labcd/Dd$a;->j6:Z

    if-eqz v0, :cond_22

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v8}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v10}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x465c2796f667827L  # 1.78626695275254E-287

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    iget-object v0, v9, Labcd/Dd$a;->Hw:[C

    iget v1, v9, Labcd/Dd$a;->v5:I

    iget v2, v9, Labcd/Dd$a;->Zo:I

    iget v3, v9, Labcd/Dd$a;->VH:I

    add-int v4, v8, v10

    move v5, v8

    :goto_2d
    if-ge v5, v4, :cond_193

    :goto_2f
    const/4 v6, -0x1

    const/4 v7, 0x0

    if-lt v1, v2, :cond_48

    iget-object v2, v9, Labcd/Dd$a;->FH:Ljava/io/Reader;

    invoke-virtual {v2, v0}, Ljava/io/Reader;->read([C)I

    move-result v2

    if-ne v2, v6, :cond_46

    iput v1, v9, Labcd/Dd$a;->v5:I

    iput v2, v9, Labcd/Dd$a;->Zo:I

    iput v3, v9, Labcd/Dd$a;->VH:I

    if-ne v5, v8, :cond_44

    return v6

    :cond_44
    sub-int/2addr v5, v8

    return v5

    :cond_46
    const/4 v1, 0x0

    goto :goto_2f

    :cond_48
    sub-int v11, v2, v1

    sub-int v12, v4, v5

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11
    :try_end_50
    .catchall {:try_start_6 .. :try_end_50} :catchall_19a

    move v12, v5

    :goto_51
    add-int v13, v11, v5

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    const/16 v15, 0x5c

    if-ge v12, v13, :cond_67

    aget-char v13, v0, v1

    if-ne v13, v15, :cond_5e

    goto :goto_67

    :cond_5e
    aput v14, p1, v12

    aput-char v13, p2, v12

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v12, v12, 0x1

    goto :goto_51

    :cond_67
    :goto_67
    add-int/lit8 v5, v1, 0x1

    aget-char v1, v0, v1

    if-eq v1, v15, :cond_74

    aput v14, p1, v12

    add-int/lit8 v6, v12, 0x1

    aput-char v1, p2, v12

    goto :goto_7e

    :cond_74
    if-lez v3, :cond_81

    aput v14, p1, v12

    add-int/lit8 v6, v12, 0x1

    aput-char v1, p2, v12

    add-int/lit8 v3, v3, -0x1

    :goto_7e
    move v1, v5

    move v5, v6

    goto :goto_2d

    :cond_81
    move v3, v5

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_88
    if-lt v3, v2, :cond_9d

    sub-int v3, v2, v5

    :try_start_8c
    invoke-static {v0, v5, v0, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, v9, Labcd/Dd$a;->FH:Ljava/io/Reader;

    array-length v5, v0

    sub-int/2addr v5, v3

    invoke-virtual {v2, v0, v3, v5}, Ljava/io/Reader;->read([CII)I

    move-result v2
    :try_end_97
    .catchall {:try_start_8c .. :try_end_97} :catchall_19a

    if-ne v2, v6, :cond_9b

    move v2, v3

    goto :goto_9c

    :cond_9b
    add-int/2addr v2, v3

    :goto_9c
    const/4 v5, 0x0

    :cond_9d
    const/4 v15, 0x2

    if-eqz v11, :cond_170

    if-eq v11, v14, :cond_15a

    const/4 v6, 0x3

    const/16 v7, 0x10

    if-eq v11, v15, :cond_136

    const/4 v14, 0x4

    if-eq v11, v6, :cond_11a

    const/4 v6, 0x5

    if-eq v11, v14, :cond_101

    if-eq v11, v6, :cond_b4

    const/4 v6, 0x1

    :goto_b0
    const/16 v14, 0x5c

    goto/16 :goto_18a

    :cond_b4
    aget-char v6, v0, v3

    packed-switch v6, :pswitch_data_1bc

    packed-switch v6, :pswitch_data_1d4

    packed-switch v6, :pswitch_data_1e4

    const/4 v11, 0x0

    add-int/lit8 v3, v12, 0x1

    aput-char v1, p2, v12

    goto/16 :goto_182

    :pswitch_c6  #0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66
    :try_start_c6
    invoke-static {v6, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    shl-int/lit8 v6, v17, 0xc

    shl-int/lit8 v7, v16, 0x8

    or-int/2addr v6, v7

    shl-int/lit8 v7, v13, 0x4

    or-int/2addr v6, v7

    or-int/2addr v1, v6

    int-to-char v1, v1

    const/16 v6, 0xa

    if-eq v1, v6, :cond_f3

    const/16 v6, 0xd

    if-eq v1, v6, :cond_f3

    iget-boolean v6, v9, Labcd/Dd$a;->gn:Z
    :try_end_de
    .catchall {:try_start_c6 .. :try_end_de} :catchall_19a

    if-eqz v6, :cond_e6

    const v6, 0xfffe

    if-ne v1, v6, :cond_e6

    goto :goto_f3

    :cond_e6
    sub-int v5, v3, v5

    add-int/2addr v5, v15

    aput v5, p1, v12

    aput-char v1, p2, v12

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v12, v12, 0x1

    const/4 v11, 0x0

    goto :goto_fd

    :cond_f3
    :goto_f3
    const/4 v1, 0x1

    aput v1, p1, v12

    const/4 v11, 0x0

    aput-char v11, p2, v12

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v12, v12, 0x1

    :goto_fd
    move v1, v3

    move v5, v12

    goto/16 :goto_184

    :cond_101
    const/4 v11, 0x0

    aget-char v13, v0, v3

    packed-switch v13, :pswitch_data_1f4

    packed-switch v13, :pswitch_data_20c

    packed-switch v13, :pswitch_data_21c

    add-int/lit8 v3, v12, 0x1

    aput-char v1, p2, v12

    goto/16 :goto_182

    :pswitch_113  #0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66
    :try_start_113
    invoke-static {v13, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v13
    :try_end_117
    .catchall {:try_start_113 .. :try_end_117} :catchall_19a

    const/4 v6, 0x1

    const/4 v11, 0x5

    goto :goto_b0

    :cond_11a
    const/4 v11, 0x0

    aget-char v6, v0, v3

    packed-switch v6, :pswitch_data_22c

    packed-switch v6, :pswitch_data_244

    packed-switch v6, :pswitch_data_254

    const/4 v3, 0x1

    aput v3, p1, v12

    add-int/lit8 v3, v12, 0x1

    aput-char v1, p2, v12

    goto :goto_182

    :pswitch_12e  #0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66
    :try_start_12e
    invoke-static {v6, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v16
    :try_end_132
    .catchall {:try_start_12e .. :try_end_132} :catchall_19a

    const/4 v6, 0x1

    const/4 v11, 0x4

    goto/16 :goto_b0

    :cond_136
    const/4 v11, 0x0

    aget-char v14, v0, v3

    const/16 v6, 0x75

    if-eq v14, v6, :cond_156

    packed-switch v14, :pswitch_data_264

    packed-switch v14, :pswitch_data_27c

    packed-switch v14, :pswitch_data_28c

    const/4 v6, 0x1

    aput v6, p1, v12

    add-int/lit8 v3, v12, 0x1

    aput-char v1, p2, v12

    goto :goto_182

    :pswitch_14e  #0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66
    :try_start_14e
    invoke-static {v14, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v17
    :try_end_152
    .catchall {:try_start_14e .. :try_end_152} :catchall_19a

    const/4 v6, 0x1

    const/4 v11, 0x3

    goto/16 :goto_b0

    :cond_156
    const/4 v6, 0x1

    const/16 v14, 0x5c

    goto :goto_187

    :cond_15a
    const/4 v6, 0x1

    const/4 v11, 0x0

    aget-char v7, v0, v3

    const/16 v14, 0x5c

    if-eq v7, v14, :cond_18a

    aput v6, p1, v12

    aput-char v1, p2, v12

    add-int/lit8 v1, v12, 0x1

    sub-int/2addr v3, v5

    move/from16 v18, v5

    move v5, v1

    move/from16 v1, v18

    goto/16 :goto_2d

    :cond_170
    const/4 v6, 0x1

    const/4 v11, 0x0

    const/16 v14, 0x5c

    aget-char v7, v0, v3

    if-eq v7, v14, :cond_189

    const/16 v11, 0x75

    if-eq v7, v11, :cond_187

    aput v6, p1, v12

    add-int/lit8 v3, v12, 0x1

    aput-char v1, p2, v12

    :goto_182
    move v1, v5

    move v5, v3

    :goto_184
    const/4 v3, 0x0

    goto/16 :goto_2d

    :cond_187
    :goto_187
    const/4 v11, 0x2

    goto :goto_18a

    :cond_189
    const/4 v11, 0x1

    :cond_18a
    :goto_18a
    add-int/lit8 v3, v3, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v14, 0x1

    const/16 v15, 0x5c

    goto/16 :goto_88

    :cond_193
    :try_start_193
    iput v1, v9, Labcd/Dd$a;->v5:I

    iput v2, v9, Labcd/Dd$a;->Zo:I

    iput v3, v9, Labcd/Dd$a;->VH:I
    :try_end_199
    .catchall {:try_start_193 .. :try_end_199} :catchall_19a

    return v10

    :catchall_19a
    move-exception v0

    sget-boolean v1, Labcd/Dd$a;->DW:Z

    if-eqz v1, :cond_1b8

    const-wide v2, 0x465c2796f667827L  # 1.78626695275254E-287

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v10}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1b8
    goto :goto_1ba

    :goto_1b9
    throw v0

    :goto_1ba
    goto :goto_1b9

    nop

    :pswitch_data_1bc
    .packed-switch 0x30
        :pswitch_c6  #00000030
        :pswitch_c6  #00000031
        :pswitch_c6  #00000032
        :pswitch_c6  #00000033
        :pswitch_c6  #00000034
        :pswitch_c6  #00000035
        :pswitch_c6  #00000036
        :pswitch_c6  #00000037
        :pswitch_c6  #00000038
        :pswitch_c6  #00000039
    .end packed-switch

    :pswitch_data_1d4
    .packed-switch 0x41
        :pswitch_c6  #00000041
        :pswitch_c6  #00000042
        :pswitch_c6  #00000043
        :pswitch_c6  #00000044
        :pswitch_c6  #00000045
        :pswitch_c6  #00000046
    .end packed-switch

    :pswitch_data_1e4
    .packed-switch 0x61
        :pswitch_c6  #00000061
        :pswitch_c6  #00000062
        :pswitch_c6  #00000063
        :pswitch_c6  #00000064
        :pswitch_c6  #00000065
        :pswitch_c6  #00000066
    .end packed-switch

    :pswitch_data_1f4
    .packed-switch 0x30
        :pswitch_113  #00000030
        :pswitch_113  #00000031
        :pswitch_113  #00000032
        :pswitch_113  #00000033
        :pswitch_113  #00000034
        :pswitch_113  #00000035
        :pswitch_113  #00000036
        :pswitch_113  #00000037
        :pswitch_113  #00000038
        :pswitch_113  #00000039
    .end packed-switch

    :pswitch_data_20c
    .packed-switch 0x41
        :pswitch_113  #00000041
        :pswitch_113  #00000042
        :pswitch_113  #00000043
        :pswitch_113  #00000044
        :pswitch_113  #00000045
        :pswitch_113  #00000046
    .end packed-switch

    :pswitch_data_21c
    .packed-switch 0x61
        :pswitch_113  #00000061
        :pswitch_113  #00000062
        :pswitch_113  #00000063
        :pswitch_113  #00000064
        :pswitch_113  #00000065
        :pswitch_113  #00000066
    .end packed-switch

    :pswitch_data_22c
    .packed-switch 0x30
        :pswitch_12e  #00000030
        :pswitch_12e  #00000031
        :pswitch_12e  #00000032
        :pswitch_12e  #00000033
        :pswitch_12e  #00000034
        :pswitch_12e  #00000035
        :pswitch_12e  #00000036
        :pswitch_12e  #00000037
        :pswitch_12e  #00000038
        :pswitch_12e  #00000039
    .end packed-switch

    :pswitch_data_244
    .packed-switch 0x41
        :pswitch_12e  #00000041
        :pswitch_12e  #00000042
        :pswitch_12e  #00000043
        :pswitch_12e  #00000044
        :pswitch_12e  #00000045
        :pswitch_12e  #00000046
    .end packed-switch

    :pswitch_data_254
    .packed-switch 0x61
        :pswitch_12e  #00000061
        :pswitch_12e  #00000062
        :pswitch_12e  #00000063
        :pswitch_12e  #00000064
        :pswitch_12e  #00000065
        :pswitch_12e  #00000066
    .end packed-switch

    :pswitch_data_264
    .packed-switch 0x30
        :pswitch_14e  #00000030
        :pswitch_14e  #00000031
        :pswitch_14e  #00000032
        :pswitch_14e  #00000033
        :pswitch_14e  #00000034
        :pswitch_14e  #00000035
        :pswitch_14e  #00000036
        :pswitch_14e  #00000037
        :pswitch_14e  #00000038
        :pswitch_14e  #00000039
    .end packed-switch

    :pswitch_data_27c
    .packed-switch 0x41
        :pswitch_14e  #00000041
        :pswitch_14e  #00000042
        :pswitch_14e  #00000043
        :pswitch_14e  #00000044
        :pswitch_14e  #00000045
        :pswitch_14e  #00000046
    .end packed-switch

    :pswitch_data_28c
    .packed-switch 0x61
        :pswitch_14e  #00000061
        :pswitch_14e  #00000062
        :pswitch_14e  #00000063
        :pswitch_14e  #00000064
        :pswitch_14e  #00000065
        :pswitch_14e  #00000066
    .end packed-switch
.end method

.method public j6()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x4b80f0136a8c257L
    .end annotation

    const-wide v0, -0x1dcd097eda974564L  # -1.09199985787754E165

    :try_start_5
    sget-boolean v2, Labcd/Dd$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    iput-object v2, p0, Labcd/Dd$a;->FH:Ljava/io/Reader;
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    sget-boolean v3, Labcd/Dd$a;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public j6(Ljava/io/Reader;Z)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x587c5f37b995bcacL
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Dd$a;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, -0x48a56661e91d1adfL  # -4.771153298420688E-42

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iput-boolean p2, p0, Labcd/Dd$a;->gn:Z

    iput-object p1, p0, Labcd/Dd$a;->FH:Ljava/io/Reader;

    const/4 v0, 0x0

    iput v0, p0, Labcd/Dd$a;->VH:I

    iput v0, p0, Labcd/Dd$a;->Zo:I

    iput v0, p0, Labcd/Dd$a;->v5:I
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception v0

    sget-boolean v1, Labcd/Dd$a;->DW:Z

    if-eqz v1, :cond_32

    const-wide v2, -0x48a56661e91d1adfL  # -4.771153298420688E-42

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_32
    throw v0
.end method
