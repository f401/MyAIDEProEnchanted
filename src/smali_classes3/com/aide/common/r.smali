.class Lcom/aide/common/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/common/t;->j6(Landroid/app/Activity;)Landroid/app/Dialog;
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
.field final FH:Lcom/aide/common/t;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x24c54939ab6ff2a4L

    const-wide v2, 0x35f4c926901d16d4L  # 8.888864773950263E-49

    const-class v4, Lcom/aide/common/r;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/common/t;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/common/r;->FH:Lcom/aide/common/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0xc8fa25e5a32fb39L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/common/r;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x21ad6d1afe054210L

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/aide/common/r;->FH:Lcom/aide/common/t;

    invoke-static {v0}, Lcom/aide/common/t;->v5(Lcom/aide/common/t;)Lcom/aide/common/t$a;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/common/r;->FH:Lcom/aide/common/t;

    invoke-static {v1}, Lcom/aide/common/t;->Hw(Lcom/aide/common/t;)I

    move-result v1

    iget-object v2, p0, Lcom/aide/common/r;->FH:Lcom/aide/common/t;

    invoke-static {v2}, Lcom/aide/common/t;->FH(Lcom/aide/common/t;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/aide/common/t$a;->j6(ILjava/lang/String;)V
    :try_end_29
    .catchall {:try_start_0 .. :try_end_29} :catchall_2a

    return-void

    :catchall_2a
    move-exception v0

    sget-boolean v1, Lcom/aide/common/r;->DW:Z

    if-eqz v1, :cond_3f

    const-wide v2, 0x21ad6d1afe054210L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3f
    throw v0
.end method
