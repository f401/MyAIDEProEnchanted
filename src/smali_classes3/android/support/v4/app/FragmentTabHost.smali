.class public Landroid/support/v4/app/FragmentTabHost;
.super Landroid/widget/TabHost;

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/FragmentTabHost$DummyTabFactory;,
        Landroid/support/v4/app/FragmentTabHost$SavedState;,
        Landroid/support/v4/app/FragmentTabHost$a;
    }
.end annotation


# instance fields
.field private DW:Landroid/content/Context;

.field private FH:Landroid/support/v4/app/r;

.field private Hw:I

.field private VH:Z

.field private Zo:Landroid/support/v4/app/FragmentTabHost$a;

.field private final j6:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/FragmentTabHost$a;",
            ">;"
        }
    .end annotation
.end field

.field private v5:Landroid/widget/TabHost$OnTabChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/FragmentTabHost;->j6:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0}, Landroid/support/v4/app/FragmentTabHost;->j6(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->j6:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2}, Landroid/support/v4/app/FragmentTabHost;->j6(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private j6(Ljava/lang/String;Landroid/support/v4/app/D;)Landroid/support/v4/app/D;
    .registers 6

    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentTabHost;->j6(Ljava/lang/String;)Landroid/support/v4/app/FragmentTabHost$a;

    move-result-object p1

    iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->Zo:Landroid/support/v4/app/FragmentTabHost$a;

    if-eq v0, p1, :cond_40

    if-nez p2, :cond_10

    iget-object p2, p0, Landroid/support/v4/app/FragmentTabHost;->FH:Landroid/support/v4/app/r;

    invoke-virtual {p2}, Landroid/support/v4/app/r;->j6()Landroid/support/v4/app/D;

    move-result-object p2

    :cond_10
    iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->Zo:Landroid/support/v4/app/FragmentTabHost$a;

    if-eqz v0, :cond_1b

    iget-object v0, v0, Landroid/support/v4/app/FragmentTabHost$a;->Hw:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_1b

    invoke-virtual {p2, v0}, Landroid/support/v4/app/D;->DW(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/D;

    :cond_1b
    if-eqz p1, :cond_3e

    iget-object v0, p1, Landroid/support/v4/app/FragmentTabHost$a;->Hw:Landroid/support/v4/app/Fragment;

    if-nez v0, :cond_3b

    iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->DW:Landroid/content/Context;

    iget-object v1, p1, Landroid/support/v4/app/FragmentTabHost$a;->DW:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Landroid/support/v4/app/FragmentTabHost$a;->FH:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Landroid/support/v4/app/Fragment;->j6(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/FragmentTabHost$a;->Hw:Landroid/support/v4/app/Fragment;

    iget v0, p0, Landroid/support/v4/app/FragmentTabHost;->Hw:I

    iget-object v1, p1, Landroid/support/v4/app/FragmentTabHost$a;->Hw:Landroid/support/v4/app/Fragment;

    iget-object v2, p1, Landroid/support/v4/app/FragmentTabHost$a;->j6:Ljava/lang/String;

    invoke-virtual {p2, v0, v1, v2}, Landroid/support/v4/app/D;->j6(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/D;

    goto :goto_3e

    :cond_3b
    invoke-virtual {p2, v0}, Landroid/support/v4/app/D;->j6(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/D;

    :cond_3e
    :goto_3e
    iput-object p1, p0, Landroid/support/v4/app/FragmentTabHost;->Zo:Landroid/support/v4/app/FragmentTabHost$a;

    :cond_40
    return-object p2
.end method

.method private j6(Ljava/lang/String;)Landroid/support/v4/app/FragmentTabHost$a;
    .registers 6

    iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->j6:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1d

    iget-object v2, p0, Landroid/support/v4/app/FragmentTabHost;->j6:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/FragmentTabHost$a;

    iget-object v3, v2, Landroid/support/v4/app/FragmentTabHost$a;->j6:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    return-object v2

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1d
    const/4 p1, 0x0

    return-object p1
.end method

.method private j6(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    const v0, 0x10100f3

    filled-new-array {v0}, [I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Landroid/support/v4/app/FragmentTabHost;->Hw:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-super {p0, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 8

    invoke-super {p0}, Landroid/widget/TabHost;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/FragmentTabHost;->j6:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v1, :cond_48

    iget-object v4, p0, Landroid/support/v4/app/FragmentTabHost;->j6:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/FragmentTabHost$a;

    iget-object v5, p0, Landroid/support/v4/app/FragmentTabHost;->FH:Landroid/support/v4/app/r;

    iget-object v6, v4, Landroid/support/v4/app/FragmentTabHost$a;->j6:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/support/v4/app/r;->j6(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v5

    iput-object v5, v4, Landroid/support/v4/app/FragmentTabHost$a;->Hw:Landroid/support/v4/app/Fragment;

    iget-object v5, v4, Landroid/support/v4/app/FragmentTabHost$a;->Hw:Landroid/support/v4/app/Fragment;

    if-eqz v5, :cond_45

    invoke-virtual {v5}, Landroid/support/v4/app/Fragment;->gW()Z

    move-result v5

    if-nez v5, :cond_45

    iget-object v5, v4, Landroid/support/v4/app/FragmentTabHost$a;->j6:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_38

    iput-object v4, p0, Landroid/support/v4/app/FragmentTabHost;->Zo:Landroid/support/v4/app/FragmentTabHost$a;

    goto :goto_45

    :cond_38
    if-nez v2, :cond_40

    iget-object v2, p0, Landroid/support/v4/app/FragmentTabHost;->FH:Landroid/support/v4/app/r;

    invoke-virtual {v2}, Landroid/support/v4/app/r;->j6()Landroid/support/v4/app/D;

    move-result-object v2

    :cond_40
    iget-object v4, v4, Landroid/support/v4/app/FragmentTabHost$a;->Hw:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2, v4}, Landroid/support/v4/app/D;->DW(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/D;

    :cond_45
    :goto_45
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_48
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/app/FragmentTabHost;->VH:Z

    invoke-direct {p0, v0, v2}, Landroid/support/v4/app/FragmentTabHost;->j6(Ljava/lang/String;Landroid/support/v4/app/D;)Landroid/support/v4/app/D;

    move-result-object v0

    if-eqz v0, :cond_59

    invoke-virtual {v0}, Landroid/support/v4/app/D;->j6()I

    iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->FH:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->DW()Z

    :cond_59
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/TabHost;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentTabHost;->VH:Z

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    instance-of v0, p1, Landroid/support/v4/app/FragmentTabHost$SavedState;

    if-nez v0, :cond_8

    invoke-super {p0, p1}, Landroid/widget/TabHost;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_8
    check-cast p1, Landroid/support/v4/app/FragmentTabHost$SavedState;

    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/TabHost;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object p1, p1, Landroid/support/v4/app/FragmentTabHost$SavedState;->j6:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    new-instance v0, Landroid/support/v4/app/FragmentTabHost$SavedState;

    invoke-super {p0}, Landroid/widget/TabHost;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/FragmentTabHost$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v4/app/FragmentTabHost$SavedState;->j6:Ljava/lang/String;

    return-object v0
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .registers 3

    iget-boolean v0, p0, Landroid/support/v4/app/FragmentTabHost;->VH:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/app/FragmentTabHost;->j6(Ljava/lang/String;Landroid/support/v4/app/D;)Landroid/support/v4/app/D;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/support/v4/app/D;->j6()I

    :cond_e
    iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->v5:Landroid/widget/TabHost$OnTabChangeListener;

    if-eqz v0, :cond_15

    invoke-interface {v0, p1}, Landroid/widget/TabHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method public setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/app/FragmentTabHost;->v5:Landroid/widget/TabHost$OnTabChangeListener;

    return-void
.end method

.method public setup()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call setup() that takes a Context and FragmentManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
