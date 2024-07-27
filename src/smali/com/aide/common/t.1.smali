.class public Lcom/aide/common/t;
.super Lcom/aide/common/ma;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aide/common/t$a;
    }
.end annotation


# static fields
.field private static VH:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static Zo:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field private EQ:Lcom/aide/common/t$a;
    .annotation runtime Labcd/ru;
        field = -0x40d892e72596ddcL
    .end annotation
.end field

.field private J0:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x18f89b297e0646d0L
    .end annotation
.end field

.field private J8:Z
    .annotation runtime Labcd/ru;
        field = 0x3a1898f883225689L
    .end annotation
.end field

.field private Ws:Z
    .annotation runtime Labcd/ru;
        field = 0x39af0ca435e6e85fL
    .end annotation
.end field

.field private gn:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x303aa92dccf5b9bfL
    .end annotation
.end field

.field private tp:I
    .annotation runtime Labcd/ru;
        field = 0x106608b3c781e34bL
    .end annotation
.end field

.field private u7:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x343728e95c355f10L
    .end annotation
.end field

.field private we:Z
    .annotation runtime Labcd/ru;
        field = -0x11e06fc250fb8420L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, 0x24c54939ab6ff2a4L

    const-class v0, Lcom/aide/common/t;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/aide/common/t$a;)V
    .registers 14

    const-wide v8, 0x10f6bb6a149614c9L    # 5.997394200280043E-227

    const/4 v7, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/common/t;->Zo:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x10f6bb6a149614c9L    # 5.997394200280043E-227

    const/4 v2, 0x0

    move-object v3, p1

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/common/ma;-><init>()V

    invoke-static {p2}, Lcom/aide/common/ColorPickerView;->j6(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/common/t;->gn:Ljava/lang/String;

    iget-object v0, p0, Lcom/aide/common/t;->gn:Ljava/lang/String;

    iput-object v0, p0, Lcom/aide/common/t;->u7:Ljava/lang/String;

    iput p2, p0, Lcom/aide/common/t;->tp:I

    iput-object p3, p0, Lcom/aide/common/t;->EQ:Lcom/aide/common/t$a;

    iput-object p1, p0, Lcom/aide/common/t;->J0:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/common/t;->VH:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, v7

    move-object v5, p1

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/aide/common/t$a;)V
    .registers 14

    const-wide v8, 0x17b7a37dab17d8f0L

    const/4 v6, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/common/t;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x17b7a37dab17d8f0L

    const/4 v2, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/common/ma;-><init>()V

    if-nez p2, :cond_1

    const-string v0, "#000000"

    iput-object v0, p0, Lcom/aide/common/t;->gn:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/aide/common/t;->gn:Ljava/lang/String;

    iput-object v0, p0, Lcom/aide/common/t;->u7:Ljava/lang/String;

    iget-object v0, p0, Lcom/aide/common/t;->u7:Ljava/lang/String;

    invoke-static {v0}, Lcom/aide/common/ColorPickerView;->j6(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/aide/common/t;->tp:I

    iput-object p3, p0, Lcom/aide/common/t;->EQ:Lcom/aide/common/t$a;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aide/common/t;->we:Z

    iput-object p1, p0, Lcom/aide/common/t;->J0:Ljava/lang/String;

    return-void

    :cond_1
    iput-object p2, p0, Lcom/aide/common/t;->gn:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/common/t;->VH:Z

    if-eqz v0, :cond_2

    move-wide v2, v8

    move-object v4, v6

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method static synthetic DW(Lcom/aide/common/t;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/aide/common/t;->J8:Z

    return v0
.end method

.method static synthetic DW(Lcom/aide/common/t;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/aide/common/t;->J8:Z

    return p1
.end method

.method static synthetic FH(Lcom/aide/common/t;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/aide/common/t;->u7:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic Hw(Lcom/aide/common/t;)I
    .registers 2

    iget v0, p0, Lcom/aide/common/t;->tp:I

    return v0
.end method

.method static synthetic j6(Lcom/aide/common/t;I)I
    .registers 2

    iput p1, p0, Lcom/aide/common/t;->tp:I

    return p1
.end method

.method static synthetic j6(Lcom/aide/common/t;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/aide/common/t;->u7:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic j6(Lcom/aide/common/t;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/aide/common/t;->Ws:Z

    return v0
.end method

.method static synthetic j6(Lcom/aide/common/t;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/aide/common/t;->Ws:Z

    return p1
.end method

.method static synthetic v5(Lcom/aide/common/t;)Lcom/aide/common/t$a;
    .registers 2

    iget-object v0, p0, Lcom/aide/common/t;->EQ:Lcom/aide/common/t$a;

    return-object v0
.end method


# virtual methods
.method protected j6(Landroid/app/Activity;)Landroid/app/Dialog;
    .registers 8
    .annotation runtime Labcd/su;
        method = -0xdaaefe0431446cL
    .end annotation

    const-wide v4, 0x4818173b108f785L

    :try_start_0
    sget-boolean v0, Lcom/aide/common/t;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x4818173b108f785L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/aide/ui/Oa;->colorpicker:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    sget v0, Lcom/aide/ui/Na;->colorpickerColorPickerView:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/aide/common/ColorPickerView;

    sget v1, Lcom/aide/ui/Na;->colorpickerEditText:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    new-instance v3, Lcom/aide/common/o;

    invoke-direct {v3, p0, v1}, Lcom/aide/common/o;-><init>(Lcom/aide/common/t;Landroid/widget/EditText;)V

    invoke-virtual {v0, v3}, Lcom/aide/common/ColorPickerView;->setOnColorChangedListener(Lcom/aide/common/ColorPickerView$a;)V

    iget-object v3, p0, Lcom/aide/common/t;->gn:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/aide/common/ColorPickerView;->setInitialColor(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/aide/common/t;->gn:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/aide/common/ColorPickerView;->setCurrentColor(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/aide/common/t;->gn:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Lcom/aide/common/p;

    invoke-direct {v3, p0, v0}, Lcom/aide/common/p;-><init>(Lcom/aide/common/t;Lcom/aide/common/ColorPickerView;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/aide/common/r;

    invoke-direct {v2, p0}, Lcom/aide/common/r;-><init>(Lcom/aide/common/t;)V

    const v3, 0x102039d

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/aide/common/q;

    invoke-direct {v2, p0}, Lcom/aide/common/q;-><init>(Lcom/aide/common/t;)V

    const/high16 v3, 0x1040000

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-boolean v1, p0, Lcom/aide/common/t;->we:Z

    if-eqz v1, :cond_1

    new-instance v1, Lcom/aide/common/s;

    invoke-direct {v1, p0}, Lcom/aide/common/s;-><init>(Lcom/aide/common/t;)V

    const v2, 0x7f0d06a4

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_1
    iget-object v1, p0, Lcom/aide/common/t;->J0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/common/t;->VH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method
