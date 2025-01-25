.class Labcd/ti;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


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
.field final FH:Landroid/widget/EditText;

.field final Hw:Labcd/ui;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x3a3825ba9a29b7e1L  # -1.4764057552832041E28

    const-wide v2, 0x6be3ec53b34f61fcL

    const-class v4, Labcd/ti;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/ui;Landroid/widget/EditText;)V
    .registers 3

    iput-object p1, p0, Labcd/ti;->Hw:Labcd/ui;

    iput-object p2, p0, Labcd/ti;->FH:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x19445a5731ee510L
    .end annotation

    const-wide v0, -0x6d77e3cefcd3a560L

    :try_start_5
    sget-boolean v2, Labcd/ti;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/ti;->Hw:Labcd/ui;

    move-object v3, p1

    check-cast v3, Landroid/app/AlertDialog;

    invoke-virtual {v2, v3}, Labcd/ui;->DW(Landroid/app/AlertDialog;)V

    iget-object v2, p0, Labcd/ti;->FH:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->selectAll()V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v2

    sget-boolean v3, Labcd/ti;->DW:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v2
.end method
