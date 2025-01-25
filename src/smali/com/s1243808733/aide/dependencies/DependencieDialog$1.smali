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
    .registers 2

    .line 101
    iput-object p1, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$1;->this$0:Lcom/s1243808733/aide/dependencies/DependencieDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 13

    .line 105
    iget-object p1, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$1;->this$0:Lcom/s1243808733/aide/dependencies/DependencieDialog;

    invoke-static {p1}, Lcom/s1243808733/aide/dependencies/DependencieDialog;->-$$Nest$fgetadapter(Lcom/s1243808733/aide/dependencies/DependencieDialog;)Lcom/s1243808733/aide/dependencies/DependencieAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->getSelectedList()Ljava/util/List;

    move-result-object p1

    .line 106
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_23

    .line 107
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result p1

    if-eqz p1, :cond_19

    const-string p1, "未选择依赖"

    goto :goto_1b

    :cond_19
    const-string p1, "No dependency selected"

    :goto_1b
    invoke-static {p1}, Lcom/s1243808733/util/Toasty;->warning(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 111
    :cond_23
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$1;->this$0:Lcom/s1243808733/aide/dependencies/DependencieDialog;

    iget-object v1, v1, Lcom/s1243808733/aide/dependencies/DependencieDialog;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 113
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 116
    new-instance v2, Landroid/widget/EditText;

    iget-object v3, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$1;->this$0:Lcom/s1243808733/aide/dependencies/DependencieDialog;

    iget-object v3, v3, Lcom/s1243808733/aide/dependencies/DependencieDialog;->activity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 117
    const/high16 v3, 0x43960000  # 300.0f

    invoke-static {v3}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setMinWidth(I)V

    .line 118
    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 120
    new-instance v5, Landroid/widget/ScrollView;

    iget-object v6, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$1;->this$0:Lcom/s1243808733/aide/dependencies/DependencieDialog;

    iget-object v6, v6, Lcom/s1243808733/aide/dependencies/DependencieDialog;->activity:Landroid/app/Activity;

    invoke-direct {v5, v6}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 121
    new-instance v6, Landroid/widget/HorizontalScrollView;

    iget-object v7, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$1;->this$0:Lcom/s1243808733/aide/dependencies/DependencieDialog;

    iget-object v7, v7, Lcom/s1243808733/aide/dependencies/DependencieDialog;->activity:Landroid/app/Activity;

    invoke-direct {v6, v7}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 123
    invoke-virtual {v6, v0, v3, v4}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;II)V

    .line 124
    invoke-virtual {v5, v6, v3, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;II)V

    .line 126
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 128
    new-instance v6, Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$1;->this$0:Lcom/s1243808733/aide/dependencies/DependencieDialog;

    iget-object v7, v7, Lcom/s1243808733/aide/dependencies/DependencieDialog;->activity:Landroid/app/Activity;

    invoke-direct {v6, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 129
    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 132
    new-instance v1, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$1;->this$0:Lcom/s1243808733/aide/dependencies/DependencieDialog;

    iget-object v7, v7, Lcom/s1243808733/aide/dependencies/DependencieDialog;->activity:Landroid/app/Activity;

    invoke-direct {v1, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 133
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v7

    if-eqz v7, :cond_81

    const-string v7, "如果无法下载请尝试把版本号改为+"

    goto :goto_83

    :cond_81
    const-string v7, "If you can\'t download it, try changing the version number to +"

    :goto_83
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    const/high16 v7, 0x41800000  # 16.0f

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 135
    iget-object v7, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$1;->this$0:Lcom/s1243808733/aide/dependencies/DependencieDialog;

    iget-object v7, v7, Lcom/s1243808733/aide/dependencies/DependencieDialog;->activity:Landroid/app/Activity;

    const v8, 0x1010036

    invoke-static {v7, v8}, Lcom/s1243808733/util/Utils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 136
    const/high16 v7, 0x41200000  # 10.0f

    invoke-static {v7}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v7

    const/high16 v8, 0x40a00000  # 5.0f

    invoke-static {v8}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v8

    invoke-virtual {v1, v0, v7, v0, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 139
    const/high16 v7, 0x41c00000  # 24.0f

    invoke-static {v7}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v8

    const/4 v9, 0x0

    invoke-static {v9}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v10

    invoke-static {v7}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v7

    invoke-static {v9}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v9

    .line 138
    invoke-virtual {v6, v8, v10, v7, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 141
    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 142
    invoke-virtual {v6, v5, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 145
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$1;->this$0:Lcom/s1243808733/aide/dependencies/DependencieDialog;

    iget-object v4, v4, Lcom/s1243808733/aide/dependencies/DependencieDialog;->activity:Landroid/app/Activity;

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 147
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v4

    if-eqz v4, :cond_d6

    const-string v4, "添加依赖"

    goto :goto_d8

    :cond_d6
    const-string v4, "Add Dependency"

    :goto_d8
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 148
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 149
    const v4, 0x104000a

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 151
    const/high16 v4, 0x1040000

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 152
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 153
    iget-object v4, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$1;->this$0:Lcom/s1243808733/aide/dependencies/DependencieDialog;

    invoke-static {v4}, Lcom/s1243808733/aide/dependencies/DependencieDialog;->-$$Nest$fgetmdialog(Lcom/s1243808733/aide/dependencies/DependencieDialog;)Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 154
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 165
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    new-instance v4, Lcom/s1243808733/aide/dependencies/DependencieDialog$1$1;

    invoke-direct {v4, p0, v2, v1}, Lcom/s1243808733/aide/dependencies/DependencieDialog$1$1;-><init>(Lcom/s1243808733/aide/dependencies/DependencieDialog$1;Landroid/widget/EditText;Landroid/app/AlertDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    new-instance v3, Lcom/s1243808733/aide/dependencies/DependencieDialog$1$2;

    invoke-direct {v3, p0, v1, v2}, Lcom/s1243808733/aide/dependencies/DependencieDialog$1$2;-><init>(Lcom/s1243808733/aide/dependencies/DependencieDialog$1;Landroid/app/AlertDialog;Landroid/widget/EditText;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 224
    const-string v1, ""

    :goto_114
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_149

    .line 225
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/s1243808733/aide/dependencies/Dependencie;

    if-eqz v0, :cond_133

    .line 226
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 227
    :cond_133
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/s1243808733/aide/dependencies/Dependencie;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_114

    .line 229
    :cond_149
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
