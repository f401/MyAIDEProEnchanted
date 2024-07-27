.class public Labcd/we;
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
.field private FH:Ljava/util/HashMap;
    .annotation runtime Labcd/ru;
        field = 0x4b070c36e52b6cfdL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Labcd/ze$a;",
            "Labcd/ye;",
            ">;"
        }
    .end annotation
.end field

.field private Hw:Ljava/util/List;
    .annotation runtime Labcd/ru;
        field = -0x2e4afadbd66c71fcL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Labcd/xe;",
            ">;"
        }
    .end annotation
.end field

.field private VH:I
    .annotation runtime Labcd/ru;
        field = -0x4d9befad2a2f86d7L
    .end annotation
.end field

.field private Zo:Labcd/ze;
    .annotation runtime Labcd/ru;
        field = 0x28acb7eb8b790078L
    .end annotation
.end field

.field private gn:Z
    .annotation runtime Labcd/ru;
        field = 0xee9aab569640ac0L
    .end annotation
.end field

.field private v5:Landroid/app/Activity;
    .annotation runtime Labcd/ru;
        field = 0xfcd0da0e9f43c7dL
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x37023090e6abeb0L

    const-class v0, Labcd/we;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, -0x2795e5bae052cc63L    # -8.227963891284245E117

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/we;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2795e5bae052cc63L    # -8.227963891284245E117

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Labcd/we;->VH:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/we;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private Zo()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public DW()V
    .registers 5

    const-wide v2, -0x5ab8e96ac1176f5L    # -1.855414222660459E281

    :try_start_0
    sget-boolean v0, Labcd/we;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x5ab8e96ac1176f5L    # -1.855414222660459E281

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Labcd/we;->FH:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Labcd/we;->Hw:Ljava/util/List;

    invoke-static {}, Lcom/aide/ui/U;->VH()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Labcd/we;->v5:Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/we;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public FH()Z
    .registers 5

    const-wide v2, 0x3e55c734fd55b544L    # 2.0282484876887727E-8

    :try_start_0
    sget-boolean v0, Labcd/we;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x3e55c734fd55b544L    # 2.0282484876887727E-8

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Ek;->Hw()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Labcd/we;->Zo()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/aide/ui/U;->dx()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/we;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public Hw()Z
    .registers 5

    const-wide v2, 0x4f0141c92ad561bbL    # 3.811304634243804E72

    :try_start_0
    sget-boolean v0, Labcd/we;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x4f0141c92ad561bbL    # 3.811304634243804E72

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Labcd/we;->gn:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/we;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6()V
    .registers 5

    const-wide v2, 0x1523fe0e2e6dfe7fL    # 7.783913559273489E-207

    :try_start_0
    sget-boolean v0, Labcd/we;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1523fe0e2e6dfe7fL    # 7.783913559273489E-207

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/we;->gn:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/we;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Labcd/ze;)V
    .registers 10

    const-wide v6, 0x3c35207286bf6430L    # 1.1452832786706955E-18

    :try_start_0
    sget-boolean v0, Labcd/we;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x3c35207286bf6430L    # 1.1452832786706955E-18

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Labcd/we;->Zo:Labcd/ze;

    invoke-virtual {p0}, Labcd/we;->FH()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/we;->gn:Z

    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v0

    iget-object v1, p0, Labcd/we;->v5:Landroid/app/Activity;

    invoke-interface {p1}, Labcd/ze;->j6()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "run_command_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Labcd/ze;->Zo()Labcd/ze$a;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Labcd/Ek;->j6(Landroid/app/Activity;ILjava/lang/String;ZZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/we;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v6, v7, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public j6(Landroid/view/ViewGroup;)V
    .registers 6

    const-wide v2, 0x25a83275c81c0fa5L

    :try_start_0
    sget-boolean v0, Labcd/we;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x25a83275c81c0fa5L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Labcd/we;->FH()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/we;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public j6(Z)V
    .registers 8

    const-wide v4, -0x55a84691b4255c2fL

    :try_start_0
    sget-boolean v0, Labcd/we;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x55a84691b4255c2fL

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_0
    invoke-virtual {p0}, Labcd/we;->FH()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Labcd/we;->Hw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/xe;

    if-eqz p1, :cond_4

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Labcd/xe;->j6(Z)V

    invoke-virtual {v0}, Labcd/xe;->DW()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/we;->DW:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0

    :cond_4
    :try_start_1
    invoke-virtual {v0}, Labcd/xe;->j6()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public v5()Z
    .registers 7

    const-wide v4, -0x7260170b7b665173L    # -4.673368838803206E-243

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v0, Labcd/we;->j6:Z

    if-eqz v0, :cond_0

    const-wide v2, -0x7260170b7b665173L    # -4.673368838803206E-243

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Labcd/we;->FH()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Labcd/we;->FH:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/ze$a;

    iget-object v3, p0, Labcd/we;->FH:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/ye;

    invoke-virtual {v0}, Labcd/ye;->j6()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/we;->DW:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4
    throw v0
.end method
