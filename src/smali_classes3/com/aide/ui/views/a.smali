.class Lcom/aide/ui/views/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/ui/views/editor/p;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/views/CodeEditText$b;->nw()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final FH:Lcom/aide/ui/views/CodeEditText$b;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x1104abef650ed17cL

    const-wide v2, 0x1b9bda359b898847L

    const-class v4, Lcom/aide/ui/views/a;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/views/CodeEditText$b;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/views/a;->FH:Lcom/aide/ui/views/CodeEditText$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DW(Lcom/aide/ui/views/editor/o;IIII)V
    .registers 16
    .annotation runtime Labcd/su;
        method = -0x102863412f54acb3L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/a;->j6:Z

    if-eqz v0, :cond_22

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x3802a659f01b447L  # -4.963777544839542E291

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    iget-object v0, p0, Lcom/aide/ui/views/a;->FH:Lcom/aide/ui/views/CodeEditText$b;

    invoke-static {v0}, Lcom/aide/ui/views/CodeEditText$b;->j6(Lcom/aide/ui/views/CodeEditText$b;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_29
    .catchall {:try_start_0 .. :try_end_29} :catchall_4b

    :try_start_29
    iget-object v1, p0, Lcom/aide/ui/views/a;->FH:Lcom/aide/ui/views/CodeEditText$b;

    invoke-static {v1}, Lcom/aide/ui/views/CodeEditText$b;->DW(Lcom/aide/ui/views/CodeEditText$b;)Lcom/aide/engine/o;

    move-result-object v1

    invoke-virtual {v1, p3, p2, p5, p4}, Lcom/aide/engine/o;->DW(IIII)V

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_29 .. :try_end_33} :catchall_48

    :try_start_33
    iget-object v0, p0, Lcom/aide/ui/views/a;->FH:Lcom/aide/ui/views/CodeEditText$b;

    invoke-static {v0}, Lcom/aide/ui/views/CodeEditText$b;->FH(Lcom/aide/ui/views/CodeEditText$b;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_4b

    :try_start_3a
    iget-object v1, p0, Lcom/aide/ui/views/a;->FH:Lcom/aide/ui/views/CodeEditText$b;

    invoke-static {v1}, Lcom/aide/ui/views/CodeEditText$b;->Hw(Lcom/aide/ui/views/CodeEditText$b;)Lcom/aide/engine/o;

    move-result-object v1

    invoke-virtual {v1, p3, p2, p5, p4}, Lcom/aide/engine/o;->DW(IIII)V

    monitor-exit v0

    return-void

    :catchall_45
    move-exception v1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_3a .. :try_end_47} :catchall_45

    :try_start_47
    throw v1
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_4b

    :catchall_48
    move-exception v1

    :try_start_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    :try_start_4a
    throw v1
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_4b

    :catchall_4b
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/a;->DW:Z

    if-eqz v1, :cond_6f

    const-wide v2, -0x3802a659f01b447L  # -4.963777544839542E291

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6f
    throw v0
.end method

.method public j6(Lcom/aide/ui/views/editor/o;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x273d93ec32f626dfL
    .end annotation

    const-wide v0, 0x32bf635fd1598e8fL  # 2.980485973277397E-64

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/a;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public j6(Lcom/aide/ui/views/editor/o;IIII)V
    .registers 16
    .annotation runtime Labcd/su;
        method = 0x1b43f07215df3a53L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/a;->j6:Z

    if-eqz v0, :cond_22

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x342489ce40ed1485L  # 1.635970253171185E-57

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    iget-object v0, p0, Lcom/aide/ui/views/a;->FH:Lcom/aide/ui/views/CodeEditText$b;

    invoke-static {v0}, Lcom/aide/ui/views/CodeEditText$b;->j6(Lcom/aide/ui/views/CodeEditText$b;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_29
    .catchall {:try_start_0 .. :try_end_29} :catchall_4b

    :try_start_29
    iget-object v1, p0, Lcom/aide/ui/views/a;->FH:Lcom/aide/ui/views/CodeEditText$b;

    invoke-static {v1}, Lcom/aide/ui/views/CodeEditText$b;->DW(Lcom/aide/ui/views/CodeEditText$b;)Lcom/aide/engine/o;

    move-result-object v1

    invoke-virtual {v1, p3, p2, p5, p4}, Lcom/aide/engine/o;->j6(IIII)V

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_29 .. :try_end_33} :catchall_48

    :try_start_33
    iget-object v0, p0, Lcom/aide/ui/views/a;->FH:Lcom/aide/ui/views/CodeEditText$b;

    invoke-static {v0}, Lcom/aide/ui/views/CodeEditText$b;->FH(Lcom/aide/ui/views/CodeEditText$b;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_4b

    :try_start_3a
    iget-object v1, p0, Lcom/aide/ui/views/a;->FH:Lcom/aide/ui/views/CodeEditText$b;

    invoke-static {v1}, Lcom/aide/ui/views/CodeEditText$b;->Hw(Lcom/aide/ui/views/CodeEditText$b;)Lcom/aide/engine/o;

    move-result-object v1

    invoke-virtual {v1, p3, p2, p5, p4}, Lcom/aide/engine/o;->j6(IIII)V

    monitor-exit v0

    return-void

    :catchall_45
    move-exception v1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_3a .. :try_end_47} :catchall_45

    :try_start_47
    throw v1
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_4b

    :catchall_48
    move-exception v1

    :try_start_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    :try_start_4a
    throw v1
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_4b

    :catchall_4b
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/a;->DW:Z

    if-eqz v1, :cond_6f

    const-wide v2, 0x342489ce40ed1485L  # 1.635970253171185E-57

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6f
    throw v0
.end method

.method public j6(Lcom/aide/ui/views/editor/o;III[C)V
    .registers 16
    .annotation runtime Labcd/su;
        method = -0x18f7e20d78ef659bL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/a;->j6:Z

    if-eqz v0, :cond_1e

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x591edf00e5bc92fL

    move-object v3, p0

    move-object v4, p1

    move-object v8, p5

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1e
    .catchall {:try_start_0 .. :try_end_1e} :catchall_1f

    :cond_1e
    return-void

    :catchall_1f
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/a;->DW:Z

    if-eqz v1, :cond_3f

    const-wide v2, -0x591edf00e5bc92fL

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v9, p5

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3f
    throw v0
.end method
