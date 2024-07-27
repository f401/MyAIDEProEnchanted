.class Lcom/aide/ui/browsers/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/browsers/LogCatBrowser;->QX()V
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
.field final FH:Landroid/widget/ImageView;

.field final Hw:Lcom/aide/ui/browsers/LogCatBrowser;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/ui/browsers/m;

    const-wide v2, 0x67c62fd5ed9375c9L    # 7.908298614517782E191

    const-wide v4, -0x221cba87d9093d8L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/browsers/LogCatBrowser;Landroid/widget/ImageView;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/browsers/m;->Hw:Lcom/aide/ui/browsers/LogCatBrowser;

    iput-object p2, p0, Lcom/aide/ui/browsers/m;->FH:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x5b82033da2effa4L
    .end annotation

    const-wide v4, 0x2c02a91bba1f143dL    # 1.0920349127352875E-96

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/m;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2c02a91bba1f143dL    # 1.0920349127352875E-96

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/browsers/m;->Hw:Lcom/aide/ui/browsers/LogCatBrowser;

    invoke-static {v0}, Lcom/aide/ui/browsers/LogCatBrowser;->j6(Lcom/aide/ui/browsers/LogCatBrowser;)Lcom/aide/ui/LogCatConsole;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/ui/browsers/m;->FH:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aide/ui/LogCatConsole;->j6(Landroid/view/View;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/m;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method
