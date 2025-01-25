.class Lcom/aide/common/ua$b;
.super Landroid/widget/ArrayAdapter;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/common/ua;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/aide/common/ua$a;",
        ">;"
    }
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


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/common/ua$b;

    const-wide v1, -0x1c788be23de550b7L  # -2.832413636939352E171

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x754ba96ad93d0710L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/aide/common/ua$a;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/common/ua$b;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x7aa5d9587001620L  # -4.571741930903443E271

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    sget v0, Lcom/aide/ui/Oa;->propertydialog_entry:I

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v0

    sget-boolean v1, Lcom/aide/common/ua$b;->DW:Z

    if-eqz v1, :cond_24

    const-wide v2, -0x7aa5d9587001620L  # -4.571741930903443E271

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_24
    throw v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/aide/common/ua$b;->getView_SOURCE(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/s1243808733/aide/uidesign/TextTranslation;->translationWidgetmenuEntryName(Landroid/view/View;)V

    return-object p1
.end method

.method public getView_SOURCE(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x11c94dd03c496f3fL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/common/ua$b;->j6:Z

    if-eqz v0, :cond_14

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0xc84dc136d06bf08L

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    const/4 v0, 0x0

    if-nez p2, :cond_26

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/aide/ui/Oa;->propertydialog_entry:I

    invoke-virtual {v1, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_27

    :cond_26
    move-object v1, p2

    :goto_27
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aide/common/ua$a;

    sget v3, Lcom/aide/ui/Na;->widgetmenuEntryName:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-interface {v2}, Lcom/aide/common/ua$a;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v3, Lcom/aide/ui/Na;->widgetmenuEntryImage:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v2}, Lcom/aide/common/ua$a;->j6()I

    move-result v5

    invoke-static {v4, v5}, Lcom/aide/common/g;->FH(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-interface {v2}, Lcom/aide/common/ua$a;->FH()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/aide/ui/Na;->widgetmenuHelpButton:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-nez v2, :cond_65

    const/16 v0, 0x8

    :cond_65
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    if-eqz v2, :cond_72

    new-instance v0, Lcom/aide/common/va;

    invoke-direct {v0, p0, v2}, Lcom/aide/common/va;-><init>(Lcom/aide/common/ua$b;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_72
    .catchall {:try_start_0 .. :try_end_72} :catchall_73

    :cond_72
    return-object v1

    :catchall_73
    move-exception v0

    sget-boolean v1, Lcom/aide/common/ua$b;->DW:Z

    if-eqz v1, :cond_89

    const-wide v2, 0xc84dc136d06bf08L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_89
    throw v0
.end method
