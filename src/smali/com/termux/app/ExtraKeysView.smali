.class public final Lcom/termux/app/ExtraKeysView;
.super Landroid/widget/GridLayout;
.source "ExtraKeysView.java"


# static fields
.field private static final TEXT_COLOR:I = -0x1


# instance fields
.field private altButton:Landroid/widget/ToggleButton;

.field private controlButton:Landroid/widget/ToggleButton;

.field private fnButton:Landroid/widget/ToggleButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-virtual {p0}, Lcom/termux/app/ExtraKeysView;->reload()V

    return-void
.end method

.method static sendKey(Landroid/view/View;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 34
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    :goto_1
    move v0, v1

    .line 55
    :goto_2
    if-lez v0, :cond_2

    .line 61
    new-instance v2, Landroid/view/KeyEvent;

    invoke-direct {v2, v1, v0}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v2}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 62
    new-instance v1, Landroid/view/KeyEvent;

    invoke-direct {v1, v3, v0}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 66
    :cond_1
    :goto_3
    return-void

    .line 34
    :sswitch_0
    const-string v0, "TAB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_1
    const-string v0, "ESC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_2
    const-string v0, "\u25c0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_3
    const-string v0, "\u25bc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v0, "\u25b6"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_5
    const-string v0, "\u25b2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :sswitch_6
    const-string v0, "\u2015"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x3d

    move-object p1, v2

    goto :goto_2

    :pswitch_1
    const/16 v0, 0x6f

    move-object p1, v2

    goto :goto_2

    :pswitch_2
    const/16 v0, 0x15

    move-object p1, v2

    goto :goto_2

    :pswitch_3
    const/16 v0, 0x14

    move-object p1, v2

    goto :goto_2

    :pswitch_4
    const/16 v0, 0x16

    move-object p1, v2

    goto :goto_2

    :pswitch_5
    const/16 v0, 0x13

    move-object p1, v2

    goto :goto_2

    .line 55
    :pswitch_6
    const-string p1, "-"

    goto :goto_1

    .line 64
    :cond_2
    const-string v0, "terminal_view"

    invoke-static {v0}, Lcom/blankj/utilcode/util/ResourceUtils;->getIdByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/termux/view/TerminalView;

    .line 65
    invoke-virtual {v0}, Lcom/termux/view/TerminalView;->getCurrentSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 66
    invoke-virtual {v0, p1}, Lcom/termux/terminal/TerminalSession;->write(Ljava/lang/String;)V

    goto :goto_3

    .line 34
    :sswitch_data_0
    .sparse-switch
        0x2015 -> :sswitch_6
        0x25b2 -> :sswitch_5
        0x25b6 -> :sswitch_4
        0x25bc -> :sswitch_3
        0x25c0 -> :sswitch_2
        0x10d55 -> :sswitch_1
        0x14375 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public readAltButton()Z
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/termux/app/ExtraKeysView;->altButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 89
    :cond_0
    :goto_0
    return v0

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/termux/app/ExtraKeysView;->altButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v1, p0, Lcom/termux/app/ExtraKeysView;->altButton:Landroid/widget/ToggleButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 89
    iget-object v1, p0, Lcom/termux/app/ExtraKeysView;->altButton:Landroid/widget/ToggleButton;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setTextColor(I)V

    goto :goto_0
.end method

.method public readControlButton()Z
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/termux/app/ExtraKeysView;->controlButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 79
    :cond_0
    :goto_0
    return v0

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/termux/app/ExtraKeysView;->controlButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v1, p0, Lcom/termux/app/ExtraKeysView;->controlButton:Landroid/widget/ToggleButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 79
    iget-object v1, p0, Lcom/termux/app/ExtraKeysView;->controlButton:Landroid/widget/ToggleButton;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setTextColor(I)V

    goto :goto_0
.end method

.method public readFnButton()Z
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/termux/app/ExtraKeysView;->fnButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 99
    :cond_0
    :goto_0
    return v0

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/termux/app/ExtraKeysView;->fnButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v1, p0, Lcom/termux/app/ExtraKeysView;->fnButton:Landroid/widget/ToggleButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 99
    iget-object v1, p0, Lcom/termux/app/ExtraKeysView;->fnButton:Landroid/widget/ToggleButton;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setTextColor(I)V

    goto :goto_0
.end method

