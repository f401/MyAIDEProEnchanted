.class Lcom/aide/ui/htmluidesigner/i;
.super Lcom/s1243808733/widget/CustomWebView;


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

    const-wide v2, -0x33ff2f2eb4d35e40L  # -1.319422740940651E58

    const-class v4, Lcom/aide/ui/htmluidesigner/i;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/htmluidesigner/WebDesignActivity;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/htmluidesigner/i;->FH:Lcom/aide/ui/htmluidesigner/WebDesignActivity;

    invoke-direct {p0, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onScrollChanged(IIII)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x9204e6cf47d3e8cL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/htmluidesigner/i;->j6:Z

    if-eqz v0, :cond_21

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x39aa907a0f25c639L  # 6.548620946484493E-31

    move-object v3, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    if-nez p2, :cond_33

    if-lez p4, :cond_33

    iget-object v0, p0, Lcom/aide/ui/htmluidesigner/i;->FH:Lcom/aide/ui/htmluidesigner/WebDesignActivity;

    invoke-static {v0}, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->DW(Lcom/aide/ui/htmluidesigner/WebDesignActivity;)Lcom/aide/ui/Ga;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/aide/ui/Ga;->j6(Z)V

    goto :goto_3f

    :cond_33
    if-lez p2, :cond_3f

    iget-object v0, p0, Lcom/aide/ui/htmluidesigner/i;->FH:Lcom/aide/ui/htmluidesigner/WebDesignActivity;

    invoke-static {v0}, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->DW(Lcom/aide/ui/htmluidesigner/WebDesignActivity;)Lcom/aide/ui/Ga;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aide/ui/Ga;->j6(Z)V
    :try_end_3f
    .catchall {:try_start_0 .. :try_end_3f} :catchall_40

    :cond_3f
    :goto_3f
    return-void

    :catchall_40
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/htmluidesigner/i;->DW:Z

    if-eqz v1, :cond_63

    const-wide v2, 0x39aa907a0f25c639L  # 6.548620946484493E-31

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_63
    throw v0
.end method
