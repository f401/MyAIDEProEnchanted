.class Lcom/aide/ui/htmluidesigner/j;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/htmluidesigner/WebDesignActivity;->Hw()Landroid/webkit/WebView;
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
.field final FH:Lcom/aide/ui/htmluidesigner/WebDesignActivity;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x308f47b38f2dc5f5L  # -4.726645632267079E74

    const-wide v2, -0x33ff7c11bc8fe225L  # -1.295856994031836E58

    const-class v4, Lcom/aide/ui/htmluidesigner/j;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/htmluidesigner/WebDesignActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/htmluidesigner/j;->FH:Lcom/aide/ui/htmluidesigner/WebDesignActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x4bece6c7e3ff6454L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/htmluidesigner/j;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x3a0fdde1da838508L  # 5.0276831007276143E-29

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aide/ui/htmluidesigner/j;->FH:Lcom/aide/ui/htmluidesigner/WebDesignActivity;

    invoke-static {v0}, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->FH(Lcom/aide/ui/htmluidesigner/WebDesignActivity;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/aide/ui/htmluidesigner/j;->FH:Lcom/aide/ui/htmluidesigner/WebDesignActivity;

    invoke-virtual {v0}, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->DW()V
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_1d

    :cond_1c
    return-void

    :catchall_1d
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/htmluidesigner/j;->DW:Z

    if-eqz v1, :cond_2e

    const-wide v2, 0x3a0fdde1da838508L  # 5.0276831007276143E-29

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2e
    throw v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x44390b86f6eb488cL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/htmluidesigner/j;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x350c613fa73cd3d0L  # 3.703746831891456E-53

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->j6()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 p1, 0x0

    return p1

    :cond_18
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/aide/ui/htmluidesigner/j;->FH:Lcom/aide/ui/htmluidesigner/WebDesignActivity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_28
    .catchall {:try_start_0 .. :try_end_28} :catchall_2a

    const/4 p1, 0x1

    return p1

    :catchall_2a
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/htmluidesigner/j;->DW:Z

    if-eqz v1, :cond_3b

    const-wide v2, 0x350c613fa73cd3d0L  # 3.703746831891456E-53

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3b
    throw v0
.end method