.method reload()V
    .locals 12

    const/high16 v2, 0x3f800000    # 1.0f

    const v11, 0x101032f

    const/4 v10, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 105
    iput-object v10, p0, Lcom/termux/app/ExtraKeysView;->controlButton:Landroid/widget/ToggleButton;

    iput-object v10, p0, Lcom/termux/app/ExtraKeysView;->altButton:Landroid/widget/ToggleButton;

    .line 106
    invoke-virtual {p0}, Lcom/termux/app/ExtraKeysView;->removeAllViews()V

    .line 108
    const/4 v0, 0x7

    new-array v6, v0, [Ljava/lang/String;

    const-string v0, "ESC"

    aput-object v0, v6, v4

    const-string v0, "CTRL"

    aput-object v0, v6, v3

    const/4 v0, 0x2

    const-string v1, "ALT"

    aput-object v1, v6, v0

    const/4 v0, 0x3

    const-string v1, "TAB"

    aput-object v1, v6, v0

    const/4 v0, 0x4

    const-string v1, "\u2015"

    aput-object v1, v6, v0

    const/4 v0, 0x5

    const-string v1, "/"

    aput-object v1, v6, v0

    const/4 v0, 0x6

    const-string v1, "|"

    aput-object v1, v6, v0

    .line 113
    array-length v7, v6

    .line 115
    invoke-virtual {p0, v3}, Lcom/termux/app/ExtraKeysView;->setRowCount(I)V

    .line 116
    invoke-virtual {p0, v7}, Lcom/termux/app/ExtraKeysView;->setColumnCount(I)V

    move v5, v4

    :goto_0
    if-ge v5, v7, :cond_2

    .line 120
    new-array v0, v3, [[Ljava/lang/String;

    aput-object v6, v0, v4

    aget-object v0, v0, v4

    aget-object v1, v0, v5

    .line 123
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 137
    new-instance v0, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/termux/app/ExtraKeysView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v0, v8, v10, v11}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 141
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 142
    const/4 v8, -0x1

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setTextColor(I)V

    .line 145
    new-instance v8, Lcom/termux/app/ExtraKeysView$1;

    invoke-direct {v8, p0, v0, v1}, Lcom/termux/app/ExtraKeysView$1;-><init>(Lcom/termux/app/ExtraKeysView;Landroid/widget/Button;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    new-instance v8, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v8}, Landroid/widget/GridLayout$LayoutParams;-><init>()V

    .line 166
    iput v4, v8, Landroid/widget/GridLayout$LayoutParams;->width:I

    iput v4, v8, Landroid/widget/GridLayout$LayoutParams;->height:I

    .line 167
    iput v4, v8, Landroid/widget/GridLayout$LayoutParams;->topMargin:I

    iput v4, v8, Landroid/widget/GridLayout$LayoutParams;->rightMargin:I

    .line 168
    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Landroid/widget/GridLayout$LayoutParams;->setGravity(I)V

    .line 169
    const-string v9, "\u25b2\u25bc\u25c0\u25b6"

    invoke-virtual {v9, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x3f333333    # 0.7f

    .line 170
    :goto_3
    sget-object v9, Landroid/widget/GridLayout;->FILL:Landroid/widget/GridLayout$Alignment;

    invoke-static {v5, v9, v1}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;F)Landroid/widget/GridLayout$Spec;

    move-result-object v1

    iput-object v1, v8, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    .line 171
    sget-object v1, Landroid/widget/GridLayout;->FILL:Landroid/widget/GridLayout$Alignment;

    invoke-static {v4, v1, v2}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;F)Landroid/widget/GridLayout$Spec;

    move-result-object v1

    iput-object v1, v8, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    .line 172
    invoke-virtual {v0, v8}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    invoke-virtual {p0, v0}, Lcom/termux/app/ExtraKeysView;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    .line 123
    :sswitch_0
    const-string v0, "CTRL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v0, "ALT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_2
    const-string v0, "FN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    .line 125
    :pswitch_0
    new-instance v0, Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/termux/app/ExtraKeysView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v0, v8, v10, v11}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/termux/app/ExtraKeysView;->controlButton:Landroid/widget/ToggleButton;

    .line 126
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setClickable(Z)V

    goto :goto_2

    .line 129
    :pswitch_1
    new-instance v0, Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/termux/app/ExtraKeysView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v0, v8, v10, v11}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/termux/app/ExtraKeysView;->altButton:Landroid/widget/ToggleButton;

    .line 130
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setClickable(Z)V

    goto :goto_2

    .line 133
    :pswitch_2
    new-instance v0, Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/termux/app/ExtraKeysView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v0, v8, v10, v11}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/termux/app/ExtraKeysView;->fnButton:Landroid/widget/ToggleButton;

    .line 134
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setClickable(Z)V

    goto/16 :goto_2

    :cond_1
    move v1, v2

    .line 169
    goto :goto_3

    .line 174
    :cond_2
    return-void

    .line 123
    :sswitch_data_0
    .sparse-switch
        0x8c8 -> :sswitch_2
        0xfd89 -> :sswitch_1
        0x1fba6b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
