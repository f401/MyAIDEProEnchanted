.class Labcd/Ej;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Kj;->j6(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;Ljava/lang/Runnable;)V
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
.field final FH:Landroid/app/Activity;

.field final Hw:Ljava/util/List;

.field final VH:Labcd/Kj;
    .annotation runtime Labcd/vu;
    .end annotation
.end field

.field final Zo:Ljava/lang/Runnable;

.field final v5:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x201ef30e74f91a7L

    const-wide v2, -0x1237fc255fa1dc44L  # -6.781884976163062E220

    const-class v4, Labcd/Ej;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/Kj;Landroid/app/Activity;Ljava/util/List;Ljava/util/List;Ljava/lang/Runnable;)V
    .registers 6

    iput-object p1, p0, Labcd/Ej;->VH:Labcd/Kj;

    iput-object p2, p0, Labcd/Ej;->FH:Landroid/app/Activity;

    iput-object p3, p0, Labcd/Ej;->Hw:Ljava/util/List;

    iput-object p4, p0, Labcd/Ej;->v5:Ljava/util/List;

    iput-object p5, p0, Labcd/Ej;->Zo:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x52cda53e1bee7a0L
    .end annotation

    const-wide v0, -0x7207743e72ac690L

    :try_start_5
    sget-boolean v2, Labcd/Ej;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Ej;->VH:Labcd/Kj;

    invoke-static {v2}, Labcd/Kj;->DW(Labcd/Kj;)Labcd/Kj$d;

    move-result-object v2

    if-eqz v2, :cond_1f

    iget-object v2, p0, Labcd/Ej;->FH:Landroid/app/Activity;

    new-instance v3, Labcd/Ph;

    invoke-direct {v3}, Labcd/Ph;-><init>()V

    invoke-static {v2, v3}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Lcom/aide/common/ma;)V

    return-void

    :cond_1f
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, Labcd/Ej;->Hw:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/Be$g;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    :cond_3f
    iget-object v2, p0, Labcd/Ej;->VH:Labcd/Kj;

    new-instance v9, Labcd/Kj$d;

    iget-object v10, p0, Labcd/Ej;->VH:Labcd/Kj;

    iget-object v11, p0, Labcd/Ej;->FH:Landroid/app/Activity;

    new-instance v12, Labcd/Kj$b;

    iget-object v4, p0, Labcd/Ej;->VH:Labcd/Kj;

    iget-object v5, p0, Labcd/Ej;->FH:Landroid/app/Activity;

    iget-object v7, p0, Labcd/Ej;->v5:Ljava/util/List;

    iget-object v8, p0, Labcd/Ej;->Zo:Ljava/lang/Runnable;

    move-object v3, v12

    invoke-direct/range {v3 .. v8}, Labcd/Kj$b;-><init>(Labcd/Kj;Landroid/app/Activity;Ljava/util/List;Ljava/util/List;Ljava/lang/Runnable;)V

    invoke-direct {v9, v10, v11, v12}, Labcd/Kj$d;-><init>(Labcd/Kj;Landroid/app/Activity;Ljava/util/concurrent/Callable;)V

    invoke-static {v2, v9}, Labcd/Kj;->j6(Labcd/Kj;Labcd/Kj$d;)Labcd/Kj$d;

    iget-object v2, p0, Labcd/Ej;->VH:Labcd/Kj;

    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v3

    const v4, 0x7f0d06ba

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Labcd/Kj;->DW(Labcd/Kj;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p0, Labcd/Ej;->VH:Labcd/Kj;

    invoke-static {v2}, Labcd/Kj;->FH(Labcd/Kj;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iget-object v3, p0, Labcd/Ej;->VH:Labcd/Kj;

    invoke-static {v3}, Labcd/Kj;->DW(Labcd/Kj;)Labcd/Kj$d;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    iget-object v2, p0, Labcd/Ej;->FH:Landroid/app/Activity;

    new-instance v3, Labcd/Ph;

    invoke-direct {v3}, Labcd/Ph;-><init>()V

    invoke-static {v2, v3}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Lcom/aide/common/ma;)V
    :try_end_84
    .catchall {:try_start_5 .. :try_end_84} :catchall_85

    return-void

    :catchall_85
    move-exception v2

    sget-boolean v3, Labcd/Ej;->DW:Z

    if-eqz v3, :cond_8d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_8d
    goto :goto_8f

    :goto_8e
    throw v2

    :goto_8f
    goto :goto_8e
.end method
