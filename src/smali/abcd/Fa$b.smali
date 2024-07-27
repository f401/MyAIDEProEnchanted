.class Labcd/Fa$b;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Fa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
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
.field private FH:Labcd/wb;
    .annotation runtime Labcd/ru;
        field = -0x45c27ca54051e40L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwb",
            "<",
            "Lwb",
            "<",
            "Labcd/Cb;",
            ">;>;"
        }
    .end annotation
.end field

.field private Hw:Labcd/qb;
    .annotation runtime Labcd/ru;
        field = 0x5a2282b155d4e7d3L
    .end annotation
.end field

.field private VH:I
    .annotation runtime Labcd/ru;
        field = 0x3df98b40c78a1108L
    .end annotation
.end field

.field private Zo:Labcd/Ub;
    .annotation runtime Labcd/ru;
        field = 0x1e562a4165525edbL
    .end annotation
.end field

.field private gn:I
    .annotation runtime Labcd/ru;
        field = 0x7a29170c95053f0L
    .end annotation
.end field

.field private tp:I
    .annotation runtime Labcd/ru;
        field = -0x1ceb69095c0208c4L
    .end annotation
.end field

.field private u7:I
    .annotation runtime Labcd/ru;
        field = 0x636f4f1036f34ae1L
    .end annotation
.end field

