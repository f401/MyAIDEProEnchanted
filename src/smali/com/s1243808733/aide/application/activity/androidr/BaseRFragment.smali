.class public abstract Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;
.super Landroid/app/Fragment;
.source "BaseRFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$ViewHolder;
    }
.end annotation


# instance fields
.field private adapter:Lcom/s1243808733/aide/application/activity/androidr/BaseRBaseAdapter;


# direct methods
.method static bridge synthetic -$$Nest$fgetadapter(Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;)Lcom/s1243808733/aide/application/activity/androidr/BaseRBaseAdapter;
    .locals 1

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;->adapter:Lcom/s1243808733/aide/application/activity/androidr/BaseRBaseAdapter;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static dp2px(F)I
    .locals 2

    .line 240
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public copyToClipboard(Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-static {p1}, Lcom/s1243808733/util/Utils;->copyToClipboard(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getAdapter()Lcom/s1243808733/aide/application/activity/androidr/BaseRBaseAdapter;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;->adapter:Lcom/s1243808733/aide/application/activity/androidr/BaseRBaseAdapter;

    return-object v0
.end method

.method public abstract getClazz()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public onCreateAdapter(Landroid/os/Bundle;)Lcom/s1243808733/aide/application/activity/androidr/BaseRBaseAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    const/4 v6, -0x2

    const/high16 v5, 0x41800000    # 16.0f

    const/4 v4, -0x1

    .line 181
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 182
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 184
    new-instance v1, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 185
    new-instance v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v2, v4, v6}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 186
    invoke-static {v5}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 187
    invoke-static {v5}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 189
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    new-instance v1, Lcom/s1243808733/widget/CustomListView;

    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/s1243808733/widget/CustomListView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v4, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 195
    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v1, v4, v6}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 196
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    .line 203
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 204
    check-cast p1, Landroid/widget/LinearLayout;

    .line 205
    new-instance v1, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$ViewHolder;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$ViewHolder;-><init>(Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;)V

    .line 207
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, v1, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$ViewHolder;->mSearchView:Landroid/widget/EditText;

    .line 208
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, v1, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$ViewHolder;->mListView:Landroid/widget/ListView;

    .line 210
    iget-object v2, v1, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$ViewHolder;->mSearchView:Landroid/widget/EditText;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u641c\u7d22..."

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v0, v1, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$ViewHolder;->mSearchView:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 212
    iget-object v0, v1, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$ViewHolder;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 215
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;->onCreateAdapter(Landroid/os/Bundle;)Lcom/s1243808733/aide/application/activity/androidr/BaseRBaseAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;->adapter:Lcom/s1243808733/aide/application/activity/androidr/BaseRBaseAdapter;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, v1, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$ViewHolder;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;->adapter:Lcom/s1243808733/aide/application/activity/androidr/BaseRBaseAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 218
    iget-object v0, v1, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$ViewHolder;->mSearchView:Landroid/widget/EditText;

    new-instance v2, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$4;

    invoke-direct {v2, p0}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$4;-><init>(Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :cond_0
    :goto_1
    invoke-virtual {p0, v1, p2}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;->onViewCreated(Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$ViewHolder;Landroid/os/Bundle;)V

    return-void

    .line 210
    :cond_1
    const-string v0, "Search.."

    goto :goto_0

    .line 236
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onViewCreated(Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$ViewHolder;Landroid/os/Bundle;)V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;->adapter:Lcom/s1243808733/aide/application/activity/androidr/BaseRBaseAdapter;

    if-nez v0, :cond_0

    .line 169
    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$ViewHolder;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$3;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$3;-><init>(Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0
.end method

.method public showDialog(Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;)V
    .locals 8

    const/4 v7, 0x0

    .line 53
    iget-object v2, p1, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;->name:Ljava/lang/String;

    .line 54
    iget v3, p1, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;->id:I

    .line 55
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;->getClazz()Ljava/lang/Class;

    move-result-object v0

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "0x"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 59
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 61
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "@"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "FragmentTheme"

    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;->getTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "_"

    const-string v6, "."

    invoke-virtual {v2, v0, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 63
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 64
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 65
    const-string v0, "\u540d\u79f0\uff1a"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    const-string v0, "\n\n\u8d44\u6e90ID\uff1a\n10\u8fdb\u5236\uff1a"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 68
    const-string v0, "\n16\u8fdb\u5236\uff1a"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    const-string v0, "\n\n\u5f15\u7528\uff1a\nJava\uff1a"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    :goto_1
    const-string v0, "FragmentTextAppearance"

    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    const-string v0, "\nXML\uff1a"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "\u8be6\u7ec6\u4fe1\u606f"

    :goto_2
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040001

    invoke-virtual {v0, v1, v7}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 86
    const-string v0, "FragmentDrawable"

    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;->getTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    iget v0, p1, Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;->id:I

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 90
    :cond_1
    const-string v0, "FragmentTheme"

    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;->getTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "\u9884\u89c8"

    :goto_3
    new-instance v6, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$1;

    invoke-direct {v6, p0, p1, v2}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$1;-><init>(Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;Lcom/s1243808733/aide/application/activity/androidr/BaseRItem;Ljava/lang/String;)V

    .line 91
    invoke-virtual {v1, v0, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 102
    :cond_2
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 103
    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 105
    const/4 v0, -0x3

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v7

    .line 106
    new-instance v0, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$2;-><init>(Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    const v0, 0x102000b

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 163
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    :cond_3
    return-void

    :cond_4
    move-object v0, v2

    .line 61
    goto/16 :goto_0

    .line 72
    :cond_5
    const-string v0, "Name: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    const-string v0, "\n\nResources ID: \n10 Hex: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 75
    const-string v0, "\n16 Hex: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    const-string v0, "\n\nQuote: \nJava\uff1a"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 84
    :cond_6
    const-string v0, "Detail info"

    goto/16 :goto_2

    .line 92
    :cond_7
    const-string v0, "preview"

    goto :goto_3
.end method
