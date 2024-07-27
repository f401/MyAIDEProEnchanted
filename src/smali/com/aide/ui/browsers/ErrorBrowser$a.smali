.class Lcom/aide/ui/browsers/ErrorBrowser$a;
.super Lcom/aide/common/x;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/browsers/ErrorBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/aide/common/x",
        "<",
        "Lcom/aide/ui/browsers/ErrorBrowser$b;",
        ">;"
    }
.end annotation


# static fields
.field private static Hw:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static v5:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field


# instance fields
.field final Zo:Lcom/aide/ui/browsers/ErrorBrowser;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x29e759c146ae19acL    # -5.653335237910745E106

    const-class v0, Lcom/aide/ui/browsers/ErrorBrowser$a;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>(Lcom/aide/ui/browsers/ErrorBrowser;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x5d686b54a1b204d4L
    .end annotation

    const-wide v4, -0x10e97d8002448233L    # -1.3331153173989272E227

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/ErrorBrowser$a;->Hw:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x10e97d8002448233L    # -1.3331153173989272E227

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/ui/browsers/ErrorBrowser$a;->Zo:Lcom/aide/ui/browsers/ErrorBrowser;

    invoke-direct {p0}, Lcom/aide/common/x;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/ErrorBrowser$a;->v5:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method synthetic constructor <init>(Lcom/aide/ui/browsers/ErrorBrowser;Lcom/aide/ui/browsers/d;)V
    .registers 10

    const-wide v2, 0xe096f77f12360ebL    # 4.768178026398955E-241

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/ErrorBrowser$a;->Hw:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xe096f77f12360ebL    # 4.768178026398955E-241

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/aide/ui/browsers/ErrorBrowser$a;-><init>(Lcom/aide/ui/browsers/ErrorBrowser;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/browsers/ErrorBrowser$a;->v5:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x2ba5a8a23a6f7093L
    .end annotation

    const-wide v6, 0x27685f329f8ccf7L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/ErrorBrowser$a;->Hw:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x27685f329f8ccf7L

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/aide/ui/browsers/ErrorBrowser$a;->Zo:Lcom/aide/ui/browsers/ErrorBrowser;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a0019

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/aide/common/x;->j6(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/browsers/ErrorBrowser$b;

    iget-boolean v1, v0, Lcom/aide/ui/browsers/ErrorBrowser$b;->Hw:Z

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lcom/aide/ui/browsers/ErrorBrowser$b;->FH:Z

    if-eqz v1, :cond_3

    :cond_1
    const v1, 0x7f08009b

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f08009a

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f08009c

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-boolean v3, v0, Lcom/aide/ui/browsers/ErrorBrowser$b;->FH:Z

    if-eqz v3, :cond_5

    const v3, 0x7f070049

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    const v1, 0x7f08009d

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v0, v0, Lcom/aide/ui/browsers/ErrorBrowser$b;->v5:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-object v2

    :cond_2
    move-object v2, p2

    goto :goto_0

    :cond_3
    const v1, 0x7f08009b

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f08009a

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f08009e

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v3, 0x7f0700f5

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    const v1, 0x7f08009f

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v0, v0, Lcom/aide/ui/browsers/ErrorBrowser$b;->Zo:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/browsers/ErrorBrowser$a;->v5:Z

    if-eqz v0, :cond_4

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v6

    move-object v4, p0

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1

    :cond_5
    :try_start_1
    iget-object v3, v0, Lcom/aide/ui/browsers/ErrorBrowser$b;->v5:Ljava/lang/String;

    invoke-static {v3}, Lcom/aide/ui/ca;->j6(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
