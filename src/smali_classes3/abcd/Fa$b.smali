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
            "Lwb<",
            "Lwb<",
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
    .registers 3

    const-class v0, Labcd/Fa$b;

    const-wide v1, 0x2257955eaf8a6949L  # 3.021829037040656E-143

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/La;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x167bbddaaa17be7L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0xfe447849cac5789L  # -1.075919596914018E232

    :try_start_6
    sget-boolean v3, Labcd/Fa$b;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Labcd/wb;

    invoke-direct {v3}, Labcd/wb;-><init>()V

    iput-object v3, p0, Labcd/Fa$b;->FH:Labcd/wb;

    new-instance v3, Labcd/qb;

    invoke-direct {v3}, Labcd/qb;-><init>()V

    iput-object v3, p0, Labcd/Fa$b;->Hw:Labcd/qb;

    new-instance v3, Labcd/Ub;

    invoke-direct {v3}, Labcd/Ub;-><init>()V

    iput-object v3, p0, Labcd/Fa$b;->v5:Labcd/Ub;

    new-instance v3, Labcd/Ub;

    invoke-direct {v3}, Labcd/Ub;-><init>()V

    iput-object v3, p0, Labcd/Fa$b;->Zo:Labcd/Ub;

    iget-object v3, p1, Labcd/La;->j3:Labcd/Ga;

    const-string v4, "prototype"

    invoke-virtual {v3, v4}, Labcd/Ga;->j6(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Labcd/Fa$b;->VH:I

    iget-object v3, p1, Labcd/La;->j3:Labcd/Ga;

    const-string v4, "()"

    invoke-virtual {v3, v4}, Labcd/Ga;->j6(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Labcd/Fa$b;->gn:I

    iget-object v3, p1, Labcd/La;->j3:Labcd/Ga;

    const-string v4, "function"

    invoke-virtual {v3, v4}, Labcd/Ga;->j6(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Labcd/Fa$b;->tp:I

    iget-object v3, p1, Labcd/La;->j3:Labcd/Ga;

    const-string v4, "[]"

    invoke-virtual {v3, v4}, Labcd/Ga;->j6(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Labcd/Fa$b;->u7:I
    :try_end_54
    .catchall {:try_start_6 .. :try_end_54} :catchall_55

    return-void

    :catchall_55
    move-exception v3

    sget-boolean v4, Labcd/Fa$b;->DW:Z

    if-eqz v4, :cond_5d

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_5d
    throw v3
.end method

.method private DW(IILabcd/Fa$a;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x62e2e380dba9ad5L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Fa$b;->j6:Z

    if-eqz v0, :cond_18

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x19f6b10b9e1f6f30L

    move-object v3, p0

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    iget-object v0, p0, Labcd/Fa$b;->v5:Labcd/Ub;

    invoke-virtual {p3, p1}, Labcd/Fa$a;->gn(I)I

    move-result v1

    invoke-virtual {p3, p2}, Labcd/Fa$a;->Hw(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Labcd/Ub;->FH(II)V
    :try_end_25
    .catchall {:try_start_0 .. :try_end_25} :catchall_26

    return-void

    :catchall_26
    move-exception v0

    sget-boolean v1, Labcd/Fa$b;->DW:Z

    if-eqz v1, :cond_40

    const-wide v2, 0x19f6b10b9e1f6f30L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_40
    throw v0
.end method

.method private j6(IILabcd/Fa$a;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x218c94f91ab56b97L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Fa$b;->j6:Z

    if-eqz v0, :cond_18

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x3722e3f17df75ed0L  # 4.235374974730605E-43

    move-object v3, p0

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    invoke-virtual {p3, p1}, Labcd/Fa$a;->tp(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1e
    if-ge v2, v0, :cond_30

    iget-object v3, p0, Labcd/Fa$b;->v5:Labcd/Ub;

    invoke-virtual {p3, p2}, Labcd/Fa$a;->VH(I)I

    move-result v4

    invoke-virtual {p3, p1, v2}, Labcd/Fa$a;->v5(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Labcd/Ub;->DW(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_30
    invoke-virtual {p3, p1}, Labcd/Fa$a;->u7(I)I

    move-result v0

    invoke-virtual {p3, p2}, Labcd/Fa$a;->v5(I)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_3c
    if-ge v1, v0, :cond_4e

    iget-object v2, p0, Labcd/Fa$b;->v5:Labcd/Ub;

    invoke-virtual {p3, p1, v1}, Labcd/Fa$a;->Hw(II)I

    move-result v3

    invoke-virtual {p3, p2, v1}, Labcd/Fa$a;->FH(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Labcd/Ub;->DW(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    :cond_4e
    invoke-virtual {p3, p2}, Labcd/Fa$a;->Zo(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_62

    iget-object v0, p0, Labcd/Fa$b;->v5:Labcd/Ub;

    invoke-virtual {p3, p2}, Labcd/Fa$a;->Zo(I)I

    move-result v1

    invoke-virtual {p3, p1}, Labcd/Fa$a;->gn(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Labcd/Ub;->DW(II)V
    :try_end_62
    .catchall {:try_start_0 .. :try_end_62} :catchall_63

    :cond_62
    return-void

    :catchall_63
    move-exception v0

    sget-boolean v1, Labcd/Fa$b;->DW:Z

    if-eqz v1, :cond_7d

    const-wide v2, 0x3722e3f17df75ed0L  # 4.235374974730605E-43

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7d
    goto :goto_7f

    :goto_7e
    throw v0

    :goto_7f
    goto :goto_7e
.end method

.method private j6(Labcd/wb;IILabcd/Fa$a;)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x27f0c678ca3b55c0L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwb<",
            "Labcd/Cb;",
            ">;II",
            "Labcd/Fa$a;",
            ")V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Fa$b;->j6:Z

    if-eqz v0, :cond_19

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x1acd9bce455518d9L

    move-object v3, p0

    move-object v4, p1

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p3, v0, :cond_44

    iget v0, p0, Labcd/Fa$b;->tp:I

    if-eq p3, v0, :cond_44

    invoke-virtual {p1, p3}, Labcd/wb;->DW(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Cb;

    if-eqz v0, :cond_44

    const/4 v2, 0x0

    :goto_2a
    invoke-virtual {v0}, Labcd/Cb;->Hw()I

    move-result v3

    if-ge v2, v3, :cond_44

    invoke-virtual {p4, p2}, Labcd/Fa$a;->Hw(I)I

    move-result v3

    invoke-virtual {v0, v2}, Labcd/Cb;->DW(I)I

    move-result v4

    invoke-virtual {p4, v4}, Labcd/Fa$a;->Hw(I)I

    move-result v4

    iget-object v5, p0, Labcd/Fa$b;->v5:Labcd/Ub;

    invoke-virtual {v5, v3, v4}, Labcd/Ub;->FH(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    :cond_44
    iget v0, p0, Labcd/Fa$b;->gn:I

    if-ne p3, v0, :cond_63

    iget v0, p0, Labcd/Fa$b;->tp:I

    invoke-virtual {p1, v0}, Labcd/wb;->DW(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Cb;

    if-eqz v0, :cond_63

    const/4 v2, 0x0

    :goto_53
    invoke-virtual {v0}, Labcd/Cb;->Hw()I

    move-result v3

    if-ge v2, v3, :cond_63

    invoke-virtual {v0, v2}, Labcd/Cb;->DW(I)I

    move-result v3

    invoke-direct {p0, v3, p2, p4}, Labcd/Fa$b;->j6(IILabcd/Fa$a;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_53

    :cond_63
    iget v0, p0, Labcd/Fa$b;->tp:I

    if-ne p3, v0, :cond_82

    iget v0, p0, Labcd/Fa$b;->gn:I

    invoke-virtual {p1, v0}, Labcd/wb;->DW(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Cb;

    if-eqz v0, :cond_82

    const/4 v2, 0x0

    :goto_72
    invoke-virtual {v0}, Labcd/Cb;->Hw()I

    move-result v3

    if-ge v2, v3, :cond_82

    invoke-virtual {v0, v2}, Labcd/Cb;->DW(I)I

    move-result v3

    invoke-direct {p0, p2, v3, p4}, Labcd/Fa$b;->j6(IILabcd/Fa$a;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_72

    :cond_82
    iget v0, p0, Labcd/Fa$b;->VH:I

    if-ne p3, v0, :cond_a1

    iget v0, p0, Labcd/Fa$b;->tp:I

    invoke-virtual {p1, v0}, Labcd/wb;->DW(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Cb;

    if-eqz v0, :cond_a1

    const/4 v2, 0x0

    :goto_91
    invoke-virtual {v0}, Labcd/Cb;->Hw()I

    move-result v3

    if-ge v2, v3, :cond_a1

    invoke-virtual {v0, v2}, Labcd/Cb;->DW(I)I

    move-result v3

    invoke-direct {p0, v3, p2, p4}, Labcd/Fa$b;->DW(IILabcd/Fa$a;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_91

    :cond_a1
    iget v0, p0, Labcd/Fa$b;->tp:I

    if-ne p3, v0, :cond_bf

    iget v0, p0, Labcd/Fa$b;->VH:I

    invoke-virtual {p1, v0}, Labcd/wb;->DW(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Cb;

    if-eqz v0, :cond_bf

    :goto_af
    invoke-virtual {v0}, Labcd/Cb;->Hw()I

    move-result v2

    if-ge v1, v2, :cond_bf

    invoke-virtual {v0, v1}, Labcd/Cb;->DW(I)I

    move-result v2

    invoke-direct {p0, p2, v2, p4}, Labcd/Fa$b;->DW(IILabcd/Fa$a;)V
    :try_end_bc
    .catchall {:try_start_0 .. :try_end_bc} :catchall_c0

    add-int/lit8 v1, v1, 0x1

    goto :goto_af

    :cond_bf
    return-void

    :catchall_c0
    move-exception v0

    sget-boolean v1, Labcd/Fa$b;->DW:Z

    if-eqz v1, :cond_db

    const-wide v2, 0x1acd9bce455518d9L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_db
    goto :goto_dd

    :goto_dc
    throw v0

    :goto_dd
    goto :goto_dc
.end method


# virtual methods
.method public j6(Labcd/Fa$a;)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x1b3ffc9b37004560L
    .end annotation

    const-wide v0, -0x5f42f6a543e04b3L  # -7.88899494399745E279

    :try_start_5
    sget-boolean v2, Labcd/Fa$b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v2, p0, Labcd/Fa$b;->v5:Labcd/Ub;

    invoke-virtual {v2}, Labcd/Ub;->j6()V

    iget-object v2, p0, Labcd/Fa$b;->v5:Labcd/Ub;

    invoke-virtual {p1}, Labcd/Fa$a;->j6()Labcd/Ub;

    move-result-object v3

    invoke-virtual {v2, v3}, Labcd/Ub;->DW(Labcd/Ub;)V

    iget-object v2, p0, Labcd/Fa$b;->FH:Labcd/wb;

    invoke-virtual {v2}, Labcd/wb;->j6()V

    iget-object v2, p0, Labcd/Fa$b;->Hw:Labcd/qb;

    invoke-virtual {v2}, Labcd/qb;->j6()V

    iget-object v2, p0, Labcd/Fa$b;->Hw:Labcd/qb;

    invoke-virtual {p1}, Labcd/Fa$a;->DW()Labcd/qb;

    move-result-object v3

    invoke-virtual {v2, v3}, Labcd/qb;->FH(Labcd/qb;)V

    iget-object v2, p0, Labcd/Fa$b;->Hw:Labcd/qb;

    iget-object v2, v2, Labcd/qb;->Hw:Labcd/qb$a;

    invoke-virtual {v2}, Labcd/qb$a;->DW()V

    :goto_37
    iget-object v2, p0, Labcd/Fa$b;->Hw:Labcd/qb;

    iget-object v2, v2, Labcd/qb;->Hw:Labcd/qb$a;

    invoke-virtual {v2}, Labcd/qb$a;->j6()Z

    move-result v2

    if-eqz v2, :cond_8a

    iget-object v2, p0, Labcd/Fa$b;->Hw:Labcd/qb;

    iget-object v2, v2, Labcd/qb;->Hw:Labcd/qb$a;

    invoke-virtual {v2}, Labcd/qb$a;->Hw()I

    move-result v2

    iget-object v3, p0, Labcd/Fa$b;->Hw:Labcd/qb;

    iget-object v3, v3, Labcd/qb;->Hw:Labcd/qb$a;

    invoke-virtual {v3}, Labcd/qb$a;->FH()I

    move-result v3

    iget-object v4, p0, Labcd/Fa$b;->FH:Labcd/wb;

    invoke-virtual {v4, v2}, Labcd/wb;->j6(I)Z

    move-result v4

    if-nez v4, :cond_63

    iget-object v4, p0, Labcd/Fa$b;->FH:Labcd/wb;

    new-instance v5, Labcd/wb;

    invoke-direct {v5}, Labcd/wb;-><init>()V

    invoke-virtual {v4, v2, v5}, Labcd/wb;->DW(ILjava/lang/Object;)V

    :cond_63
    iget-object v4, p0, Labcd/Fa$b;->FH:Labcd/wb;

    invoke-virtual {v4, v2}, Labcd/wb;->DW(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/wb;

    invoke-virtual {p1, v3}, Labcd/Fa$a;->j6(I)I

    move-result v4

    invoke-direct {p0, v2, v3, v4, p1}, Labcd/Fa$b;->j6(Labcd/wb;IILabcd/Fa$a;)V

    invoke-virtual {v2, v4}, Labcd/wb;->j6(I)Z

    move-result v5

    if-nez v5, :cond_80

    new-instance v5, Labcd/Cb;

    invoke-direct {v5}, Labcd/Cb;-><init>()V

    invoke-virtual {v2, v4, v5}, Labcd/wb;->DW(ILjava/lang/Object;)V

    :cond_80
    invoke-virtual {v2, v4}, Labcd/wb;->DW(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/Cb;

    invoke-virtual {v2, v3}, Labcd/Cb;->j6(I)V

    goto :goto_37

    :cond_8a
    iget-object v2, p0, Labcd/Fa$b;->Zo:Labcd/Ub;

    invoke-virtual {v2}, Labcd/Ub;->j6()V

    iget-object v2, p0, Labcd/Fa$b;->Zo:Labcd/Ub;

    iget-object v3, p0, Labcd/Fa$b;->v5:Labcd/Ub;

    invoke-virtual {v2, v3}, Labcd/Ub;->DW(Labcd/Ub;)V

    iget-object v2, p0, Labcd/Fa$b;->v5:Labcd/Ub;

    invoke-virtual {v2}, Labcd/Ub;->j6()V

    iget-object v2, p0, Labcd/Fa$b;->Zo:Labcd/Ub;

    iget-object v2, v2, Labcd/Ub;->Hw:Labcd/Ub$a;

    invoke-virtual {v2}, Labcd/Ub$a;->DW()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_a4
    :goto_a4
    iget-object v4, p0, Labcd/Fa$b;->Zo:Labcd/Ub;

    iget-object v4, v4, Labcd/Ub;->Hw:Labcd/Ub$a;

    invoke-virtual {v4}, Labcd/Ub$a;->j6()Z

    move-result v4

    if-eqz v4, :cond_15a

    iget-object v4, p0, Labcd/Fa$b;->Hw:Labcd/qb;

    iget-object v5, p0, Labcd/Fa$b;->Zo:Labcd/Ub;

    iget-object v5, v5, Labcd/Ub;->Hw:Labcd/Ub$a;

    invoke-virtual {v5}, Labcd/Ub$a;->FH()I

    move-result v5

    invoke-virtual {v4, v5}, Labcd/qb;->DW(I)I

    move-result v4

    iget-object v5, p0, Labcd/Fa$b;->Hw:Labcd/qb;

    iget-object v6, p0, Labcd/Fa$b;->Zo:Labcd/Ub;

    iget-object v6, v6, Labcd/Ub;->Hw:Labcd/Ub$a;

    invoke-virtual {v6}, Labcd/Ub$a;->Hw()I

    move-result v6

    invoke-virtual {v5, v6}, Labcd/qb;->DW(I)I

    move-result v5

    if-eq v4, v5, :cond_a4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_a4

    if-eq v5, v6, :cond_a4

    iget-object v3, p0, Labcd/Fa$b;->FH:Labcd/wb;

    invoke-virtual {v3, v4}, Labcd/wb;->DW(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/wb;

    iget-object v6, p0, Labcd/Fa$b;->FH:Labcd/wb;

    invoke-virtual {v6, v5}, Labcd/wb;->DW(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Labcd/wb;

    iget-object v7, v3, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v7}, Labcd/wb$a;->DW()V

    :cond_e6
    iget-object v7, v3, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v7}, Labcd/wb$a;->j6()Z

    move-result v7

    if-eqz v7, :cond_10d

    iget-object v7, v3, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v7}, Labcd/wb$a;->FH()I

    move-result v7

    iget-object v8, v3, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v8}, Labcd/wb$a;->Hw()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Labcd/Cb;

    const/4 v9, 0x0

    :goto_fd
    invoke-virtual {v8}, Labcd/Cb;->Hw()I

    move-result v10

    if-ge v9, v10, :cond_e6

    invoke-virtual {v8, v9}, Labcd/Cb;->DW(I)I

    move-result v10

    invoke-direct {p0, v6, v10, v7, p1}, Labcd/Fa$b;->j6(Labcd/wb;IILabcd/Fa$a;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_fd

    :cond_10d
    iget-object v7, v3, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v7}, Labcd/wb$a;->DW()V

    :cond_112
    iget-object v7, v3, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v7}, Labcd/wb$a;->j6()Z

    move-result v7

    if-eqz v7, :cond_152

    iget-object v7, v3, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v7}, Labcd/wb$a;->FH()I

    move-result v7

    invoke-virtual {v6, v7}, Labcd/wb;->j6(I)Z

    move-result v8

    if-nez v8, :cond_12e

    new-instance v8, Labcd/Cb;

    invoke-direct {v8}, Labcd/Cb;-><init>()V

    invoke-virtual {v6, v7, v8}, Labcd/wb;->DW(ILjava/lang/Object;)V

    :cond_12e
    invoke-virtual {v6, v7}, Labcd/wb;->DW(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Labcd/Cb;

    iget-object v8, v3, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v8}, Labcd/wb$a;->Hw()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Labcd/Cb;

    const/4 v9, 0x0

    :goto_13d
    invoke-virtual {v8}, Labcd/Cb;->Hw()I

    move-result v10

    if-ge v9, v10, :cond_112

    invoke-virtual {v8, v9}, Labcd/Cb;->DW(I)I

    move-result v10

    invoke-virtual {v7, v10}, Labcd/Cb;->j6(I)V

    iget-object v11, p0, Labcd/Fa$b;->Hw:Labcd/qb;

    invoke-virtual {v11, v10, v5}, Labcd/qb;->j6(II)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_13d

    :cond_152
    iget-object v3, p0, Labcd/Fa$b;->FH:Labcd/wb;

    invoke-virtual {v3, v4}, Labcd/wb;->FH(I)V

    const/4 v3, 0x1

    goto/16 :goto_a4

    :cond_15a
    if-nez v3, :cond_8a

    iget-object v2, p0, Labcd/Fa$b;->Hw:Labcd/qb;

    invoke-virtual {p1, v2}, Labcd/Fa$a;->j6(Labcd/qb;)V
    :try_end_161
    .catchall {:try_start_5 .. :try_end_161} :catchall_162

    return-void

    :catchall_162
    move-exception v2

    sget-boolean v3, Labcd/Fa$b;->DW:Z

    if-eqz v3, :cond_16a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_16a
    goto :goto_16c

    :goto_16b
    throw v2

    :goto_16c
    goto :goto_16b
.end method
