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
    .registers 6

    const-class v0, Labcd/Ej;

    const-wide v2, 0x201ef30e74f91a7L

    const-wide v4, -0x1237fc255fa1dc44L    # -6.781884976163062E220

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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
    .registers 13
    .annotation runtime Labcd/su;
        method = -0x52cda53e1bee7a0L
    .end annotation

    const-wide v10, -0x7207743e72ac690L

    :try_start_0
    sget-boolean v0, Labcd/Ej;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x7207743e72ac690L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Ej;->VH:Labcd/Kj;

    invoke-static {v0}, Labcd/Kj;->DW(Labcd/Kj;)Labcd/Kj$d;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/Ej;->FH:Landroid/app/Activity;

    new-instance v1, Labcd/Ph;

    invoke-direct {v1}, Labcd/Ph;-><init>()V

    invoke-static {v0, v1}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Lcom/aide/common/ma;)V

    :goto_0
    return-void

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Labcd/Ej;->Hw:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Be$g;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ej;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v10, v11, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    :try_start_1
    iget-object v6, p0, Labcd/Ej;->VH:Labcd/Kj;

    new-instance v7, Labcd/Kj$d;

    iget-object v8, p0, Labcd/Ej;->VH:Labcd/Kj;

    iget-object v9, p0, Labcd/Ej;->FH:Landroid/app/Activity;

    new-instance v0, Labcd/Kj$b;

    iget-object v1, p0, Labcd/Ej;->VH:Labcd/Kj;

    iget-object v2, p0, Labcd/Ej;->FH:Landroid/app/Activity;

    iget-object v4, p0, Labcd/Ej;->v5:Ljava/util/List;

    iget-object v5, p0, Labcd/Ej;->Zo:Ljava/lang/Runnable;

    invoke-direct/range {v0 .. v5}, Labcd/Kj$b;-><init>(Labcd/Kj;Landroid/app/Activity;Ljava/util/List;Ljava/util/List;Ljava/lang/Runnable;)V

    invoke-direct {v7, v8, v9, v0}, Labcd/Kj$d;-><init>(Labcd/Kj;Landroid/app/Activity;Ljava/util/concurrent/Callable;)V

    invoke-static {v6, v7}, Labcd/Kj;->j6(Labcd/Kj;Labcd/Kj$d;)Labcd/Kj$d;

    iget-object v0, p0, Labcd/Ej;->VH:Labcd/Kj;

    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    const v2, 0x7f0d06ba

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Labcd/Kj;->DW(Labcd/Kj;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Labcd/Ej;->VH:Labcd/Kj;

    invoke-static {v0}, Labcd/Kj;->FH(Labcd/Kj;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iget-object v1, p0, Labcd/Ej;->VH:Labcd/Kj;

    invoke-static {v1}, Labcd/Kj;->DW(Labcd/Kj;)Labcd/Kj$d;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Labcd/Ej;->FH:Landroid/app/Activity;

    new-instance v1, Labcd/Ph;

    invoke-direct {v1}, Labcd/Ph;-><init>()V

    invoke-static {v0, v1}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Lcom/aide/common/ma;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
