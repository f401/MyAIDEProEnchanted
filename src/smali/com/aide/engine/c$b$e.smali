.class Lcom/aide/engine/c$b$e;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/db;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/engine/c$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
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
        field = 0x2cc69adebacbd0L
    .end annotation
.end field

.field private Hw:[Lcom/aide/engine/m;
    .annotation runtime Labcd/ru;
        field = 0xedfd9fd9d4e2bc3L
    .end annotation
.end field

.field private VH:[I
    .annotation runtime Labcd/ru;
        field = -0x64b2ac5533fe18L
    .end annotation
.end field

.field private Zo:[I
    .annotation runtime Labcd/ru;
        field = -0x2a4288f029672771L
    .end annotation
.end field

.field private gn:[I
    .annotation runtime Labcd/ru;
        field = 0x1d975a20224c1820L
    .end annotation
.end field

.field final u7:Lcom/aide/engine/c$b;

.field private v5:[I
    .annotation runtime Labcd/ru;
        field = 0x3e62b1b12b9850bfL
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0xc9d27f94a75ac00L

    const-class v0, Lcom/aide/engine/c$b$e;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>(Lcom/aide/engine/c$b;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x6c7db41d599c600L
    .end annotation

    const-wide v4, 0x22bae9db57b4b7adL

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$e;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x22bae9db57b4b7adL

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/engine/c$b$e;->u7:Lcom/aide/engine/c$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2710

    new-array v0, v0, [Lcom/aide/engine/m;

    iput-object v0, p0, Lcom/aide/engine/c$b$e;->Hw:[Lcom/aide/engine/m;

    const/16 v0, 0x2710

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/aide/engine/c$b$e;->v5:[I

    const/16 v0, 0x2710

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/aide/engine/c$b$e;->Zo:[I

    const/16 v0, 0x2710

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/aide/engine/c$b$e;->VH:[I

    const/16 v0, 0x2710

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/aide/engine/c$b$e;->gn:[I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$e;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method synthetic constructor <init>(Lcom/aide/engine/c$b;Lcom/aide/engine/b;)V
    .registers 10

    const-wide v2, -0x20bb9cfcd4fc5d90L    # -8.341731489808732E150

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$e;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x20bb9cfcd4fc5d90L    # -8.341731489808732E150

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/aide/engine/c$b$e;-><init>(Lcom/aide/engine/c$b;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/c$b$e;->DW:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method private j6(I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0xfb05fe3b35191cfL
    .end annotation

    const-wide v6, -0x12c84f54009c9aecL    # -1.3066648867511502E218

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$e;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x12c84f54009c9aecL    # -1.3066648867511502E218

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/c$b$e;->Hw:[Lcom/aide/engine/m;

    array-length v0, v0

    if-gt v0, p1, :cond_1

    mul-int/lit8 v0, p1, 0x5

    div-int/lit8 v0, v0, 0x4

    new-array v1, v0, [Lcom/aide/engine/m;

    iget-object v2, p0, Lcom/aide/engine/c$b$e;->Hw:[Lcom/aide/engine/m;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/aide/engine/c$b$e;->FH:I

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/aide/engine/c$b$e;->Hw:[Lcom/aide/engine/m;

    new-array v1, v0, [I

    iget-object v2, p0, Lcom/aide/engine/c$b$e;->v5:[I

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/aide/engine/c$b$e;->FH:I

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/aide/engine/c$b$e;->v5:[I

    new-array v1, v0, [I

    iget-object v2, p0, Lcom/aide/engine/c$b$e;->VH:[I

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/aide/engine/c$b$e;->FH:I

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/aide/engine/c$b$e;->VH:[I

    new-array v1, v0, [I

    iget-object v2, p0, Lcom/aide/engine/c$b$e;->Zo:[I

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/aide/engine/c$b$e;->FH:I

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/aide/engine/c$b$e;->Zo:[I

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/aide/engine/c$b$e;->gn:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/aide/engine/c$b$e;->FH:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/aide/engine/c$b$e;->gn:[I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$e;->DW:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v6, v7, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method private j6(Lcom/aide/engine/m;IIII)V
    .registers 16
    .annotation runtime Labcd/su;
        method = 0x122e3adaaf6cba07L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$e;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0xc7cf50abad26a0L

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/aide/engine/c$b$e;->FH:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/aide/engine/c$b$e;->j6(I)V

    if-lez p2, :cond_1

    iget-object v0, p0, Lcom/aide/engine/c$b$e;->Hw:[Lcom/aide/engine/m;

    iget v1, p0, Lcom/aide/engine/c$b$e;->FH:I

    aput-object p1, v0, v1

    iget-object v0, p0, Lcom/aide/engine/c$b$e;->v5:[I

    iget v1, p0, Lcom/aide/engine/c$b$e;->FH:I

    aput p2, v0, v1

    iget-object v0, p0, Lcom/aide/engine/c$b$e;->Zo:[I

    iget v1, p0, Lcom/aide/engine/c$b$e;->FH:I

    aput p3, v0, v1

    iget-object v0, p0, Lcom/aide/engine/c$b$e;->VH:[I

    iget v1, p0, Lcom/aide/engine/c$b$e;->FH:I

    aput p4, v0, v1

    iget-object v0, p0, Lcom/aide/engine/c$b$e;->gn:[I

    iget v1, p0, Lcom/aide/engine/c$b$e;->FH:I

    aput p5, v0, v1

    iget v0, p0, Lcom/aide/engine/c$b$e;->FH:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/aide/engine/c$b$e;->FH:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/c$b$e;->DW:Z

    if-eqz v0, :cond_2

    const-wide v2, 0xc7cf50abad26a0L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method


# virtual methods
.method public DW()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x266581db5b73e374L
    .end annotation

    const-wide v2, 0x2fd33021f575986bL    # 2.589233736861622E-78

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$e;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2fd33021f575986bL    # 2.589233736861622E-78

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/aide/engine/c$b$e;->FH:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$e;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public DW(Labcd/na;IIII)V
    .registers 16
    .annotation runtime Labcd/su;
        method = 0xfd74aab4bc2c4bfL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$e;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x41f9542a2ac31180L    # -6.598196802092251E-10

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    sget-object v1, Lcom/aide/engine/m;->DW:Lcom/aide/engine/m;

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/aide/engine/c$b$e;->j6(Lcom/aide/engine/m;IIII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/c$b$e;->DW:Z

    if-eqz v0, :cond_1

    const-wide v2, -0x41f9542a2ac31180L    # -6.598196802092251E-10

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public FH(Labcd/na;IIII)V
    .registers 16
    .annotation runtime Labcd/su;
        method = -0x1169b1b3dd39acd4L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$e;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x7bd756ed1ad2f7fL    # -1.95905113087037E271

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    sget-object v1, Lcom/aide/engine/m;->v5:Lcom/aide/engine/m;

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/aide/engine/c$b$e;->j6(Lcom/aide/engine/m;IIII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/c$b$e;->DW:Z

    if-eqz v0, :cond_1

    const-wide v2, -0x7bd756ed1ad2f7fL    # -1.95905113087037E271

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public Hw(Labcd/na;IIII)V
    .registers 16
    .annotation runtime Labcd/su;
        method = 0xc20d512502cf39L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$e;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x3fa4726cb052439cL    # 0.039935490153886394

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    sget-object v1, Lcom/aide/engine/m;->Zo:Lcom/aide/engine/m;

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/aide/engine/c$b$e;->j6(Lcom/aide/engine/m;IIII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/c$b$e;->DW:Z

    if-eqz v0, :cond_1

    const-wide v2, 0x3fa4726cb052439cL    # 0.039935490153886394

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public j6()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x281a7af84235155fL
    .end annotation

    const-wide v2, -0x10114dacacbcc5a0L    # -1.4892813106967326E231

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$e;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x10114dacacbcc5a0L    # -1.4892813106967326E231

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/aide/engine/c$b$e;->FH:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$e;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Labcd/Da;)V
    .registers 16
    .annotation runtime Labcd/su;
        method = -0x18875a30577e4b00L
    .end annotation

    const-wide v12, 0x3a01fee7c7a3309L

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$e;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x3a01fee7c7a3309L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/c$b$e;->u7:Lcom/aide/engine/c$b;

    iget-object v0, v0, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v0}, Lcom/aide/engine/c;->ko(Lcom/aide/engine/c;)Lcom/aide/engine/n;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/engine/c$b$e;->u7:Lcom/aide/engine/c$b;

    iget-object v0, v0, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v0}, Lcom/aide/engine/c;->ko(Lcom/aide/engine/c;)Lcom/aide/engine/n;

    move-result-object v1

    invoke-virtual {p1}, Labcd/Da;->XL()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1}, Labcd/Da;->a8()J

    move-result-wide v4

    iget-object v6, p0, Lcom/aide/engine/c$b$e;->Hw:[Lcom/aide/engine/m;

    iget-object v7, p0, Lcom/aide/engine/c$b$e;->v5:[I

    iget-object v8, p0, Lcom/aide/engine/c$b$e;->Zo:[I

    iget-object v9, p0, Lcom/aide/engine/c$b$e;->VH:[I

    iget-object v10, p0, Lcom/aide/engine/c$b$e;->gn:[I

    iget v11, p0, Lcom/aide/engine/c$b$e;->FH:I

    invoke-interface/range {v1 .. v11}, Lcom/aide/engine/n;->j6(Ljava/lang/String;IJ[Lcom/aide/engine/m;[I[I[I[II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$e;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v12, v13, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public j6(Labcd/Da;I)V
    .registers 15
    .annotation runtime Labcd/su;
        method = 0x1d0abe71533f8008L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$e;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x40eaf871e90957fL

    invoke-static {v2, v3, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/c$b$e;->u7:Lcom/aide/engine/c$b;

    iget-object v0, v0, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v0}, Lcom/aide/engine/c;->ko(Lcom/aide/engine/c;)Lcom/aide/engine/n;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/engine/c$b$e;->u7:Lcom/aide/engine/c$b;

    iget-object v0, v0, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v0}, Lcom/aide/engine/c;->ko(Lcom/aide/engine/c;)Lcom/aide/engine/n;

    move-result-object v1

    invoke-virtual {p1}, Labcd/Da;->XL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Labcd/Da;->a8()J

    move-result-wide v4

    iget-object v6, p0, Lcom/aide/engine/c$b$e;->Hw:[Lcom/aide/engine/m;

    iget-object v7, p0, Lcom/aide/engine/c$b$e;->v5:[I

    iget-object v8, p0, Lcom/aide/engine/c$b$e;->Zo:[I

    iget-object v9, p0, Lcom/aide/engine/c$b$e;->VH:[I

    iget-object v10, p0, Lcom/aide/engine/c$b$e;->gn:[I

    iget v11, p0, Lcom/aide/engine/c$b$e;->FH:I

    move v3, p2

    invoke-interface/range {v1 .. v11}, Lcom/aide/engine/n;->DW(Ljava/lang/String;IJ[Lcom/aide/engine/m;[I[I[I[II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/c$b$e;->DW:Z

    if-eqz v0, :cond_2

    const-wide v2, 0x40eaf871e90957fL

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method public j6(Labcd/na;IIII)V
    .registers 16
    .annotation runtime Labcd/su;
        method = -0xe470f3b61733f5bL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$e;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x170fd0a259d600e4L

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    sget-object v1, Lcom/aide/engine/m;->FH:Lcom/aide/engine/m;

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/aide/engine/c$b$e;->j6(Lcom/aide/engine/m;IIII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/c$b$e;->DW:Z

    if-eqz v0, :cond_1

    const-wide v2, 0x170fd0a259d600e4L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public j6(Labcd/na;Labcd/Wa;)V
    .registers 11
    .annotation runtime Labcd/su;
        method = 0x45386a35db8eef1cL
    .end annotation

    const-wide v2, 0x23714a54e8f321fbL    # 5.807724186345304E-138

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Lcom/aide/engine/c$b$e;->j6:Z

    if-eqz v1, :cond_0

    const-wide v4, 0x23714a54e8f321fbL    # 5.807724186345304E-138

    invoke-static {v4, v5, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget v1, p0, Lcom/aide/engine/c$b$e;->FH:I

    iget v4, p2, Labcd/Wa;->EQ:I

    add-int/2addr v1, v4

    invoke-direct {p0, v1}, Lcom/aide/engine/c$b$e;->j6(I)V

    iget-object v1, p2, Labcd/Wa;->v5:[I

    iget-object v4, p0, Lcom/aide/engine/c$b$e;->v5:[I

    iget v5, p0, Lcom/aide/engine/c$b$e;->FH:I

    iget v6, p2, Labcd/Wa;->EQ:I

    const/4 v7, 0x0

    invoke-static {v1, v7, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p2, Labcd/Wa;->Zo:[I

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/aide/engine/c$b$e;->VH:[I

    iget v6, p0, Lcom/aide/engine/c$b$e;->FH:I

    iget v7, p2, Labcd/Wa;->EQ:I

    invoke-static {v1, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p2, Labcd/Wa;->VH:[I

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/aide/engine/c$b$e;->Zo:[I

    iget v6, p0, Lcom/aide/engine/c$b$e;->FH:I

    iget v7, p2, Labcd/Wa;->EQ:I

    invoke-static {v1, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p2, Labcd/Wa;->gn:[I

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/aide/engine/c$b$e;->gn:[I

    iget v6, p0, Lcom/aide/engine/c$b$e;->FH:I

    iget v7, p2, Labcd/Wa;->EQ:I

    invoke-static {v1, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {p1}, Labcd/na;->v5()Labcd/pa;

    move-result-object v1

    :goto_0
    iget v4, p2, Labcd/Wa;->EQ:I

    if-ge v0, v4, :cond_3

    iget-object v4, p2, Labcd/Wa;->FH:[I

    aget v4, v4, v0

    iget-object v5, p2, Labcd/Wa;->v5:[I

    aget v5, v5, v0

    if-lez v5, :cond_1

    iget-object v5, p2, Labcd/Wa;->Zo:[I

    aget v5, v5, v0

    if-lez v5, :cond_1

    iget-object v5, p0, Lcom/aide/engine/c$b$e;->Hw:[Lcom/aide/engine/m;

    iget v6, p0, Lcom/aide/engine/c$b$e;->FH:I

    iget-object v7, p0, Lcom/aide/engine/c$b$e;->u7:Lcom/aide/engine/c$b;

    invoke-static {v7, v1, v4}, Lcom/aide/engine/c$b;->j6(Lcom/aide/engine/c$b;Labcd/pa;I)Lcom/aide/engine/m;

    move-result-object v4

    aput-object v4, v5, v6

    :goto_1
    iget v4, p0, Lcom/aide/engine/c$b$e;->FH:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/aide/engine/c$b$e;->FH:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/aide/engine/c$b$e;->Hw:[Lcom/aide/engine/m;

    iget v5, p0, Lcom/aide/engine/c$b$e;->FH:I

    const/4 v6, 0x0

    aput-object v6, v4, v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/c$b$e;->DW:Z

    if-eqz v0, :cond_2

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1

    :cond_3
    return-void
.end method

.method public v5(Labcd/na;IIII)V
    .registers 16
    .annotation runtime Labcd/su;
        method = -0x235f5cdf1aa6f903L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$e;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x14e0686c31858d58L

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    sget-object v1, Lcom/aide/engine/m;->Hw:Lcom/aide/engine/m;

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/aide/engine/c$b$e;->j6(Lcom/aide/engine/m;IIII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/c$b$e;->DW:Z

    if-eqz v0, :cond_1

    const-wide v2, 0x14e0686c31858d58L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method
