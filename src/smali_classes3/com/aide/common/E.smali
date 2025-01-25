.class Lcom/aide/common/E;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/common/H;->j6(Landroid/app/Activity;)Landroid/app/Dialog;
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
.field final FH:Lcom/aide/common/H;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x45bbebac5e17d6f9L  # 8.641006815532585E27

    const-wide v2, -0x51078c6a2027d4acL  # -2.0138485358643008E-82

    const-class v4, Lcom/aide/common/E;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/common/H;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/common/E;->FH:Lcom/aide/common/H;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x23c5df525f17f77L
    .end annotation

    const-wide v0, 0x1b9e7c3b8e5e0e60L

    :try_start_5
    sget-boolean v2, Lcom/aide/common/E;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/common/E;->FH:Lcom/aide/common/H;

    iget-object v2, v2, Lcom/aide/common/H;->J0:Ljava/lang/Runnable;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/aide/common/E;->FH:Lcom/aide/common/H;

    iget-object v2, v2, Lcom/aide/common/H;->J0:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    :cond_19
    return-void

    :catchall_1a
    move-exception v2

    sget-boolean v3, Lcom/aide/common/E;->DW:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v2
.end method
