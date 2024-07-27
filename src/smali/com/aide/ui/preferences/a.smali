.class Lcom/aide/ui/preferences/a;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/preferences/AboutActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final FH:Lcom/aide/ui/preferences/AboutActivity;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/ui/preferences/a;

    const-wide v2, -0x3d7158e266f71c0L

    const-wide v4, -0xfc1559e7851f37fL    # -4.7608822256108226E232

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/preferences/AboutActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/preferences/a;->FH:Lcom/aide/ui/preferences/AboutActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x15dd97d976813a11L
    .end annotation

    const-wide v2, -0x16da605e8ab8a6cL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/preferences/a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x16da605e8ab8a6cL

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const-string v0, "about:fire-away"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_1
    new-instance v0, Lcom/aide/ui/preferences/AboutActivity$a;

    iget-object v1, p0, Lcom/aide/ui/preferences/a;->FH:Lcom/aide/ui/preferences/AboutActivity;

    const-string v4, "test"

    invoke-direct {v0, v1, v4}, Lcom/aide/ui/preferences/AboutActivity$a;-><init>(Lcom/aide/ui/preferences/AboutActivity;Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/preferences/a;->DW:Z

    if-eqz v0, :cond_2

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method
