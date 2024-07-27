.class Labcd/Lh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Oh;->j6(Landroid/app/Activity;)Landroid/app/Dialog;
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
.field final FH:Labcd/Oh;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Labcd/Lh;

    const-wide v2, -0x23b40421389c322fL    # -4.0679517960582325E136

    const-wide v4, 0x1e7088a3c9475df9L    # 4.593816956389917E-162

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/Oh;)V
    .registers 2

    iput-object p1, p0, Labcd/Lh;->FH:Labcd/Oh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0xec80bd55166ee9L
    .end annotation

    const-wide v4, 0x3b91f70a8a555053L    # 9.51059423721306E-22

    :try_start_0
    sget-boolean v2, Labcd/Lh;->j6:Z

    if-eqz v2, :cond_0

    const-wide v2, 0x3b91f70a8a555053L    # 9.51059423721306E-22

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/app/AlertDialog;

    move-object v2, v0

    iget-object v3, p0, Labcd/Lh;->FH:Labcd/Oh;

    invoke-static {v3, v2}, Labcd/Oh;->j6(Labcd/Oh;Landroid/app/AlertDialog;)V

    iget-object v3, p0, Labcd/Lh;->FH:Labcd/Oh;

    invoke-static {v3, v2}, Labcd/Oh;->DW(Labcd/Oh;Landroid/app/AlertDialog;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    sget-boolean v3, Labcd/Lh;->DW:Z

    if-eqz v3, :cond_1

    invoke-static {v2, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v2
.end method
