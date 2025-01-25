.class Lcom/aide/ui/S;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/T;->run()V
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
.field final FH:Lcom/aide/ui/T;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x64a8a2bb6c073e5L

    const-wide v2, 0xcfc4c21f1f1fe4L

    const-class v4, Lcom/aide/ui/S;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/T;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/S;->FH:Lcom/aide/ui/T;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x180dcea2b5d5da0L
    .end annotation

    const-wide v0, -0x19873304e1536a4L  # -7.885648447525957E300

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/S;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/S;->FH:Lcom/aide/ui/T;

    iget-object v2, v2, Lcom/aide/ui/T;->Hw:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v2, p0, Lcom/aide/ui/S;->FH:Lcom/aide/ui/T;

    iget-object v2, v2, Lcom/aide/ui/T;->v5:Ljava/lang/Runnable;

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/aide/ui/S;->FH:Lcom/aide/ui/T;

    iget-object v2, v2, Lcom/aide/ui/T;->v5:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_21

    :cond_20
    return-void

    :catchall_21
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/S;->DW:Z

    if-eqz v3, :cond_29

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_29
    throw v2
.end method
