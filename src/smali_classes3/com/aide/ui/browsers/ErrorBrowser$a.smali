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
        "Lcom/aide/common/x<",
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
    .registers 3

    const-class v0, Lcom/aide/ui/browsers/ErrorBrowser$a;

    const-wide v1, -0x29e759c146ae19acL  # -5.653335237910745E106

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>(Lcom/aide/ui/browsers/ErrorBrowser;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x5d686b54a1b204d4L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x10e97d8002448233L  # -1.3331153173989272E227

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/browsers/ErrorBrowser$a;->Hw:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iput-object p1, p0, Lcom/aide/ui/browsers/ErrorBrowser$a;->Zo:Lcom/aide/ui/browsers/ErrorBrowser;

    invoke-direct {p0}, Lcom/aide/common/x;-><init>()V
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/browsers/ErrorBrowser$a;->v5:Z

    if-eqz v4, :cond_1b

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v3
.end method

.method synthetic constructor <init>(Lcom/aide/ui/browsers/ErrorBrowser;Lcom/aide/ui/browsers/d;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/ErrorBrowser$a;->Hw:Z

    if-eqz v0, :cond_d

    const-wide v0, 0xe096f77f12360ebL  # 4.768178026398955E-241

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1}, Lcom/aide/ui/browsers/ErrorBrowser$a;-><init>(Lcom/aide/ui/browsers/ErrorBrowser;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/ErrorBrowser$a;->v5:Z

    if-eqz v1, :cond_22

    const-wide v2, 0xe096f77f12360ebL  # 4.768178026398955E-241

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x2ba5a8a23a6f7093L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/ErrorBrowser$a;->Hw:Z

    if-eqz v0, :cond_14

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x27685f329f8ccf7L

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    const/4 v0, 0x0

    if-nez p2, :cond_29

    iget-object v1, p0, Lcom/aide/ui/browsers/ErrorBrowser$a;->Zo:Lcom/aide/ui/browsers/ErrorBrowser;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0a0019

    invoke-virtual {v1, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_2a

    :cond_29
    move-object v1, p2

    :goto_2a
    invoke-virtual {p0, p1}, Lcom/aide/common/x;->j6(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aide/ui/browsers/ErrorBrowser$b;

    iget-boolean v3, v2, Lcom/aide/ui/browsers/ErrorBrowser$b;->Hw:Z

    const/16 v4, 0x8

    const v5, 0x7f08009a

    const v6, 0x7f08009b

    if-nez v3, :cond_6d

    iget-boolean v3, v2, Lcom/aide/ui/browsers/ErrorBrowser$b;->FH:Z

    if-eqz v3, :cond_41

    goto :goto_6d

    :cond_41
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f08009e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v3, 0x7f0700f5

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f08009f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, v2, Lcom/aide/ui/browsers/ErrorBrowser$b;->Zo:Ljava/lang/String;

    :goto_69
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a4

    :cond_6d
    :goto_6d
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f08009c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-boolean v3, v2, Lcom/aide/ui/browsers/ErrorBrowser$b;->FH:Z

    if-eqz v3, :cond_8f

    const v3, 0x7f070049

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_98

    :cond_8f
    iget-object v3, v2, Lcom/aide/ui/browsers/ErrorBrowser$b;->v5:Ljava/lang/String;

    invoke-static {v3}, Lcom/aide/ui/ca;->j6(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_98
    const v0, 0x7f08009d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, v2, Lcom/aide/ui/browsers/ErrorBrowser$b;->v5:Ljava/lang/String;
    :try_end_a3
    .catchall {:try_start_0 .. :try_end_a3} :catchall_a5

    goto :goto_69

    :goto_a4
    return-object v1

    :catchall_a5
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/ErrorBrowser$a;->v5:Z

    if-eqz v1, :cond_bb

    const-wide v2, 0x27685f329f8ccf7L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_bb
    goto :goto_bd

    :goto_bc
    throw v0

    :goto_bd
    goto :goto_bc
.end method
