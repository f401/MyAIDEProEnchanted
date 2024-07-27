.class public Labcd/Qd;
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
.field private FH:Labcd/Sd;
    .annotation runtime Labcd/ru;
        field = 0x2c842755d85d443cL
    .end annotation
.end field

.field private Hw:Labcd/Td;
    .annotation runtime Labcd/ru;
        field = 0x2220d91a658f5b20L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, 0x6af22cbec85a259L

    const-class v0, Labcd/Qd;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/La;)V
    .registers 8

    const-wide v4, 0x7b545016ceff443L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Qd;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x7b545016ceff443L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    new-instance v0, Labcd/Sd;

    invoke-direct {v0}, Labcd/Sd;-><init>()V

    iput-object v0, p0, Labcd/Qd;->FH:Labcd/Sd;

    new-instance v0, Labcd/Td;

    invoke-direct {v0, p1, p0}, Labcd/Td;-><init>(Labcd/La;Labcd/Qd;)V

    iput-object v0, p0, Labcd/Qd;->Hw:Labcd/Td;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Qd;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method


# virtual methods
.method public DW()V
    .registers 5

    const-wide v2, -0x2375bab7bbdc0499L    # -6.110244500005212E137

    :try_start_0
    sget-boolean v0, Labcd/Qd;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2375bab7bbdc0499L    # -6.110244500005212E137

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Qd;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public FH()Labcd/ra;
    .registers 5

    const-wide v2, 0x28587043e680031bL

    :try_start_0
    sget-boolean v0, Labcd/Qd;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x28587043e680031bL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Qd;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Hw()Labcd/ga;
    .registers 5

    const-wide v2, 0x41e52e22acb0992bL    # 2.8427605495186973E9

    :try_start_0
    sget-boolean v0, Labcd/Qd;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x41e52e22acb0992bL    # 2.8427605495186973E9

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Qd;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public VH()Labcd/oa;
    .registers 5

    const-wide v2, 0x6ec63f32f54d230L    # 2.5625121792000046E-275

    :try_start_0
    sget-boolean v0, Labcd/Qd;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x6ec63f32f54d230L    # 2.5625121792000046E-275

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Qd;->DW:Z

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

    const-wide v2, 0x270b9d05b8b9e0a8L

    :try_start_0
    sget-boolean v0, Labcd/Qd;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x270b9d05b8b9e0a8L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Qd;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public gn()Labcd/ia;
    .registers 5

    const-wide v2, -0x1b557446c62586dfL    # -8.403945156033916E176

    :try_start_0
    sget-boolean v0, Labcd/Qd;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1b557446c62586dfL    # -8.403945156033916E176

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Qd;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6()Ljava/lang/String;
    .registers 5

    const-wide v2, 0x1244e1ed3c7b6760L

    :try_start_0
    sget-boolean v0, Labcd/Qd;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1244e1ed3c7b6760L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const-string v0, "JavaScript Comments"

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Qd;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(C)Z
    .registers 8

    const-wide v4, 0x4006b6c9620bc2cdL    # 2.8392512950743822

    :try_start_0
    sget-boolean v0, Labcd/Qd;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Character;

    invoke-direct {v0, p1}, Ljava/lang/Character;-><init>(C)V

    const-wide v2, 0x4006b6c9620bc2cdL    # 2.8392512950743822

    invoke-static {v2, v3, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Qd;->DW:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Character;

    invoke-direct {v1, p1}, Ljava/lang/Character;-><init>(C)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public u7()Labcd/qa;
    .registers 5

    const-wide v2, -0x223f60ee886ccb7fL    # -4.053727136553341E143

    :try_start_0
    sget-boolean v0, Labcd/Qd;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x223f60ee886ccb7fL    # -4.053727136553341E143

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Qd;->Hw:Labcd/Td;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Qd;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public v5()Labcd/pa;
    .registers 5

    const-wide v2, 0x147ba71583a68f91L    # 5.257026158472331E-210

    :try_start_0
    sget-boolean v0, Labcd/Qd;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x147ba71583a68f91L    # 5.257026158472331E-210

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Qd;->FH:Labcd/Sd;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Qd;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
