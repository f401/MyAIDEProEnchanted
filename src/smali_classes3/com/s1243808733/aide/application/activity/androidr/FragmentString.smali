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
.method public constructor <init>()V
    .registers 1

    .line 181
    invoke-direct {p0}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;-><init>()V

    return-void
.end method

.method static synthetic access$L1000000(Lcom/s1243808733/aide/application/activity/androidr/FragmentString;)Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentString;->adapter:Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;

    return-object v0
.end method

.method static synthetic access$S1000000(Lcom/s1243808733/aide/application/activity/androidr/FragmentString;Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;)V
    .registers 2

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentString;->adapter:Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;

    return-void
.end method


# virtual methods
.method public getClazz()Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 74
    :try_start_0
    const-string v0, "android.R$string"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onViewCreated(Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$ViewHolder;Landroid/os/Bundle;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$ViewHolder;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 30
    invoke-super {p0, p1, p2}, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment;->onViewCreated(Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$ViewHolder;Landroid/os/Bundle;)V

    .line 31
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 32
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/androidr/FragmentString;->getClazz()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 33
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v3

    if-lt v1, v0, :cond_0

    .line 44
    new-instance v0, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;

    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/androidr/FragmentString;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2}, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;-><init>(Lcom/s1243808733/aide/application/activity/androidr/FragmentString;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentString;->adapter:Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;

    .line 45
    iget-object v0, p1, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$ViewHolder;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentString;->adapter:Lcom/s1243808733/aide/application/activity/androidr/FragmentString$AdapterString;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 46
    iget-object v0, p1, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$ViewHolder;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$100000000;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$100000000;-><init>(Lcom/s1243808733/aide/application/activity/androidr/FragmentString;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 53
    iget-object v0, p1, Lcom/s1243808733/aide/application/activity/androidr/BaseRFragment$ViewHolder;->mSearchView:Landroid/widget/EditText;

    new-instance v1, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$100000001;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/androidr/FragmentString$100000001;-><init>(Lcom/s1243808733/aide/application/activity/androidr/FragmentString;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void

    .line 35
    :cond_0
    aget-object v4, v3, v1

    .line 36
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 37
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    .line 38
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Object;

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 39
    new-instance v4, Lcom/s1243808733/aide/application/activity/androidr/TwoLineItem;

    invoke-direct {v4, v5, v0}, Lcom/s1243808733/aide/application/activity/androidr/TwoLineItem;-><init>(Ljava/lang/String;I)V

    .line 40
    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/application/activity/androidr/FragmentString;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/s1243808733/aide/application/activity/androidr/TwoLineItem;->subname:Ljava/lang/String;

    .line 41
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 33
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1
.end method
