.class public Lcom/aide/engine/y;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/engine/s;


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
        field = -0x151b3a1f12c1d3b4L
    .end annotation
.end field

.field private final Hw:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x29601b56a6296d4bL
    .end annotation
.end field

.field private final VH:Ljava/util/List;
    .annotation runtime Labcd/ru;
        field = 0x1eb32c1abddfee8L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aide/engine/s;",
            ">;"
        }
    .end annotation
.end field

.field private final Zo:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0xf3e687ccb26777cL
    .end annotation
.end field

.field private final gn:Lcom/aide/engine/s;
    .annotation runtime Labcd/ru;
        field = 0x1c945966aa8db271L
    .end annotation
.end field

.field private final v5:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x1f4d8bdcbd6b39f0L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/engine/y;

    const-wide v1, -0x2ab652de8bfa9040L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/aide/engine/s;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/aide/engine/s;",
            ">;",
            "Lcom/aide/engine/s;",
            ")V"
        }
    .end annotation

    sget-boolean v0, Lcom/aide/engine/y;->j6:Z

    if-eqz v0, :cond_27

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const/4 v1, 0x4

    aput-object p5, v0, v1

    const/4 v1, 0x5

    aput-object p6, v0, v1

    const-wide v1, -0x226d33069d3eab4cL  # -5.731542631711662E142

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/aide/engine/y;->FH:Z

    iput-object p2, p0, Lcom/aide/engine/y;->Hw:Ljava/lang/String;

    iput-object p3, p0, Lcom/aide/engine/y;->v5:Ljava/lang/String;

    iput-object p4, p0, Lcom/aide/engine/y;->Zo:Ljava/lang/String;

    iput-object p5, p0, Lcom/aide/engine/y;->VH:Ljava/util/List;

    iput-object p6, p0, Lcom/aide/engine/y;->gn:Lcom/aide/engine/s;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 7

    const-string v0, "("

    const-wide v1, -0x362c7c8561d54e0L  # -1.822426694683222E292

    :try_start_7
    sget-boolean v3, Lcom/aide/engine/y;->j6:Z

    if-eqz v3, :cond_e

    invoke-static {v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v4, p0, Lcom/aide/engine/y;->FH:Z
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_82

    if-eqz v4, :cond_1a

    const-string v4, ""

    goto :goto_2d

    :cond_1a
    :try_start_1a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/aide/engine/y;->gn:Lcom/aide/engine/s;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/aide/engine/y;->Hw:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/aide/engine/y;->v5:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/aide/engine/y;->VH:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_70

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/aide/engine/s;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4f

    :cond_70
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_81
    .catchall {:try_start_1a .. :try_end_81} :catchall_82

    return-object v0

    :catchall_82
    move-exception v0

    sget-boolean v3, Lcom/aide/engine/y;->DW:Z

    if-eqz v3, :cond_8a

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_8a
    goto :goto_8c

    :goto_8b
    throw v0

    :goto_8c
    goto :goto_8b
.end method
