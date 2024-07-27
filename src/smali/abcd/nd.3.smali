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
    .registers 4

    const-wide v2, 0x27af04225fb2879L

    const-class v0, Labcd/nd;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/La;Z)V
    .registers 11

    const-wide v2, 0xe3cc5d7a7ab5e09L    # 4.315050930550695E-240

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Labcd/nd;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v6, 0xe3cc5d7a7ab5e09L    # 4.315050930550695E-240

    const/4 v1, 0x0

    invoke-static {v6, v7, v1, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Labcd/nd;->FH:Z

    if-eqz p1, :cond_1

    new-instance v0, Labcd/pd;

    invoke-direct {v0}, Labcd/pd;-><init>()V

    iput-object v0, p0, Labcd/nd;->Hw:Labcd/pd;

    new-instance v0, Labcd/qd;

    invoke-direct {v0, p1, p0}, Labcd/qd;-><init>(Labcd/La;Labcd/nd;)V

    iput-object v0, p0, Labcd/nd;->v5:Labcd/qd;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/nd;->DW:Z

    if-eqz v0, :cond_2

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method


# virtual methods
.method public DW()V
    .registers 5

    const-wide v2, 0x58f924051d2b33L

    :try_start_0
    sget-boolean v0, Labcd/nd;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x58f924051d2b33L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/nd;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public FH()Labcd/ra;
    .registers 5

    const-wide v2, -0x21c380bc5e5342e9L    # -8.896086092154567E145

    :try_start_0
    sget-boolean v0, Labcd/nd;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x21c380bc5e5342e9L    # -8.896086092154567E145

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/nd;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Hw()Labcd/ga;
    .registers 5

    const-wide v2, 0x41e1c769fffbd5fL

    :try_start_0
    sget-boolean v0, Labcd/nd;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x41e1c769fffbd5fL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/nd;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public VH()Labcd/oa;
    .registers 5

    const-wide v2, 0x22f7a1ff0dd197d0L    # 3.100824403807707E-140

    :try_start_0
    sget-boolean v0, Labcd/nd;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x22f7a1ff0dd197d0L    # 3.100824403807707E-140

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/nd;->DW:Z

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

    const-wide v2, -0x3ba447119021b08L    # -4.235829827980579E290

    :try_start_0
    sget-boolean v0, Labcd/nd;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3ba447119021b08L    # -4.235829827980579E290

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Labcd/md;->Hw()Ljava/util/Set;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/nd;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public gn()Labcd/ia;
    .registers 5

    const-wide v2, 0x2308201556330dd5L    # 6.330896416034539E-140

    :try_start_0
    sget-boolean v0, Labcd/nd;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2308201556330dd5L    # 6.330896416034539E-140

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/nd;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6()Ljava/lang/String;
    .registers 5

    const-wide v2, -0x36e74f1da0d17120L    # -1.37656669355513E44

    :try_start_0
    sget-boolean v0, Labcd/nd;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x36e74f1da0d17120L    # -1.37656669355513E44

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Labcd/nd;->FH:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    const-string v0, "J# Comments"

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "Java Comments"

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/nd;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public j6(C)Z
    .registers 8

    const-wide v4, 0x6abe8da697c20b71L    # 1.5326941734545293E206

    :try_start_0
    sget-boolean v0, Labcd/nd;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Character;

    invoke-direct {v0, p1}, Ljava/lang/Character;-><init>(C)V

    const-wide v2, 0x6abe8da697c20b71L    # 1.5326941734545293E206

    invoke-static {v2, v3, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/nd;->DW:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Character;

    invoke-direct {v1, p1}, Ljava/lang/Character;-><init>(C)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public u7()Labcd/qa;
    .registers 5

    const-wide v2, 0x2b163ce3f001835dL

    :try_start_0
    sget-boolean v0, Labcd/nd;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2b163ce3f001835dL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/nd;->v5:Labcd/qd;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/nd;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public v5()Labcd/pa;
    .registers 5

    const-wide v2, -0x2119cd7f38defd3bL    # -1.4191476497999517E149

    :try_start_0
    sget-boolean v0, Labcd/nd;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2119cd7f38defd3bL    # -1.4191476497999517E149

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/nd;->Hw:Labcd/pd;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/nd;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
