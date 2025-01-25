.class public Labcd/Fc;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/la;


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
.field private final FH:Labcd/Gc;
    .annotation runtime Labcd/ru;
        field = 0x3c74f7b61ffb519L
    .end annotation
.end field

.field private Hw:Labcd/vc;
    .annotation runtime Labcd/ru;
        field = 0x22dfaae70eafa5a1L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/Fc;

    const-wide v1, 0x13709841dc29a398L  # 4.813865458493691E-215

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/La;)V
    .registers 10

    const-wide v0, -0x1984d44d137d5f35L  # -4.6180449546613006E185

    const/4 v2, 0x0

    :try_start_6
    sget-boolean v3, Labcd/Fc;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Labcd/Gc;

    invoke-direct {v3, p1}, Labcd/Gc;-><init>(Labcd/La;)V

    iput-object v3, p0, Labcd/Fc;->FH:Labcd/Gc;

    if-eqz p1, :cond_29

    new-instance v4, Labcd/vc;

    iget-object v5, p1, Labcd/La;->j3:Labcd/Ga;

    iget-object v6, p1, Labcd/La;->rN:Labcd/Ca;

    new-instance v7, Labcd/Hc;

    invoke-direct {v7, v2}, Labcd/Hc;-><init>(Ljava/io/Reader;)V

    invoke-direct {v4, v5, v6, v3, v7}, Labcd/vc;-><init>(Labcd/Ga;Labcd/Ca;Labcd/na;Labcd/uc;)V

    iput-object v4, p0, Labcd/Fc;->Hw:Labcd/vc;
    :try_end_29
    .catchall {:try_start_6 .. :try_end_29} :catchall_2a

    :cond_29
    return-void

    :catchall_2a
    move-exception v3

    sget-boolean v4, Labcd/Fc;->DW:Z

    if-eqz v4, :cond_32

    invoke-static {v3, v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_32
    throw v3
.end method


# virtual methods
.method public DW(Ljava/lang/String;)J
    .registers 6

    const-wide v0, -0x5de2b2bf06c1d843L

    :try_start_5
    sget-boolean v2, Labcd/Fc;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_f

    :cond_c
    const-wide/16 v0, 0x0

    return-wide v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/Fc;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public DW()V
    .registers 5

    const-wide v0, -0x1bf1afde0321cb28L  # -9.371663829004703E173

    :try_start_5
    sget-boolean v2, Labcd/Fc;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Labcd/Fc;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public EQ()Z
    .registers 5

    const-wide v0, -0x1ba860ed3ff29ec0L  # -2.3369141451949204E175

    :try_start_5
    sget-boolean v2, Labcd/Fc;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x1

    return v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/Fc;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public FH()[Ljava/lang/String;
    .registers 5

    const-wide v0, 0x1217f634fe71c840L

    :try_start_5
    sget-boolean v2, Labcd/Fc;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_10

    :cond_c
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    :catchall_10
    move-exception v2

    sget-boolean v3, Labcd/Fc;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public Hw()[Ljava/lang/String;
    .registers 5

    const-wide v0, -0x34112606d6e40189L  # -6.0518044194429994E57

    :try_start_5
    sget-boolean v2, Labcd/Fc;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_39

    :cond_c
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "*.cpp"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "*.cc"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "*.c"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "*.h"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "*.hh"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "*.hpp"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "*.inl"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "*.gradle"

    aput-object v2, v0, v1

    return-object v0

    :catchall_39
    move-exception v2

    sget-boolean v3, Labcd/Fc;->DW:Z

    if-eqz v3, :cond_41

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_41
    throw v2
.end method

.method public VH()V
    .registers 5

    const-wide v0, 0x24cfca87d42c6e41L

    :try_start_5
    sget-boolean v2, Labcd/Fc;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Labcd/Fc;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public Zo()Labcd/ka;
    .registers 5

    const-wide v0, -0xc215eb25cc6c668L

    :try_start_5
    sget-boolean v2, Labcd/Fc;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x0

    return-object v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/Fc;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public gn()Z
    .registers 5

    const-wide v0, 0x11139cacf70c2924L  # 2.069690800067594E-226

    :try_start_5
    sget-boolean v2, Labcd/Fc;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x0

    return v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/Fc;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/Reader;
    .registers 12

    :try_start_0
    sget-boolean v0, Labcd/Fc;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, 0x293d342160f86580L

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_12

    :cond_10
    const/4 p1, 0x0

    return-object p1

    :catchall_12
    move-exception v0

    sget-boolean v1, Labcd/Fc;->DW:Z

    if-eqz v1, :cond_24

    const-wide v2, 0x293d342160f86580L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_24
    throw v0
.end method

.method public j6()Ljava/lang/String;
    .registers 5

    const-wide v0, -0x41a0b7924a48d633L  # -2.9134493357589973E-8

    :try_start_5
    sget-boolean v2, Labcd/Fc;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_f

    :cond_c
    const-string v0, "C++"

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/Fc;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public j6(Labcd/Da;Labcd/na;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Fc;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x18388d1448035ab8L  # -8.358145011460456E191

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v0

    sget-boolean v1, Labcd/Fc;->DW:Z

    if-eqz v1, :cond_1e

    const-wide v2, -0x18388d1448035ab8L  # -8.358145011460456E191

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v0
.end method

.method public j6(Labcd/Da;Ljava/io/Reader;Ljava/util/Map;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/Da;",
            "Ljava/io/Reader;",
            "Ljava/util/Map<",
            "Labcd/na;",
            "Labcd/Wa;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Fc;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, -0xcf117cd678bea6fL

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    iget-object v1, p0, Labcd/Fc;->Hw:Labcd/vc;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Labcd/Fc;->FH:Labcd/Gc;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Labcd/Wa;

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Labcd/vc;->j6(Labcd/Da;Ljava/io/Reader;ZZLabcd/Wa;)V
    :try_end_22
    .catchall {:try_start_0 .. :try_end_22} :catchall_23

    return-void

    :catchall_23
    move-exception v0

    sget-boolean v1, Labcd/Fc;->DW:Z

    if-eqz v1, :cond_35

    const-wide v2, -0xcf117cd678bea6fL

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_35
    throw v0
.end method

.method public j6(Labcd/Da;Ljava/io/Reader;Ljava/util/Map;Z)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/Da;",
            "Ljava/io/Reader;",
            "Ljava/util/Map<",
            "Labcd/na;",
            "Labcd/Sa;",
            ">;Z)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Fc;->j6:Z

    if-eqz v0, :cond_15

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p4}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, 0xe5f5ce0e50ffe00L  # 1.881388046629756E-239

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    iget-object v0, p0, Labcd/Fc;->FH:Labcd/Gc;

    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Labcd/Fc;->FH:Labcd/Gc;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Sa;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    new-array v4, v1, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v1, v0

    invoke-virtual/range {v1 .. v8}, Labcd/Sa;->j6(IZ[IIIII)I

    move-result v1

    invoke-virtual {v0, v1}, Labcd/Sa;->DW(I)V
    :try_end_36
    .catchall {:try_start_0 .. :try_end_36} :catchall_37

    :cond_36
    return-void

    :catchall_37
    move-exception v0

    sget-boolean v1, Labcd/Fc;->DW:Z

    if-eqz v1, :cond_4e

    const-wide v2, 0xe5f5ce0e50ffe00L  # 1.881388046629756E-239

    new-instance v8, Ljava/lang/Boolean;

    invoke-direct {v8, p4}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4e
    throw v0
.end method

.method public j6(Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    const-wide v0, -0x2d2a4fa060f92667L  # -1.1045297475497828E91

    :try_start_5
    sget-boolean v2, Labcd/Fc;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 p1, 0x0

    return-object p1

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/Fc;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public tp()Labcd/ma;
    .registers 5

    const-wide v0, -0x3378aa7c192800a0L  # -4.6870453608194975E60

    :try_start_5
    sget-boolean v2, Labcd/Fc;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x0

    return-object v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/Fc;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public u7()Labcd/ja;
    .registers 5

    const-wide v0, -0x2e5bd37faba289a0L  # -1.9595539052177874E85

    :try_start_5
    sget-boolean v2, Labcd/Fc;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x0

    return-object v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/Fc;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public v5()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Labcd/na;",
            ">;"
        }
    .end annotation

    const-wide v0, 0x246d9a8841a545b8L  # 3.258345007611896E-133

    :try_start_5
    sget-boolean v2, Labcd/Fc;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Labcd/Fc;->FH:Labcd/Gc;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return-object v2

    :catchall_17
    move-exception v2

    sget-boolean v3, Labcd/Fc;->DW:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1f
    throw v2
.end method
