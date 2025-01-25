.class public Lcom/aide/ui/debugger/Debugger$c;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/debugger/Debugger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
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

    const-class v0, Lcom/aide/ui/debugger/Debugger$c;

    const-wide v1, 0xec0da8ff1b01100L  # 1.294107061417718E-237

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/debugger/Debugger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/debugger/Debugger$c;->j6:Z

    if-eqz v0, :cond_11

    const-wide v1, -0x958a27bd0f4d4d3L  # -3.678726930887269E263

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iput-object p1, p0, Lcom/aide/ui/debugger/Debugger$c;->Zo:Lcom/aide/ui/debugger/Debugger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/aide/ui/debugger/Debugger$c;->FH:Ljava/lang/String;

    iput-object p3, p0, Lcom/aide/ui/debugger/Debugger$c;->Hw:Ljava/lang/String;

    iput-object p4, p0, Lcom/aide/ui/debugger/Debugger$c;->v5:Ljava/lang/String;
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/debugger/Debugger$c;->DW:Z

    if-eqz v1, :cond_30

    const-wide v2, -0x958a27bd0f4d4d3L  # -3.678726930887269E263

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
.method public DW()Z
    .registers 5

    const-wide v0, 0x29e7b5eea303e8b1L  # 8.076727322613748E-107

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/debugger/Debugger$c;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const-string v2, "I"

    iget-object v3, p0, Lcom/aide/ui/debugger/Debugger$c;->v5:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/debugger/Debugger$c;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public FH()Z
    .registers 5

    const-wide v0, 0x152bca4c1b3805c8L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/debugger/Debugger$c;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const-string v2, "M"

    iget-object v3, p0, Lcom/aide/ui/debugger/Debugger$c;->v5:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/debugger/Debugger$c;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public Hw()Z
    .registers 5

    const-wide v0, -0x2583406be19adac8L  # -7.784149366243416E127

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/debugger/Debugger$c;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const-string v2, "O"

    iget-object v3, p0, Lcom/aide/ui/debugger/Debugger$c;->v5:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/debugger/Debugger$c;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public j6()V
    .registers 7

    const-wide v0, -0x11ce0b3f30d10ea7L  # -6.490647546218752E222

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/debugger/Debugger$c;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/debugger/Debugger$c;->FH:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1a

    iget-object v2, p0, Lcom/aide/ui/debugger/Debugger$c;->Zo:Lcom/aide/ui/debugger/Debugger;

    invoke-static {v2}, Lcom/aide/ui/debugger/Debugger;->DW(Lcom/aide/ui/debugger/Debugger;)V

    goto :goto_21

    :cond_1a
    iget-object v2, p0, Lcom/aide/ui/debugger/Debugger$c;->Zo:Lcom/aide/ui/debugger/Debugger;

    iget-object v3, p0, Lcom/aide/ui/debugger/Debugger$c;->FH:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/aide/ui/debugger/Debugger;->j6(Lcom/aide/ui/debugger/Debugger;Ljava/lang/String;)V

    :goto_21
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/aide/ui/debugger/f;

    invoke-direct {v3, p0}, Lcom/aide/ui/debugger/f;-><init>(Lcom/aide/ui/debugger/Debugger$c;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_30
    .catchall {:try_start_5 .. :try_end_30} :catchall_31

    return-void

    :catchall_31
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/debugger/Debugger$c;->DW:Z

    if-eqz v3, :cond_39

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_39
    throw v2
.end method
