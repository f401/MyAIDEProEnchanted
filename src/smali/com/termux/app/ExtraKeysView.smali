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
    .registers 3

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-virtual {p0}, Lcom/termux/app/ExtraKeysView;->reload()V

    return-void
.end method

.method static sendKey(Landroid/view/View;Ljava/lang/String;)V
    .registers 6

    .line 34
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_a0

    :goto_c
    goto :goto_5a

    :sswitch_d
    const-string v0, "TAB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_c

    :cond_16
    const/4 v0, 0x6

    goto :goto_5b

    :sswitch_18
    const-string v0, "ESC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto :goto_c

    :cond_21
    const/4 v0, 0x5

    goto :goto_5b

    :sswitch_23
    const-string v0, "◀"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    goto :goto_c

    :cond_2c
    const/4 v0, 0x4

    goto :goto_5b

    :sswitch_2e
    const-string v0, "▼"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    goto :goto_c

    :cond_37
    const/4 v0, 0x3

    goto :goto_5b

    :sswitch_39
    const-string v0, "▶"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    goto :goto_c

    :cond_42
    const/4 v0, 0x2

    goto :goto_5b

    :sswitch_44
    const-string v0, "▲"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    goto :goto_c

    :cond_4d
    const/4 v0, 0x1

    goto :goto_5b

    :sswitch_4f
    const-string v0, "―"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    goto :goto_c

    :cond_58
    const/4 v0, 0x0

    goto :goto_5b

    :goto_5a
    const/4 v0, -0x1

    :goto_5b
    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_be

    goto :goto_74

    :pswitch_60  #0x6
    const/16 p1, 0x3d

    goto :goto_76

    :pswitch_63  #0x5
    const/16 p1, 0x6f

    goto :goto_76

    :pswitch_66  #0x4
    const/16 p1, 0x15

    goto :goto_76

    :pswitch_69  #0x3
    const/16 p1, 0x14

    goto :goto_76

    :pswitch_6c  #0x2
    const/16 p1, 0x16

    goto :goto_76

    :pswitch_6f  #0x1
    const/16 p1, 0x13

    goto :goto_76

    .line 55
    :pswitch_72  #0x0
    const-string p1, "-"

    :goto_74
    move-object v3, p1

    const/4 p1, 0x0

    :goto_76
    if-lez p1, :cond_89

    .line 61
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 62
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_9e

    .line 64
    :cond_89
    const-string p1, "terminal_view"

    invoke-static {p1}, Lcom/blankj/utilcode/util/ResourceUtils;->getIdByName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/termux/view/TerminalView;

    .line 65
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->getCurrentSession()Lcom/termux/terminal/TerminalSession;

    move-result-object p0

    if-eqz p0, :cond_9e

    .line 66
    invoke-virtual {p0, v3}, Lcom/termux/terminal/TerminalSession;->write(Ljava/lang/String;)V

    :cond_9e
    :goto_9e
    return-void

    nop

    :sswitch_data_a0
    .sparse-switch
        0x2015 -> :sswitch_4f
        0x25b2 -> :sswitch_44
        0x25b6 -> :sswitch_39
        0x25bc -> :sswitch_2e
        0x25c0 -> :sswitch_23
        0x10d55 -> :sswitch_18
        0x14375 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_be
    .packed-switch 0x0
        :pswitch_72  #00000000
        :pswitch_6f  #00000001
        :pswitch_6c  #00000002
        :pswitch_69  #00000003
        :pswitch_66  #00000004
        :pswitch_63  #00000005
        :pswitch_60  #00000006
    .end packed-switch
.end method


# virtual methods
.method public readAltButton()Z
    .registers 4

    .line 85
    iget-object v0, p0, Lcom/termux/app/ExtraKeysView;->altButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    .line 86
    :cond_a
    iget-object v0, p0, Lcom/termux/app/ExtraKeysView;->altButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 88
    iget-object v1, p0, Lcom/termux/app/ExtraKeysView;->altButton:Landroid/widget/ToggleButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 89
    iget-object v1, p0, Lcom/termux/app/ExtraKeysView;->altButton:Landroid/widget/ToggleButton;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setTextColor(I)V

    :cond_1e
    return v0
.end method

.method public readControlButton()Z
    .registers 4

    .line 75
    iget-object v0, p0, Lcom/termux/app/ExtraKeysView;->controlButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    .line 76
    :cond_a
    iget-object v0, p0, Lcom/termux/app/ExtraKeysView;->controlButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 78
    iget-object v1, p0, Lcom/termux/app/ExtraKeysView;->controlButton:Landroid/widget/ToggleButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 79
    iget-object v1, p0, Lcom/termux/app/ExtraKeysView;->controlButton:Landroid/widget/ToggleButton;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setTextColor(I)V

    :cond_1e
    return v0
.end method

.method public readFnButton()Z
    .registers 4

    .line 95
    iget-object v0, p0, Lcom/termux/app/ExtraKeysView;->fnButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    .line 96
    :cond_a
    iget-object v0, p0, Lcom/termux/app/ExtraKeysView;->fnButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 98
    iget-object v1, p0, Lcom/termux/app/ExtraKeysView;->fnButton:Landroid/widget/ToggleButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 99
    iget-object v1, p0, Lcom/termux/app/ExtraKeysView;->fnButton:Landroid/widget/ToggleButton;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setTextColor(I)V

    :cond_1e
    return v0
.end method

