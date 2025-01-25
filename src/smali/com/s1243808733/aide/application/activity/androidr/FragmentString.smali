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
    .registers 1

    iget-object p0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentString;->adapter:Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;

    return-object p0
.end method

.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getClazz()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 74
    const-class v0, Landroid/R$string;

    return-object v0
.end method

.method public onViewCreated(Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$ViewHolder;Landroid/os/Bundle;)V
    .registers 8

    .line 30
    invoke-super {p0, p1, p2}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;->onViewCreated(Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$ViewHolder;Landroid/os/Bundle;)V

    .line 31
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 32
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/androidr/FragmentString;->getClazz()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    .line 33
    :goto_11
    array-length v2, v0

    if-ge v1, v2, :cond_38

    .line 35
    aget-object v2, v0, v1

    .line 36
    const/4 v3, 0x1

    :try_start_17
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 37
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    .line 38
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    .line 39
    new-instance v4, Lcom/s1243808733/aide/application/activity/androidr/TwoLineItem;

    invoke-direct {v4, v3, v2}, Lcom/s1243808733/aide/application/activity/androidr/TwoLineItem;-><init>(Ljava/lang/String;I)V

    .line 40
    invoke-virtual {p0, v2}, Lcom/s1243808733/aide/application/activity/androidr/FragmentString;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/s1243808733/aide/application/activity/androidr/TwoLineItem;->subname:Ljava/lang/String;

    .line 41
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_31
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_31} :catch_34
    .catch Ljava/lang/IllegalAccessException; {:try_start_17 .. :try_end_31} :catch_32

    goto :goto_35

    .line 53
    :catch_32
    move-exception v2

    goto :goto_35

    :catch_34
    move-exception v2

    .line 41
    :goto_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 44
    :cond_38
    new-instance v0, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;

    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/androidr/FragmentString;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;-><init>(Lcom/s1243808733/aide/application/activity/androidr/FragmentString;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentString;->adapter:Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;

    .line 45
    iget-object p2, p1, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$ViewHolder;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentString;->adapter:Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 46
    iget-object p2, p1, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$ViewHolder;->mListView:Landroid/widget/ListView;

    new-instance v0, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$1;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$1;-><init>(Lcom/s1243808733/aide/application/activity/androidr/FragmentString;)V

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 53
    iget-object p1, p1, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$ViewHolder;->mSearchView:Landroid/widget/EditText;

    new-instance p2, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$2;

    invoke-direct {p2, p0}, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$2;-><init>(Lcom/s1243808733/aide/application/activity/androidr/FragmentString;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method
