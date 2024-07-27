.class public Labcd/Gc;
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
.field private FH:Labcd/Jc;
    .annotation runtime Labcd/ru;
        field = -0x2a4f009e4fc4aa38L
    .end annotation
.end field

.field private Hw:Labcd/Ic;
    .annotation runtime Labcd/ru;
        field = 0x2857308b637d3420L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x19c40d2210763900L    # -2.968923174550163E184

    const-class v0, Labcd/Gc;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/La;)V
    .registers 8

    const-wide v4, -0x11097dbf5593553dL    # -3.3326452279978796E226

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Gc;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x11097dbf5593553dL    # -3.3326452279978796E226

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    new-instance v0, Labcd/Ic;

    invoke-direct {v0, p1}, Labcd/Ic;-><init>(Labcd/La;)V

    iput-object v0, p0, Labcd/Gc;->Hw:Labcd/Ic;

    new-instance v0, Labcd/Jc;

    invoke-direct {v0, p1}, Labcd/Jc;-><init>(Labcd/La;)V

    iput-object v0, p0, Labcd/Gc;->FH:Labcd/Jc;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Gc;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method


# virtual methods
.method public DW()V
    .registers 5

    const-wide v2, -0xed017d5881bc138L

    :try_start_0
    sget-boolean v0, Labcd/Gc;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xed017d5881bc138L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Gc;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public FH()Labcd/ra;
    .registers 5

    const-wide v2, 0xcb24c7ba4d33a40L    # 1.6357061000367364E-247

    :try_start_0
    sget-boolean v0, Labcd/Gc;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xcb24c7ba4d33a40L    # 1.6357061000367364E-247

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Gc;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Hw()Labcd/ga;
    .registers 5

    const-wide v2, -0x2b48d840d30c9b5cL

    :try_start_0
    sget-boolean v0, Labcd/Gc;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2b48d840d30c9b5cL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Gc;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public VH()Labcd/oa;
    .registers 5

    const-wide v2, -0x4126fdfa2223cec1L    # -5.962348465404353E-6

    :try_start_0
    sget-boolean v0, Labcd/Gc;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x4126fdfa2223cec1L    # -5.962348465404353E-6

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Gc;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Zo()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<+",
            "Labcd/ha;",
            ">;"
        }
    .end annotation

    const-wide v2, 0xef7cdd122dd5ac3L

    :try_start_0
    sget-boolean v0, Labcd/Gc;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xef7cdd122dd5ac3L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Gc;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public gn()Labcd/ia;
    .registers 5

    const-wide v2, 0x19ab86aea6a95128L

    :try_start_0
    sget-boolean v0, Labcd/Gc;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x19ab86aea6a95128L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Gc;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6()Ljava/lang/String;
    .registers 5

    const-wide v2, -0xb41fe6bba86b317L    # -2.1999200822384988E254

    :try_start_0
    sget-boolean v0, Labcd/Gc;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xb41fe6bba86b317L    # -2.1999200822384988E254

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const-string v0, "C++"

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Gc;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(C)Z
    .registers 8

    const-wide v4, -0x4956b878f2530cc8L    # -2.213999419200667E-45

    :try_start_0
    sget-boolean v0, Labcd/Gc;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Character;

    invoke-direct {v0, p1}, Ljava/lang/Character;-><init>(C)V

    const-wide v2, -0x4956b878f2530cc8L    # -2.213999419200667E-45

    invoke-static {v2, v3, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Gc;->DW:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Character;

    invoke-direct {v1, p1}, Ljava/lang/Character;-><init>(C)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public u7()Labcd/qa;
    .registers 5

    const-wide v2, 0x1405dd8e8dfa4f4L

    :try_start_0
    sget-boolean v0, Labcd/Gc;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1405dd8e8dfa4f4L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Gc;->FH:Labcd/Jc;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Gc;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public v5()Labcd/pa;
    .registers 5

    const-wide v2, 0x1a6eddcebfc26688L

    :try_start_0
    sget-boolean v0, Labcd/Gc;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1a6eddcebfc26688L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Gc;->Hw:Labcd/Ic;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Gc;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
