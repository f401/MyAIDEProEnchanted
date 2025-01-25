.class final Lcom/aide/ui/T;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/U;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
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
.field final FH:Ljava/lang/Runnable;

.field final Hw:Landroid/app/ProgressDialog;

.field final v5:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x64a8a2bb6c073e5L

    const-wide v2, 0x657d7effb5667a3L

    const-class v4, Lcom/aide/ui/T;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Runnable;Landroid/app/ProgressDialog;Ljava/lang/Runnable;)V
    .registers 4

    iput-object p1, p0, Lcom/aide/ui/T;->FH:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/aide/ui/T;->Hw:Landroid/app/ProgressDialog;

    iput-object p3, p0, Lcom/aide/ui/T;->v5:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x6f829ef3628f241L
    .end annotation

    const-wide v0, -0x19e3f21484437e3L  # -5.94466224847874E300

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/T;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_24

    :cond_c
    :try_start_c
    iget-object v2, p0, Lcom/aide/ui/T;->FH:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_1a

    :try_start_11
    new-instance v2, Lcom/aide/ui/S;

    invoke-direct {v2, p0}, Lcom/aide/ui/S;-><init>(Lcom/aide/ui/T;)V

    invoke-static {v2}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z

    return-void

    :catchall_1a
    move-exception v2

    new-instance v3, Lcom/aide/ui/S;

    invoke-direct {v3, p0}, Lcom/aide/ui/S;-><init>(Lcom/aide/ui/T;)V

    invoke-static {v3}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z

    throw v2
    :try_end_24
    .catchall {:try_start_11 .. :try_end_24} :catchall_24

    :catchall_24
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/T;->DW:Z

    if-eqz v3, :cond_2c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2c
    throw v2
.end method
