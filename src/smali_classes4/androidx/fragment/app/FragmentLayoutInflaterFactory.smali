.class Landroidx/fragment/app/FragmentLayoutInflaterFactory;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# static fields
.field private static final TAG:Ljava/lang/String; = "FragmentManager"


# instance fields
.field private final mFragmentManager:Landroidx/fragment/app/FragmentManager;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/FragmentLayoutInflaterFactory;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 14

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    const/4 v6, -0x1

    const-class v0, Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    new-instance v0, Landroidx/fragment/app/FragmentContainerView;

    iget-object v1, p0, Landroidx/fragment/app/FragmentLayoutInflaterFactory;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-direct {v0, p3, p4, v1}, Landroidx/fragment/app/FragmentContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroidx/fragment/app/FragmentManager;)V

    :goto_17
    return-object v0

    :cond_18
    const-string v0, "fragment"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    move-object v0, v1

    goto :goto_17

    :cond_22
    const-string v0, "class"

    invoke-interface {p4, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Landroidx/fragment/R$styleable;->Fragment:[I

    invoke-virtual {p3, p4, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    if-nez v0, :cond_36

    sget v0, Landroidx/fragment/R$styleable;->Fragment_android_name:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_36
    sget v2, Landroidx/fragment/R$styleable;->Fragment_android_id:I

    invoke-virtual {v3, v2, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    sget v4, Landroidx/fragment/R$styleable;->Fragment_android_tag:I

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v0, :cond_51

    invoke-virtual {p3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v3, v0}, Landroidx/fragment/app/FragmentFactory;->isFragmentClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_53

    :cond_51
    move-object v0, v1

    goto :goto_17

    :cond_53
    if-eqz p1, :cond_10d

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    :goto_59
    if-ne v3, v6, :cond_5f

    if-ne v2, v6, :cond_5f

    if-eqz v5, :cond_110

    :cond_5f
    if-eq v2, v6, :cond_67

    iget-object v1, p0, Landroidx/fragment/app/FragmentLayoutInflaterFactory;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v1

    :cond_67
    if-nez v1, :cond_71

    if-eqz v5, :cond_71

    iget-object v1, p0, Landroidx/fragment/app/FragmentLayoutInflaterFactory;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1, v5}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    :cond_71
    if-nez v1, :cond_7b

    if-eq v3, v6, :cond_7b

    iget-object v1, p0, Landroidx/fragment/app/FragmentLayoutInflaterFactory;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v1

    :cond_7b
    if-nez v1, :cond_131

    iget-object v1, p0, Landroidx/fragment/app/FragmentLayoutInflaterFactory;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getFragmentFactory()Landroidx/fragment/app/FragmentFactory;

    move-result-object v1

    invoke-virtual {p3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Landroidx/fragment/app/FragmentFactory;->instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v4

    iput-boolean v7, v4, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    if-eqz v2, :cond_12e

    move v1, v2

    :goto_90
    iput v1, v4, Landroidx/fragment/app/Fragment;->mFragmentId:I

    iput v3, v4, Landroidx/fragment/app/Fragment;->mContainerId:I

    iput-object v5, v4, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    iput-boolean v7, v4, Landroidx/fragment/app/Fragment;->mInLayout:Z

    iget-object v1, p0, Landroidx/fragment/app/FragmentLayoutInflaterFactory;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iput-object v1, v4, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iget-object v1, p0, Landroidx/fragment/app/FragmentLayoutInflaterFactory;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getHost()Landroidx/fragment/app/FragmentHostCallback;

    move-result-object v1

    iput-object v1, v4, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v1, p0, Landroidx/fragment/app/FragmentLayoutInflaterFactory;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getHost()Landroidx/fragment/app/FragmentHostCallback;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, v4, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v4, v1, p4, v3}, Landroidx/fragment/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    iget-object v1, p0, Landroidx/fragment/app/FragmentLayoutInflaterFactory;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1, v4}, Landroidx/fragment/app/FragmentManager;->createOrGetFragmentStateManager(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentStateManager;

    move-result-object v3

    iget-object v1, p0, Landroidx/fragment/app/FragmentLayoutInflaterFactory;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1, v4}, Landroidx/fragment/app/FragmentManager;->addFragment(Landroidx/fragment/app/Fragment;)V

    invoke-static {v8}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1dc

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fragment "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " has been inflated via the <fragment> tag: id=0x"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "FragmentManager"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v4

    :cond_e7
    :goto_e7
    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, v1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentStateManager;->moveToExpectedState()V

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentStateManager;->ensureInflatedView()V

    iget-object v3, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v3, :cond_182

    if-eqz v2, :cond_fc

    iget-object v0, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    :cond_fc
    iget-object v0, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_109

    iget-object v0, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_109
    iget-object v0, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    goto/16 :goto_17

    :cond_10d
    const/4 v3, 0x0

    goto/16 :goto_59

    :cond_110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": Must specify unique android:id, android:tag, or have a parent with an id for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12e
    move v1, v3

    goto/16 :goto_90

    :cond_131
    iget-boolean v4, v1, Landroidx/fragment/app/Fragment;->mInLayout:Z

    if-nez v4, :cond_19e

    iput-boolean v7, v1, Landroidx/fragment/app/Fragment;->mInLayout:Z

    iget-object v3, p0, Landroidx/fragment/app/FragmentLayoutInflaterFactory;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iput-object v3, v1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iget-object v3, p0, Landroidx/fragment/app/FragmentLayoutInflaterFactory;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager;->getHost()Landroidx/fragment/app/FragmentHostCallback;

    move-result-object v3

    iput-object v3, v1, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v3, p0, Landroidx/fragment/app/FragmentLayoutInflaterFactory;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager;->getHost()Landroidx/fragment/app/FragmentHostCallback;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v1, v3, p4, v4}, Landroidx/fragment/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    iget-object v3, p0, Landroidx/fragment/app/FragmentLayoutInflaterFactory;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v3, v1}, Landroidx/fragment/app/FragmentManager;->createOrGetFragmentStateManager(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentStateManager;

    move-result-object v3

    invoke-static {v8}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_e7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Retained Fragment "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " has been re-attached via the <fragment> tag: id=0x"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "FragmentManager"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e7

    :cond_182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " did not create a view."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": Duplicate id 0x"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", or parent id 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with another fragment for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1dc
    move-object v1, v4

    goto/16 :goto_e7
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/fragment/app/FragmentLayoutInflaterFactory;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
