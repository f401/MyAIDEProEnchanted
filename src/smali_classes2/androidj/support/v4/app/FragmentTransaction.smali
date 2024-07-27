.class public abstract Landroidj/support/v4/app/FragmentTransaction;
.super Ljava/lang/Object;


# static fields
.field public static final TRANSIT_ENTER_MASK:I = 0x1000

.field public static final TRANSIT_EXIT_MASK:I = 0x2000

.field public static final TRANSIT_FRAGMENT_CLOSE:I = 0x2002

.field public static final TRANSIT_FRAGMENT_FADE:I = 0x1003

.field public static final TRANSIT_FRAGMENT_OPEN:I = 0x1001

.field public static final TRANSIT_NONE:I = 0x0

.field public static final TRANSIT_UNSET:I = -0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract add(ILandroidj/support/v4/app/Fragment;)Landroidj/support/v4/app/FragmentTransaction;
    .param p1    # I
        .annotation build Landroidj/support/annotation/IdRes;
        .end annotation
    .end param
.end method

.method public abstract add(ILandroidj/support/v4/app/Fragment;Ljava/lang/String;)Landroidj/support/v4/app/FragmentTransaction;
    .param p1    # I
        .annotation build Landroidj/support/annotation/IdRes;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidj/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract add(Landroidj/support/v4/app/Fragment;Ljava/lang/String;)Landroidj/support/v4/app/FragmentTransaction;
.end method

.method public abstract addSharedElement(Landroid/view/View;Ljava/lang/String;)Landroidj/support/v4/app/FragmentTransaction;
.end method

.method public abstract addToBackStack(Ljava/lang/String;)Landroidj/support/v4/app/FragmentTransaction;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidj/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract attach(Landroidj/support/v4/app/Fragment;)Landroidj/support/v4/app/FragmentTransaction;
.end method

.method public abstract commit()I
.end method

.method public abstract commitAllowingStateLoss()I
.end method

.method public abstract commitNow()V
.end method

.method public abstract commitNowAllowingStateLoss()V
.end method

.method public abstract detach(Landroidj/support/v4/app/Fragment;)Landroidj/support/v4/app/FragmentTransaction;
.end method

.method public abstract disallowAddToBackStack()Landroidj/support/v4/app/FragmentTransaction;
.end method

.method public abstract hide(Landroidj/support/v4/app/Fragment;)Landroidj/support/v4/app/FragmentTransaction;
.end method

.method public abstract isAddToBackStackAllowed()Z
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract remove(Landroidj/support/v4/app/Fragment;)Landroidj/support/v4/app/FragmentTransaction;
.end method

.method public abstract replace(ILandroidj/support/v4/app/Fragment;)Landroidj/support/v4/app/FragmentTransaction;
    .param p1    # I
        .annotation build Landroidj/support/annotation/IdRes;
        .end annotation
    .end param
.end method

.method public abstract replace(ILandroidj/support/v4/app/Fragment;Ljava/lang/String;)Landroidj/support/v4/app/FragmentTransaction;
    .param p1    # I
        .annotation build Landroidj/support/annotation/IdRes;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidj/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setAllowOptimization(Z)Landroidj/support/v4/app/FragmentTransaction;
.end method

.method public abstract setBreadCrumbShortTitle(I)Landroidj/support/v4/app/FragmentTransaction;
    .param p1    # I
        .annotation build Landroidj/support/annotation/StringRes;
        .end annotation
    .end param
.end method

.method public abstract setBreadCrumbShortTitle(Ljava/lang/CharSequence;)Landroidj/support/v4/app/FragmentTransaction;
.end method

.method public abstract setBreadCrumbTitle(I)Landroidj/support/v4/app/FragmentTransaction;
    .param p1    # I
        .annotation build Landroidj/support/annotation/StringRes;
        .end annotation
    .end param
.end method

.method public abstract setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroidj/support/v4/app/FragmentTransaction;
.end method

.method public abstract setCustomAnimations(II)Landroidj/support/v4/app/FragmentTransaction;
    .param p1    # I
        .annotation build Landroidj/support/annotation/AnimRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidj/support/annotation/AnimRes;
        .end annotation
    .end param
.end method

.method public abstract setCustomAnimations(IIII)Landroidj/support/v4/app/FragmentTransaction;
    .param p1    # I
        .annotation build Landroidj/support/annotation/AnimRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidj/support/annotation/AnimRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidj/support/annotation/AnimRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidj/support/annotation/AnimRes;
        .end annotation
    .end param
.end method

.method public abstract setTransition(I)Landroidj/support/v4/app/FragmentTransaction;
.end method

.method public abstract setTransitionStyle(I)Landroidj/support/v4/app/FragmentTransaction;
    .param p1    # I
        .annotation build Landroidj/support/annotation/StyleRes;
        .end annotation
    .end param
.end method

.method public abstract show(Landroidj/support/v4/app/Fragment;)Landroidj/support/v4/app/FragmentTransaction;
.end method
