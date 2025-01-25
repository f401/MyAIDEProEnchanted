.class public Labcd/Rd;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
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
.field private FH:[I
    .annotation runtime Labcd/ru;
        field = -0x29c56a8679ecaf14L
    .end annotation
.end field

.field private final Hw:Labcd/La;
    .annotation runtime Labcd/ru;
        field = 0x2a4e22d80b6aee0cL
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/Rd;

    const-wide v1, 0xd8fade802c8674L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/La;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, -0x7a13d3627a44b00L  # -6.500324493762586E271

    :try_start_6
    sget-boolean v3, Labcd/Rd;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v3, 0x2710

    new-array v3, v3, [I

    iput-object v3, p0, Labcd/Rd;->FH:[I

    iput-object p1, p0, Labcd/Rd;->Hw:Labcd/La;
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_19

    return-void

    :catchall_19
    move-exception v3

    sget-boolean v4, Labcd/Rd;->DW:Z

    if-eqz v4, :cond_21

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    throw v3
.end method


# virtual methods
.method public j6(Labcd/Wa;Labcd/Da;ZLabcd/Sa;)V
    .registers 29

    move-object/from16 v9, p0

    move-object/from16 v8, p1

    move/from16 v10, p3

    move-object/from16 v15, p4

    :try_start_8
    sget-boolean v0, Labcd/Rd;->j6:Z

    if-eqz v0, :cond_21

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, v10}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, 0x4d3c6300b9f188d3L  # 1.167762332695129E64

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    invoke-virtual {v15, v8}, Labcd/Sa;->j6(Labcd/Wa;)V

    iget-object v0, v8, Labcd/Wa;->FH:[I

    iget-object v1, v8, Labcd/Wa;->Hw:[I

    iget-object v2, v8, Labcd/Wa;->v5:[I

    iget-object v3, v8, Labcd/Wa;->Zo:[I

    iget-object v4, v8, Labcd/Wa;->VH:[I

    iget-object v5, v8, Labcd/Wa;->gn:[I

    iget v6, v8, Labcd/Wa;->EQ:I
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_a7

    const/4 v11, 0x0

    :goto_33
    move v14, v11

    const/4 v13, 0x0

    :goto_35
    if-ge v13, v6, :cond_7e

    aget v12, v0, v13

    if-eqz v12, :cond_7e

    aget v16, v1, v13

    aget v17, v2, v13

    aget v18, v4, v13

    aget v19, v3, v13

    aget v20, v5, v13

    const/16 v21, 0x0

    move-object/from16 v11, p4

    move/from16 v22, v13

    move/from16 v13, v21

    move v7, v14

    move/from16 v14, v16

    move-object/from16 v23, v2

    move-object v2, v15

    move/from16 v15, v17

    move/from16 v16, v18

    move/from16 v17, v19

    move/from16 v18, v20

    :try_start_5b
    invoke-virtual/range {v11 .. v18}, Labcd/Sa;->j6(IZIIIII)I

    move-result v11

    iget-object v12, v9, Labcd/Rd;->FH:[I

    array-length v13, v12

    if-lt v7, v13, :cond_71

    array-length v13, v12

    mul-int/lit8 v13, v13, 0x2

    new-array v13, v13, [I

    array-length v14, v12

    const/4 v15, 0x0

    invoke-static {v12, v15, v13, v15, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v13, v9, Labcd/Rd;->FH:[I

    goto :goto_72

    :cond_71
    const/4 v15, 0x0

    :goto_72
    iget-object v12, v9, Labcd/Rd;->FH:[I
    :try_end_74
    .catchall {:try_start_5b .. :try_end_74} :catchall_a5

    add-int/lit8 v14, v7, 0x1

    aput v11, v12, v7

    add-int/lit8 v13, v22, 0x1

    move-object v15, v2

    move-object/from16 v2, v23

    goto :goto_35

    :cond_7e
    move-object/from16 v23, v2

    move v7, v14

    move-object v2, v15

    const/4 v15, 0x0

    :try_start_83
    array-length v11, v0

    add-int/lit8 v11, v11, -0x1

    aget v11, v0, v11

    if-nez v11, :cond_a0

    const/16 v12, 0xa

    const/4 v13, 0x0

    iget-object v14, v9, Labcd/Rd;->FH:[I

    const/4 v15, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x1

    move-object/from16 v11, p4

    move/from16 v16, v7

    invoke-virtual/range {v11 .. v18}, Labcd/Sa;->j6(IZ[IIIII)I

    move-result v0

    invoke-virtual {v2, v0}, Labcd/Sa;->DW(I)V
    :try_end_9f
    .catchall {:try_start_83 .. :try_end_9f} :catchall_a5

    return-void

    :cond_a0
    move-object v15, v2

    move v11, v7

    move-object/from16 v2, v23

    goto :goto_33

    :catchall_a5
    move-exception v0

    goto :goto_a9

    :catchall_a7
    move-exception v0

    move-object v2, v15

    :goto_a9
    sget-boolean v1, Labcd/Rd;->DW:Z

    if-eqz v1, :cond_c4

    const-wide v3, 0x4d3c6300b9f188d3L  # 1.167762332695129E64

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, v10}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-wide v2, v3

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c4
    goto :goto_c6

    :goto_c5
    throw v0

    :goto_c6
    goto :goto_c5
.end method
