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
    .registers 3

    const-class v0, Lcom/aide/engine/c$b$e;

    const-wide v1, -0xc9d27f94a75ac00L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>(Lcom/aide/engine/c$b;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x6c7db41d599c600L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x22bae9db57b4b7adL

    :try_start_6
    sget-boolean v3, Lcom/aide/engine/c$b$e;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iput-object p1, p0, Lcom/aide/engine/c$b$e;->u7:Lcom/aide/engine/c$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v3, 0x2710

    new-array v4, v3, [Lcom/aide/engine/m;

    iput-object v4, p0, Lcom/aide/engine/c$b$e;->Hw:[Lcom/aide/engine/m;

    new-array v4, v3, [I

    iput-object v4, p0, Lcom/aide/engine/c$b$e;->v5:[I

    new-array v4, v3, [I

    iput-object v4, p0, Lcom/aide/engine/c$b$e;->Zo:[I

    new-array v4, v3, [I

    iput-object v4, p0, Lcom/aide/engine/c$b$e;->VH:[I

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/aide/engine/c$b$e;->gn:[I
    :try_end_28
    .catchall {:try_start_6 .. :try_end_28} :catchall_29

    return-void

    :catchall_29
    move-exception v3

    sget-boolean v4, Lcom/aide/engine/c$b$e;->DW:Z

    if-eqz v4, :cond_31

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_31
    throw v3
.end method

.method synthetic constructor <init>(Lcom/aide/engine/c$b;Lcom/aide/engine/b;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$e;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x20bb9cfcd4fc5d90L  # -8.341731489808732E150

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1}, Lcom/aide/engine/c$b$e;-><init>(Lcom/aide/engine/c$b;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$e;->DW:Z

    if-eqz v1, :cond_22

    const-wide v2, -0x20bb9cfcd4fc5d90L  # -8.341731489808732E150

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v0
.end method

.method private j6(I)V
    .registers 9
    .annotation runtime Labcd/su;
        method = 0xfb05fe3b35191cfL
    .end annotation

    const-wide v0, -0x12c84f54009c9aecL  # -1.3066648867511502E218

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$e;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/c$b$e;->Hw:[Lcom/aide/engine/m;

    array-length v3, v2

    if-gt v3, p1, :cond_4b

    mul-int/lit8 v3, p1, 0x5

    div-int/lit8 v3, v3, 0x4

    new-array v4, v3, [Lcom/aide/engine/m;

    iget v5, p0, Lcom/aide/engine/c$b$e;->FH:I

    const/4 v6, 0x0

    invoke-static {v2, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v4, p0, Lcom/aide/engine/c$b$e;->Hw:[Lcom/aide/engine/m;

    new-array v2, v3, [I

    iget-object v4, p0, Lcom/aide/engine/c$b$e;->v5:[I

    iget v5, p0, Lcom/aide/engine/c$b$e;->FH:I

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/aide/engine/c$b$e;->v5:[I

    new-array v2, v3, [I

    iget-object v4, p0, Lcom/aide/engine/c$b$e;->VH:[I

    iget v5, p0, Lcom/aide/engine/c$b$e;->FH:I

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/aide/engine/c$b$e;->VH:[I

    new-array v2, v3, [I

    iget-object v4, p0, Lcom/aide/engine/c$b$e;->Zo:[I

    iget v5, p0, Lcom/aide/engine/c$b$e;->FH:I

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/aide/engine/c$b$e;->Zo:[I

    new-array v2, v3, [I

    iget-object v3, p0, Lcom/aide/engine/c$b$e;->gn:[I

    iget v4, p0, Lcom/aide/engine/c$b$e;->FH:I

    invoke-static {v3, v6, v2, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/aide/engine/c$b$e;->gn:[I
    :try_end_4b
    .catchall {:try_start_5 .. :try_end_4b} :catchall_4c

    :cond_4b
    return-void

    :catchall_4c
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$e;->DW:Z

    if-eqz v3, :cond_59

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_59
    throw v2
.end method

.method private j6(Lcom/aide/engine/m;IIII)V
    .registers 16
    .annotation runtime Labcd/su;
        method = 0x122e3adaaf6cba07L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$e;->j6:Z

    if-eqz v0, :cond_22

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0xc7cf50abad26a0L

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    iget v0, p0, Lcom/aide/engine/c$b$e;->FH:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/aide/engine/c$b$e;->j6(I)V

    if-lez p2, :cond_45

    iget-object v0, p0, Lcom/aide/engine/c$b$e;->Hw:[Lcom/aide/engine/m;

    iget v1, p0, Lcom/aide/engine/c$b$e;->FH:I

    aput-object p1, v0, v1

    iget-object v0, p0, Lcom/aide/engine/c$b$e;->v5:[I

    aput p2, v0, v1

    iget-object v0, p0, Lcom/aide/engine/c$b$e;->Zo:[I

    aput p3, v0, v1

    iget-object v0, p0, Lcom/aide/engine/c$b$e;->VH:[I

    aput p4, v0, v1

    iget-object v0, p0, Lcom/aide/engine/c$b$e;->gn:[I

    aput p5, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/aide/engine/c$b$e;->FH:I
    :try_end_45
    .catchall {:try_start_0 .. :try_end_45} :catchall_46

    :cond_45
    return-void

    :catchall_46
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$e;->DW:Z

    if-eqz v1, :cond_6a

    const-wide v2, 0xc7cf50abad26a0L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6a
    throw v0
.end method


# virtual methods
.method public DW()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x266581db5b73e374L
    .end annotation

    const-wide v0, 0x2fd33021f575986bL  # 2.589233736861622E-78

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$e;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    iput v2, p0, Lcom/aide/engine/c$b$e;->FH:I
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$e;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public DW(Labcd/na;IIII)V
    .registers 16
    .annotation runtime Labcd/su;
        method = 0xfd74aab4bc2c4bfL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$e;->j6:Z

    if-eqz v0, :cond_22

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x41f9542a2ac31180L  # -6.598196802092251E-10

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    sget-object v2, Lcom/aide/engine/m;->DW:Lcom/aide/engine/m;

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/aide/engine/c$b$e;->j6(Lcom/aide/engine/m;IIII)V
    :try_end_2c
    .catchall {:try_start_0 .. :try_end_2c} :catchall_2d

    return-void

    :catchall_2d
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$e;->DW:Z

    if-eqz v1, :cond_51

    const-wide v2, -0x41f9542a2ac31180L  # -6.598196802092251E-10

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_51
    throw v0
.end method

.method public FH(Labcd/na;IIII)V
    .registers 16
    .annotation runtime Labcd/su;
        method = -0x1169b1b3dd39acd4L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$e;->j6:Z

    if-eqz v0, :cond_22

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x7bd756ed1ad2f7fL  # -1.95905113087037E271

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    sget-object v2, Lcom/aide/engine/m;->v5:Lcom/aide/engine/m;

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/aide/engine/c$b$e;->j6(Lcom/aide/engine/m;IIII)V
    :try_end_2c
    .catchall {:try_start_0 .. :try_end_2c} :catchall_2d

    return-void

    :catchall_2d
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$e;->DW:Z

    if-eqz v1, :cond_51

    const-wide v2, -0x7bd756ed1ad2f7fL  # -1.95905113087037E271

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_51
    throw v0
.end method

.method public Hw(Labcd/na;IIII)V
    .registers 16
    .annotation runtime Labcd/su;
        method = 0xc20d512502cf39L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$e;->j6:Z

    if-eqz v0, :cond_22

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x3fa4726cb052439cL  # 0.039935490153886394

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    sget-object v2, Lcom/aide/engine/m;->Zo:Lcom/aide/engine/m;

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/aide/engine/c$b$e;->j6(Lcom/aide/engine/m;IIII)V
    :try_end_2c
    .catchall {:try_start_0 .. :try_end_2c} :catchall_2d

    return-void

    :catchall_2d
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$e;->DW:Z

    if-eqz v1, :cond_51

    const-wide v2, 0x3fa4726cb052439cL  # 0.039935490153886394

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_51
    throw v0
.end method

.method public j6()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x281a7af84235155fL
    .end annotation

    const-wide v0, -0x10114dacacbcc5a0L  # -1.4892813106967326E231

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$e;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    iput v2, p0, Lcom/aide/engine/c$b$e;->FH:I
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$e;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public j6(Labcd/Da;)V
    .registers 16
    .annotation runtime Labcd/su;
        method = -0x18875a30577e4b00L
    .end annotation

    const-wide v0, 0x3a01fee7c7a3309L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$e;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/c$b$e;->u7:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->ko(Lcom/aide/engine/c;)Lcom/aide/engine/n;

    move-result-object v2

    if-eqz v2, :cond_36

    iget-object v2, p0, Lcom/aide/engine/c$b$e;->u7:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->ko(Lcom/aide/engine/c;)Lcom/aide/engine/n;

    move-result-object v3

    invoke-virtual {p1}, Labcd/Da;->XL()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p1}, Labcd/Da;->a8()J

    move-result-wide v6

    iget-object v8, p0, Lcom/aide/engine/c$b$e;->Hw:[Lcom/aide/engine/m;

    iget-object v9, p0, Lcom/aide/engine/c$b$e;->v5:[I

    iget-object v10, p0, Lcom/aide/engine/c$b$e;->Zo:[I

    iget-object v11, p0, Lcom/aide/engine/c$b$e;->VH:[I

    iget-object v12, p0, Lcom/aide/engine/c$b$e;->gn:[I

    iget v13, p0, Lcom/aide/engine/c$b$e;->FH:I

    invoke-interface/range {v3 .. v13}, Lcom/aide/engine/n;->j6(Ljava/lang/String;IJ[Lcom/aide/engine/m;[I[I[I[II)V
    :try_end_36
    .catchall {:try_start_5 .. :try_end_36} :catchall_37

    :cond_36
    return-void

    :catchall_37
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$e;->DW:Z

    if-eqz v3, :cond_3f

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3f
    throw v2
.end method

.method public j6(Labcd/Da;I)V
    .registers 15
    .annotation runtime Labcd/su;
        method = 0x1d0abe71533f8008L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$e;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x40eaf871e90957fL

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iget-object v0, p0, Lcom/aide/engine/c$b$e;->u7:Lcom/aide/engine/c$b;

    iget-object v0, v0, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v0}, Lcom/aide/engine/c;->ko(Lcom/aide/engine/c;)Lcom/aide/engine/n;

    move-result-object v0

    if-eqz v0, :cond_3b

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
    :try_end_3b
    .catchall {:try_start_0 .. :try_end_3b} :catchall_3c

    :cond_3b
    return-void

    :catchall_3c
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$e;->DW:Z

    if-eqz v1, :cond_51

    const-wide v2, 0x40eaf871e90957fL

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_51
    throw v0
.end method

.method public j6(Labcd/na;IIII)V
    .registers 16
    .annotation runtime Labcd/su;
        method = -0xe470f3b61733f5bL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$e;->j6:Z

    if-eqz v0, :cond_22

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x170fd0a259d600e4L

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    sget-object v2, Lcom/aide/engine/m;->FH:Lcom/aide/engine/m;

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/aide/engine/c$b$e;->j6(Lcom/aide/engine/m;IIII)V
    :try_end_2c
    .catchall {:try_start_0 .. :try_end_2c} :catchall_2d

    return-void

    :catchall_2d
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$e;->DW:Z

    if-eqz v1, :cond_51

    const-wide v2, 0x170fd0a259d600e4L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_51
    throw v0
.end method

.method public j6(Labcd/na;Labcd/Wa;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x45386a35db8eef1cL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$e;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x23714a54e8f321fbL  # 5.807724186345304E-138

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget v0, p0, Lcom/aide/engine/c$b$e;->FH:I

    iget v1, p2, Labcd/Wa;->EQ:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/aide/engine/c$b$e;->j6(I)V

    iget-object v0, p2, Labcd/Wa;->v5:[I

    iget-object v1, p0, Lcom/aide/engine/c$b$e;->v5:[I

    iget v2, p0, Lcom/aide/engine/c$b$e;->FH:I

    iget v3, p2, Labcd/Wa;->EQ:I

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p2, Labcd/Wa;->Zo:[I

    iget-object v1, p0, Lcom/aide/engine/c$b$e;->VH:[I

    iget v2, p0, Lcom/aide/engine/c$b$e;->FH:I

    iget v3, p2, Labcd/Wa;->EQ:I

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p2, Labcd/Wa;->VH:[I

    iget-object v1, p0, Lcom/aide/engine/c$b$e;->Zo:[I

    iget v2, p0, Lcom/aide/engine/c$b$e;->FH:I

    iget v3, p2, Labcd/Wa;->EQ:I

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p2, Labcd/Wa;->gn:[I

    iget-object v1, p0, Lcom/aide/engine/c$b$e;->gn:[I

    iget v2, p0, Lcom/aide/engine/c$b$e;->FH:I

    iget v3, p2, Labcd/Wa;->EQ:I

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {p1}, Labcd/na;->v5()Labcd/pa;

    move-result-object v0

    :goto_45
    iget v1, p2, Labcd/Wa;->EQ:I

    if-ge v4, v1, :cond_76

    iget-object v1, p2, Labcd/Wa;->FH:[I

    aget v1, v1, v4

    iget-object v2, p2, Labcd/Wa;->v5:[I

    aget v2, v2, v4

    if-lez v2, :cond_66

    iget-object v2, p2, Labcd/Wa;->Zo:[I

    aget v2, v2, v4

    if-lez v2, :cond_66

    iget-object v2, p0, Lcom/aide/engine/c$b$e;->Hw:[Lcom/aide/engine/m;

    iget v3, p0, Lcom/aide/engine/c$b$e;->FH:I

    iget-object v5, p0, Lcom/aide/engine/c$b$e;->u7:Lcom/aide/engine/c$b;

    invoke-static {v5, v0, v1}, Lcom/aide/engine/c$b;->j6(Lcom/aide/engine/c$b;Labcd/pa;I)Lcom/aide/engine/m;

    move-result-object v1

    aput-object v1, v2, v3

    goto :goto_6d

    :cond_66
    iget-object v1, p0, Lcom/aide/engine/c$b$e;->Hw:[Lcom/aide/engine/m;

    iget v2, p0, Lcom/aide/engine/c$b$e;->FH:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    :goto_6d
    iget v1, p0, Lcom/aide/engine/c$b$e;->FH:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/aide/engine/c$b$e;->FH:I
    :try_end_73
    .catchall {:try_start_0 .. :try_end_73} :catchall_77

    add-int/lit8 v4, v4, 0x1

    goto :goto_45

    :cond_76
    return-void

    :catchall_77
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$e;->DW:Z

    if-eqz v1, :cond_88

    const-wide v2, 0x23714a54e8f321fbL  # 5.807724186345304E-138

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_88
    goto :goto_8a

    :goto_89
    throw v0

    :goto_8a
    goto :goto_89
.end method

.method public v5(Labcd/na;IIII)V
    .registers 16
    .annotation runtime Labcd/su;
        method = -0x235f5cdf1aa6f903L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$e;->j6:Z

    if-eqz v0, :cond_22

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x14e0686c31858d58L

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    sget-object v2, Lcom/aide/engine/m;->Hw:Lcom/aide/engine/m;

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/aide/engine/c$b$e;->j6(Lcom/aide/engine/m;IIII)V
    :try_end_2c
    .catchall {:try_start_0 .. :try_end_2c} :catchall_2d

    return-void

    :catchall_2d
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$e;->DW:Z

    if-eqz v1, :cond_51

    const-wide v2, 0x14e0686c31858d58L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_51
    throw v0
.end method
