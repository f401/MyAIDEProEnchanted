.class Lcom/aide/ui/scm/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/ui/views/editor/ra$a;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/scm/DiffView;->j6(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/util/List;
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
.field final FH:Ljava/util/ArrayList;

.field final Hw:Ljava/lang/StringBuilder;

.field final v5:Lcom/aide/ui/scm/DiffView;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x1ea4e2f5222e00bdL  # -9.529770390093773E160

    const-wide v2, 0x2986738aa1f8a60L

    const-class v4, Lcom/aide/ui/scm/c;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/scm/DiffView;Ljava/util/ArrayList;Ljava/lang/StringBuilder;)V
    .registers 4

    iput-object p1, p0, Lcom/aide/ui/scm/c;->v5:Lcom/aide/ui/scm/DiffView;

    iput-object p2, p0, Lcom/aide/ui/scm/c;->FH:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/aide/ui/scm/c;->Hw:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DW(I[CII)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x2f9996aaa8c2f15L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/c;->j6:Z

    if-eqz v0, :cond_1d

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x460b54591f3b5c00L  # 2.70658108824553E29

    move-object v3, p0

    move-object v5, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    iget-object v0, p0, Lcom/aide/ui/scm/c;->FH:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2, p3, p4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_27
    .catchall {:try_start_0 .. :try_end_27} :catchall_28

    return-void

    :catchall_28
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/c;->DW:Z

    if-eqz v1, :cond_47

    const-wide v2, 0x460b54591f3b5c00L  # 2.70658108824553E29

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_47
    throw v0
.end method

.method public j6(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x3e6b896840ec4fcfL
    .end annotation

    const-wide v0, -0x6ab352bdec46f048L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/c;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/scm/c;->Hw:Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/c;->DW:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public j6(I[CII)Z
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x4677ea0c59ecc0bbL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/c;->j6:Z

    if-eqz v0, :cond_1d

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x50cedb561397a660L  # 1.8293612928145644E81

    move-object v3, p0

    move-object v5, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    iget-object v0, p0, Lcom/aide/ui/scm/c;->FH:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2, p3, p4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_27
    .catchall {:try_start_0 .. :try_end_27} :catchall_29

    const/4 p1, 0x1

    return p1

    :catchall_29
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/c;->DW:Z

    if-eqz v1, :cond_48

    const-wide v2, 0x50cedb561397a660L  # 1.8293612928145644E81

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_48
    throw v0
.end method
