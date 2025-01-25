.class Lcom/aide/common/La;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/common/Wa;->j6(Landroid/app/Activity;)Landroid/app/Dialog;
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
.field final FH:Lcom/aide/common/Wa;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x1ba4715548387498L

    const-wide v2, 0x3b9dcc64a3f43c08L

    const-class v4, Lcom/aide/common/La;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/common/Wa;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/common/La;->FH:Lcom/aide/common/Wa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x12a992d08b89cbafL
    .end annotation

    const-wide v0, -0x4d197576546082a3L  # -1.7123291366270754E-63

    :try_start_5
    sget-boolean v2, Lcom/aide/common/La;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/common/La;->FH:Lcom/aide/common/Wa;

    invoke-static {v2}, Lcom/aide/common/Wa;->j6(Lcom/aide/common/Wa;)Ljava/lang/Runnable;

    move-result-object v2

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/aide/common/La;->FH:Lcom/aide/common/Wa;

    invoke-static {v2}, Lcom/aide/common/Wa;->j6(Lcom/aide/common/Wa;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1e

    :cond_1d
    return-void

    :catchall_1e
    move-exception v2

    sget-boolean v3, Lcom/aide/common/La;->DW:Z

    if-eqz v3, :cond_26

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    throw v2
.end method
