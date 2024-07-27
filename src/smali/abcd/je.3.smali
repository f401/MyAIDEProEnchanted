.class public Labcd/je;
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
.field private final FH:Labcd/La;
    .annotation runtime Labcd/ru;
        field = 0xf1b03044537a6e7L
    .end annotation
.end field

.field private final Hw:Labcd/ne;
    .annotation runtime Labcd/ru;
        field = 0x237459838619ca00L
    .end annotation
.end field

.field private VH:Labcd/ge;
    .annotation runtime Labcd/ru;
        field = 0x4d7f0c1e8cd7591cL
    .end annotation
.end field

.field private Zo:Labcd/de;
    .annotation runtime Labcd/ru;
        field = -0x3a679f337710163cL
    .end annotation
.end field

.field private gn:Labcd/Nc;
    .annotation runtime Labcd/ru;
        field = -0xaa16c15d9fd926cL
    .end annotation
.end field

.field private v5:Z
    .annotation runtime Labcd/ru;
        field = 0x96a9bf786775683L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x5af2998fff97b3c8L    # -3.313609913015305E-130

    const-class v0, Labcd/je;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/La;Labcd/ne;Z)V
    .registers 14

    const-wide v8, -0x390cb41257dba510L    # -6.262103134023994E33

    const/4 v6, 0x0

    :try_start_0
    sget-boolean v0, Labcd/je;->j6:Z

    if-eqz v0, :cond_0

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p3}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v0, -0x390cb41257dba510L    # -6.262103134023994E33

    const/4 v2, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/je;->FH:Labcd/La;

    iput-object p2, p0, Labcd/je;->Hw:Labcd/ne;

    iput-boolean p3, p0, Labcd/je;->v5:Z

    new-instance v0, Labcd/de;

    invoke-direct {v0, p1}, Labcd/de;-><init>(Labcd/La;)V

    iput-object v0, p0, Labcd/je;->Zo:Labcd/de;

    if-eqz p3, :cond_1

    new-instance v0, Labcd/ge;

    invoke-direct {v0, p1}, Labcd/ge;-><init>(Labcd/La;)V

    iput-object v0, p0, Labcd/je;->VH:Labcd/ge;

    :goto_0
    return-void

    :cond_1
    new-instance v0, Labcd/Nc;

    invoke-direct {v0, p1}, Labcd/Nc;-><init>(Labcd/La;)V

    iput-object v0, p0, Labcd/je;->gn:Labcd/Nc;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/je;->DW:Z

    if-eqz v0, :cond_2

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p3}, Ljava/lang/Boolean;-><init>(Z)V

    move-wide v2, v8

    move-object v4, v6

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method private DW(Labcd/Sa;I)I
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x8b131ec84f0ed8cL
    .end annotation

    const-wide v2, 0x307d9c3a43a92e1L

    :try_start_0
    sget-boolean v0, Labcd/je;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, 0x307d9c3a43a92e1L

    invoke-static {v4, v5, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1, p2}, Labcd/Sa;->er(I)I

    move-result v0

    invoke-virtual {p1, v0}, Labcd/Sa;->er(I)I

    move-result v0

    :cond_1
    invoke-virtual {p1, v0}, Labcd/Sa;->P8(I)I

    move-result v1

    const/16 v4, 0xc8

    if-eq v1, v4, :cond_2

    invoke-virtual {p1, v0}, Labcd/Sa;->P8(I)I

    move-result v1

    const/16 v4, 0xc9

    if-ne v1, v4, :cond_3

    :cond_2
    :goto_0
    return v0

    :cond_3
    invoke-virtual {p1, v0}, Labcd/Sa;->er(I)I

    move-result v0

    invoke-virtual {p1}, Labcd/Sa;->aM()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/je;->DW:Z

    if-eqz v0, :cond_4

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1
.end method

