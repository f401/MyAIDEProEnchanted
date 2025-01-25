.class Lcom/aide/ui/D;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/ui/views/editor/p;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/AIDEEditor$a;->DW(Ljava/lang/String;)V
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
.field final FH:Lcom/aide/ui/AIDEEditor$a;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x1cfb6d6a69ea43fL  # -6.81654732287768E299

    const-wide v2, 0x12b1c63de1d36c58L

    const-class v4, Lcom/aide/ui/D;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/AIDEEditor$a;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/D;->FH:Lcom/aide/ui/AIDEEditor$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DW(Lcom/aide/ui/views/editor/o;IIII)V
    .registers 16
    .annotation runtime Labcd/su;
        method = 0x2074b678d9f3b135L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/D;->j6:Z

    if-eqz v0, :cond_22

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x1c359c7419217d40L

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    iget-object v0, p0, Lcom/aide/ui/D;->FH:Lcom/aide/ui/AIDEEditor$a;

    iget-object v0, v0, Lcom/aide/ui/AIDEEditor$a;->vJ:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditText;->getScrollView()Lcom/aide/ui/views/CodeEditTextScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditTextScrollView;->Hw()V

    iget-object v0, p0, Lcom/aide/ui/D;->FH:Lcom/aide/ui/AIDEEditor$a;

    iget-object v0, v0, Lcom/aide/ui/AIDEEditor$a;->vJ:Lcom/aide/ui/AIDEEditor;

    invoke-static {v0}, Lcom/aide/ui/AIDEEditor;->v5(Lcom/aide/ui/AIDEEditor;)Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->I()V
    :try_end_38
    .catchall {:try_start_0 .. :try_end_38} :catchall_39

    return-void

    :catchall_39
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/D;->DW:Z

    if-eqz v1, :cond_5d

    const-wide v2, -0x1c359c7419217d40L

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

    :cond_5d
    throw v0
.end method

.method public j6(Lcom/aide/ui/views/editor/o;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x1fa8330e97b889fL
    .end annotation

    const-wide v0, 0x56d4793a7c22dd50L  # 1.923320033832908E110

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/D;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/D;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public j6(Lcom/aide/ui/views/editor/o;IIII)V
    .registers 16
    .annotation runtime Labcd/su;
        method = -0x3b9b266aad6959d5L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/D;->j6:Z

    if-eqz v0, :cond_22

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x1941c272dced4dc4L  # -8.223664054984763E186

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    iget-object v0, p0, Lcom/aide/ui/D;->FH:Lcom/aide/ui/AIDEEditor$a;

    iget-object v0, v0, Lcom/aide/ui/AIDEEditor$a;->vJ:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditText;->getScrollView()Lcom/aide/ui/views/CodeEditTextScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditTextScrollView;->Hw()V

    iget-object v0, p0, Lcom/aide/ui/D;->FH:Lcom/aide/ui/AIDEEditor$a;

    iget-object v0, v0, Lcom/aide/ui/AIDEEditor$a;->vJ:Lcom/aide/ui/AIDEEditor;

    invoke-static {v0}, Lcom/aide/ui/AIDEEditor;->v5(Lcom/aide/ui/AIDEEditor;)Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->I()V
    :try_end_38
    .catchall {:try_start_0 .. :try_end_38} :catchall_39

    return-void

    :catchall_39
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/D;->DW:Z

    if-eqz v1, :cond_5d

    const-wide v2, -0x1941c272dced4dc4L  # -8.223664054984763E186

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

    :cond_5d
    throw v0
.end method

.method public j6(Lcom/aide/ui/views/editor/o;III[C)V
    .registers 16
    .annotation runtime Labcd/su;
        method = 0x31b4762b9404d255L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/D;->j6:Z

    if-eqz v0, :cond_1e

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x4d12dd92b13dba80L  # -2.21318745918819E-63

    move-object v3, p0

    move-object v4, p1

    move-object v8, p5

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    iget-object v0, p0, Lcom/aide/ui/D;->FH:Lcom/aide/ui/AIDEEditor$a;

    iget-object v0, v0, Lcom/aide/ui/AIDEEditor$a;->vJ:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditText;->getScrollView()Lcom/aide/ui/views/CodeEditTextScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditTextScrollView;->Hw()V

    iget-object v0, p0, Lcom/aide/ui/D;->FH:Lcom/aide/ui/AIDEEditor$a;

    iget-object v0, v0, Lcom/aide/ui/AIDEEditor$a;->vJ:Lcom/aide/ui/AIDEEditor;

    invoke-static {v0}, Lcom/aide/ui/AIDEEditor;->v5(Lcom/aide/ui/AIDEEditor;)Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->I()V
    :try_end_34
    .catchall {:try_start_0 .. :try_end_34} :catchall_35

    return-void

    :catchall_35
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/D;->DW:Z

    if-eqz v1, :cond_55

    const-wide v2, -0x4d12dd92b13dba80L  # -2.21318745918819E-63

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

    :cond_55
    throw v0
.end method
