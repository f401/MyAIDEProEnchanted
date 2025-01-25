.class public abstract Landroidj/support/v4/app/FragmentManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/app/FragmentManager$BackStackEntry;,
        Landroidj/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;,
        Landroidj/support/v4/app/FragmentManager$OnBackStackChangedListener;
    }
.end annotation


# static fields
.field public static final POP_BACK_STACK_INCLUSIVE:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableDebugLogging(Z)V
    .registers 1

    sput-boolean p0, Landroidj/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    return-void
.end method


# virtual methods
.method public abstract addOnBackStackChangedListener(Landroidj/support/v4/app/FragmentManager$OnBackStackChangedListener;)V
.end method

.method public abstract beginTransaction()Landroidj/support/v4/app/FragmentTransaction;
.end method

.method public abstract dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract executePendingTransactions()Z
.end method

.method public abstract findFragmentById(I)Landroidj/support/v4/app/Fragment;
    .param p1  # I
        .annotation build Landroidj/support/annotation/IdRes;
        .end annotation
    .end param
.end method

.method public abstract findFragmentByTag(Ljava/lang/String;)Landroidj/support/v4/app/Fragment;
.end method

.method public abstract getBackStackEntryAt(I)Landroidj/support/v4/app/FragmentManager$BackStackEntry;
.end method

.method public abstract getBackStackEntryCount()I
.end method

.method public abstract getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroidj/support/v4/app/Fragment;
.end method

.method public abstract getFragments()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroidj/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isDestroyed()Z
.end method

.method public openTransaction()Landroidj/support/v4/app/FragmentTransaction;
    .registers 2
    .annotation build Landroidj/support/annotation/RestrictTo;
        value = {
            .enum Landroidj/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidj/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroidj/support/v4/app/FragmentManager;->beginTransaction()Landroidj/support/v4/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public abstract popBackStack()V
.end method

.method public abstract popBackStack(II)V
.end method

.method public abstract popBackStack(Ljava/lang/String;I)V
.end method

.method public abstract popBackStackImmediate()Z
.end method

.method public abstract popBackStackImmediate(II)Z
.end method

.method public abstract popBackStackImmediate(Ljava/lang/String;I)Z
.end method

.method public abstract putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroidj/support/v4/app/Fragment;)V
.end method

.method public abstract registerFragmentLifecycleCallbacks(Landroidj/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Z)V
.end method

.method public abstract removeOnBackStackChangedListener(Landroidj/support/v4/app/FragmentManager$OnBackStackChangedListener;)V
.end method

.method public abstract saveFragmentInstanceState(Landroidj/support/v4/app/Fragment;)Landroidj/support/v4/app/Fragment$SavedState;
.end method

.method public abstract unregisterFragmentLifecycleCallbacks(Landroidj/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;)V
.end method
