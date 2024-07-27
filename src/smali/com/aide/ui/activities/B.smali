.class Lcom/aide/ui/activities/B;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/ActionBar$OnNavigationListener;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/activities/HelpViewActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final FH:Lcom/aide/ui/activities/HelpViewActivity;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/ui/activities/B;

    const-wide v2, 0x17e306c18b182e20L

    const-wide v4, 0x248c10fe8494c175L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/activities/HelpViewActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/activities/B;->FH:Lcom/aide/ui/activities/HelpViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(IJ)Z
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x4caa8e8506d2396fL
    .end annotation

    const-wide v2, -0x75036ff995b07e8L    # -2.14936671364067E273

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/B;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p2, p3}, Ljava/lang/Long;-><init>(J)V

    const-wide v4, -0x75036ff995b07e8L    # -2.14936671364067E273

    invoke-static {v4, v5, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/activities/B;->FH:Lcom/aide/ui/activities/HelpViewActivity;

    invoke-static {v0}, Lcom/aide/ui/activities/HelpViewActivity;->j6(Lcom/aide/ui/activities/HelpViewActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/activities/B;->FH:Lcom/aide/ui/activities/HelpViewActivity;

    invoke-static {v0, p1}, Lcom/aide/ui/activities/HelpViewActivity;->j6(Lcom/aide/ui/activities/HelpViewActivity;I)I

    invoke-static {}, Lcom/aide/ui/activities/o;->Mr()[Lcom/aide/ui/activities/o;

    move-result-object v0

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/aide/ui/activities/B;->FH:Lcom/aide/ui/activities/HelpViewActivity;

    invoke-static {v1}, Lcom/aide/ui/activities/HelpViewActivity;->DW(Lcom/aide/ui/activities/HelpViewActivity;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v0}, Lcom/aide/ui/activities/o;->a8()Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v1, p0, Lcom/aide/ui/activities/B;->FH:Lcom/aide/ui/activities/HelpViewActivity;

    invoke-static {v1}, Lcom/aide/ui/activities/HelpViewActivity;->DW(Lcom/aide/ui/activities/HelpViewActivity;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/aide/ui/activities/o;->j3()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aide/ui/activities/B;->FH:Lcom/aide/ui/activities/HelpViewActivity;

    invoke-static {v0}, Lcom/aide/ui/activities/HelpViewActivity;->DW(Lcom/aide/ui/activities/HelpViewActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/activities/B;->DW:Z

    if-eqz v0, :cond_2

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, p2, p3}, Ljava/lang/Long;-><init>(J)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method
