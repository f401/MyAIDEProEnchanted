.class abstract Lcom/aide/ui/views/editor/va$i;
.super Lcom/aide/ui/views/editor/va$b;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/views/editor/va;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "i"
.end annotation


# static fields
.field private static Zo:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static v5:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field protected VH:Labcd/hm;
    .annotation runtime Labcd/ru;
        field = 0x240e9ef66a8e8517L
    .end annotation
.end field

.field protected gn:Ljava/lang/StringBuffer;
    .annotation runtime Labcd/ru;
        field = 0x17e1db60c940fe8bL
    .end annotation
.end field

.field final u7:Lcom/aide/ui/views/editor/va;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/views/editor/va$i;

    const-wide v1, 0x3d527ae690e86e5dL  # 2.626177413655783E-13

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method protected constructor <init>(Lcom/aide/ui/views/editor/va;Labcd/fm;Labcd/hm;C)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x2ef352f216ed1500L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/va$i;->v5:Z

    if-eqz v0, :cond_15

    new-instance v7, Ljava/lang/Character;

    invoke-direct {v7, p4}, Ljava/lang/Character;-><init>(C)V

    const-wide v1, 0x326e762cec465d1L

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    iput-object p1, p0, Lcom/aide/ui/views/editor/va$i;->u7:Lcom/aide/ui/views/editor/va;

    invoke-direct {p0, p1, p2}, Lcom/aide/ui/views/editor/va$b;-><init>(Lcom/aide/ui/views/editor/va;Labcd/fm;)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iput-object v0, p0, Lcom/aide/ui/views/editor/va$i;->gn:Ljava/lang/StringBuffer;

    iput-object p3, p0, Lcom/aide/ui/views/editor/va$i;->VH:Labcd/hm;
    :try_end_26
    .catchall {:try_start_0 .. :try_end_26} :catchall_27

    return-void

    :catchall_27
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/va$i;->Zo:Z

    if-eqz v1, :cond_3e

    const-wide v2, 0x326e762cec465d1L

    const/4 v4, 0x0

    new-instance v8, Ljava/lang/Character;

    invoke-direct {v8, p4}, Ljava/lang/Character;-><init>(C)V

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3e
    throw v0
.end method

.method protected constructor <init>(Lcom/aide/ui/views/editor/va;Labcd/fm;Labcd/hm;Ljava/lang/String;)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x16503da6ecb8287L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/va$i;->v5:Z

    if-eqz v0, :cond_11

    const-wide v1, 0x3121a6da83c6210L

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iput-object p1, p0, Lcom/aide/ui/views/editor/va$i;->u7:Lcom/aide/ui/views/editor/va;

    invoke-direct {p0, p1, p2}, Lcom/aide/ui/views/editor/va$b;-><init>(Lcom/aide/ui/views/editor/va;Labcd/fm;)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/aide/ui/views/editor/va$i;->gn:Ljava/lang/StringBuffer;

    iput-object p3, p0, Lcom/aide/ui/views/editor/va$i;->VH:Labcd/hm;
    :try_end_1f
    .catchall {:try_start_0 .. :try_end_1f} :catchall_20

    return-void

    :catchall_20
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/va$i;->Zo:Z

    if-eqz v1, :cond_33

    const-wide v2, 0x3121a6da83c6210L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_33
    throw v0
.end method

.method protected constructor <init>(Lcom/aide/ui/views/editor/va;Lcom/aide/ui/views/editor/va$i;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x33c2450d227da644L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/va$i;->v5:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    const-wide v2, -0xdfb2d7d9b265dfL

    invoke-static {v2, v3, v1, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iput-object p1, p0, Lcom/aide/ui/views/editor/va$i;->u7:Lcom/aide/ui/views/editor/va;

    invoke-direct {p0, p1, v1}, Lcom/aide/ui/views/editor/va$b;-><init>(Lcom/aide/ui/views/editor/va;Labcd/fm;)V

    iget-object v0, p2, Lcom/aide/ui/views/editor/va$i;->VH:Labcd/hm;

    iput-object v0, p0, Lcom/aide/ui/views/editor/va$i;->VH:Labcd/hm;

    iget-object v0, p2, Lcom/aide/ui/views/editor/va$i;->gn:Ljava/lang/StringBuffer;

    iput-object v0, p0, Lcom/aide/ui/views/editor/va$i;->gn:Ljava/lang/StringBuffer;
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/va$i;->Zo:Z

    if-eqz v1, :cond_2c

    const-wide v2, -0xdfb2d7d9b265dfL

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2c
    throw v0
.end method
