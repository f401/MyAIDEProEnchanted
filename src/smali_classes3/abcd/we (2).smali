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
            "Ljava/util/HashMap<",
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
            "Ljava/util/List<",
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
    .registers 3

    const-class v0, Labcd/we;

    const-wide v1, -0x37023090e6abeb0L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x2795e5bae052cc63L  # -8.227963891284245E117

    :try_start_6
    sget-boolean v3, Labcd/we;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    iput v3, p0, Labcd/we;->VH:I
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v3

    sget-boolean v4, Labcd/we;->DW:Z

    if-eqz v4, :cond_1c

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1c
    throw v3
.end method

.method private Zo()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public DW()V
    .registers 5

    const-wide v0, -0x5ab8e96ac1176f5L  # -1.855414222660459E281

    :try_start_5
    sget-boolean v2, Labcd/we;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Labcd/we;->FH:Ljava/util/HashMap;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Labcd/we;->Hw:Ljava/util/List;

    invoke-static {}, Lcom/aide/ui/U;->VH()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Labcd/we;->v5:Landroid/app/Activity;
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_21

    return-void

    :catchall_21
    move-exception v2

    sget-boolean v3, Labcd/we;->DW:Z

    if-eqz v3, :cond_29

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_29
    throw v2
.end method

.method public FH()Z
    .registers 5

    const-wide v0, 0x3e55c734fd55b544L  # 2.0282484876887727E-8

    :try_start_5
    sget-boolean v2, Labcd/we;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Ek;->Hw()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-direct {p0}, Labcd/we;->Zo()Z

    move-result v2

    if-eqz v2, :cond_24

    :cond_1c
    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v0
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_26

    if-nez v0, :cond_24

    const/4 v0, 0x1

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    :goto_25
    return v0

    :catchall_26
    move-exception v2

    sget-boolean v3, Labcd/we;->DW:Z

    if-eqz v3, :cond_2e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2e
    throw v2
.end method

.method public Hw()Z
    .registers 5

    const-wide v0, 0x4f0141c92ad561bbL  # 3.811304634243804E72

    :try_start_5
    sget-boolean v2, Labcd/we;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-boolean v0, p0, Labcd/we;->gn:Z
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/we;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public j6()V
    .registers 5

    const-wide v0, 0x1523fe0e2e6dfe7fL  # 7.783913559273489E-207

    :try_start_5
    sget-boolean v2, Labcd/we;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    iput-boolean v2, p0, Labcd/we;->gn:Z
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    sget-boolean v3, Labcd/we;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public j6(Labcd/ze;)V
    .registers 11

    const-wide v0, 0x3c35207286bf6430L  # 1.1452832786706955E-18

    :try_start_5
    sget-boolean v2, Labcd/we;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iput-object p1, p0, Labcd/we;->Zo:Labcd/ze;

    invoke-virtual {p0}, Labcd/we;->FH()Z

    move-result v2

    if-eqz v2, :cond_3f

    const/4 v2, 0x1

    iput-boolean v2, p0, Labcd/we;->gn:Z

    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v3

    iget-object v4, p0, Labcd/we;->v5:Landroid/app/Activity;

    invoke-interface {p1}, Labcd/ze;->j6()I

    move-result v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "run_command_"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Labcd/ze;->Zo()Labcd/ze$a;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Labcd/Ek;->j6(Landroid/app/Activity;ILjava/lang/String;ZZ)V
    :try_end_3f
    .catchall {:try_start_5 .. :try_end_3f} :catchall_40

    :cond_3f
    return-void

    :catchall_40
    move-exception v2

    sget-boolean v3, Labcd/we;->DW:Z

    if-eqz v3, :cond_48

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_48
    throw v2
.end method

.method public j6(Landroid/view/ViewGroup;)V
    .registers 6

    const-wide v0, 0x25a83275c81c0fa5L

    :try_start_5
    sget-boolean v2, Labcd/we;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Labcd/we;->FH()Z
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    sget-boolean v3, Labcd/we;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public j6(Z)V
    .registers 7

    const-wide v0, -0x55a84691b4255c2fL

    :try_start_5
    sget-boolean v2, Labcd/we;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_c
    invoke-virtual {p0}, Labcd/we;->FH()Z

    move-result v2

    if-nez v2, :cond_13

    return-void

    :cond_13
    iget-object v2, p0, Labcd/we;->Hw:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/xe;

    if-eqz p1, :cond_2f

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Labcd/xe;->j6(Z)V

    invoke-virtual {v3}, Labcd/xe;->DW()V

    goto :goto_19

    :cond_2f
    invoke-virtual {v3}, Labcd/xe;->j6()V
    :try_end_32
    .catchall {:try_start_5 .. :try_end_32} :catchall_34

    goto :goto_19

    :cond_33
    return-void

    :catchall_34
    move-exception v2

    sget-boolean v3, Labcd/we;->DW:Z

    if-eqz v3, :cond_41

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_41
    goto :goto_43

    :goto_42
    throw v2

    :goto_43
    goto :goto_42
.end method

.method public v5()Z
    .registers 7

    const-wide v0, -0x7260170b7b665173L  # -4.673368838803206E-243

    :try_start_5
    sget-boolean v2, Labcd/we;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Labcd/we;->FH()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_14

    return v3

    :cond_14
    iget-object v2, p0, Labcd/we;->FH:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/ze$a;

    iget-object v5, p0, Labcd/we;->FH:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/ye;

    invoke-virtual {v4}, Labcd/ye;->j6()Z

    move-result v4
    :try_end_36
    .catchall {:try_start_5 .. :try_end_36} :catchall_3b

    if-eqz v4, :cond_1e

    const/4 v0, 0x1

    return v0

    :cond_3a
    return v3

    :catchall_3b
    move-exception v2

    sget-boolean v3, Labcd/we;->DW:Z

    if-eqz v3, :cond_43

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_43
    goto :goto_45

    :goto_44
    throw v2

    :goto_45
    goto :goto_44
.end method
