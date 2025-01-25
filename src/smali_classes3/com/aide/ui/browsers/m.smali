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
    .registers 5

    const-wide v0, 0x67c62fd5ed9375c9L  # 7.908298614517782E191

    const-wide v2, -0x221cba87d9093d8L

    const-class v4, Lcom/aide/ui/browsers/m;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x5b82033da2effa4L
    .end annotation

    const-wide v0, 0x2c02a91bba1f143dL  # 1.0920349127352875E-96

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/browsers/m;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/browsers/m;->Hw:Lcom/aide/ui/browsers/LogCatBrowser;

    invoke-static {v2}, Lcom/aide/ui/browsers/LogCatBrowser;->j6(Lcom/aide/ui/browsers/LogCatBrowser;)Lcom/aide/ui/LogCatConsole;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/ui/browsers/m;->FH:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/aide/ui/LogCatConsole;->j6(Landroid/view/View;Z)V
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_19

    return-void

    :catchall_19
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/browsers/m;->DW:Z

    if-eqz v3, :cond_21

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    throw v2
.end method