.method private DW()Labcd/na;
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x328b554c28db2c0fL
    .end annotation

    const-wide v4, -0x497650d2b1e3dce0L    # -5.623648312430824E-46

    :try_start_0
    sget-boolean v0, Labcd/je;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x497650d2b1e3dce0L    # -5.623648312430824E-46

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Labcd/je;->j6()Labcd/Wc;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Wc;->v5()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/na;

    instance-of v2, v0, Labcd/Xc;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/je;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method private FH(Labcd/Sa;I)I
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x287402a45fe5ed91L
    .end annotation

    const-wide v2, -0x1e7457dbc8800a80L    # -7.776598177507298E161

    const/4 v1, -0x1

    :try_start_0
    sget-boolean v0, Labcd/je;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, -0x1e7457dbc8800a80L    # -7.776598177507298E161

    invoke-static {v4, v5, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1, p2}, Labcd/Sa;->P8(I)I

    move-result v0

    const/16 v4, 0xd5

    if-ne v0, v4, :cond_1

    :goto_0
    return p2

    :cond_1
    const/4 v0, 0x0

    move v4, v0

    :goto_1
    invoke-virtual {p1, p2}, Labcd/Sa;->we(I)I

    move-result v0

    if-ge v4, v0, :cond_3

    invoke-virtual {p1, p2, v4}, Labcd/Sa;->Zo(II)I

    move-result v0

    invoke-direct {p0, p1, v0}, Labcd/je;->FH(Labcd/Sa;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eq v0, v1, :cond_2

    move p2, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_3
    move p2, v1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/je;->DW:Z

    if-eqz v0, :cond_4

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1
.end method

.method private Hw(Labcd/Sa;I)I
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x10cd741174cc9453L
    .end annotation

    const-wide v2, -0x5e6f7a047833c78L

    :try_start_0
    sget-boolean v0, Labcd/je;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, -0x5e6f7a047833c78L

    invoke-static {v4, v5, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Labcd/Sa;->Zo(II)I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Labcd/Sa;->Zo(II)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/je;->DW:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method private j6(Labcd/Da;II)I
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x10dc31cde61ba7b9L
    .end annotation

    const-wide v8, 0x173060327f889020L    # 5.476771082926301E-197

    :try_start_0
    sget-boolean v0, Labcd/je;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x173060327f889020L    # 5.476771082926301E-197

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1, p2, p3}, Labcd/Da;->j6(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    add-int/lit8 v2, v0, -0x2

    if-ltz v2, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2}, Labcd/je;->j6(C)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/je;->DW:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1

    :cond_2
    return v0
.end method

.method private j6(Labcd/Sa;)Labcd/Vc;
    .registers 10
    .annotation runtime Labcd/su;
        method = -0xc99230765e1add7L
    .end annotation

    const-wide v6, -0x125ceedd966ff64L

    const/4 v1, 0x0

    const/4 v5, 0x2

    :try_start_0
    sget-boolean v0, Labcd/je;->j6:Z

    if-eqz v0, :cond_0

    const-wide v2, -0x125ceedd966ff64L

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Labcd/je;->j6()Labcd/Wc;

    move-result-object v4

    if-nez v4, :cond_2

    move-object v0, v1

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {p1}, Labcd/Sa;->aM()I

    move-result v0

    invoke-direct {p0, p1, v0}, Labcd/je;->FH(Labcd/Sa;I)I

    move-result v0

    if-lez v0, :cond_6

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v2}, Labcd/Sa;->Zo(II)I

    move-result v2

    invoke-virtual {p1, v2}, Labcd/Sa;->P8(I)I

    move-result v2

    const/16 v3, 0xd7

    if-ne v2, v3, :cond_4

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v2}, Labcd/Sa;->Zo(II)I

    move-result v0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Labcd/Sa;->Zo(II)I

    move-result v0

    invoke-virtual {p1, v0}, Labcd/Sa;->lg(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v5, :cond_3

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_3
    move-object v2, v1

    move-object v3, v0

    :goto_1
    iget-boolean v0, p0, Labcd/je;->v5:Z

    if-eqz v0, :cond_9

    if-eqz v3, :cond_7

    invoke-virtual {p0, v3}, Labcd/je;->j6(Ljava/lang/String;)Labcd/Vc;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/4 v2, 0x2

    invoke-virtual {p1, v0, v2}, Labcd/Sa;->Zo(II)I

    move-result v2

    invoke-virtual {p1, v2}, Labcd/Sa;->P8(I)I

    move-result v2

    const/16 v3, 0xd6

    if-ne v2, v3, :cond_6

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v2}, Labcd/Sa;->Zo(II)I

    move-result v0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Labcd/Sa;->Zo(II)I

    move-result v0

    invoke-virtual {p1, v0}, Labcd/Sa;->lg(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v5, :cond_5

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_5
    move-object v2, v0

    move-object v3, v1

    goto :goto_1

    :cond_6
    move-object v2, v1

    move-object v3, v1

    goto :goto_1

    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {p0, v2}, Labcd/je;->DW(Ljava/lang/String;)Labcd/Vc;

    move-result-object v0

    goto :goto_0

    :cond_8
    move-object v0, v1

    goto :goto_0

    :cond_9
    if-nez v3, :cond_a

    invoke-virtual {v4}, Labcd/Wc;->we()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Labcd/Wc;->Hw(Ljava/lang/String;)Labcd/Vc;

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v4, v3}, Labcd/Wc;->Hw(Ljava/lang/String;)Labcd/Vc;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {v4}, Labcd/Wc;->we()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Labcd/Wc;->Hw(Ljava/lang/String;)Labcd/Vc;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/je;->DW:Z

    if-eqz v1, :cond_b

    invoke-static {v0, v6, v7, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_b
    throw v0
.end method

.method private j6()Labcd/Wc;
    .registers 9
    .annotation runtime Labcd/su;
        method = 0x68d410ae1c510163L
    .end annotation

    const-wide v6, -0xb2c23668bfa0568L

    :try_start_0
    sget-boolean v0, Labcd/je;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xb2c23668bfa0568L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/je;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->Mr:Labcd/Ea;

    invoke-virtual {v0}, Labcd/Ea;->v5()[Labcd/la;

    move-result-object v2

    array-length v3, v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    :try_start_1
    instance-of v4, v0, Labcd/Wc;

    if-eqz v4, :cond_1

    check-cast v0, Labcd/Wc;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/je;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method private j6(Labcd/Sa;I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x2aae62e9f062f90L
    .end annotation

    const-wide v2, -0x7e9ddd04ea74ea5L

    :try_start_0
    sget-boolean v0, Labcd/je;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, -0x7e9ddd04ea74ea5L

    invoke-static {v4, v5, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Labcd/je;->v5:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Labcd/je;->VH:Labcd/ge;

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/je;->VH:Labcd/ge;

    invoke-virtual {p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/ge;->j6(Labcd/Da;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/je;->VH:Labcd/ge;

    invoke-virtual {v0, p1, p2}, Labcd/ge;->j6(Labcd/Sa;I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Labcd/Sa;->Zo(II)I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Labcd/Sa;->Zo(II)I

    move-result v0

    invoke-virtual {p1, v0}, Labcd/Sa;->XL(I)I

    move-result v0

    iget-object v1, p0, Labcd/je;->FH:Labcd/La;

    iget-object v1, v1, Labcd/La;->j3:Labcd/Ga;

    const-string v4, "class"

    invoke-virtual {v1, v4}, Labcd/Ga;->j6(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Labcd/je;->gn:Labcd/Nc;

    invoke-virtual {v0}, Labcd/Nc;->j6()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/je;->DW:Z

    if-eqz v0, :cond_3

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1
.end method

.method private j6(C)Z
    .registers 8
    .annotation runtime Labcd/su;
        method = 0xea435025ad78a4L
    .end annotation

    const-wide v4, -0xb80a12d28fdcff3L

    :try_start_0
    sget-boolean v0, Labcd/je;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Character;

    invoke-direct {v0, p1}, Ljava/lang/Character;-><init>(C)V

    const-wide v2, -0xb80a12d28fdcff3L

    invoke-static {v2, v3, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x3a

    if-ne p1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/je;->DW:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/Character;

    invoke-direct {v1, p1}, Ljava/lang/Character;-><init>(C)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method


# virtual methods
.method public DW(Ljava/lang/String;)Labcd/Vc;
    .registers 8

    const-wide v4, -0x32577bb273b41615L    # -1.2909606326610114E66

    :try_start_0
    sget-boolean v0, Labcd/je;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x32577bb273b41615L    # -1.2909606326610114E66

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/je;->Zo:Labcd/de;

    invoke-virtual {v0, p1}, Labcd/de;->DW(Ljava/lang/String;)Labcd/Da;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Labcd/Da;->gn()Labcd/la;

    move-result-object v1

    invoke-direct {p0}, Labcd/je;->j6()Labcd/Wc;

    move-result-object v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Labcd/je;->FH:Labcd/La;

    iget-object v1, v1, Labcd/La;->U2:Labcd/Va;

    invoke-direct {p0}, Labcd/je;->DW()Labcd/na;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Labcd/Va;->j6(Labcd/Da;Labcd/na;)Labcd/Sa;

    move-result-object v1

    new-instance v0, Labcd/Vc;

    iget-object v2, p0, Labcd/je;->FH:Labcd/La;

    const/4 v3, 0x1

    invoke-direct {v0, v2, v1, v3}, Labcd/Vc;-><init>(Labcd/La;Labcd/Sa;Z)V

    iget-object v2, p0, Labcd/je;->FH:Labcd/La;

    iget-object v2, v2, Labcd/La;->U2:Labcd/Va;

    invoke-virtual {v2, v1}, Labcd/Va;->j6(Labcd/Sa;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/je;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method protected DW(Labcd/Sa;II)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x6c21dbe60ad7d70L
    .end annotation

    const-wide v8, -0x13eae1b5ff49babbL    # -4.443408632648684E212

    :try_start_0
    sget-boolean v0, Labcd/je;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x13eae1b5ff49babbL    # -4.443408632648684E212

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/je;->VH:Labcd/ge;

    if-eqz v0, :cond_2

    iget-object v0, p0, Labcd/je;->VH:Labcd/ge;

    invoke-virtual {p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/ge;->j6(Labcd/Da;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Labcd/je;->VH:Labcd/ge;

    invoke-virtual {v0, p1, p2, p3}, Labcd/ge;->DW(Labcd/Sa;II)V

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0, p1}, Labcd/je;->j6(Labcd/Sa;)Labcd/Vc;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, p2}, Labcd/Sa;->P8(I)I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_4

    invoke-virtual {p1, p2}, Labcd/Sa;->er(I)I

    move-result v0

    invoke-virtual {p1, v0}, Labcd/Sa;->er(I)I

    move-result v0

    invoke-virtual {p1, v0}, Labcd/Sa;->er(I)I

    move-result v0

    :goto_0
    new-instance v2, Labcd/bc;

    invoke-direct {v2}, Labcd/bc;-><init>()V

    invoke-virtual {p1, v0}, Labcd/Sa;->P8(I)I

    move-result v3

    const/16 v4, 0xd2

    if-ne v3, v4, :cond_5

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Labcd/Sa;->Zo(II)I

    move-result v0

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v3}, Labcd/Sa;->Zo(II)I

    move-result v0

    const/4 v3, 0x2

    invoke-virtual {p1, v0, v3}, Labcd/Sa;->Zo(II)I

    move-result v0

    invoke-virtual {p1, v0}, Labcd/Sa;->XL(I)I

    move-result v0

    invoke-virtual {v1, v0, v2}, Labcd/Vc;->DW(ILabcd/bc;)V

    :goto_1
    iget-object v0, v2, Labcd/bc;->v5:Labcd/bc$a;

    invoke-virtual {v0}, Labcd/bc$a;->DW()V

    :goto_2
    iget-object v0, v2, Labcd/bc;->v5:Labcd/bc$a;

    invoke-virtual {v0}, Labcd/bc$a;->j6()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/je;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->VH:Labcd/ab;

    iget-object v1, p0, Labcd/je;->FH:Labcd/La;

    iget-object v1, v1, Labcd/La;->j3:Labcd/Ga;

    iget-object v3, v2, Labcd/bc;->v5:Labcd/bc$a;

    invoke-virtual {v3}, Labcd/bc$a;->FH()I

    move-result v3

    invoke-virtual {v1, v3}, Labcd/Ga;->j6(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Labcd/ab;->DW(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/je;->DW:Z

    if-eqz v0, :cond_3

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1

    :cond_4
    :try_start_1
    invoke-virtual {p1, p2}, Labcd/Sa;->er(I)I

    move-result v0

    invoke-virtual {p1, v0}, Labcd/Sa;->er(I)I

    move-result v0

    goto :goto_0

    :cond_5
    invoke-virtual {v1, v2}, Labcd/Vc;->j6(Labcd/bc;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public FH(Labcd/Sa;II)V
    .registers 14

    const-wide v8, 0xc13c32cc3c64d40L

    const/4 v6, -0x1

    :try_start_0
    sget-boolean v0, Labcd/je;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0xc13c32cc3c64d40L

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/je;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->VH:Labcd/ab;

    invoke-interface {v0}, Labcd/ab;->j6()V

    invoke-virtual {p1, p2, p3}, Labcd/Sa;->u7(II)I

    move-result v0

    if-ne v0, v6, :cond_2

    const/16 v1, 0xcc

    move-object v0, p1

    move v2, p2

    move v3, p3

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Labcd/Sa;->j6(IIIII)I

    move-result v0

    if-eq v0, v6, :cond_1

    invoke-virtual {p1, v0}, Labcd/Sa;->er(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Labcd/je;->j6(Labcd/Sa;I)V

    :cond_1
    :goto_0
    iget-object v0, p0, Labcd/je;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->VH:Labcd/ab;

    invoke-virtual {p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v1

    iget-object v2, p0, Labcd/je;->Hw:Labcd/ne;

    invoke-virtual {p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v3

    invoke-direct {p0, v3, p2, p3}, Labcd/je;->j6(Labcd/Da;II)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v3, p2

    move v4, p3

    invoke-interface/range {v0 .. v7}, Labcd/ab;->j6(Labcd/Da;Labcd/na;IIIZZ)V

    return-void

    :cond_2
    if-eq v0, v6, :cond_5

    invoke-virtual {p1, v0}, Labcd/Sa;->P8(I)I

    move-result v1

    const/16 v2, 0x19

    if-ne v1, v2, :cond_5

    invoke-virtual {p1, v0}, Labcd/Sa;->er(I)I

    move-result v1

    invoke-virtual {p1, v1}, Labcd/Sa;->er(I)I

    move-result v1

    invoke-virtual {p1, v1}, Labcd/Sa;->P8(I)I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_3

    invoke-virtual {p1, v0}, Labcd/Sa;->er(I)I

    move-result v1

    invoke-virtual {p1, v1}, Labcd/Sa;->er(I)I

    move-result v1

    invoke-virtual {p1, v1}, Labcd/Sa;->P8(I)I

    move-result v1

    const/16 v2, 0xc9

    if-ne v1, v2, :cond_5

    :cond_3
    invoke-virtual {p1, v0}, Labcd/Sa;->er(I)I

    move-result v0

    invoke-virtual {p1, v0}, Labcd/Sa;->er(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Labcd/je;->Hw(Labcd/Sa;I)I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Labcd/je;->DW(Labcd/Sa;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/je;->DW:Z

    if-eqz v0, :cond_4

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1

    :cond_5
    if-eq v0, v6, :cond_1

    :try_start_1
    invoke-virtual {p1, v0}, Labcd/Sa;->P8(I)I

    move-result v1

    const/16 v2, 0x1a

    if-ne v1, v2, :cond_1

    invoke-direct {p0, p1, v0}, Labcd/je;->DW(Labcd/Sa;I)I

    move-result v0

    if-eq v0, v6, :cond_1

    invoke-direct {p0, p1, v0}, Labcd/je;->Hw(Labcd/Sa;I)I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Labcd/je;->j6(Labcd/Sa;II)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public j6(Ljava/lang/String;)Labcd/Vc;
    .registers 8

    const-wide v4, -0x24cf029d39cc0eddL    # -1.884282859036574E131

    :try_start_0
    sget-boolean v0, Labcd/je;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x24cf029d39cc0eddL    # -1.884282859036574E131

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Labcd/je;->j6()Labcd/Wc;

    move-result-object v0

    invoke-virtual {v0, p1}, Labcd/Wc;->Hw(Ljava/lang/String;)Labcd/Vc;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Labcd/je;->Zo:Labcd/de;

    invoke-virtual {v0, p1}, Labcd/de;->j6(Ljava/lang/String;)Labcd/Da;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Labcd/Da;->gn()Labcd/la;

    move-result-object v1

    invoke-direct {p0}, Labcd/je;->j6()Labcd/Wc;

    move-result-object v2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Labcd/je;->FH:Labcd/La;

    iget-object v1, v1, Labcd/La;->U2:Labcd/Va;

    invoke-direct {p0}, Labcd/je;->DW()Labcd/na;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Labcd/Va;->j6(Labcd/Da;Labcd/na;)Labcd/Sa;

    move-result-object v1

    new-instance v0, Labcd/Vc;

    iget-object v2, p0, Labcd/je;->FH:Labcd/La;

    const/4 v3, 0x1

    invoke-direct {v0, v2, v1, v3}, Labcd/Vc;-><init>(Labcd/La;Labcd/Sa;Z)V

    iget-object v2, p0, Labcd/je;->FH:Labcd/La;

    iget-object v2, v2, Labcd/La;->U2:Labcd/Va;

    invoke-virtual {v2, v1}, Labcd/Va;->j6(Labcd/Sa;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/je;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected j6(Labcd/Sa;II)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x1474262b68c0e1b8L
    .end annotation

    const-wide v8, -0xa3b6a65fb978b1dL

    :try_start_0
    sget-boolean v0, Labcd/je;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0xa3b6a65fb978b1dL

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/je;->VH:Labcd/ge;

    if-eqz v0, :cond_2

    iget-object v0, p0, Labcd/je;->VH:Labcd/ge;

    invoke-virtual {p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/ge;->j6(Labcd/Da;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Labcd/je;->VH:Labcd/ge;

    invoke-virtual {v0, p1, p2, p3}, Labcd/ge;->j6(Labcd/Sa;II)V

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0, p1}, Labcd/je;->j6(Labcd/Sa;)Labcd/Vc;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, p3}, Labcd/Sa;->XL(I)I

    move-result v1

    new-instance v2, Labcd/bc;

    invoke-direct {v2}, Labcd/bc;-><init>()V

    invoke-virtual {v0, v1, v2}, Labcd/Vc;->j6(ILabcd/bc;)V

    iget-object v0, v2, Labcd/bc;->v5:Labcd/bc$a;

    invoke-virtual {v0}, Labcd/bc$a;->DW()V

    :goto_0
    iget-object v0, v2, Labcd/bc;->v5:Labcd/bc$a;

    invoke-virtual {v0}, Labcd/bc$a;->j6()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/je;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->VH:Labcd/ab;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Labcd/je;->FH:Labcd/La;

    iget-object v3, v3, Labcd/La;->j3:Labcd/Ga;

    iget-object v4, v2, Labcd/bc;->v5:Labcd/bc$a;

    invoke-virtual {v4}, Labcd/bc$a;->FH()I

    move-result v4

    invoke-virtual {v3, v4}, Labcd/Ga;->j6(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Labcd/ab;->DW(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/je;->DW:Z

    if-eqz v0, :cond_3

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1
.end method

.method public j6(Labcd/Sa;IIIZ)V
    .registers 16

    :try_start_0
    sget-boolean v0, Labcd/je;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p5}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v0, 0x28f74172398803f1L

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, -0x1

    if-ne p4, v0, :cond_6

    invoke-virtual {p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v0

    invoke-virtual {v0, p2}, Labcd/Da;->DW(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, p3, -0x1

    if-ge v1, v2, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3c

    if-eq v1, v2, :cond_3

    invoke-direct {p0, v1}, Labcd/je;->j6(C)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Labcd/je;->FH(Labcd/Sa;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/je;->DW:Z

    if-eqz v0, :cond_5

    const-wide v2, 0x28f74172398803f1L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Boolean;

    invoke-direct {v9, p5}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    throw v1

    :cond_6
    :try_start_1
    invoke-virtual {p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v0

    invoke-virtual {v0, p2}, Labcd/Da;->DW(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v2, p3, -0x1

    if-lt v0, v2, :cond_1

    add-int/lit8 v0, p4, -0x1

    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2}, Labcd/je;->j6(C)Z

    move-result v2

    if-nez v2, :cond_7

    add-int/lit8 v0, v0, 0x1

    if-ge v0, p3, :cond_1

    iget-object v0, p0, Labcd/je;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->VH:Labcd/ab;

    invoke-virtual {p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v1

    invoke-interface {v0, v1}, Labcd/ab;->j6(Labcd/Da;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
