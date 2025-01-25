.class public Lcom/aide/ui/debugger/Debugger$b;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/debugger/Debugger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
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
.field public FH:Ljava/lang/String;

.field public Hw:Ljava/lang/String;

.field final Zo:Lcom/aide/ui/debugger/Debugger;
    .annotation runtime Labcd/vu;
    .end annotation
.end field

.field public v5:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/debugger/Debugger$b;

    const-wide v1, 0x8364ed4041c8e14L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/debugger/Debugger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/debugger/Debugger$b;->j6:Z

    if-eqz v0, :cond_11

    const-wide v1, 0x4fa34b4e1ee6f90bL  # 4.363498411139084E75

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iput-object p1, p0, Lcom/aide/ui/debugger/Debugger$b;->Zo:Lcom/aide/ui/debugger/Debugger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/aide/ui/debugger/Debugger$b;->FH:Ljava/lang/String;

    iput-object p2, p0, Lcom/aide/ui/debugger/Debugger$b;->Hw:Ljava/lang/String;

    iput-object p4, p0, Lcom/aide/ui/debugger/Debugger$b;->v5:Ljava/lang/String;
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/debugger/Debugger$b;->DW:Z

    if-eqz v1, :cond_30

    const-wide v2, 0x4fa34b4e1ee6f90bL  # 4.363498411139084E75

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_30
    throw v0
.end method


# virtual methods
.method public DW()V
    .registers 9

    const-wide v0, -0x4fee184514b6420L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/debugger/Debugger$b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_3b

    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/aide/ui/debugger/Debugger$b;->FH:Ljava/lang/String;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_39

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    :try_start_18
    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v0

    invoke-virtual {v0, v1}, Labcd/Zk;->a8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3a

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    new-instance v1, Labcd/Tl;

    const/4 v5, 0x1

    const/4 v7, 0x1

    move-object v2, v1

    move v4, v6

    invoke-direct/range {v2 .. v7}, Labcd/Tl;-><init>(Ljava/lang/String;IIII)V

    invoke-virtual {v0, v1}, Lcom/aide/ui/MainActivity;->j6(Labcd/Tl;)V
    :try_end_38
    .catchall {:try_start_18 .. :try_end_38} :catchall_39

    goto :goto_3a

    :catchall_39
    move-exception v0

    :cond_3a
    :goto_3a
    return-void

    :catchall_3b
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/debugger/Debugger$b;->DW:Z

    if-eqz v3, :cond_43

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_43
    throw v2
.end method

.method public j6()Z
    .registers 5

    const-wide v0, -0x5a77d6ea3070d6fL  # -2.224537956479201E281

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/debugger/Debugger$b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const-string v2, "D"

    iget-object v3, p0, Lcom/aide/ui/debugger/Debugger$b;->v5:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/debugger/Debugger$b;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method
