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

.method static synthetic access$L1000000()I
    .registers 1

    sget v0, Lcom/termux/app/ExtraKeysView;->TEXT_COLOR:I

    return v0
.end method

.method static synthetic access$S1000000(I)V
    .registers 1

    sput p0, Lcom/termux/app/ExtraKeysView;->TEXT_COLOR:I

    return-void
.end method

.method static sendKey(Landroid/view/View;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 33
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    .line 34
    const-string v1, "ESC"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_1

    .line 36
    const/16 v1, 0x6f

    move-object p1, v0

    .line 60
    :goto_0
    if-lez v1, :cond_8

    .line 61
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v2, v1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 62
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v3, v1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 66
    :cond_0
    :goto_1
    return-void

    .line 37
    :cond_1
    const-string v1, "TAB"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_2

    .line 39
    const/16 v1, 0x3d

    move-object p1, v0

    .line 40
    goto :goto_0

    :cond_2
    const-string v1, "\u25b2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_3

    .line 42
    const/16 v1, 0x13

    move-object p1, v0

    .line 43
    goto :goto_0

    :cond_3
    const-string v1, "\u25c0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_4

    .line 45
    const/16 v1, 0x15

    move-object p1, v0

    .line 46
    goto :goto_0

    :cond_4
    const-string v1, "\u25b6"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_5

    .line 48
    const/16 v1, 0x16

    move-object p1, v0

    .line 49
    goto :goto_0

    :cond_5
    const-string v1, "\u25bc"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_6

    .line 51
    const/16 v1, 0x14

    move-object p1, v0

    .line 52
    goto :goto_0

    :cond_6
    const-string v0, "\u2015"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v3, :cond_7

    .line 54
    const-string v0, "-"

    move v1, v2

    move-object p1, v0

    .line 55
    goto :goto_0

    :cond_7
    move v1, v2

    .line 57
    goto :goto_0

    .line 64
    :cond_8
    const-string v0, "terminal_view"

    invoke-static {v0}, Lcom/blankj/utilcode/util/ResourceUtils;->getIdByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/termux/view/TerminalView;

    .line 65
    invoke-virtual {v0}, Lcom/termux/view/TerminalView;->getCurrentSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/termux/terminal/TerminalSession;->write(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public readAltButton()Z
    .registers 4

    .line 85
    iget-object v0, p0, Lcom/termux/app/ExtraKeysView;->altButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 91
    :cond_0
    :goto_0
    return v0

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/termux/app/ExtraKeysView;->altButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    .line 87
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
    .registers 4

    .line 75
    iget-object v0, p0, Lcom/termux/app/ExtraKeysView;->controlButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 81
    :cond_0
    :goto_0
    return v0

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/termux/app/ExtraKeysView;->controlButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    .line 77
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
    .registers 4

    .line 95
    iget-object v0, p0, Lcom/termux/app/ExtraKeysView;->fnButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 101
    :cond_0
    :goto_0
    return v0

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/termux/app/ExtraKeysView;->fnButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    .line 97
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
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v13, 0x3

    const v12, 0x101032f

    const/4 v1, 0x0

    const/4 v11, 0x1

    const/4 v4, 0x0

    .line 105
    move-object v0, v1

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/termux/app/ExtraKeysView;->controlButton:Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/termux/app/ExtraKeysView;->altButton:Landroid/widget/ToggleButton;

    .line 106
    invoke-virtual {p0}, Lcom/termux/app/ExtraKeysView;->removeAllViews()V

    .line 108
    new-array v6, v11, [[Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "ESC"

    aput-object v2, v0, v4

    const-string v2, "CTRL"

    aput-object v2, v0, v11

    const/4 v2, 0x2

    const-string v3, "ALT"

    aput-object v3, v0, v2

    const-string v2, "TAB"

    aput-object v2, v0, v13

    const/4 v2, 0x4

    const-string v3, "\u2015"

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const-string v3, "/"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "|"

    aput-object v3, v0, v2

    aput-object v0, v6, v4

    .line 112
    array-length v7, v6

    .line 113
    aget-object v0, v6, v4

    array-length v8, v0

    .line 115
    invoke-virtual {p0, v7}, Lcom/termux/app/ExtraKeysView;->setRowCount(I)V

    .line 116
    invoke-virtual {p0, v8}, Lcom/termux/app/ExtraKeysView;->setColumnCount(I)V

    move v3, v4

    .line 118
    :goto_0
    if-lt v3, v7, :cond_0

    return-void

    :cond_0
    move v5, v4

    .line 119
    :goto_1
    if-lt v5, v8, :cond_1

    .line 118
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 120
    :cond_1
    aget-object v0, v6, v3

    aget-object v9, v0, v5

    .line 122
    const-string v0, "CTRL"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v11, :cond_2

    .line 125
    new-instance v2, Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/termux/app/ExtraKeysView;->getContext()Landroid/content/Context;

    move-result-object v10

    move-object v0, v1

    check-cast v0, Landroid/util/AttributeSet;

    invoke-direct {v2, v10, v0, v12}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/termux/app/ExtraKeysView;->controlButton:Landroid/widget/ToggleButton;

    .line 126
    invoke-virtual {v2, v11}, Landroid/widget/Button;->setClickable(Z)V

    move-object v0, v2

    .line 141
    :goto_2
    invoke-virtual {v0, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 142
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 145
    new-instance v2, Lcom/termux/app/ExtraKeysView$100000000;

    invoke-direct {v2, p0, v0, v9}, Lcom/termux/app/ExtraKeysView$100000000;-><init>(Lcom/termux/app/ExtraKeysView;Landroid/widget/Button;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    new-instance v10, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v10}, Landroid/widget/GridLayout$LayoutParams;-><init>()V

    .line 166
    iput v4, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v4, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 167
    iput v4, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v4, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 168
    invoke-virtual {v10, v13}, Landroid/widget/GridLayout$LayoutParams;->setGravity(I)V

    .line 169
    const-string v2, "\u25b2\u25bc\u25c0\u25b6"

    invoke-virtual {v2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    const v2, 0x3f333333    # 0.7f

    .line 170
    :goto_3
    sget-object v9, Landroid/widget/GridLayout;->FILL:Landroid/widget/GridLayout$Alignment;

    invoke-static {v5, v9, v2}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;F)Landroid/widget/GridLayout$Spec;

    move-result-object v2

    iput-object v2, v10, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    .line 171
    sget-object v2, Landroid/widget/GridLayout;->FILL:Landroid/widget/GridLayout$Alignment;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v3, v2, v9}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;F)Landroid/widget/GridLayout$Spec;

    move-result-object v2

    iput-object v2, v10, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    .line 172
    invoke-virtual {v0, v10}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    invoke-virtual {p0, v0}, Lcom/termux/app/ExtraKeysView;->addView(Landroid/view/View;)V

    .line 119
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1

    .line 127
    :cond_2
    const-string v0, "ALT"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v11, :cond_3

    .line 129
    new-instance v2, Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/termux/app/ExtraKeysView;->getContext()Landroid/content/Context;

    move-result-object v10

    move-object v0, v1

    check-cast v0, Landroid/util/AttributeSet;

    invoke-direct {v2, v10, v0, v12}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/termux/app/ExtraKeysView;->altButton:Landroid/widget/ToggleButton;

    .line 130
    invoke-virtual {v2, v11}, Landroid/widget/Button;->setClickable(Z)V

    move-object v0, v2

    .line 131
    goto :goto_2

    :cond_3
    const-string v0, "FN"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v11, :cond_4

    .line 133
    new-instance v2, Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/termux/app/ExtraKeysView;->getContext()Landroid/content/Context;

    move-result-object v10

    move-object v0, v1

    check-cast v0, Landroid/util/AttributeSet;

    invoke-direct {v2, v10, v0, v12}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/termux/app/ExtraKeysView;->fnButton:Landroid/widget/ToggleButton;

    .line 134
    invoke-virtual {v2, v11}, Landroid/widget/Button;->setClickable(Z)V

    move-object v0, v2

    .line 135
    goto :goto_2

    .line 137
    :cond_4
    new-instance v2, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/termux/app/ExtraKeysView;->getContext()Landroid/content/Context;

    move-result-object v10

    move-object v0, v1

    check-cast v0, Landroid/util/AttributeSet;

    invoke-direct {v2, v10, v0, v12}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    move-object v0, v2

    .line 138
    goto/16 :goto_2

    :cond_5
    const/high16 v2, 0x3f800000    # 1.0f

    .line 169
    goto :goto_3
.end method