.method reload()V
    .registers 16

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/termux/app/ExtraKeysView;->controlButton:Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/termux/app/ExtraKeysView;->altButton:Landroid/widget/ToggleButton;

    .line 106
    invoke-virtual {p0}, Lcom/termux/app/ExtraKeysView;->removeAllViews()V

    .line 108
    const/4 v1, 0x1

    new-array v2, v1, [[Ljava/lang/String;

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "ESC"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "CTRL"

    aput-object v4, v3, v1

    const/4 v6, 0x2

    const-string v7, "ALT"

    aput-object v7, v3, v6

    const-string v8, "TAB"

    const/4 v9, 0x3

    aput-object v8, v3, v9

    const/4 v8, 0x4

    const-string v10, "―"

    aput-object v10, v3, v8

    const/4 v8, 0x5

    const-string v10, "/"

    aput-object v10, v3, v8

    const/4 v8, 0x6

    const-string v10, "|"

    aput-object v10, v3, v8

    aput-object v3, v2, v5

    .line 113
    array-length v3, v3

    .line 115
    invoke-virtual {p0, v1}, Lcom/termux/app/ExtraKeysView;->setRowCount(I)V

    .line 116
    invoke-virtual {p0, v3}, Lcom/termux/app/ExtraKeysView;->setColumnCount(I)V

    const/4 v8, 0x0

    :goto_3a
    if-ge v8, v3, :cond_ee

    .line 120
    aget-object v10, v2, v5

    aget-object v10, v10, v8

    .line 123
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v11

    const/4 v12, -0x1

    sparse-switch v11, :sswitch_data_f0

    :goto_4b
    goto :goto_69

    :sswitch_4c
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_53

    goto :goto_4b

    :cond_53
    const/4 v11, 0x2

    goto :goto_6a

    :sswitch_55
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5c

    goto :goto_4b

    :cond_5c
    const/4 v11, 0x1

    goto :goto_6a

    :sswitch_5e
    const-string v11, "FN"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_67

    goto :goto_4b

    :cond_67
    const/4 v11, 0x0

    goto :goto_6a

    :goto_69
    const/4 v11, -0x1

    :goto_6a
    const v13, 0x101032f

    packed-switch v11, :pswitch_data_fe

    .line 137
    new-instance v11, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/termux/app/ExtraKeysView;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v11, v14, v0, v13}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto :goto_a6

    .line 125
    :pswitch_7a  #0x2
    new-instance v11, Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/termux/app/ExtraKeysView;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v11, v14, v0, v13}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v11, p0, Lcom/termux/app/ExtraKeysView;->controlButton:Landroid/widget/ToggleButton;

    .line 126
    invoke-virtual {v11, v1}, Landroid/widget/Button;->setClickable(Z)V

    goto :goto_a6

    .line 129
    :pswitch_89  #0x1
    new-instance v11, Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/termux/app/ExtraKeysView;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v11, v14, v0, v13}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v11, p0, Lcom/termux/app/ExtraKeysView;->altButton:Landroid/widget/ToggleButton;

    .line 130
    invoke-virtual {v11, v1}, Landroid/widget/Button;->setClickable(Z)V

    goto :goto_a6

    .line 133
    :pswitch_98  #0x0
    new-instance v11, Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/termux/app/ExtraKeysView;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v11, v14, v0, v13}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v11, p0, Lcom/termux/app/ExtraKeysView;->fnButton:Landroid/widget/ToggleButton;

    .line 134
    invoke-virtual {v11, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 141
    :goto_a6
    invoke-virtual {v11, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 142
    invoke-virtual {v11, v12}, Landroid/widget/Button;->setTextColor(I)V

    .line 145
    new-instance v12, Lcom/termux/app/ExtraKeysView$1;

    invoke-direct {v12, p0, v11, v10}, Lcom/termux/app/ExtraKeysView$1;-><init>(Lcom/termux/app/ExtraKeysView;Landroid/widget/Button;Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    new-instance v12, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v12}, Landroid/widget/GridLayout$LayoutParams;-><init>()V

    .line 166
    iput v5, v12, Landroid/widget/GridLayout$LayoutParams;->width:I

    iput v5, v12, Landroid/widget/GridLayout$LayoutParams;->height:I

    .line 167
    iput v5, v12, Landroid/widget/GridLayout$LayoutParams;->topMargin:I

    iput v5, v12, Landroid/widget/GridLayout$LayoutParams;->rightMargin:I

    .line 168
    invoke-virtual {v12, v9}, Landroid/widget/GridLayout$LayoutParams;->setGravity(I)V

    .line 169
    const-string v13, "▲▼◀▶"

    invoke-virtual {v13, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    const/high16 v13, 0x3f800000  # 1.0f

    if-eqz v10, :cond_d2

    const v10, 0x3f333333  # 0.7f

    goto :goto_d4

    :cond_d2
    const/high16 v10, 0x3f800000  # 1.0f

    .line 170
    :goto_d4
    sget-object v14, Landroid/widget/GridLayout;->FILL:Landroid/widget/GridLayout$Alignment;

    invoke-static {v8, v14, v10}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;F)Landroid/widget/GridLayout$Spec;

    move-result-object v10

    iput-object v10, v12, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    .line 171
    sget-object v10, Landroid/widget/GridLayout;->FILL:Landroid/widget/GridLayout$Alignment;

    invoke-static {v5, v10, v13}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;F)Landroid/widget/GridLayout$Spec;

    move-result-object v10

    iput-object v10, v12, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    .line 172
    invoke-virtual {v11, v12}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    invoke-virtual {p0, v11}, Lcom/termux/app/ExtraKeysView;->addView(Landroid/view/View;)V

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3a

    :cond_ee
    return-void

    nop

    :sswitch_data_f0
    .sparse-switch
        0x8c8 -> :sswitch_5e
        0xfd89 -> :sswitch_55
        0x1fba6b -> :sswitch_4c
    .end sparse-switch

    :pswitch_data_fe
    .packed-switch 0x0
        :pswitch_98  #00000000
        :pswitch_89  #00000001
        :pswitch_7a  #00000002
    .end packed-switch
.end method
