.class Labcd/ri;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/ui;->j6(Landroid/app/Activity;)Landroid/app/Dialog;
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
.field final FH:Landroid/app/AlertDialog;

.field final Hw:Labcd/ui;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Labcd/ri;

    const-wide v2, -0x3a3825ba9a29b7e1L    # -1.4764057552832041E28

    const-wide v4, 0x6be30b4dad8695b0L    # 5.008741913681197E211

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/ui;Landroid/app/AlertDialog;)V
    .registers 3

    iput-object p1, p0, Labcd/ri;->Hw:Labcd/ui;

    iput-object p2, p0, Labcd/ri;->FH:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x1606928b3d67729L
    .end annotation

    const-wide v8, -0xccafd8b1c08d43fL    # -9.181088322203377E246

    const/4 v6, 0x1

    :try_start_0
    sget-boolean v0, Labcd/ri;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0xccafd8b1c08d43fL    # -9.181088322203377E246

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v6, :cond_2

    const/16 v0, 0x42

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Labcd/ri;->Hw:Labcd/ui;

    iget-object v1, p0, Labcd/ri;->FH:Landroid/app/AlertDialog;

    invoke-static {v0, v1}, Labcd/ui;->DW(Labcd/ui;Landroid/app/AlertDialog;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/ri;->Hw:Labcd/ui;

    iget-object v1, p0, Labcd/ri;->FH:Landroid/app/AlertDialog;

    invoke-static {v0, v1}, Labcd/ui;->j6(Labcd/ui;Landroid/app/AlertDialog;)V

    iget-object v0, p0, Labcd/ri;->FH:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Labcd/ri;->Hw:Labcd/ui;

    iget-object v1, p0, Labcd/ri;->FH:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Labcd/ui;->j6(Landroid/app/AlertDialog;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move v0, v6

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/ri;->DW:Z

    if-eqz v0, :cond_3

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1
.end method
