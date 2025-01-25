.class public Labcd/Sb$a;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Sb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
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
.field private FH:I
    .annotation runtime Labcd/ru;
        field = -0x1cb241bc3ce7f03L
    .end annotation
.end field

.field private Hw:I
    .annotation runtime Labcd/ru;
        field = 0x202d47de016c72e3L
    .end annotation
.end field

.field private VH:I
    .annotation runtime Labcd/ru;
        field = -0x1a0bd2b7e211d740L
    .end annotation
.end field

.field private Zo:I
    .annotation runtime Labcd/ru;
        field = 0x356d200a0714aadL
    .end annotation
.end field

.field private gn:I
    .annotation runtime Labcd/ru;
        field = 0x5b9de0fa9d2f574L
    .end annotation
.end field

.field final tp:Labcd/Sb;
    .annotation runtime Labcd/vu;
    .end annotation
.end field

.field private u7:I
    .annotation runtime Labcd/ru;
        field = -0x25a3b986e9f435a1L
    .end annotation
.end field

.field private v5:I
    .annotation runtime Labcd/ru;
        field = -0x950bbd5ec2c8c75L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/Sb$a;

    const-wide v1, -0x1044b5d441b2585bL  # -1.6549921685082696E230

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>(Labcd/Sb;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x23d25dc9cb9800L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x6cf3154a573fbf8L

    :try_start_6
    sget-boolean v3, Labcd/Sb$a;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iput-object p1, p0, Labcd/Sb$a;->tp:Labcd/Sb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Labcd/Sb;->j6(Labcd/Sb;)[Z

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_1f

    iput v4, p0, Labcd/Sb$a;->FH:I

    const/4 v3, -0x1

    iput v3, p0, Labcd/Sb$a;->Hw:I

    goto :goto_25

    :cond_1f
    iput v4, p0, Labcd/Sb$a;->FH:I

    iput v4, p0, Labcd/Sb$a;->Hw:I

    iput v4, p0, Labcd/Sb$a;->Zo:I
    :try_end_25
    .catchall {:try_start_6 .. :try_end_25} :catchall_26

    :goto_25
    return-void

    :catchall_26
    move-exception v3

    sget-boolean v4, Labcd/Sb$a;->DW:Z

    if-eqz v4, :cond_2e

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2e
    throw v3
.end method

.method synthetic constructor <init>(Labcd/Sb;Labcd/Rb;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Sb$a;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x1068debaca4d135cL  # -3.506805171492646E229

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1}, Labcd/Sb$a;-><init>(Labcd/Sb;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v0

    sget-boolean v1, Labcd/Sb$a;->DW:Z

    if-eqz v1, :cond_22

    const-wide v2, -0x1068debaca4d135cL  # -3.506805171492646E229

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v0
.end method


# virtual methods
.method public DW()V
    .registers 5

    const-wide v0, -0xe04c5cd8fb8d888L  # -1.1347015226453572E241

    :try_start_5
    sget-boolean v2, Labcd/Sb$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Sb$a;->tp:Labcd/Sb;

    invoke-static {v2}, Labcd/Sb;->j6(Labcd/Sb;)[Z

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1b

    iput v3, p0, Labcd/Sb$a;->FH:I

    const/4 v2, -0x1

    iput v2, p0, Labcd/Sb$a;->Hw:I

    goto :goto_21

    :cond_1b
    iput v3, p0, Labcd/Sb$a;->FH:I

    iput v3, p0, Labcd/Sb$a;->Hw:I

    iput v3, p0, Labcd/Sb$a;->Zo:I
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_22

    :goto_21
    return-void

    :catchall_22
    move-exception v2

    sget-boolean v3, Labcd/Sb$a;->DW:Z

    if-eqz v3, :cond_2a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2a
    throw v2
.end method

.method public FH()I
    .registers 5

    const-wide v0, 0x2206b3fbfc1a9880L  # 9.090684021587596E-145

    :try_start_5
    sget-boolean v2, Labcd/Sb$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v0, p0, Labcd/Sb$a;->VH:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/Sb$a;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public Hw()I
    .registers 5

    const-wide v0, 0x10e49ffe1396fdc8L

    :try_start_5
    sget-boolean v2, Labcd/Sb$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v0, p0, Labcd/Sb$a;->gn:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/Sb$a;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public j6(I)V
    .registers 6

    const-wide v0, 0x4816135c22c19677L  # 1.8779864501077683E39

    :try_start_5
    sget-boolean v2, Labcd/Sb$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    const v2, 0x7fffffff

    if-nez p1, :cond_14

    const p1, 0x7fffffff

    :cond_14
    iput p1, p0, Labcd/Sb$a;->u7:I

    and-int/2addr v2, p1

    iget-object v3, p0, Labcd/Sb$a;->tp:Labcd/Sb;

    invoke-static {v3}, Labcd/Sb;->DW(Labcd/Sb;)[I

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v3, v3, -0x2

    rem-int v3, v2, v3

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Labcd/Sb$a;->Hw:I

    iget-object v3, p0, Labcd/Sb$a;->tp:Labcd/Sb;

    invoke-static {v3}, Labcd/Sb;->DW(Labcd/Sb;)[I

    move-result-object v3

    array-length v3, v3

    rem-int/2addr v2, v3

    iput v2, p0, Labcd/Sb$a;->FH:I
    :try_end_30
    .catchall {:try_start_5 .. :try_end_30} :catchall_31

    return-void

    :catchall_31
    move-exception v2

    sget-boolean v3, Labcd/Sb$a;->DW:Z

    if-eqz v3, :cond_3e

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3e
    throw v2
.end method

.method public j6()Z
    .registers 9

    const-wide v0, 0x1b68f981b6ebb348L

    :try_start_5
    sget-boolean v2, Labcd/Sb$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v2, p0, Labcd/Sb$a;->Hw:I

    const/high16 v3, -0x80000000

    const v4, 0x7fffffff

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v2, :cond_b8

    iget v2, p0, Labcd/Sb$a;->Zo:I

    if-nez v2, :cond_73

    :goto_1b
    iget v2, p0, Labcd/Sb$a;->FH:I

    iget-object v7, p0, Labcd/Sb$a;->tp:Labcd/Sb;

    invoke-static {v7}, Labcd/Sb;->DW(Labcd/Sb;)[I

    move-result-object v7

    array-length v7, v7

    if-lt v2, v7, :cond_27

    return v5

    :cond_27
    iget-object v2, p0, Labcd/Sb$a;->tp:Labcd/Sb;

    invoke-static {v2}, Labcd/Sb;->DW(Labcd/Sb;)[I

    move-result-object v2

    iget v7, p0, Labcd/Sb$a;->FH:I

    aget v2, v2, v7

    iput v2, p0, Labcd/Sb$a;->VH:I

    iget-object v2, p0, Labcd/Sb$a;->tp:Labcd/Sb;

    invoke-static {v2}, Labcd/Sb;->j6(Labcd/Sb;)[Z

    move-result-object v2

    iget v7, p0, Labcd/Sb$a;->FH:I

    aget-boolean v2, v2, v7

    if-nez v2, :cond_6e

    iget v2, p0, Labcd/Sb$a;->VH:I

    if-eqz v2, :cond_6e

    if-eq v2, v3, :cond_6e

    and-int/2addr v2, v4

    iget-object v3, p0, Labcd/Sb$a;->tp:Labcd/Sb;

    invoke-static {v3}, Labcd/Sb;->DW(Labcd/Sb;)[I

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v3, v3, -0x2

    rem-int/2addr v2, v3

    add-int/2addr v2, v6

    iput v2, p0, Labcd/Sb$a;->Zo:I

    iget v2, p0, Labcd/Sb$a;->VH:I

    and-int/2addr v2, v4

    iget-object v3, p0, Labcd/Sb$a;->tp:Labcd/Sb;

    invoke-static {v3}, Labcd/Sb;->DW(Labcd/Sb;)[I

    move-result-object v3

    array-length v3, v3

    rem-int/2addr v2, v3

    iput v2, p0, Labcd/Sb$a;->v5:I

    iget v2, p0, Labcd/Sb$a;->VH:I

    iput v2, p0, Labcd/Sb$a;->u7:I

    iget v2, p0, Labcd/Sb$a;->FH:I

    add-int/2addr v2, v6

    iput v2, p0, Labcd/Sb$a;->FH:I

    invoke-virtual {p0}, Labcd/Sb$a;->j6()Z

    move-result v0

    return v0

    :cond_6e
    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Labcd/Sb$a;->FH:I

    goto :goto_1b

    :cond_73
    :goto_73
    iget-object v2, p0, Labcd/Sb$a;->tp:Labcd/Sb;

    invoke-static {v2}, Labcd/Sb;->DW(Labcd/Sb;)[I

    move-result-object v2

    iget v3, p0, Labcd/Sb$a;->v5:I

    aget v2, v2, v3

    iput v2, p0, Labcd/Sb$a;->VH:I

    if-nez v2, :cond_88

    iput v5, p0, Labcd/Sb$a;->Zo:I

    invoke-virtual {p0}, Labcd/Sb$a;->j6()Z

    move-result v0

    return v0

    :cond_88
    iget v7, p0, Labcd/Sb$a;->u7:I

    if-ne v2, v7, :cond_aa

    if-ne v2, v4, :cond_90

    iput v5, p0, Labcd/Sb$a;->VH:I

    :cond_90
    iget-object v2, p0, Labcd/Sb$a;->tp:Labcd/Sb;

    invoke-static {v2}, Labcd/Sb;->FH(Labcd/Sb;)[I

    move-result-object v2

    iget v3, p0, Labcd/Sb$a;->v5:I

    aget v2, v2, v3

    iput v2, p0, Labcd/Sb$a;->gn:I

    iget v2, p0, Labcd/Sb$a;->Zo:I

    add-int/2addr v3, v2

    iget-object v2, p0, Labcd/Sb$a;->tp:Labcd/Sb;

    invoke-static {v2}, Labcd/Sb;->DW(Labcd/Sb;)[I

    move-result-object v2

    array-length v2, v2

    rem-int/2addr v3, v2

    iput v3, p0, Labcd/Sb$a;->v5:I

    return v6

    :cond_aa
    iget v2, p0, Labcd/Sb$a;->Zo:I

    add-int/2addr v3, v2

    iget-object v2, p0, Labcd/Sb$a;->tp:Labcd/Sb;

    invoke-static {v2}, Labcd/Sb;->DW(Labcd/Sb;)[I

    move-result-object v2

    array-length v2, v2

    rem-int/2addr v3, v2

    iput v3, p0, Labcd/Sb$a;->v5:I

    goto :goto_73

    :cond_b8
    const/4 v7, -0x1

    if-ne v2, v7, :cond_f0

    :goto_bb
    iget v2, p0, Labcd/Sb$a;->FH:I

    iget-object v7, p0, Labcd/Sb$a;->tp:Labcd/Sb;

    invoke-static {v7}, Labcd/Sb;->DW(Labcd/Sb;)[I

    move-result-object v7

    array-length v7, v7

    if-lt v2, v7, :cond_c7

    return v5

    :cond_c7
    iget-object v2, p0, Labcd/Sb$a;->tp:Labcd/Sb;

    invoke-static {v2}, Labcd/Sb;->DW(Labcd/Sb;)[I

    move-result-object v2

    iget v7, p0, Labcd/Sb$a;->FH:I

    aget v2, v2, v7

    iput v2, p0, Labcd/Sb$a;->VH:I

    if-eqz v2, :cond_eb

    if-eq v2, v3, :cond_eb

    if-ne v2, v4, :cond_db

    iput v5, p0, Labcd/Sb$a;->VH:I

    :cond_db
    iget-object v2, p0, Labcd/Sb$a;->tp:Labcd/Sb;

    invoke-static {v2}, Labcd/Sb;->FH(Labcd/Sb;)[I

    move-result-object v2

    iget v3, p0, Labcd/Sb$a;->FH:I

    aget v2, v2, v3

    iput v2, p0, Labcd/Sb$a;->gn:I

    add-int/2addr v3, v6

    iput v3, p0, Labcd/Sb$a;->FH:I

    return v6

    :cond_eb
    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Labcd/Sb$a;->FH:I

    goto :goto_bb

    :cond_f0
    :goto_f0
    iget-object v2, p0, Labcd/Sb$a;->tp:Labcd/Sb;

    invoke-static {v2}, Labcd/Sb;->DW(Labcd/Sb;)[I

    move-result-object v2

    iget v3, p0, Labcd/Sb$a;->FH:I

    aget v2, v2, v3

    iput v2, p0, Labcd/Sb$a;->VH:I

    if-nez v2, :cond_ff

    return v5

    :cond_ff
    iget v7, p0, Labcd/Sb$a;->u7:I

    if-ne v2, v7, :cond_121

    if-ne v2, v4, :cond_107

    iput v5, p0, Labcd/Sb$a;->VH:I

    :cond_107
    iget-object v2, p0, Labcd/Sb$a;->tp:Labcd/Sb;

    invoke-static {v2}, Labcd/Sb;->FH(Labcd/Sb;)[I

    move-result-object v2

    iget v3, p0, Labcd/Sb$a;->FH:I

    aget v2, v2, v3

    iput v2, p0, Labcd/Sb$a;->gn:I

    iget v2, p0, Labcd/Sb$a;->Hw:I

    add-int/2addr v3, v2

    iget-object v2, p0, Labcd/Sb$a;->tp:Labcd/Sb;

    invoke-static {v2}, Labcd/Sb;->DW(Labcd/Sb;)[I

    move-result-object v2

    array-length v2, v2

    rem-int/2addr v3, v2

    iput v3, p0, Labcd/Sb$a;->FH:I

    return v6

    :cond_121
    iget v2, p0, Labcd/Sb$a;->Hw:I

    add-int/2addr v3, v2

    iget-object v2, p0, Labcd/Sb$a;->tp:Labcd/Sb;

    invoke-static {v2}, Labcd/Sb;->DW(Labcd/Sb;)[I

    move-result-object v2

    array-length v2, v2

    rem-int/2addr v3, v2

    iput v3, p0, Labcd/Sb$a;->FH:I
    :try_end_12e
    .catchall {:try_start_5 .. :try_end_12e} :catchall_12f

    goto :goto_f0

    :catchall_12f
    move-exception v2

    sget-boolean v3, Labcd/Sb$a;->DW:Z

    if-eqz v3, :cond_137

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_137
    goto :goto_139

    :goto_138
    throw v2

    :goto_139
    goto :goto_138
.end method
