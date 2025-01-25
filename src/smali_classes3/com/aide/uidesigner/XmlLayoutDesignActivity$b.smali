.class Lcom/aide/uidesigner/XmlLayoutDesignActivity$b;
.super Landroid/widget/ArrayAdapter;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/uidesigner/XmlLayoutDesignActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/aide/uidesigner/XmlLayoutDesignActivity$a;",
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


# instance fields
.field final FH:Lcom/aide/uidesigner/XmlLayoutDesignActivity;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/uidesigner/XmlLayoutDesignActivity$b;

    const-wide v1, 0x1735b0d83d9444b8L  # 7.254348340218493E-197

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/uidesigner/XmlLayoutDesignActivity;Landroid/content/Context;Ljava/util/List;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x1016f107044afe14L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/aide/uidesigner/XmlLayoutDesignActivity$a;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/XmlLayoutDesignActivity$b;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, -0x6f4da677848890L

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    iput-object p1, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity$b;->FH:Lcom/aide/uidesigner/XmlLayoutDesignActivity;

    sget v0, Lcom/aide/ui/Oa;->designer_viewlist_entry:I

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V
    :try_end_17
    .catchall {:try_start_0 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/XmlLayoutDesignActivity$b;->DW:Z

    if-eqz v1, :cond_2a

    const-wide v2, -0x6f4da677848890L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2a
    throw v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/aide/uidesigner/XmlLayoutDesignActivity$b;->getView_SOURCE(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/s1243808733/aide/uidesign/TextTranslation;->translationDesignerViewlistEntryName(Landroid/view/View;)V

    return-object p1
.end method

.method public getView_SOURCE(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x18438c00271005bdL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/XmlLayoutDesignActivity$b;->j6:Z

    if-eqz v0, :cond_14

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x62f9226bd591cf8L

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

    sget v2, Lcom/aide/ui/Oa;->designer_viewlist_entry:I

    invoke-virtual {v1, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_27

    :cond_26
    move-object v1, p2

    :goto_27
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aide/uidesigner/XmlLayoutDesignActivity$a;

    sget v3, Lcom/aide/ui/Na;->designerViewlistentryViewLayout:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    sget v4, Lcom/aide/ui/Na;->designerViewlistentryFileLayout:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iget-object v5, v2, Lcom/aide/uidesigner/XmlLayoutDesignActivity$a;->v5:Lcom/aide/uidesigner/s;

    const/16 v6, 0x8

    if-eqz v5, :cond_93

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, v2, Lcom/aide/uidesigner/XmlLayoutDesignActivity$a;->v5:Lcom/aide/uidesigner/s;

    invoke-virtual {v4}, Lcom/aide/uidesigner/s;->getDepth()I

    move-result v4

    mul-int/lit8 v4, v4, 0x14

    add-int/lit8 v4, v4, 0x5

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    sget v0, Lcom/aide/ui/Na;->designerViewlistEntryName:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, v2, Lcom/aide/uidesigner/XmlLayoutDesignActivity$a;->v5:Lcom/aide/uidesigner/s;

    invoke-virtual {v3}, Lcom/aide/uidesigner/s;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/aide/ui/Na;->designerViewlistEntryImage:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v2, v2, Lcom/aide/uidesigner/XmlLayoutDesignActivity$a;->v5:Lcom/aide/uidesigner/s;

    invoke-virtual {v2}, Lcom/aide/uidesigner/s;->Zo()Z

    move-result v2

    if-eqz v2, :cond_8c

    sget v2, Lcom/aide/ui/R$drawable;->objects:I

    goto :goto_8e

    :cond_8c
    sget v2, Lcom/aide/ui/R$drawable;->box_blue:I

    :goto_8e
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_189

    :cond_93
    iget-object v5, v2, Lcom/aide/uidesigner/XmlLayoutDesignActivity$a;->FH:Ljava/io/File;

    if-eqz v5, :cond_128

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v4, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    sget v3, Lcom/aide/ui/Na;->designerViewlistentryFileRadioButton:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    invoke-virtual {v3, v0}, Landroid/widget/RadioButton;->setFocusable(Z)V

    invoke-virtual {v3, v0}, Landroid/widget/RadioButton;->setFocusableInTouchMode(Z)V

    iget-object v4, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity$b;->FH:Lcom/aide/uidesigner/XmlLayoutDesignActivity;

    invoke-static {v4}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->tp(Lcom/aide/uidesigner/XmlLayoutDesignActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Lcom/aide/uidesigner/XmlLayoutDesignActivity$a;->FH:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v4, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity$b;->FH:Lcom/aide/uidesigner/XmlLayoutDesignActivity;

    invoke-static {v4}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->Zo(Lcom/aide/uidesigner/XmlLayoutDesignActivity;)Z

    move-result v4

    if-eqz v4, :cond_cb

    const/4 v4, 0x0

    goto :goto_cd

    :cond_cb
    const/16 v4, 0x8

    :goto_cd
    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    sget v3, Lcom/aide/ui/Na;->designerViewlistentryFileName:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, v2, Lcom/aide/uidesigner/XmlLayoutDesignActivity$a;->FH:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity$b;->FH:Lcom/aide/uidesigner/XmlLayoutDesignActivity;

    invoke-static {v4}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->tp(Lcom/aide/uidesigner/XmlLayoutDesignActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Lcom/aide/uidesigner/XmlLayoutDesignActivity$a;->FH:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f9

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    :goto_f5
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_fc

    :cond_f9
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_f5

    :goto_fc
    sget v3, Lcom/aide/ui/Na;->designerViewlistFileImage:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget v4, Lcom/aide/ui/R$drawable;->file_type_xml:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    sget v3, Lcom/aide/ui/Na;->designerViewlistentryDelete:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/aide/uidesigner/XmlLayoutDesignActivity$b;->FH:Lcom/aide/uidesigner/XmlLayoutDesignActivity;

    invoke-static {v4}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->Zo(Lcom/aide/uidesigner/XmlLayoutDesignActivity;)Z

    move-result v4

    if-eqz v4, :cond_11a

    goto :goto_11c

    :cond_11a
    const/16 v0, 0x8

    :goto_11c
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v0, Lcom/aide/uidesigner/r;

    invoke-direct {v0, p0, v2}, Lcom/aide/uidesigner/r;-><init>(Lcom/aide/uidesigner/XmlLayoutDesignActivity$b;Lcom/aide/uidesigner/XmlLayoutDesignActivity$a;)V

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_189

    :cond_128
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x41200000  # 10.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v4, v0, v0, v0, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    sget v2, Lcom/aide/ui/Na;->designerViewlistentryFileRadioButton:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    invoke-virtual {v2, v0}, Landroid/widget/RadioButton;->setFocusable(Z)V

    invoke-virtual {v2, v0}, Landroid/widget/RadioButton;->setFocusableInTouchMode(Z)V

    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Landroid/widget/RadioButton;->setVisibility(I)V

    sget v0, Lcom/aide/ui/Na;->designerViewlistentryFileName:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0d0792

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget v0, Lcom/aide/ui/Na;->designerViewlistFileImage:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/aide/ui/Ma;->icon_add:I

    invoke-static {v2, v3}, Lcom/aide/common/g;->FH(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    sget v0, Lcom/aide/ui/Na;->designerViewlistentryDelete:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_189
    .catchall {:try_start_0 .. :try_end_189} :catchall_18a

    :goto_189
    return-object v1

    :catchall_18a
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/XmlLayoutDesignActivity$b;->DW:Z

    if-eqz v1, :cond_1a0

    const-wide v2, 0x62f9226bd591cf8L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1a0
    goto :goto_1a2

    :goto_1a1
    throw v0

    :goto_1a2
    goto :goto_1a1
.end method
