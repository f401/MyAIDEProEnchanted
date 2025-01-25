.class public Labcd/ne;
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
.field private final FH:Labcd/La;
    .annotation runtime Labcd/ru;
        field = 0x2829f12a7f8d2194L
    .end annotation
.end field

.field private Hw:Labcd/qe;
    .annotation runtime Labcd/ru;
        field = 0x4611bd4eab41b40L
    .end annotation
.end field

.field private VH:Z
    .annotation runtime Labcd/ru;
        field = -0x351376b0954b8884L
    .end annotation
.end field

.field private Zo:Labcd/ie;
    .annotation runtime Labcd/ru;
        field = -0x43f052e8e1632178L
    .end annotation
.end field

.field private v5:Labcd/re;
    .annotation runtime Labcd/ru;
        field = -0x2887d9ba6788f140L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/ne;

    const-wide v1, -0x1b29facff0d0de50L  # -5.576991619433675E177

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/La;Z)V
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/ne;->j6:Z

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, 0x5550071abe1c130L

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/ne;->FH:Labcd/La;

    iput-boolean p2, p0, Labcd/ne;->VH:Z

    if-eqz p1, :cond_34

    new-instance v0, Labcd/ie;

    iget-object v1, p1, Labcd/La;->rN:Labcd/Ca;

    iget-object v2, p1, Labcd/La;->j3:Labcd/Ga;

    invoke-direct {v0, v1, v2}, Labcd/ie;-><init>(Labcd/Ca;Labcd/Ga;)V

    iput-object v0, p0, Labcd/ne;->Zo:Labcd/ie;

    new-instance v0, Labcd/qe;

    invoke-direct {v0}, Labcd/qe;-><init>()V

    iput-object v0, p0, Labcd/ne;->Hw:Labcd/qe;

    new-instance v0, Labcd/re;

    invoke-direct {v0, p1, p0, p2}, Labcd/re;-><init>(Labcd/La;Labcd/ne;Z)V

    iput-object v0, p0, Labcd/ne;->v5:Labcd/re;
    :try_end_34
    .catchall {:try_start_0 .. :try_end_34} :catchall_35

    :cond_34
    return-void

    :catchall_35
    move-exception v0

    sget-boolean v1, Labcd/ne;->DW:Z

    if-eqz v1, :cond_4a

    const-wide v2, 0x5550071abe1c130L

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4a
    throw v0
.end method


# virtual methods
.method public DW()V
    .registers 5

    const-wide v0, 0x1108b89dbf5db408L

    :try_start_5
    sget-boolean v2, Labcd/ne;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Labcd/ne;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public FH()Labcd/ra;
    .registers 5

    const-wide v0, -0x328f213cbaa0f880L  # -1.1103974737481273E65

    :try_start_5
    sget-boolean v2, Labcd/ne;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x0

    return-object v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/ne;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public Hw()Labcd/ga;
    .registers 5

    const-wide v0, -0x47d738a6576465bcL  # -3.6409044724014525E-38

    :try_start_5
    sget-boolean v2, Labcd/ne;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Labcd/ne;->Zo:Labcd/ie;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/ne;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public VH()Labcd/oa;
    .registers 5

    const-wide v0, 0x25d8e9e605432a0fL  # 2.300273462548021E-126

    :try_start_5
    sget-boolean v2, Labcd/ne;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x0

    return-object v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/ne;->DW:Z

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

    const-wide v0, -0x11173cad6c3ee9edL  # -1.8331991468140082E226

    :try_start_5
    sget-boolean v2, Labcd/ne;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-boolean v2, p0, Labcd/ne;->VH:Z

    invoke-static {v2}, Labcd/le;->j6(Z)Ljava/util/Set;

    move-result-object v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-object v0

    :catchall_13
    move-exception v2

    sget-boolean v3, Labcd/ne;->DW:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public gn()Labcd/ia;
    .registers 5

    const-wide v0, 0x2792b5626da04d68L  # 4.636832908683345E-118

    :try_start_5
    sget-boolean v2, Labcd/ne;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x0

    return-object v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/ne;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public j6()Ljava/lang/String;
    .registers 5

    const-wide v0, 0x488bab01ca7ace19L  # 3.012777981829689E41

    :try_start_5
    sget-boolean v2, Labcd/ne;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-boolean v0, p0, Labcd/ne;->VH:Z
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_16

    if-eqz v0, :cond_13

    const-string v0, "XML"

    goto :goto_15

    :cond_13
    const-string v0, "HTML"

    :goto_15
    return-object v0

    :catchall_16
    move-exception v2

    sget-boolean v3, Labcd/ne;->DW:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public j6(C)Z
    .registers 6

    const-wide v0, 0x377684ce0e657978L  # 1.6156424527102898E-41

    :try_start_5
    sget-boolean v2, Labcd/ne;->j6:Z

    if-eqz v2, :cond_11

    new-instance v2, Ljava/lang/Character;

    invoke-direct {v2, p1}, Ljava/lang/Character;-><init>(C)V

    invoke-static {v0, v1, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_22

    :cond_11
    const/16 v0, 0x3e

    if-eq p1, v0, :cond_20

    const/16 v0, 0x25

    if-eq p1, v0, :cond_20

    const/16 v0, 0x2f

    if-ne p1, v0, :cond_1e

    goto :goto_20

    :cond_1e
    const/4 p1, 0x0

    goto :goto_21

    :cond_20
    :goto_20
    const/4 p1, 0x1

    :goto_21
    return p1

    :catchall_22
    move-exception v2

    sget-boolean v3, Labcd/ne;->DW:Z

    if-eqz v3, :cond_2f

    new-instance v3, Ljava/lang/Character;

    invoke-direct {v3, p1}, Ljava/lang/Character;-><init>(C)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2f
    throw v2
.end method

.method public u7()Labcd/qa;
    .registers 5

    const-wide v0, -0x2bcaaf40a3d1d7acL  # -4.552946062092015E97

    :try_start_5
    sget-boolean v2, Labcd/ne;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Labcd/ne;->v5:Labcd/re;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/ne;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public v5()Labcd/pa;
    .registers 5

    const-wide v0, -0x2aea0c6e48d9b238L  # -7.68212925476137E101

    :try_start_5
    sget-boolean v2, Labcd/ne;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Labcd/ne;->Hw:Labcd/qe;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/ne;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method
