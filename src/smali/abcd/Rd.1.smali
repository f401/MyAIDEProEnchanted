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
    .registers 4

    const-wide v2, 0xd8fade802c8674L

    const-class v0, Labcd/Rd;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/La;)V
    .registers 8

    const-wide v4, -0x7a13d3627a44b00L    # -6.500324493762586E271

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Rd;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x7a13d3627a44b00L    # -6.500324493762586E271

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2710

    new-array v0, v0, [I

    iput-object v0, p0, Labcd/Rd;->FH:[I

    iput-object p1, p0, Labcd/Rd;->Hw:Labcd/La;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Rd;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method


# virtual methods
.method public j6(Labcd/Wa;Labcd/Da;ZLabcd/Sa;)V
    .registers 24

    :try_start_0
    sget-boolean v2, Labcd/Rd;->j6:Z

    if-eqz v2, :cond_0

    new-instance v7, Ljava/lang/Boolean;

    move/from16 v0, p3

    invoke-direct {v7, v0}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v2, 0x4d3c6300b9f188d3L    # 1.167762332695129E64

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v8, p4

    invoke-static/range {v2 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Labcd/Sa;->j6(Labcd/Wa;)V

    move-object/from16 v0, p1

    iget-object v12, v0, Labcd/Wa;->FH:[I

    move-object/from16 v0, p1

    iget-object v13, v0, Labcd/Wa;->Hw:[I

    move-object/from16 v0, p1

    iget-object v14, v0, Labcd/Wa;->v5:[I

    move-object/from16 v0, p1

    iget-object v15, v0, Labcd/Wa;->Zo:[I

    move-object/from16 v0, p1

    iget-object v0, v0, Labcd/Wa;->VH:[I

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Labcd/Wa;->gn:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Labcd/Wa;->EQ:I

    move/from16 v18, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    move v11, v3

    move v10, v2

    :goto_1
    move/from16 v0, v18

    if-ge v11, v0, :cond_2

    aget v2, v12, v11

    if-eqz v2, :cond_2

    aget v3, v12, v11

    aget v5, v13, v11

    aget v6, v14, v11

    aget v7, v16, v11

    aget v8, v15, v11

    aget v9, v17, v11

    const/4 v4, 0x0

    move-object/from16 v2, p4

    :try_start_1
    invoke-virtual/range {v2 .. v9}, Labcd/Sa;->j6(IZIIIII)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Labcd/Rd;->FH:[I

    array-length v3, v3

    if-lt v10, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Labcd/Rd;->FH:[I

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [I

    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/Rd;->FH:[I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Labcd/Rd;->FH:[I

    array-length v7, v7

    invoke-static {v4, v5, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iput-object v3, v0, Labcd/Rd;->FH:[I

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/Rd;->FH:[I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v3, v10, 0x1

    aput v2, v4, v10

    add-int/lit8 v2, v11, 0x1

    move v11, v2

    move v10, v3

    goto :goto_1

    :cond_2
    :try_start_2
    array-length v2, v12

    add-int/lit8 v2, v2, -0x1

    aget v2, v12, v2

    if-nez v2, :cond_3

    const/16 v3, 0xa

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Labcd/Rd;->FH:[I

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object/from16 v2, p4

    move v7, v10

    invoke-virtual/range {v2 .. v9}, Labcd/Sa;->j6(IZ[IIIII)I

    move-result v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Labcd/Sa;->DW(I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :cond_3
    move v2, v10

    goto :goto_0

    :catch_0
    move-exception v3

    :goto_2
    sget-boolean v2, Labcd/Rd;->DW:Z

    if-eqz v2, :cond_4

    const-wide v4, 0x4d3c6300b9f188d3L    # 1.167762332695129E64

    new-instance v9, Ljava/lang/Boolean;

    move/from16 v0, p3

    invoke-direct {v9, v0}, Ljava/lang/Boolean;-><init>(Z)V

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v10, p4

    invoke-static/range {v3 .. v10}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v3

    :catch_1
    move-exception v3

    goto :goto_2
.end method
