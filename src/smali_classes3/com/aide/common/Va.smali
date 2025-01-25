.class final Lcom/aide/common/Va;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/common/Wa;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
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
.field final FH:Landroid/app/Activity;

.field final Hw:Ljava/lang/String;

.field final v5:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x1ba4715548387498L

    const-wide v2, -0x4baeda085f920247L  # -1.0927533410254364E-56

    const-class v4, Lcom/aide/common/Va;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/aide/common/Va;->FH:Landroid/app/Activity;

    iput-object p2, p0, Lcom/aide/common/Va;->Hw:Ljava/lang/String;

    iput-object p3, p0, Lcom/aide/common/Va;->v5:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x7d20912edbc6728L
    .end annotation

    const-wide v0, -0x2cafc73f8defa518L  # -2.11482617403422E93

    :try_start_5
    sget-boolean v2, Lcom/aide/common/Va;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/common/Va;->FH:Landroid/app/Activity;

    iget-object v3, p0, Lcom/aide/common/Va;->Hw:Ljava/lang/String;

    iget-object v4, p0, Lcom/aide/common/Va;->v5:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/aide/common/Ha;->j6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/common/Va;->DW:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v2
.end method
