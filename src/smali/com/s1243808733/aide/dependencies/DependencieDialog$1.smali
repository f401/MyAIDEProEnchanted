.class Lcom/s1243808733/aide/dependencies/DependencieDialog$1;
.super Ljava/lang/Object;
.source "DependencieDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/dependencies/DependencieDialog;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/dependencies/DependencieDialog;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/dependencies/DependencieDialog;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$1;->this$0:Lcom/s1243808733/aide/dependencies/DependencieDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v11, -0x2

    const/4 v1, 0x0

    const/4 v10, -0x1

    .line 105
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$1;->this$0:Lcom/s1243808733/aide/dependencies/DependencieDialog;

    invoke-static {v0}, Lcom/s1243808733/aide/dependencies/DependencieDialog;->-$$Nest$fgetadapter(Lcom/s1243808733/aide/dependencies/DependencieDialog;)Lcom/s1243808733/aide/dependencies/DependencieAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->getSelectedList()Ljava/util/List;

    move-result-object v3

    .line 106
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 107
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u672a\u9009\u62e9\u4f9d\u8d56"

    :goto_0
    invoke-static {v0}, Lcom/s1243808733/util/Toasty;->warning(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 229
    :goto_1
    return-void

    .line 107
    :cond_0
    const-string v0, "No dependency selected"

    goto :goto_0

    .line 111
    :cond_1
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$1;->this$0:Lcom/s1243808733/aide/dependencies/DependencieDialog;

    iget-object v2, v2, Lcom/s1243808733/aide/dependencies/DependencieDialog;->activity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 113
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 116
    new-instance v4, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$1;->this$0:Lcom/s1243808733/aide/dependencies/DependencieDialog;

    iget-object v2, v2, Lcom/s1243808733/aide/dependencies/DependencieDialog;->activity:Landroid/app/Activity;

    invoke-direct {v4, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 117
    const/high16 v2, 0x43960000    # 300.0f

    invoke-static {v2}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setMinWidth(I)V

    .line 118
    invoke-virtual {v0, v4, v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 120
    new-instance v2, Landroid/widget/ScrollView;

    iget-object v5, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$1;->this$0:Lcom/s1243808733/aide/dependencies/DependencieDialog;

    iget-object v5, v5, Lcom/s1243808733/aide/dependencies/DependencieDialog;->activity:Landroid/app/Activity;

    invoke-direct {v2, v5}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 121
    new-instance v5, Landroid/widget/HorizontalScrollView;

    iget-object v6, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$1;->this$0:Lcom/s1243808733/aide/dependencies/DependencieDialog;

    iget-object v6, v6, Lcom/s1243808733/aide/dependencies/DependencieDialog;->activity:Landroid/app/Activity;

    invoke-direct {v5, v6}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 123
    invoke-virtual {v5, v0, v10, v11}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;II)V

    .line 124
    invoke-virtual {v2, v5, v10, v10}, Landroid/widget/ScrollView;->addView(Landroid/view/View;II)V

    .line 126
    invoke-virtual {v5, v1}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 128
    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$1;->this$0:Lcom/s1243808733/aide/dependencies/DependencieDialog;

    iget-object v0, v0, Lcom/s1243808733/aide/dependencies/DependencieDialog;->activity:Landroid/app/Activity;

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 129
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 132
    new-instance v6, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$1;->this$0:Lcom/s1243808733/aide/dependencies/DependencieDialog;

    iget-object v0, v0, Lcom/s1243808733/aide/dependencies/DependencieDialog;->activity:Landroid/app/Activity;

    invoke-direct {v6, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 133
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "\u5982\u679c\u65e0\u6cd5\u4e0b\u8f7d\u8bf7\u5c1d\u8bd5\u628a\u7248\u672c\u53f7\u6539\u4e3a+"

    :goto_2
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 135
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$1;->this$0:Lcom/s1243808733/aide/dependencies/DependencieDialog;

    iget-object v0, v0, Lcom/s1243808733/aide/dependencies/DependencieDialog;->activity:Landroid/app/Activity;

    const v7, 0x1010036

    invoke-static {v0, v7}, Lcom/s1243808733/util/Utils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 136
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v0

    const/high16 v7, 0x40a00000    # 5.0f

    invoke-static {v7}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v7

    invoke-virtual {v6, v1, v0, v1, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 139
    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v0}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v0

    invoke-static {v9}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v7

    const/high16 v8, 0x41c00000    # 24.0f

    invoke-static {v8}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v8

    invoke-static {v9}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v9

    .line 138
    invoke-virtual {v5, v0, v7, v8, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 141
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 142
    invoke-virtual {v5, v2, v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 145
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$1;->this$0:Lcom/s1243808733/aide/dependencies/DependencieDialog;

    iget-object v0, v0, Lcom/s1243808733/aide/dependencies/DependencieDialog;->activity:Landroid/app/Activity;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 147
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "\u6dfb\u52a0\u4f9d\u8d56"

    :goto_3
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 148
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 149
    const v2, 0x104000a

    invoke-virtual {v0, v2, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 151
    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 153
    iget-object v2, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$1;->this$0:Lcom/s1243808733/aide/dependencies/DependencieDialog;

    invoke-static {v2}, Lcom/s1243808733/aide/dependencies/DependencieDialog;->-$$Nest$fgetmdialog(Lcom/s1243808733/aide/dependencies/DependencieDialog;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 154
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 165
    invoke-virtual {v0, v10}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    new-instance v5, Lcom/s1243808733/aide/dependencies/DependencieDialog$1$1;

    invoke-direct {v5, p0, v4, v0}, Lcom/s1243808733/aide/dependencies/DependencieDialog$1$1;-><init>(Lcom/s1243808733/aide/dependencies/DependencieDialog$1;Landroid/widget/EditText;Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    new-instance v2, Lcom/s1243808733/aide/dependencies/DependencieDialog$1$2;

    invoke-direct {v2, p0, v0, v4}, Lcom/s1243808733/aide/dependencies/DependencieDialog$1$2;-><init>(Lcom/s1243808733/aide/dependencies/DependencieDialog$1;Landroid/app/AlertDialog;Landroid/widget/EditText;)V

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 224
    const-string v0, ""

    move-object v2, v0

    :goto_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 225
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/aide/dependencies/Dependencie;

    if-eqz v1, :cond_2

    .line 226
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 227
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/s1243808733/aide/dependencies/Dependencie;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 133
    :cond_3
    const-string v0, "If you can\'t download it, try changing the version number to +"

    goto/16 :goto_2

    .line 147
    :cond_4
    const-string v0, "Add Dependency"

    goto :goto_3

    .line 229
    :cond_5
    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method