.field private v5:Labcd/Ub;
    .annotation runtime Labcd/ru;
        field = 0xb4dcb8ee443a8c0L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, 0x2257955eaf8a6949L    # 3.021829037040656E-143

    const-class v0, Labcd/Fa$b;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/La;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x167bbddaaa17be7L
    .end annotation

    const-wide v4, -0xfe447849cac5789L    # -1.075919596914018E232

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Fa$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xfe447849cac5789L    # -1.075919596914018E232

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Labcd/wb;

    invoke-direct {v0}, Labcd/wb;-><init>()V

    iput-object v0, p0, Labcd/Fa$b;->FH:Labcd/wb;

    new-instance v0, Labcd/qb;

    invoke-direct {v0}, Labcd/qb;-><init>()V

    iput-object v0, p0, Labcd/Fa$b;->Hw:Labcd/qb;

    new-instance v0, Labcd/Ub;

    invoke-direct {v0}, Labcd/Ub;-><init>()V

    iput-object v0, p0, Labcd/Fa$b;->v5:Labcd/Ub;

    new-instance v0, Labcd/Ub;

    invoke-direct {v0}, Labcd/Ub;-><init>()V

    iput-object v0, p0, Labcd/Fa$b;->Zo:Labcd/Ub;

    iget-object v0, p1, Labcd/La;->j3:Labcd/Ga;

    const-string v1, "prototype"

    invoke-virtual {v0, v1}, Labcd/Ga;->j6(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Labcd/Fa$b;->VH:I

    iget-object v0, p1, Labcd/La;->j3:Labcd/Ga;

    const-string v1, "()"

    invoke-virtual {v0, v1}, Labcd/Ga;->j6(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Labcd/Fa$b;->gn:I

    iget-object v0, p1, Labcd/La;->j3:Labcd/Ga;

    const-string v1, "function"

    invoke-virtual {v0, v1}, Labcd/Ga;->j6(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Labcd/Fa$b;->tp:I

    iget-object v0, p1, Labcd/La;->j3:Labcd/Ga;

    const-string v1, "[]"

    invoke-virtual {v0, v1}, Labcd/Ga;->j6(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Labcd/Fa$b;->u7:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Fa$b;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private DW(IILabcd/Fa$a;)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x62e2e380dba9ad5L
    .end annotation

    const-wide v8, 0x19f6b10b9e1f6f30L

    :try_start_0
    sget-boolean v0, Labcd/Fa$b;->j6:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x19f6b10b9e1f6f30L

    move-object v2, p0

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Fa$b;->v5:Labcd/Ub;

    invoke-virtual {p3, p1}, Labcd/Fa$a;->gn(I)I

    move-result v1

    invoke-virtual {p3, p2}, Labcd/Fa$a;->Hw(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Labcd/Ub;->FH(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Fa$b;->DW:Z

    if-eqz v0, :cond_1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method private j6(IILabcd/Fa$a;)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x218c94f91ab56b97L
    .end annotation

    const-wide v8, 0x3722e3f17df75ed0L    # 4.235374974730605E-43

    const/4 v6, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Fa$b;->j6:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x3722e3f17df75ed0L    # 4.235374974730605E-43

    move-object v2, p0

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p3, p1}, Labcd/Fa$a;->tp(I)I

    move-result v1

    move v0, v6

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Labcd/Fa$b;->v5:Labcd/Ub;

    invoke-virtual {p3, p2}, Labcd/Fa$a;->VH(I)I

    move-result v3

    invoke-virtual {p3, p1, v0}, Labcd/Fa$a;->v5(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Labcd/Ub;->DW(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p3, p1}, Labcd/Fa$a;->u7(I)I

    move-result v0

    invoke-virtual {p3, p2}, Labcd/Fa$a;->v5(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v0, v6

    :goto_1
    if-ge v0, v1, :cond_2

    iget-object v2, p0, Labcd/Fa$b;->v5:Labcd/Ub;

    invoke-virtual {p3, p1, v0}, Labcd/Fa$a;->Hw(II)I

    move-result v3

    invoke-virtual {p3, p2, v0}, Labcd/Fa$a;->FH(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Labcd/Ub;->DW(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p3, p2}, Labcd/Fa$a;->Zo(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Labcd/Fa$b;->v5:Labcd/Ub;

    invoke-virtual {p3, p2}, Labcd/Fa$a;->Zo(I)I

    move-result v1

    invoke-virtual {p3, p1}, Labcd/Fa$a;->gn(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Labcd/Ub;->DW(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Fa$b;->DW:Z

    if-eqz v0, :cond_4

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1
.end method

.method private j6(Labcd/wb;IILabcd/Fa$a;)V
    .registers 15
    .annotation runtime Labcd/su;
        method = 0x27f0c678ca3b55c0L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwb",
            "<",
            "Labcd/Cb;",
            ">;II",
            "Labcd/Fa$a;",
            ")V"
        }
    .end annotation

    const-wide v8, 0x1acd9bce455518d9L

    const/4 v7, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Fa$b;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x1acd9bce455518d9L

    move-object v2, p0

    move-object v3, p1

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, -0x1

    if-eq p3, v0, :cond_1

    iget v0, p0, Labcd/Fa$b;->tp:I

    if-eq p3, v0, :cond_1

    invoke-virtual {p1, p3}, Labcd/wb;->DW(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Cb;

    if-eqz v0, :cond_1

    move v1, v7

    :goto_0
    invoke-virtual {v0}, Labcd/Cb;->Hw()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p4, p2}, Labcd/Fa$a;->Hw(I)I

    move-result v2

    invoke-virtual {v0, v1}, Labcd/Cb;->DW(I)I

    move-result v3

    invoke-virtual {p4, v3}, Labcd/Fa$a;->Hw(I)I

    move-result v3

    iget-object v4, p0, Labcd/Fa$b;->v5:Labcd/Ub;

    invoke-virtual {v4, v2, v3}, Labcd/Ub;->FH(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Labcd/Fa$b;->gn:I

    if-ne p3, v0, :cond_2

    iget v0, p0, Labcd/Fa$b;->tp:I

    invoke-virtual {p1, v0}, Labcd/wb;->DW(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Cb;

    if-eqz v0, :cond_2

    move v1, v7

    :goto_1
    invoke-virtual {v0}, Labcd/Cb;->Hw()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {v0, v1}, Labcd/Cb;->DW(I)I

    move-result v2

    invoke-direct {p0, v2, p2, p4}, Labcd/Fa$b;->j6(IILabcd/Fa$a;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget v0, p0, Labcd/Fa$b;->tp:I

    if-ne p3, v0, :cond_3

    iget v0, p0, Labcd/Fa$b;->gn:I

    invoke-virtual {p1, v0}, Labcd/wb;->DW(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Cb;

    if-eqz v0, :cond_3

    move v1, v7

    :goto_2
    invoke-virtual {v0}, Labcd/Cb;->Hw()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {v0, v1}, Labcd/Cb;->DW(I)I

    move-result v2

    invoke-direct {p0, p2, v2, p4}, Labcd/Fa$b;->j6(IILabcd/Fa$a;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iget v0, p0, Labcd/Fa$b;->VH:I

    if-ne p3, v0, :cond_4

    iget v0, p0, Labcd/Fa$b;->tp:I

    invoke-virtual {p1, v0}, Labcd/wb;->DW(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Cb;

    if-eqz v0, :cond_4

    move v1, v7

    :goto_3
    invoke-virtual {v0}, Labcd/Cb;->Hw()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {v0, v1}, Labcd/Cb;->DW(I)I

    move-result v2

    invoke-direct {p0, v2, p2, p4}, Labcd/Fa$b;->DW(IILabcd/Fa$a;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    iget v0, p0, Labcd/Fa$b;->tp:I

    if-ne p3, v0, :cond_6

    iget v0, p0, Labcd/Fa$b;->VH:I

    invoke-virtual {p1, v0}, Labcd/wb;->DW(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Cb;

    if-eqz v0, :cond_6

    move v1, v7

    :goto_4
    invoke-virtual {v0}, Labcd/Cb;->Hw()I

    move-result v2

    if-ge v1, v2, :cond_6

    invoke-virtual {v0, v1}, Labcd/Cb;->DW(I)I

    move-result v2

    invoke-direct {p0, p2, v2, p4}, Labcd/Fa$b;->DW(IILabcd/Fa$a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Fa$b;->DW:Z

    if-eqz v0, :cond_5

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    throw v1

    :cond_6
    return-void
.end method


# virtual methods
.method public j6(Labcd/Fa$a;)V
    .registers 16
    .annotation runtime Labcd/su;
        method = -0x1b3ffc9b37004560L
    .end annotation

    const-wide v12, -0x5f42f6a543e04b3L    # -7.88899494399745E279

    const/4 v10, -0x1

    const/4 v5, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Fa$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x5f42f6a543e04b3L    # -7.88899494399745E279

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v0, p0, Labcd/Fa$b;->v5:Labcd/Ub;

    invoke-virtual {v0}, Labcd/Ub;->j6()V

    iget-object v0, p0, Labcd/Fa$b;->v5:Labcd/Ub;

    invoke-virtual {p1}, Labcd/Fa$a;->j6()Labcd/Ub;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/Ub;->DW(Labcd/Ub;)V

    iget-object v0, p0, Labcd/Fa$b;->FH:Labcd/wb;

    invoke-virtual {v0}, Labcd/wb;->j6()V

    iget-object v0, p0, Labcd/Fa$b;->Hw:Labcd/qb;

    invoke-virtual {v0}, Labcd/qb;->j6()V

    iget-object v0, p0, Labcd/Fa$b;->Hw:Labcd/qb;

    invoke-virtual {p1}, Labcd/Fa$a;->DW()Labcd/qb;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/qb;->FH(Labcd/qb;)V

    iget-object v0, p0, Labcd/Fa$b;->Hw:Labcd/qb;

    iget-object v0, v0, Labcd/qb;->Hw:Labcd/qb$a;

    invoke-virtual {v0}, Labcd/qb$a;->DW()V

    :goto_0
    iget-object v0, p0, Labcd/Fa$b;->Hw:Labcd/qb;

    iget-object v0, v0, Labcd/qb;->Hw:Labcd/qb$a;

    invoke-virtual {v0}, Labcd/qb$a;->j6()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Labcd/Fa$b;->Hw:Labcd/qb;

    iget-object v0, v0, Labcd/qb;->Hw:Labcd/qb$a;

    invoke-virtual {v0}, Labcd/qb$a;->Hw()I

    move-result v0

    iget-object v1, p0, Labcd/Fa$b;->Hw:Labcd/qb;

    iget-object v1, v1, Labcd/qb;->Hw:Labcd/qb$a;

    invoke-virtual {v1}, Labcd/qb$a;->FH()I

    move-result v1

    iget-object v2, p0, Labcd/Fa$b;->FH:Labcd/wb;

    invoke-virtual {v2, v0}, Labcd/wb;->j6(I)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Labcd/Fa$b;->FH:Labcd/wb;

    new-instance v3, Labcd/wb;

    invoke-direct {v3}, Labcd/wb;-><init>()V

    invoke-virtual {v2, v0, v3}, Labcd/wb;->DW(ILjava/lang/Object;)V

    :cond_1
    iget-object v2, p0, Labcd/Fa$b;->FH:Labcd/wb;

    invoke-virtual {v2, v0}, Labcd/wb;->DW(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/wb;

    invoke-virtual {p1, v1}, Labcd/Fa$a;->j6(I)I

    move-result v2

    invoke-direct {p0, v0, v1, v2, p1}, Labcd/Fa$b;->j6(Labcd/wb;IILabcd/Fa$a;)V

    invoke-virtual {v0, v2}, Labcd/wb;->j6(I)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Labcd/Cb;

    invoke-direct {v3}, Labcd/Cb;-><init>()V

    invoke-virtual {v0, v2, v3}, Labcd/wb;->DW(ILjava/lang/Object;)V

    :cond_2
    invoke-virtual {v0, v2}, Labcd/wb;->DW(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Cb;

    invoke-virtual {v0, v1}, Labcd/Cb;->j6(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Fa$b;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v12, v13, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0

    :cond_4
    :try_start_1
    iget-object v0, p0, Labcd/Fa$b;->Zo:Labcd/Ub;

    invoke-virtual {v0}, Labcd/Ub;->j6()V

    iget-object v0, p0, Labcd/Fa$b;->Zo:Labcd/Ub;

    iget-object v1, p0, Labcd/Fa$b;->v5:Labcd/Ub;

    invoke-virtual {v0, v1}, Labcd/Ub;->DW(Labcd/Ub;)V

    iget-object v0, p0, Labcd/Fa$b;->v5:Labcd/Ub;

    invoke-virtual {v0}, Labcd/Ub;->j6()V

    iget-object v0, p0, Labcd/Fa$b;->Zo:Labcd/Ub;

    iget-object v0, v0, Labcd/Ub;->Hw:Labcd/Ub$a;

    invoke-virtual {v0}, Labcd/Ub$a;->DW()V

    move v0, v5

    :cond_5
    :goto_1
    iget-object v1, p0, Labcd/Fa$b;->Zo:Labcd/Ub;

    iget-object v1, v1, Labcd/Ub;->Hw:Labcd/Ub$a;

    invoke-virtual {v1}, Labcd/Ub$a;->j6()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Labcd/Fa$b;->Hw:Labcd/qb;

    iget-object v2, p0, Labcd/Fa$b;->Zo:Labcd/Ub;

    iget-object v2, v2, Labcd/Ub;->Hw:Labcd/Ub$a;

    invoke-virtual {v2}, Labcd/Ub$a;->FH()I

    move-result v2

    invoke-virtual {v1, v2}, Labcd/qb;->DW(I)I

    move-result v6

    iget-object v1, p0, Labcd/Fa$b;->Hw:Labcd/qb;

    iget-object v2, p0, Labcd/Fa$b;->Zo:Labcd/Ub;

    iget-object v2, v2, Labcd/Ub;->Hw:Labcd/Ub$a;

    invoke-virtual {v2}, Labcd/Ub$a;->Hw()I

    move-result v2

    invoke-virtual {v1, v2}, Labcd/qb;->DW(I)I

    move-result v7

    if-eq v6, v7, :cond_5

    if-eq v6, v10, :cond_5

    if-eq v7, v10, :cond_5

    iget-object v0, p0, Labcd/Fa$b;->FH:Labcd/wb;

    invoke-virtual {v0, v6}, Labcd/wb;->DW(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/wb;

    iget-object v1, p0, Labcd/Fa$b;->FH:Labcd/wb;

    invoke-virtual {v1, v7}, Labcd/wb;->DW(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/wb;

    iget-object v2, v0, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v2}, Labcd/wb$a;->DW()V

    :cond_6
    iget-object v2, v0, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v2}, Labcd/wb$a;->j6()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v0, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v2}, Labcd/wb$a;->FH()I

    move-result v4

    iget-object v2, v0, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v2}, Labcd/wb$a;->Hw()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/Cb;

    move v3, v5

    :goto_2
    invoke-virtual {v2}, Labcd/Cb;->Hw()I

    move-result v8

    if-ge v3, v8, :cond_6

    invoke-virtual {v2, v3}, Labcd/Cb;->DW(I)I

    move-result v8

    invoke-direct {p0, v1, v8, v4, p1}, Labcd/Fa$b;->j6(Labcd/wb;IILabcd/Fa$a;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    iget-object v2, v0, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v2}, Labcd/wb$a;->DW()V

    :cond_8
    iget-object v2, v0, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v2}, Labcd/wb$a;->j6()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, v0, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v2}, Labcd/wb$a;->FH()I

    move-result v2

    invoke-virtual {v1, v2}, Labcd/wb;->j6(I)Z

    move-result v3

    if-nez v3, :cond_9

    new-instance v3, Labcd/Cb;

    invoke-direct {v3}, Labcd/Cb;-><init>()V

    invoke-virtual {v1, v2, v3}, Labcd/wb;->DW(ILjava/lang/Object;)V

    :cond_9
    invoke-virtual {v1, v2}, Labcd/wb;->DW(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/Cb;

    iget-object v3, v0, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v3}, Labcd/wb$a;->Hw()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/Cb;

    move v4, v5

    :goto_3
    invoke-virtual {v3}, Labcd/Cb;->Hw()I

    move-result v8

    if-ge v4, v8, :cond_8

    invoke-virtual {v3, v4}, Labcd/Cb;->DW(I)I

    move-result v8

    invoke-virtual {v2, v8}, Labcd/Cb;->j6(I)V

    iget-object v9, p0, Labcd/Fa$b;->Hw:Labcd/qb;

    invoke-virtual {v9, v8, v7}, Labcd/qb;->j6(II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_a
    iget-object v0, p0, Labcd/Fa$b;->FH:Labcd/wb;

    invoke-virtual {v0, v6}, Labcd/wb;->FH(I)V

    const/4 v0, 0x1

    goto/16 :goto_1

    :cond_b
    if-nez v0, :cond_4

    iget-object v0, p0, Labcd/Fa$b;->Hw:Labcd/qb;

    invoke-virtual {p1, v0}, Labcd/Fa$a;->j6(Labcd/qb;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-void
.end method
