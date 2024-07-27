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
    .registers 4

    const-wide v2, -0x1044b5d441b2585bL    # -1.6549921685082696E230

    const-class v0, Labcd/Sb$a;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>(Labcd/Sb;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x23d25dc9cb9800L
    .end annotation

    const-wide v4, 0x6cf3154a573fbf8L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Sb$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x6cf3154a573fbf8L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Labcd/Sb$a;->tp:Labcd/Sb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Labcd/Sb;->j6(Labcd/Sb;)[Z

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Labcd/Sb$a;->FH:I

    const/4 v0, -0x1

    iput v0, p0, Labcd/Sb$a;->Hw:I

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Labcd/Sb$a;->FH:I

    const/4 v0, 0x0

    iput v0, p0, Labcd/Sb$a;->Hw:I

    const/4 v0, 0x0

    iput v0, p0, Labcd/Sb$a;->Zo:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Sb$a;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method synthetic constructor <init>(Labcd/Sb;Labcd/Rb;)V
    .registers 10

    const-wide v2, -0x1068debaca4d135cL    # -3.506805171492646E229

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Sb$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1068debaca4d135cL    # -3.506805171492646E229

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1}, Labcd/Sb$a;-><init>(Labcd/Sb;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Sb$a;->DW:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method


# virtual methods
.method public DW()V
    .registers 5

    const-wide v2, -0xe04c5cd8fb8d888L    # -1.1347015226453572E241

    :try_start_0
    sget-boolean v0, Labcd/Sb$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xe04c5cd8fb8d888L    # -1.1347015226453572E241

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Sb$a;->tp:Labcd/Sb;

    invoke-static {v0}, Labcd/Sb;->j6(Labcd/Sb;)[Z

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Labcd/Sb$a;->FH:I

    const/4 v0, -0x1

    iput v0, p0, Labcd/Sb$a;->Hw:I

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Labcd/Sb$a;->FH:I

    const/4 v0, 0x0

    iput v0, p0, Labcd/Sb$a;->Hw:I

    const/4 v0, 0x0

    iput v0, p0, Labcd/Sb$a;->Zo:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Sb$a;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public FH()I
    .registers 5

    const-wide v2, 0x2206b3fbfc1a9880L    # 9.090684021587596E-145

    :try_start_0
    sget-boolean v0, Labcd/Sb$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2206b3fbfc1a9880L    # 9.090684021587596E-145

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Labcd/Sb$a;->VH:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Sb$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Hw()I
    .registers 5

    const-wide v2, 0x10e49ffe1396fdc8L

    :try_start_0
    sget-boolean v0, Labcd/Sb$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x10e49ffe1396fdc8L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Labcd/Sb$a;->gn:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Sb$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(I)V
    .registers 8

    const-wide v4, 0x4816135c22c19677L    # 1.8779864501077683E39

    const v0, 0x7fffffff

    :try_start_0
    sget-boolean v1, Labcd/Sb$a;->j6:Z

    if-eqz v1, :cond_0

    const-wide v2, 0x4816135c22c19677L    # 1.8779864501077683E39

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    if-nez p1, :cond_1

    move p1, v0

    :cond_1
    iput p1, p0, Labcd/Sb$a;->u7:I

    and-int/2addr v0, p1

    iget-object v1, p0, Labcd/Sb$a;->tp:Labcd/Sb;

    invoke-static {v1}, Labcd/Sb;->DW(Labcd/Sb;)[I

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x2

    rem-int v1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Labcd/Sb$a;->Hw:I

    iget-object v1, p0, Labcd/Sb$a;->tp:Labcd/Sb;

    invoke-static {v1}, Labcd/Sb;->DW(Labcd/Sb;)[I

    move-result-object v1

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Labcd/Sb$a;->FH:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Sb$a;->DW:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public j6()Z
    .registers 9

    const-wide v6, 0x1b68f981b6ebb348L

    const/high16 v5, -0x80000000

    const/4 v0, 0x1

    const v4, 0x7fffffff

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v2, Labcd/Sb$a;->j6:Z

    if-eqz v2, :cond_0

    const-wide v2, 0x1b68f981b6ebb348L

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v2, p0, Labcd/Sb$a;->Hw:I

    if-nez v2, :cond_8

    iget v2, p0, Labcd/Sb$a;->Zo:I

    if-nez v2, :cond_5

    :goto_0
    iget v0, p0, Labcd/Sb$a;->FH:I

    iget-object v2, p0, Labcd/Sb$a;->tp:Labcd/Sb;

    invoke-static {v2}, Labcd/Sb;->DW(Labcd/Sb;)[I

    move-result-object v2

    array-length v2, v2

    if-lt v0, v2, :cond_1

    move v0, v1

    :goto_1
    return v0

    :cond_1
    iget-object v0, p0, Labcd/Sb$a;->tp:Labcd/Sb;

    invoke-static {v0}, Labcd/Sb;->DW(Labcd/Sb;)[I

    move-result-object v0

    iget v2, p0, Labcd/Sb$a;->FH:I

    aget v0, v0, v2

    iput v0, p0, Labcd/Sb$a;->VH:I

    iget-object v0, p0, Labcd/Sb$a;->tp:Labcd/Sb;

    invoke-static {v0}, Labcd/Sb;->j6(Labcd/Sb;)[Z

    move-result-object v0

    iget v2, p0, Labcd/Sb$a;->FH:I

    aget-boolean v0, v0, v2

    if-nez v0, :cond_2

    iget v0, p0, Labcd/Sb$a;->VH:I

    if-eqz v0, :cond_2

    iget v0, p0, Labcd/Sb$a;->VH:I

    if-eq v0, v5, :cond_2

    iget v0, p0, Labcd/Sb$a;->VH:I

    and-int/2addr v0, v4

    iget-object v1, p0, Labcd/Sb$a;->tp:Labcd/Sb;

    invoke-static {v1}, Labcd/Sb;->DW(Labcd/Sb;)[I

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x2

    rem-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/Sb$a;->Zo:I

    iget v0, p0, Labcd/Sb$a;->VH:I

    and-int/2addr v0, v4

    iget-object v1, p0, Labcd/Sb$a;->tp:Labcd/Sb;

    invoke-static {v1}, Labcd/Sb;->DW(Labcd/Sb;)[I

    move-result-object v1

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Labcd/Sb$a;->v5:I

    iget v0, p0, Labcd/Sb$a;->VH:I

    iput v0, p0, Labcd/Sb$a;->u7:I

    iget v0, p0, Labcd/Sb$a;->FH:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/Sb$a;->FH:I

    invoke-virtual {p0}, Labcd/Sb$a;->j6()Z

    move-result v0

    goto :goto_1

    :cond_2
    iget v0, p0, Labcd/Sb$a;->FH:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/Sb$a;->FH:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Sb$a;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0

    :cond_4
    :try_start_1
    iget v1, p0, Labcd/Sb$a;->v5:I

    iget v2, p0, Labcd/Sb$a;->Zo:I

    add-int/2addr v1, v2

    iget-object v2, p0, Labcd/Sb$a;->tp:Labcd/Sb;

    invoke-static {v2}, Labcd/Sb;->DW(Labcd/Sb;)[I

    move-result-object v2

    array-length v2, v2

    rem-int/2addr v1, v2

    iput v1, p0, Labcd/Sb$a;->v5:I

    :cond_5
    iget-object v1, p0, Labcd/Sb$a;->tp:Labcd/Sb;

    invoke-static {v1}, Labcd/Sb;->DW(Labcd/Sb;)[I

    move-result-object v1

    iget v2, p0, Labcd/Sb$a;->v5:I

    aget v1, v1, v2

    iput v1, p0, Labcd/Sb$a;->VH:I

    iget v1, p0, Labcd/Sb$a;->VH:I

    if-nez v1, :cond_6

    const/4 v0, 0x0

    iput v0, p0, Labcd/Sb$a;->Zo:I

    invoke-virtual {p0}, Labcd/Sb$a;->j6()Z

    move-result v0

    goto/16 :goto_1

    :cond_6
    iget v1, p0, Labcd/Sb$a;->VH:I

    iget v2, p0, Labcd/Sb$a;->u7:I

    if-ne v1, v2, :cond_4

    iget v1, p0, Labcd/Sb$a;->VH:I

    if-ne v1, v4, :cond_7

    const/4 v1, 0x0

    iput v1, p0, Labcd/Sb$a;->VH:I

    :cond_7
    iget-object v1, p0, Labcd/Sb$a;->tp:Labcd/Sb;

    invoke-static {v1}, Labcd/Sb;->FH(Labcd/Sb;)[I

    move-result-object v1

    iget v2, p0, Labcd/Sb$a;->v5:I

    aget v1, v1, v2

    iput v1, p0, Labcd/Sb$a;->gn:I

    iget v1, p0, Labcd/Sb$a;->v5:I

    iget v2, p0, Labcd/Sb$a;->Zo:I

    add-int/2addr v1, v2

    iget-object v2, p0, Labcd/Sb$a;->tp:Labcd/Sb;

    invoke-static {v2}, Labcd/Sb;->DW(Labcd/Sb;)[I

    move-result-object v2

    array-length v2, v2

    rem-int/2addr v1, v2

    iput v1, p0, Labcd/Sb$a;->v5:I

    goto/16 :goto_1

    :cond_8
    iget v2, p0, Labcd/Sb$a;->Hw:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_d

    :goto_2
    iget v2, p0, Labcd/Sb$a;->FH:I

    iget-object v3, p0, Labcd/Sb$a;->tp:Labcd/Sb;

    invoke-static {v3}, Labcd/Sb;->DW(Labcd/Sb;)[I

    move-result-object v3

    array-length v3, v3

    if-lt v2, v3, :cond_9

    move v0, v1

    goto/16 :goto_1

    :cond_9
    iget-object v2, p0, Labcd/Sb$a;->tp:Labcd/Sb;

    invoke-static {v2}, Labcd/Sb;->DW(Labcd/Sb;)[I

    move-result-object v2

    iget v3, p0, Labcd/Sb$a;->FH:I

    aget v2, v2, v3

    iput v2, p0, Labcd/Sb$a;->VH:I

    iget v2, p0, Labcd/Sb$a;->VH:I

    if-eqz v2, :cond_b

    iget v2, p0, Labcd/Sb$a;->VH:I

    if-eq v2, v5, :cond_b

    iget v1, p0, Labcd/Sb$a;->VH:I

    if-ne v1, v4, :cond_a

    const/4 v1, 0x0

    iput v1, p0, Labcd/Sb$a;->VH:I

    :cond_a
    iget-object v1, p0, Labcd/Sb$a;->tp:Labcd/Sb;

    invoke-static {v1}, Labcd/Sb;->FH(Labcd/Sb;)[I

    move-result-object v1

    iget v2, p0, Labcd/Sb$a;->FH:I

    aget v1, v1, v2

    iput v1, p0, Labcd/Sb$a;->gn:I

    iget v1, p0, Labcd/Sb$a;->FH:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Labcd/Sb$a;->FH:I

    goto/16 :goto_1

    :cond_b
    iget v2, p0, Labcd/Sb$a;->FH:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Labcd/Sb$a;->FH:I

    goto :goto_2

    :cond_c
    iget v2, p0, Labcd/Sb$a;->FH:I

    iget v3, p0, Labcd/Sb$a;->Hw:I

    add-int/2addr v2, v3

    iget-object v3, p0, Labcd/Sb$a;->tp:Labcd/Sb;

    invoke-static {v3}, Labcd/Sb;->DW(Labcd/Sb;)[I

    move-result-object v3

    array-length v3, v3

    rem-int/2addr v2, v3

    iput v2, p0, Labcd/Sb$a;->FH:I

    :cond_d
    iget-object v2, p0, Labcd/Sb$a;->tp:Labcd/Sb;

    invoke-static {v2}, Labcd/Sb;->DW(Labcd/Sb;)[I

    move-result-object v2

    iget v3, p0, Labcd/Sb$a;->FH:I

    aget v2, v2, v3

    iput v2, p0, Labcd/Sb$a;->VH:I

    iget v2, p0, Labcd/Sb$a;->VH:I

    if-nez v2, :cond_e

    move v0, v1

    goto/16 :goto_1

    :cond_e
    iget v2, p0, Labcd/Sb$a;->VH:I

    iget v3, p0, Labcd/Sb$a;->u7:I

    if-ne v2, v3, :cond_c

    iget v1, p0, Labcd/Sb$a;->VH:I

    if-ne v1, v4, :cond_f

    const/4 v1, 0x0

    iput v1, p0, Labcd/Sb$a;->VH:I

    :cond_f
    iget-object v1, p0, Labcd/Sb$a;->tp:Labcd/Sb;

    invoke-static {v1}, Labcd/Sb;->FH(Labcd/Sb;)[I

    move-result-object v1

    iget v2, p0, Labcd/Sb$a;->FH:I

    aget v1, v1, v2

    iput v1, p0, Labcd/Sb$a;->gn:I

    iget v1, p0, Labcd/Sb$a;->FH:I

    iget v2, p0, Labcd/Sb$a;->Hw:I

    add-int/2addr v1, v2

    iget-object v2, p0, Labcd/Sb$a;->tp:Labcd/Sb;

    invoke-static {v2}, Labcd/Sb;->DW(Labcd/Sb;)[I

    move-result-object v2

    array-length v2, v2

    rem-int/2addr v1, v2

    iput v1, p0, Labcd/Sb$a;->FH:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method
