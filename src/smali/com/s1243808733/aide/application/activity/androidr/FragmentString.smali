.class public Lcom/s1243808733/aide/application/activity/androidr/FragmentString;
.super Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;
.source "FragmentString.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;,
        Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString$ViewHolder;
    }
.end annotation


# instance fields
.field private adapter:Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;


# direct methods
.method static bridge synthetic -$$Nest$fgetadapter(Lcom/s1243808733/aide/application/activity/androidr/FragmentString;)Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;
    .locals 1

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentString;->adapter:Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getClazz()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .line 74
    const-class v0, Landroid/R$string;

    return-object v0
.end method

.method public onViewCreated(Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$ViewHolder;Landroid/os/Bundle;)V
    .locals 6

    .line 30
    invoke-super {p0, p1, p2}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;->onViewCreated(Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$ViewHolder;Landroid/os/Bundle;)V

    .line 31
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/androidr/FragmentString;->getClazz()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v0, 0x0

    .line 33
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 35
    aget-object v3, v2, v0

    .line 36
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 37
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    .line 38
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    .line 39
    new-instance v5, Lcom/s1243808733/aide/application/activity/androidr/TwoLineItem;

    invoke-direct {v5, v4, v3}, Lcom/s1243808733/aide/application/activity/androidr/TwoLineItem;-><init>(Ljava/lang/String;I)V

    .line 40
    invoke-virtual {p0, v3}, Lcom/s1243808733/aide/application/activity/androidr/FragmentString;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Lcom/s1243808733/aide/application/activity/androidr/TwoLineItem;->subname:Ljava/lang/String;

    .line 41
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    :cond_0
    new-instance v0, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;

    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/androidr/FragmentString;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, p0, v2, v1}, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;-><init>(Lcom/s1243808733/aide/application/activity/androidr/FragmentString;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentString;->adapter:Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;

    .line 45
    iget-object v0, p1, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$ViewHolder;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentString;->adapter:Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 46
    iget-object v0, p1, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$ViewHolder;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$1;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$1;-><init>(Lcom/s1243808733/aide/application/activity/androidr/FragmentString;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 53
    iget-object v0, p1, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$ViewHolder;->mSearchView:Landroid/widget/EditText;

    new-instance v1, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$2;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$2;-><init>(Lcom/s1243808733/aide/application/activity/androidr/FragmentString;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void

    :catch_0
    move-exception v3

    goto :goto_1

    :catch_1
    move-exception v3

    goto :goto_1
.end method
