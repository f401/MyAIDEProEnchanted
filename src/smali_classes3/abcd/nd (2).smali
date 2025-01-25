.class public Labcd/nd;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/na;


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
.field private final FH:Z
    .annotation runtime Labcd/ru;
        field = 0x1c0a7d5980721ee8L
    .end annotation
.end field

.field private Hw:Labcd/pd;
    .annotation runtime Labcd/ru;
        field = 0x25ccefe159db70f3L
    .end annotation
.end field

.field private v5:Labcd/qd;
    .annotation runtime Labcd/ru;
        field = -0x1f7a39333e4912e5L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/nd;

    const-wide v1, 0x27af04225fb2879L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/La;Z)V
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/nd;->j6:Z

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, 0xe3cc5d7a7ab5e09L  # 4.315050930550695E-240

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Labcd/nd;->FH:Z

    if-eqz p1, :cond_27

    new-instance v0, Labcd/pd;

    invoke-direct {v0}, Labcd/pd;-><init>()V

    iput-object v0, p0, Labcd/nd;->Hw:Labcd/pd;

    new-instance v0, Labcd/qd;

    invoke-direct {v0, p1, p0}, Labcd/qd;-><init>(Labcd/La;Labcd/nd;)V

    iput-object v0, p0, Labcd/nd;->v5:Labcd/qd;
    :try_end_27
    .catchall {:try_start_0 .. :try_end_27} :catchall_28

    :cond_27
    return-void

    :catchall_28
    move-exception v0

    sget-boolean v1, Labcd/nd;->DW:Z

    if-eqz v1, :cond_3d

    const-wide v2, 0xe3cc5d7a7ab5e09L  # 4.315050930550695E-240

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3d
    throw v0
.end method


# virtual methods
.method public DW()V
    .registers 5

    const-wide v0, 0x58f924051d2b33L

    :try_start_5
    sget-boolean v2, Labcd/nd;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Labcd/nd;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public FH()Labcd/ra;
    .registers 5

    const-wide v0, -0x21c380bc5e5342e9L  # -8.896086092154567E145

    :try_start_5
    sget-boolean v2, Labcd/nd;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x0

    return-object v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/nd;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public Hw()Labcd/ga;
    .registers 5

    const-wide v0, 0x41e1c769fffbd5fL

    :try_start_5
    sget-boolean v2, Labcd/nd;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x0

    return-object v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/nd;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public VH()Labcd/oa;
    .registers 5

    const-wide v0, 0x22f7a1ff0dd197d0L  # 3.100824403807707E-140

    :try_start_5
    sget-boolean v2, Labcd/nd;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x0

    return-object v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/nd;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public Zo()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "+",
            "Labcd/ha;",
            ">;"
        }
    .end annotation

    const-wide v0, -0x3ba447119021b08L  # -4.235829827980579E290

    :try_start_5
    sget-boolean v2, Labcd/nd;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Labcd/md;->Hw()Ljava/util/Set;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_11

    return-object v0

    :catchall_11
    move-exception v2

    sget-boolean v3, Labcd/nd;->DW:Z

    if-eqz v3, :cond_19

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v2
.end method

.method public gn()Labcd/ia;
    .registers 5

    const-wide v0, 0x2308201556330dd5L  # 6.330896416034539E-140

    :try_start_5
    sget-boolean v2, Labcd/nd;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x0

    return-object v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/nd;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public j6()Ljava/lang/String;
    .registers 5

    const-wide v0, -0x36e74f1da0d17120L  # -1.37656669355513E44

    :try_start_5
    sget-boolean v2, Labcd/nd;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-boolean v0, p0, Labcd/nd;->FH:Z
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_16

    if-eqz v0, :cond_13

    const-string v0, "J# Comments"

    goto :goto_15

    :cond_13
    const-string v0, "Java Comments"

    :goto_15
    return-object v0

    :catchall_16
    move-exception v2

    sget-boolean v3, Labcd/nd;->DW:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public j6(C)Z
    .registers 6

    const-wide v0, 0x6abe8da697c20b71L  # 1.5326941734545293E206

    :try_start_5
    sget-boolean v2, Labcd/nd;->j6:Z

    if-eqz v2, :cond_11

    new-instance v2, Ljava/lang/Character;

    invoke-direct {v2, p1}, Ljava/lang/Character;-><init>(C)V

    invoke-static {v0, v1, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_13

    :cond_11
    const/4 p1, 0x0

    return p1

    :catchall_13
    move-exception v2

    sget-boolean v3, Labcd/nd;->DW:Z

    if-eqz v3, :cond_20

    new-instance v3, Ljava/lang/Character;

    invoke-direct {v3, p1}, Ljava/lang/Character;-><init>(C)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_20
    throw v2
.end method

.method public u7()Labcd/qa;
    .registers 5

    const-wide v0, 0x2b163ce3f001835dL

    :try_start_5
    sget-boolean v2, Labcd/nd;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Labcd/nd;->v5:Labcd/qd;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/nd;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public v5()Labcd/pa;
    .registers 5

    const-wide v0, -0x2119cd7f38defd3bL  # -1.4191476497999517E149

    :try_start_5
    sget-boolean v2, Labcd/nd;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Labcd/nd;->Hw:Labcd/pd;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/nd;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method
