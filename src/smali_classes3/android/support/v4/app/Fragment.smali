.class public Landroid/support/v4/app/Fragment;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/arch/lifecycle/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/Fragment$SavedState;,
        Landroid/support/v4/app/Fragment$a;,
        Landroid/support/v4/app/Fragment$b;,
        Landroid/support/v4/app/Fragment$c;
    }
.end annotation


# static fields
.field static final DW:Ljava/lang/Object;

.field private static final j6:Labcd/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field BT:Z

.field EQ:I

.field FH:I

.field Hw:Landroid/os/Bundle;

.field I:Landroid/view/LayoutInflater;

.field J0:Z

.field J8:Z

.field KD:Landroid/view/ViewGroup;

.field Mr:Landroid/support/v4/app/q;

.field Mz:F

.field P8:Z

.field QX:Z

.field SI:Z

.field Sf:Landroid/support/v4/app/Fragment$a;

.field U2:Landroid/support/v4/app/x;

.field VH:Ljava/lang/String;

.field Ws:Z

.field XL:Z

.field Zo:I

.field a8:Landroid/support/v4/app/y;

.field aM:I

.field ca:Z

.field cb:Z

.field cn:Landroid/view/View;

.field dx:Landroid/support/v4/app/U;

.field ef:Z

.field ei:Z

.field er:I

.field g3:Z

.field gW:Z

.field gn:Landroid/os/Bundle;

.field j3:Landroid/support/v4/app/x;

.field lg:Landroid/support/v4/app/Fragment;

.field nw:Z

.field rN:I

.field ro:Landroid/view/View;

.field sG:Z

.field sh:Z

.field tp:I

.field u7:Landroid/support/v4/app/Fragment;

.field v5:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field vJ:Z

.field vy:Z

.field we:Z

.field x9:Landroid/arch/lifecycle/e;

.field yS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Labcd/x;

    invoke-direct {v0}, Labcd/x;-><init>()V

    sput-object v0, Landroid/support/v4/app/Fragment;->j6:Labcd/x;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/app/Fragment;->DW:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/Fragment;->FH:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/Fragment;->Zo:I

    iput v0, p0, Landroid/support/v4/app/Fragment;->tp:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->nw:Z

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->cb:Z

    new-instance v0, Landroid/arch/lifecycle/e;

    invoke-direct {v0, p0}, Landroid/arch/lifecycle/e;-><init>(Landroid/arch/lifecycle/c;)V

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->x9:Landroid/arch/lifecycle/e;

    return-void
.end method

.method private OW()V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->Sf:Landroid/support/v4/app/Fragment$a;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    goto :goto_e

    :cond_6
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/support/v4/app/Fragment$a;->XL:Z

    iget-object v2, v0, Landroid/support/v4/app/Fragment$a;->aM:Landroid/support/v4/app/Fragment$c;

    iput-object v1, v0, Landroid/support/v4/app/Fragment$a;->aM:Landroid/support/v4/app/Fragment$c;

    move-object v1, v2

    :goto_e
    if-eqz v1, :cond_13

    invoke-interface {v1}, Landroid/support/v4/app/Fragment$c;->DW()V

    :cond_13
    return-void
.end method

.method private br()Landroid/support/v4/app/Fragment$a;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->Sf:Landroid/support/v4/app/Fragment$a;

    if-nez v0, :cond_b

    new-instance v0, Landroid/support/v4/app/Fragment$a;

    invoke-direct {v0}, Landroid/support/v4/app/Fragment$a;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->Sf:Landroid/support/v4/app/Fragment$a;

    :cond_b
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->Sf:Landroid/support/v4/app/Fragment$a;

    return-object v0
.end method

.method public static j6(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;
    .registers 8

    const-string v0, " empty constructor that is public"

    const-string v1, ": make sure class name exists, is public, and has an"

    const-string v2, "Unable to instantiate fragment "

    :try_start_6
    sget-object v3, Landroid/support/v4/app/Fragment;->j6:Labcd/x;

    invoke-virtual {v3, p1}, Labcd/x;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    if-nez v4, :cond_1b

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Labcd/x;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    const/4 p0, 0x0

    new-array v3, p0, [Ljava/lang/Class;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array p0, p0, [Ljava/lang/Object;

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/support/v4/app/Fragment;

    if-eqz p2, :cond_3a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    invoke-virtual {p0, p2}, Landroid/support/v4/app/Fragment;->J0(Landroid/os/Bundle;)V
    :try_end_3a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_3a} :catch_a9
    .catch Ljava/lang/InstantiationException; {:try_start_6 .. :try_end_3a} :catch_8d
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_3a} :catch_71
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_3a} :catch_56
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_3a} :catch_3b

    :cond_3a
    return-object p0

    :catch_3b
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": calling Fragment constructor caused an exception"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Landroid/support/v4/app/Fragment$b;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Landroid/support/v4/app/Fragment$b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :catch_56
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": could not find Fragment constructor"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Landroid/support/v4/app/Fragment$b;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Landroid/support/v4/app/Fragment$b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :catch_71
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Landroid/support/v4/app/Fragment$b;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Landroid/support/v4/app/Fragment$b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :catch_8d
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Landroid/support/v4/app/Fragment$b;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Landroid/support/v4/app/Fragment$b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :catch_a9
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Landroid/support/v4/app/Fragment$b;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Landroid/support/v4/app/Fragment$b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method

.method static synthetic j6(Landroid/support/v4/app/Fragment;)V
    .registers 1

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;->OW()V

    return-void
.end method

.method static j6(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    :try_start_0
    sget-object v0, Landroid/support/v4/app/Fragment;->j6:Labcd/x;

    invoke-virtual {v0, p1}, Labcd/x;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    if-nez v1, :cond_15

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Labcd/x;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    const-class p0, Landroid/support/v4/app/Fragment;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0
    :try_end_1b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_1b} :catch_1c

    return p0

    :catch_1c
    move-exception p0

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final BT()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->gW:Z

    return v0
.end method

.method public DW(IZI)Landroid/animation/Animator;
    .registers 4

    const/4 p1, 0x0

    return-object p1
.end method

.method public final DW()Landroid/support/v4/app/FragmentActivity;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->Mr:Landroid/support/v4/app/q;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    invoke-virtual {v0}, Landroid/support/v4/app/q;->Hw()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    :goto_c
    return-object v0
.end method

.method DW(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->U2:Landroid/support/v4/app/x;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/support/v4/app/x;->Mr()V

    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->XL:Z

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->j6(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method DW(I)V
    .registers 3

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;->br()Landroid/support/v4/app/Fragment$a;

    move-result-object v0

    iput p1, v0, Landroid/support/v4/app/Fragment$a;->FH:I

    return-void
.end method

.method public DW(Landroid/os/Bundle;)V
    .registers 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v4/app/Fragment;->SI:Z

    return-void
.end method

.method public DW(Landroid/support/v4/app/Fragment;)V
    .registers 2

    return-void
.end method

.method public DW(Landroid/view/Menu;)V
    .registers 2

    return-void
.end method

.method public DW(Z)V
    .registers 2

    return-void
.end method

.method DW(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .registers 5

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->gW:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->ei:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->nw:Z

    if-eqz v0, :cond_12

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/app/Fragment;->j6(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const/4 v0, 0x1

    const/4 v1, 0x1

    :cond_12
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->U2:Landroid/support/v4/app/x;

    if-eqz v0, :cond_1b

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/x;->j6(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result p1

    or-int/2addr v1, p1

    :cond_1b
    return v1
.end method

.method public DW(Landroid/view/MenuItem;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public EQ()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->Sf:Landroid/support/v4/app/Fragment$a;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    invoke-static {v0}, Landroid/support/v4/app/Fragment$a;->FH(Landroid/support/v4/app/Fragment$a;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method EQ(Landroid/os/Bundle;)V
    .registers 4

    if-eqz p1, :cond_20

    const-string v0, "android:support:fragments"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_20

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->U2:Landroid/support/v4/app/x;

    if-nez v0, :cond_11

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->er()V

    :cond_11
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->U2:Landroid/support/v4/app/x;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->a8:Landroid/support/v4/app/y;

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/x;->j6(Landroid/os/Parcelable;Landroid/support/v4/app/y;)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v4/app/Fragment;->a8:Landroid/support/v4/app/y;

    iget-object p1, p0, Landroid/support/v4/app/Fragment;->U2:Landroid/support/v4/app/x;

    invoke-virtual {p1}, Landroid/support/v4/app/x;->VH()V

    :cond_20
    return-void
.end method

.method public FH(Landroid/os/Bundle;)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->SI:Z

    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->EQ(Landroid/os/Bundle;)V

    iget-object p1, p0, Landroid/support/v4/app/Fragment;->U2:Landroid/support/v4/app/x;

    if-eqz p1, :cond_15

    invoke-virtual {p1, v0}, Landroid/support/v4/app/x;->FH(I)Z

    move-result p1

    if-nez p1, :cond_15

    iget-object p1, p0, Landroid/support/v4/app/Fragment;->U2:Landroid/support/v4/app/x;

    invoke-virtual {p1}, Landroid/support/v4/app/x;->VH()V

    :cond_15
    return-void
.end method

.method FH(Landroid/view/Menu;)V
    .registers 3

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->gW:Z

    if-nez v0, :cond_16

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->ei:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->nw:Z

    if-eqz v0, :cond_f

    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->j6(Landroid/view/Menu;)V

    :cond_f
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->U2:Landroid/support/v4/app/x;

    if-eqz v0, :cond_16

    invoke-virtual {v0, p1}, Landroid/support/v4/app/x;->j6(Landroid/view/Menu;)V

    :cond_16
    return-void
.end method

.method public FH(Z)V
    .registers 2

    return-void
.end method

.method public FH()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->Sf:Landroid/support/v4/app/Fragment$a;

    if-eqz v0, :cond_16

    invoke-static {v0}, Landroid/support/v4/app/Fragment$a;->VH(Landroid/support/v4/app/Fragment$a;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_16

    :cond_b
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->Sf:Landroid/support/v4/app/Fragment$a;

    invoke-static {v0}, Landroid/support/v4/app/Fragment$a;->VH(Landroid/support/v4/app/Fragment$a;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_17

    :cond_16
    :goto_16
    const/4 v0, 0x1

    :goto_17
    return v0
.end method

.method FH(Landroid/view/MenuItem;)Z
    .registers 4

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->gW:Z

    if-nez v0, :cond_17

    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->j6(Landroid/view/MenuItem;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    return v1

    :cond_c
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->U2:Landroid/support/v4/app/x;

    if-eqz v0, :cond_17

    invoke-virtual {v0, p1}, Landroid/support/v4/app/x;->j6(Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_17

    return v1

    :cond_17
    const/4 p1, 0x0

    return p1
.end method

.method public Hw(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->j6(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p1

    return-object p1
.end method

.method Hw(Z)V
    .registers 3

    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->DW(Z)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->U2:Landroid/support/v4/app/x;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Landroid/support/v4/app/x;->j6(Z)V

    :cond_a
    return-void
.end method

.method public Hw()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->Sf:Landroid/support/v4/app/Fragment$a;

    if-eqz v0, :cond_16

    invoke-static {v0}, Landroid/support/v4/app/Fragment$a;->gn(Landroid/support/v4/app/Fragment$a;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_16

    :cond_b
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->Sf:Landroid/support/v4/app/Fragment$a;

    invoke-static {v0}, Landroid/support/v4/app/Fragment$a;->gn(Landroid/support/v4/app/Fragment$a;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_17

    :cond_16
    :goto_16
    const/4 v0, 0x1

    :goto_17
    return v0
.end method

.method Hw(Landroid/view/Menu;)Z
    .registers 4

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->gW:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->ei:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->nw:Z

    if-eqz v0, :cond_12

    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->DW(Landroid/view/Menu;)V

    const/4 v0, 0x1

    const/4 v1, 0x1

    :cond_12
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->U2:Landroid/support/v4/app/x;

    if-eqz v0, :cond_1b

    invoke-virtual {v0, p1}, Landroid/support/v4/app/x;->DW(Landroid/view/Menu;)Z

    move-result p1

    or-int/2addr v1, p1

    :cond_1b
    return v1
.end method

.method Hw(Landroid/view/MenuItem;)Z
    .registers 4

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->gW:Z

    if-nez v0, :cond_1f

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->ei:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->nw:Z

    if-eqz v0, :cond_14

    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->DW(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_14

    return v1

    :cond_14
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->U2:Landroid/support/v4/app/x;

    if-eqz v0, :cond_1f

    invoke-virtual {v0, p1}, Landroid/support/v4/app/x;->DW(Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_1f

    return v1

    :cond_1f
    const/4 p1, 0x0

    return p1
.end method

.method I()V
    .registers 2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->onLowMemory()V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->U2:Landroid/support/v4/app/x;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/support/v4/app/x;->tp()V

    :cond_a
    return-void
.end method

.method public final J0()Landroid/support/v4/app/r;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->j3:Landroid/support/v4/app/x;

    return-object v0
.end method

.method public J0(Landroid/os/Bundle;)V
    .registers 3

    iget v0, p0, Landroid/support/v4/app/Fragment;->Zo:I

    if-ltz v0, :cond_13

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->nw()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_13

    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Fragment already active and state has been saved"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_13
    :goto_13
    iput-object p1, p0, Landroid/support/v4/app/Fragment;->gn:Landroid/os/Bundle;

    return-void
.end method

.method J8()I
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->Sf:Landroid/support/v4/app/Fragment$a;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget v0, v0, Landroid/support/v4/app/Fragment$a;->Hw:I

    return v0
.end method

.method public KD()V
    .registers 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->SI:Z

    iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->ef:Z

    if-nez v1, :cond_16

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->ef:Z

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->Mr:Landroid/support/v4/app/q;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->VH:Ljava/lang/String;

    iget-boolean v2, p0, Landroid/support/v4/app/Fragment;->sG:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/q;->j6(Ljava/lang/String;ZZ)Landroid/support/v4/app/U;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->dx:Landroid/support/v4/app/U;

    :cond_16
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dx:Landroid/support/v4/app/U;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/support/v4/app/U;->j6()V

    :cond_1d
    return-void
.end method

.method public Mr()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->Sf:Landroid/support/v4/app/Fragment$a;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    invoke-static {v0}, Landroid/support/v4/app/Fragment$a;->v5(Landroid/support/v4/app/Fragment$a;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method Mz()V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->SI:Z

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->sh()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->I:Landroid/view/LayoutInflater;

    iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->SI:Z

    if-eqz v1, :cond_3d

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->U2:Landroid/support/v4/app/x;

    if-eqz v1, :cond_3c

    iget-boolean v2, p0, Landroid/support/v4/app/Fragment;->P8:Z

    if-eqz v2, :cond_1b

    invoke-virtual {v1}, Landroid/support/v4/app/x;->gn()V

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->U2:Landroid/support/v4/app/x;

    goto :goto_3c

    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Child FragmentManager of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " was not "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " destroyed and this fragment is not retaining instance"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3c
    :goto_3c
    return-void

    :cond_3d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onDetach()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Landroid/support/v4/app/ma;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/support/v4/app/ma;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method final P8()Z
    .registers 2

    iget v0, p0, Landroid/support/v4/app/Fragment;->aM:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method QX()I
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->Sf:Landroid/support/v4/app/Fragment$a;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget v0, v0, Landroid/support/v4/app/Fragment$a;->Zo:I

    return v0
.end method

.method Qq()V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->U2:Landroid/support/v4/app/x;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/support/v4/app/x;->Mr()V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->U2:Landroid/support/v4/app/x;

    invoke-virtual {v0}, Landroid/support/v4/app/x;->XL()Z

    :cond_c
    const/4 v0, 0x5

    iput v0, p0, Landroid/support/v4/app/Fragment;->FH:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->SI:Z

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->dx()V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->SI:Z

    if-eqz v0, :cond_2d

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->U2:Landroid/support/v4/app/x;

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroid/support/v4/app/x;->J0()V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->U2:Landroid/support/v4/app/x;

    invoke-virtual {v0}, Landroid/support/v4/app/x;->XL()Z

    :cond_25
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->x9:Landroid/arch/lifecycle/e;

    sget-object v1, Landroid/arch/lifecycle/a$a;->ON_RESUME:Landroid/arch/lifecycle/a$a;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/e;->DW(Landroid/arch/lifecycle/a$a;)V

    return-void

    :cond_2d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onResume()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Landroid/support/v4/app/ma;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/support/v4/app/ma;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method SI()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->U2:Landroid/support/v4/app/x;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/support/v4/app/x;->Mr()V

    :cond_7
    return-void
.end method

.method Sf()Landroid/support/v4/app/r;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->U2:Landroid/support/v4/app/x;

    return-object v0
.end method

.method public U2()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->Sf:Landroid/support/v4/app/Fragment$a;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    invoke-static {v0}, Landroid/support/v4/app/Fragment$a;->Zo(Landroid/support/v4/app/Fragment$a;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroid/support/v4/app/Fragment;->DW:Ljava/lang/Object;

    if-ne v0, v1, :cond_13

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->Mr()Ljava/lang/Object;

    move-result-object v0

    goto :goto_19

    :cond_13
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->Sf:Landroid/support/v4/app/Fragment$a;

    invoke-static {v0}, Landroid/support/v4/app/Fragment$a;->Zo(Landroid/support/v4/app/Fragment$a;)Ljava/lang/Object;

    move-result-object v0

    :goto_19
    return-object v0
.end method

.method public final VH()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->gn:Landroid/os/Bundle;

    return-object v0
.end method

.method VH(Landroid/os/Bundle;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->U2:Landroid/support/v4/app/x;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/support/v4/app/x;->Mr()V

    :cond_7
    const/4 v0, 0x2

    iput v0, p0, Landroid/support/v4/app/Fragment;->FH:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->SI:Z

    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->DW(Landroid/os/Bundle;)V

    iget-boolean p1, p0, Landroid/support/v4/app/Fragment;->SI:Z

    if-eqz p1, :cond_1c

    iget-object p1, p0, Landroid/support/v4/app/Fragment;->U2:Landroid/support/v4/app/x;

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Landroid/support/v4/app/x;->Zo()V

    :cond_1b
    return-void

    :cond_1c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Fragment "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " did not call through to super.onActivityCreated()"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Landroid/support/v4/app/ma;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/support/v4/app/ma;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public VH(Z)V
    .registers 3

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->nw:Z

    if-eq v0, p1, :cond_1b

    iput-boolean p1, p0, Landroid/support/v4/app/Fragment;->nw:Z

    iget-boolean p1, p0, Landroid/support/v4/app/Fragment;->ei:Z

    if-eqz p1, :cond_1b

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->yS()Z

    move-result p1

    if-eqz p1, :cond_1b

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->BT()Z

    move-result p1

    if-nez p1, :cond_1b

    iget-object p1, p0, Landroid/support/v4/app/Fragment;->Mr:Landroid/support/v4/app/q;

    invoke-virtual {p1}, Landroid/support/v4/app/q;->we()V

    :cond_1b
    return-void
.end method

.method Ws()I
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->Sf:Landroid/support/v4/app/Fragment$a;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget v0, v0, Landroid/support/v4/app/Fragment$a;->v5:I

    return v0
.end method

.method public XL()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->Sf:Landroid/support/v4/app/Fragment$a;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    invoke-static {v0}, Landroid/support/v4/app/Fragment$a;->Hw(Landroid/support/v4/app/Fragment$a;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroid/support/v4/app/Fragment;->DW:Ljava/lang/Object;

    if-ne v0, v1, :cond_13

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->EQ()Ljava/lang/Object;

    move-result-object v0

    goto :goto_19

    :cond_13
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->Sf:Landroid/support/v4/app/Fragment$a;

    invoke-static {v0}, Landroid/support/v4/app/Fragment$a;->Hw(Landroid/support/v4/app/Fragment$a;)Ljava/lang/Object;

    move-result-object v0

    :goto_19
    return-object v0
.end method

.method Zo()Landroid/animation/Animator;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->Sf:Landroid/support/v4/app/Fragment$a;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    iget-object v0, v0, Landroid/support/v4/app/Fragment$a;->DW:Landroid/animation/Animator;

    return-object v0
.end method

.method public Zo(Landroid/os/Bundle;)V
    .registers 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v4/app/Fragment;->SI:Z

    return-void
.end method

.method Zo(Z)V
    .registers 3

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;->br()Landroid/support/v4/app/Fragment$a;

    move-result-object v0

    iput-boolean p1, v0, Landroid/support/v4/app/Fragment$a;->j3:Z

    return-void
.end method

.method a8()I
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->Sf:Landroid/support/v4/app/Fragment$a;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget v0, v0, Landroid/support/v4/app/Fragment$a;->FH:I

    return v0
.end method

.method public final aM()Landroid/content/res/Resources;
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->Mr:Landroid/support/v4/app/q;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/support/v4/app/q;->v5()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " not attached to Activity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method aj()V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->x9:Landroid/arch/lifecycle/e;

    sget-object v1, Landroid/arch/lifecycle/a$a;->ON_STOP:Landroid/arch/lifecycle/a$a;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/e;->DW(Landroid/arch/lifecycle/a$a;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->U2:Landroid/support/v4/app/x;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/support/v4/app/x;->Ws()V

    :cond_e
    const/4 v0, 0x3

    iput v0, p0, Landroid/support/v4/app/Fragment;->FH:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->SI:Z

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->ef()V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->SI:Z

    if-eqz v0, :cond_1c

    return-void

    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onStop()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Landroid/support/v4/app/ma;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/support/v4/app/ma;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method ca()V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->x9:Landroid/arch/lifecycle/e;

    sget-object v1, Landroid/arch/lifecycle/a$a;->ON_PAUSE:Landroid/arch/lifecycle/a$a;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/e;->DW(Landroid/arch/lifecycle/a$a;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->U2:Landroid/support/v4/app/x;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/support/v4/app/x;->EQ()V

    :cond_e
    const/4 v0, 0x4

    iput v0, p0, Landroid/support/v4/app/Fragment;->FH:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->SI:Z

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->cb()V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->SI:Z

    if-eqz v0, :cond_1c

    return-void

    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onPause()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Landroid/support/v4/app/ma;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/support/v4/app/ma;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public cb()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->SI:Z

    return-void
.end method

.method public cn()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->SI:Z

    return-void
.end method

.method public dx()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->SI:Z

    return-void
.end method

.method public ef()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->SI:Z

    return-void
.end method

.method ei()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->Sf:Landroid/support/v4/app/Fragment$a;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget-boolean v0, v0, Landroid/support/v4/app/Fragment$a;->XL:Z

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method er()V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->Mr:Landroid/support/v4/app/q;

    if-eqz v0, :cond_16

    new-instance v0, Landroid/support/v4/app/x;

    invoke-direct {v0}, Landroid/support/v4/app/x;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->U2:Landroid/support/v4/app/x;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->Mr:Landroid/support/v4/app/q;

    new-instance v2, Landroid/support/v4/app/l;

    invoke-direct {v2, p0}, Landroid/support/v4/app/l;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/x;->j6(Landroid/support/v4/app/q;Landroid/support/v4/app/o;Landroid/support/v4/app/Fragment;)V

    return-void

    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment has not been attached yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method g3()V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->U2:Landroid/support/v4/app/x;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/support/v4/app/x;->u7()V

    :cond_7
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/app/Fragment;->FH:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->SI:Z

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->cn()V

    iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->SI:Z

    if-eqz v1, :cond_1e

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->dx:Landroid/support/v4/app/U;

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Landroid/support/v4/app/U;->DW()V

    :cond_1b
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->XL:Z

    return-void

    :cond_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onDestroyView()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Landroid/support/v4/app/ma;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/support/v4/app/ma;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final gW()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->BT:Z

    return v0
.end method

.method public final gn()Landroid/support/v4/app/r;
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->U2:Landroid/support/v4/app/x;

    if-nez v0, :cond_2c

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->er()V

    iget v0, p0, Landroid/support/v4/app/Fragment;->FH:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_12

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->U2:Landroid/support/v4/app/x;

    invoke-virtual {v0}, Landroid/support/v4/app/x;->J0()V

    goto :goto_2c

    :cond_12
    const/4 v1, 0x4

    if-lt v0, v1, :cond_1b

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->U2:Landroid/support/v4/app/x;

    invoke-virtual {v0}, Landroid/support/v4/app/x;->J8()V

    goto :goto_2c

    :cond_1b
    const/4 v1, 0x2

    if-lt v0, v1, :cond_24

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->U2:Landroid/support/v4/app/x;

    invoke-virtual {v0}, Landroid/support/v4/app/x;->Zo()V

    goto :goto_2c

    :cond_24
    const/4 v1, 0x1

    if-lt v0, v1, :cond_2c

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->U2:Landroid/support/v4/app/x;

    invoke-virtual {v0}, Landroid/support/v4/app/x;->VH()V

    :cond_2c
    :goto_2c
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->U2:Landroid/support/v4/app/x;

    return-object v0
.end method

.method gn(Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->U2:Landroid/support/v4/app/x;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/support/v4/app/x;->Mr()V

    :cond_7
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/app/Fragment;->FH:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->SI:Z

    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->FH(Landroid/os/Bundle;)V

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->ca:Z

    iget-boolean p1, p0, Landroid/support/v4/app/Fragment;->SI:Z

    if-eqz p1, :cond_1e

    iget-object p1, p0, Landroid/support/v4/app/Fragment;->x9:Landroid/arch/lifecycle/e;

    sget-object v0, Landroid/arch/lifecycle/a$a;->ON_CREATE:Landroid/arch/lifecycle/a$a;

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/e;->DW(Landroid/arch/lifecycle/a$a;)V

    return-void

    :cond_1e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Fragment "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " did not call through to super.onCreate()"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Landroid/support/v4/app/ma;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/support/v4/app/ma;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public gn(Z)V
    .registers 4

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->cb:Z

    const/4 v1, 0x4

    if-nez v0, :cond_1a

    if-eqz p1, :cond_1a

    iget v0, p0, Landroid/support/v4/app/Fragment;->FH:I

    if-ge v0, v1, :cond_1a

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->j3:Landroid/support/v4/app/x;

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->yS()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->j3:Landroid/support/v4/app/x;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/x;->EQ(Landroid/support/v4/app/Fragment;)V

    :cond_1a
    iput-boolean p1, p0, Landroid/support/v4/app/Fragment;->cb:Z

    iget v0, p0, Landroid/support/v4/app/Fragment;->FH:I

    if-ge v0, v1, :cond_24

    if-nez p1, :cond_24

    const/4 p1, 0x1

    goto :goto_25

    :cond_24
    const/4 p1, 0x0

    :goto_25
    iput-boolean p1, p0, Landroid/support/v4/app/Fragment;->sh:Z

    return-void
.end method

.method public final hashCode()I
    .registers 2

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public j3()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->Sf:Landroid/support/v4/app/Fragment$a;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    invoke-static {v0}, Landroid/support/v4/app/Fragment$a;->DW(Landroid/support/v4/app/Fragment$a;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroid/support/v4/app/Fragment;->DW:Ljava/lang/Object;

    if-ne v0, v1, :cond_13

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->u7()Ljava/lang/Object;

    move-result-object v0

    goto :goto_19

    :cond_13
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->Sf:Landroid/support/v4/app/Fragment$a;

    invoke-static {v0}, Landroid/support/v4/app/Fragment$a;->DW(Landroid/support/v4/app/Fragment$a;)Ljava/lang/Object;

    move-result-object v0

    :goto_19
    return-object v0
.end method

.method public j6()Landroid/arch/lifecycle/a;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->x9:Landroid/arch/lifecycle/e;

    return-object v0
.end method

.method j6(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->VH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-object p0

    :cond_9
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->U2:Landroid/support/v4/app/x;

    if-eqz v0, :cond_12

    invoke-virtual {v0, p1}, Landroid/support/v4/app/x;->DW(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    return-object p1

    :cond_12
    const/4 p1, 0x0

    return-object p1
.end method

.method public j6(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p1, p0, Landroid/support/v4/app/Fragment;->Mr:Landroid/support/v4/app/q;

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Landroid/support/v4/app/q;->u7()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->gn()Landroid/support/v4/app/r;

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->U2:Landroid/support/v4/app/x;

    invoke-virtual {v0}, Landroid/support/v4/app/x;->aM()Landroid/view/LayoutInflater$Factory2;

    invoke-static {p1, v0}, Landroid/support/v4/view/g;->DW(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    return-object p1

    :cond_14
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j6(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 4

    const/4 p1, 0x0

    return-object p1
.end method

.method public j6(IZI)Landroid/view/animation/Animation;
    .registers 4

    const/4 p1, 0x0

    return-object p1
.end method

.method j6(I)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->Sf:Landroid/support/v4/app/Fragment$a;

    if-nez v0, :cond_7

    if-nez p1, :cond_7

    return-void

    :cond_7
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;->br()Landroid/support/v4/app/Fragment$a;

    move-result-object v0

    iput p1, v0, Landroid/support/v4/app/Fragment$a;->Hw:I

    return-void
.end method

.method j6(II)V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->Sf:Landroid/support/v4/app/Fragment$a;

    if-nez v0, :cond_9

    if-nez p1, :cond_9

    if-nez p2, :cond_9

    return-void

    :cond_9
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;->br()Landroid/support/v4/app/Fragment$a;

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->Sf:Landroid/support/v4/app/Fragment$a;

    iput p1, v0, Landroid/support/v4/app/Fragment$a;->v5:I

    iput p2, v0, Landroid/support/v4/app/Fragment$a;->Zo:I

    return-void
.end method

.method public j6(IILandroid/content/Intent;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Object;IILandroid/content/Intent;)V

    return-void
.end method

.method final j6(ILandroid/support/v4/app/Fragment;)V
    .registers 3

    iput p1, p0, Landroid/support/v4/app/Fragment;->Zo:I

    new-instance p1, Ljava/lang/StringBuilder;

    if-eqz p2, :cond_11

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p2, Landroid/support/v4/app/Fragment;->VH:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    goto :goto_16

    :cond_11
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "android:fragment:"

    :goto_16
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Landroid/support/v4/app/Fragment;->Zo:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/app/Fragment;->VH:Ljava/lang/String;

    return-void
.end method

.method public j6(I[Ljava/lang/String;[I)V
    .registers 4

    return-void
.end method

.method j6(Landroid/animation/Animator;)V
    .registers 3

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;->br()Landroid/support/v4/app/Fragment$a;

    move-result-object v0

    iput-object p1, v0, Landroid/support/v4/app/Fragment$a;->DW:Landroid/animation/Animator;

    return-void
.end method

.method public j6(Landroid/app/Activity;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v4/app/Fragment;->SI:Z

    return-void
.end method

.method public j6(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v4/app/Fragment;->SI:Z

    return-void
.end method

.method public j6(Landroid/content/Context;)V
    .registers 3

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v4/app/Fragment;->SI:Z

    iget-object p1, p0, Landroid/support/v4/app/Fragment;->Mr:Landroid/support/v4/app/q;

    if-nez p1, :cond_9

    const/4 p1, 0x0

    goto :goto_d

    :cond_9
    invoke-virtual {p1}, Landroid/support/v4/app/q;->Hw()Landroid/app/Activity;

    move-result-object p1

    :goto_d
    if-eqz p1, :cond_15

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->SI:Z

    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->j6(Landroid/app/Activity;)V

    :cond_15
    return-void
.end method

.method public j6(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .registers 5

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v4/app/Fragment;->SI:Z

    iget-object p1, p0, Landroid/support/v4/app/Fragment;->Mr:Landroid/support/v4/app/q;

    if-nez p1, :cond_9

    const/4 p1, 0x0

    goto :goto_d

    :cond_9
    invoke-virtual {p1}, Landroid/support/v4/app/q;->Hw()Landroid/app/Activity;

    move-result-object p1

    :goto_d
    if-eqz p1, :cond_15

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->SI:Z

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->j6(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    :cond_15
    return-void
.end method

.method public j6(Landroid/content/Intent;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/app/Fragment;->j6(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public j6(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->Mr:Landroid/support/v4/app/q;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/v4/app/q;->j6(Landroid/support/v4/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void

    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Fragment "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " not attached to Activity"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method j6(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->U2:Landroid/support/v4/app/x;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Landroid/support/v4/app/x;->j6(Landroid/content/res/Configuration;)V

    :cond_a
    return-void
.end method

.method public j6(Landroid/support/v4/app/Fragment$SavedState;)V
    .registers 3

    iget v0, p0, Landroid/support/v4/app/Fragment;->Zo:I

    if-gez v0, :cond_f

    if-eqz p1, :cond_b

    iget-object p1, p1, Landroid/support/v4/app/Fragment$SavedState;->j6:Landroid/os/Bundle;

    if-eqz p1, :cond_b

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    iput-object p1, p0, Landroid/support/v4/app/Fragment;->Hw:Landroid/os/Bundle;

    return-void

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Fragment already active"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method j6(Landroid/support/v4/app/Fragment$c;)V
    .registers 4

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;->br()Landroid/support/v4/app/Fragment$a;

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->Sf:Landroid/support/v4/app/Fragment$a;

    iget-object v0, v0, Landroid/support/v4/app/Fragment$a;->aM:Landroid/support/v4/app/Fragment$c;

    if-ne p1, v0, :cond_a

    return-void

    :cond_a
    if-eqz p1, :cond_26

    if-nez v0, :cond_f

    goto :goto_26

    :cond_f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Trying to set a replacement startPostponedEnterTransition on "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    :goto_26
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->Sf:Landroid/support/v4/app/Fragment$a;

    iget-boolean v1, v0, Landroid/support/v4/app/Fragment$a;->XL:Z

    if-eqz v1, :cond_2e

    iput-object p1, v0, Landroid/support/v4/app/Fragment$a;->aM:Landroid/support/v4/app/Fragment$c;

    :cond_2e
    if-eqz p1, :cond_33

    invoke-interface {p1}, Landroid/support/v4/app/Fragment$c;->j6()V

    :cond_33
    return-void
.end method

.method public j6(Landroid/view/Menu;)V
    .registers 2

    return-void
.end method

.method public j6(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 3

    return-void
.end method

.method j6(Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;->br()Landroid/support/v4/app/Fragment$a;

    move-result-object v0

    iput-object p1, v0, Landroid/support/v4/app/Fragment$a;->j6:Landroid/view/View;

    return-void
.end method

.method public j6(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public j6(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/Fragment;->rN:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mContainerId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/Fragment;->er:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mTag="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->yS:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/Fragment;->FH:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mIndex="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/Fragment;->Zo:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mWho="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->VH:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBackStackNesting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/Fragment;->aM:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAdded="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->we:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mRemoving="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->J0:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mFromLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->J8:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mInLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->Ws:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHidden="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->gW:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mDetached="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->BT:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mMenuVisible="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->nw:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mHasMenu="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->ei:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRetainInstance="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->vy:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mRetaining="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->P8:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mUserVisibleHint="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->cb:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->j3:Landroid/support/v4/app/x;

    if-eqz v0, :cond_dc

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentManager="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->j3:Landroid/support/v4/app/x;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_dc
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->Mr:Landroid/support/v4/app/q;

    if-eqz v0, :cond_ed

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHost="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->Mr:Landroid/support/v4/app/q;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_ed
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->lg:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_fe

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mParentFragment="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->lg:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_fe
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->gn:Landroid/os/Bundle;

    if-eqz v0, :cond_10f

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mArguments="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->gn:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_10f
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->Hw:Landroid/os/Bundle;

    if-eqz v0, :cond_120

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedFragmentState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->Hw:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_120
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->v5:Landroid/util/SparseArray;

    if-eqz v0, :cond_131

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedViewState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->v5:Landroid/util/SparseArray;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_131
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->u7:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_14c

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTarget="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->u7:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " mTargetRequestCode="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/Fragment;->EQ:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_14c
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->J8()I

    move-result v0

    if-eqz v0, :cond_161

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAnim="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->J8()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_161
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->KD:Landroid/view/ViewGroup;

    if-eqz v0, :cond_172

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContainer="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->KD:Landroid/view/ViewGroup;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_172
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->ro:Landroid/view/View;

    if-eqz v0, :cond_183

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->ro:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_183
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->cn:Landroid/view/View;

    if-eqz v0, :cond_194

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mInnerView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->ro:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_194
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->v5()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1b8

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAnimatingAway="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->v5()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStateAfterAnimating="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->a8()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_1b8
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dx:Landroid/support/v4/app/U;

    const-string v1, "  "

    if-eqz v0, :cond_1da

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Loader Manager:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dx:Landroid/support/v4/app/U;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p2, p3, p4}, Landroid/support/v4/app/U;->j6(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_1da
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->U2:Landroid/support/v4/app/x;

    if-eqz v0, :cond_210

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Child "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v4/app/Fragment;->U2:Landroid/support/v4/app/x;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->U2:Landroid/support/v4/app/x;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/x;->j6(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_210
    return-void
.end method

.method public j6(Z)V
    .registers 2

    return-void
.end method

.method public j6(Landroid/view/MenuItem;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public lg()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->ro:Landroid/view/View;

    return-object v0
.end method

.method public lp()V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->j3:Landroid/support/v4/app/x;

    if-eqz v0, :cond_30

    iget-object v0, v0, Landroid/support/v4/app/x;->j3:Landroid/support/v4/app/q;

    if-nez v0, :cond_9

    goto :goto_30

    :cond_9
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->j3:Landroid/support/v4/app/x;

    iget-object v1, v1, Landroid/support/v4/app/x;->j3:Landroid/support/v4/app/q;

    invoke-virtual {v1}, Landroid/support/v4/app/q;->VH()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_2c

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->j3:Landroid/support/v4/app/x;

    iget-object v0, v0, Landroid/support/v4/app/x;->j3:Landroid/support/v4/app/q;

    invoke-virtual {v0}, Landroid/support/v4/app/q;->VH()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/support/v4/app/k;

    invoke-direct {v1, p0}, Landroid/support/v4/app/k;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_37

    :cond_2c
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;->OW()V

    goto :goto_37

    :cond_30
    :goto_30
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;->br()Landroid/support/v4/app/Fragment$a;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v4/app/Fragment$a;->XL:Z

    :goto_37
    return-void
.end method

.method public final nw()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->j3:Landroid/support/v4/app/x;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    invoke-virtual {v0}, Landroid/support/v4/app/x;->Hw()Z

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v4/app/Fragment;->SI:Z

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 5

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->DW()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onLowMemory()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->SI:Z

    return-void
.end method

.method rN()V
    .registers 3

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/Fragment;->Zo:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->VH:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->we:Z

    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->J0:Z

    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->J8:Z

    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->Ws:Z

    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->QX:Z

    iput v1, p0, Landroid/support/v4/app/Fragment;->aM:I

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->j3:Landroid/support/v4/app/x;

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->U2:Landroid/support/v4/app/x;

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->Mr:Landroid/support/v4/app/q;

    iput v1, p0, Landroid/support/v4/app/Fragment;->rN:I

    iput v1, p0, Landroid/support/v4/app/Fragment;->er:I

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->yS:Ljava/lang/String;

    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->gW:Z

    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->BT:Z

    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->P8:Z

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->dx:Landroid/support/v4/app/U;

    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->sG:Z

    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->ef:Z

    return-void
.end method

.method public ro()V
    .registers 1

    return-void
.end method

.method public sG()V
    .registers 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->SI:Z

    iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->sG:Z

    if-nez v1, :cond_22

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->sG:Z

    iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->ef:Z

    if-nez v1, :cond_1b

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->ef:Z

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->Mr:Landroid/support/v4/app/q;

    iget-object v2, p0, Landroid/support/v4/app/Fragment;->VH:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/q;->j6(Ljava/lang/String;ZZ)Landroid/support/v4/app/U;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->dx:Landroid/support/v4/app/U;

    goto :goto_22

    :cond_1b
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dx:Landroid/support/v4/app/U;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Landroid/support/v4/app/U;->v5()V

    :cond_22
    :goto_22
    return-void
.end method

.method public sh()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->SI:Z

    return-void
.end method

.method sy()V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->U2:Landroid/support/v4/app/x;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/support/v4/app/x;->Mr()V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->U2:Landroid/support/v4/app/x;

    invoke-virtual {v0}, Landroid/support/v4/app/x;->XL()Z

    :cond_c
    const/4 v0, 0x4

    iput v0, p0, Landroid/support/v4/app/Fragment;->FH:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->SI:Z

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->sG()V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->SI:Z

    if-eqz v0, :cond_2f

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->U2:Landroid/support/v4/app/x;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/support/v4/app/x;->J8()V

    :cond_20
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dx:Landroid/support/v4/app/U;

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Landroid/support/v4/app/U;->FH()V

    :cond_27
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->x9:Landroid/arch/lifecycle/e;

    sget-object v1, Landroid/arch/lifecycle/a$a;->ON_START:Landroid/arch/lifecycle/a$a;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/e;->DW(Landroid/arch/lifecycle/a$a;)V

    return-void

    :cond_2f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onStart()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Landroid/support/v4/app/ma;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/support/v4/app/ma;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p0, v0}, Labcd/o;->j6(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    iget v1, p0, Landroid/support/v4/app/Fragment;->Zo:I

    if-ltz v1, :cond_18

    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/app/Fragment;->Zo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_18
    iget v1, p0, Landroid/support/v4/app/Fragment;->rN:I

    if-eqz v1, :cond_2a

    const-string v1, " id=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/app/Fragment;->rN:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2a
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->yS:Ljava/lang/String;

    if-eqz v1, :cond_38

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->yS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_38
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method tp()Landroid/support/v4/app/la;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->Sf:Landroid/support/v4/app/Fragment$a;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    iget-object v0, v0, Landroid/support/v4/app/Fragment$a;->Ws:Landroid/support/v4/app/la;

    return-object v0
.end method

.method tp(Landroid/os/Bundle;)V
    .registers 4

    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->v5(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->U2:Landroid/support/v4/app/x;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/support/v4/app/x;->lg()Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_12

    const-string v1, "android:support:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_12
    return-void
.end method

.method u7(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->Hw(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/app/Fragment;->I:Landroid/view/LayoutInflater;

    return-object p1
.end method

.method public u7()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->Sf:Landroid/support/v4/app/Fragment$a;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    invoke-static {v0}, Landroid/support/v4/app/Fragment$a;->j6(Landroid/support/v4/app/Fragment$a;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method v5()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->Sf:Landroid/support/v4/app/Fragment$a;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    iget-object v0, v0, Landroid/support/v4/app/Fragment$a;->j6:Landroid/view/View;

    return-object v0
.end method

.method public v5(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method v5(Z)V
    .registers 3

    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->FH(Z)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->U2:Landroid/support/v4/app/x;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Landroid/support/v4/app/x;->DW(Z)V

    :cond_a
    return-void
.end method

.method vJ()V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->x9:Landroid/arch/lifecycle/e;

    sget-object v1, Landroid/arch/lifecycle/a$a;->ON_DESTROY:Landroid/arch/lifecycle/a$a;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/e;->DW(Landroid/arch/lifecycle/a$a;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->U2:Landroid/support/v4/app/x;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/support/v4/app/x;->gn()V

    :cond_e
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/Fragment;->FH:I

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->SI:Z

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->ca:Z

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->KD()V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->SI:Z

    if-eqz v0, :cond_20

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->U2:Landroid/support/v4/app/x;

    return-void

    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onDestroy()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Landroid/support/v4/app/ma;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/support/v4/app/ma;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method vy()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->Sf:Landroid/support/v4/app/Fragment$a;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget-boolean v0, v0, Landroid/support/v4/app/Fragment$a;->j3:Z

    return v0
.end method

.method we()Landroid/support/v4/app/la;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->Sf:Landroid/support/v4/app/Fragment$a;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    iget-object v0, v0, Landroid/support/v4/app/Fragment$a;->QX:Landroid/support/v4/app/la;

    return-object v0
.end method

.method final we(Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->v5:Landroid/util/SparseArray;

    if-eqz v0, :cond_c

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->cn:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->v5:Landroid/util/SparseArray;

    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->SI:Z

    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->Zo(Landroid/os/Bundle;)V

    iget-boolean p1, p0, Landroid/support/v4/app/Fragment;->SI:Z

    if-eqz p1, :cond_17

    return-void

    :cond_17
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Fragment "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " did not call through to super.onViewStateRestored()"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Landroid/support/v4/app/ma;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/support/v4/app/ma;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method x9()V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->U2:Landroid/support/v4/app/x;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/support/v4/app/x;->we()V

    :cond_7
    const/4 v0, 0x2

    iput v0, p0, Landroid/support/v4/app/Fragment;->FH:I

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->sG:Z

    if-eqz v0, :cond_39

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->sG:Z

    iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->ef:Z

    if-nez v1, :cond_22

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->ef:Z

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->Mr:Landroid/support/v4/app/q;

    iget-object v2, p0, Landroid/support/v4/app/Fragment;->VH:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v0}, Landroid/support/v4/app/q;->j6(Ljava/lang/String;ZZ)Landroid/support/v4/app/U;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->dx:Landroid/support/v4/app/U;

    :cond_22
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dx:Landroid/support/v4/app/U;

    if-eqz v0, :cond_39

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->Mr:Landroid/support/v4/app/q;

    invoke-virtual {v0}, Landroid/support/v4/app/q;->gn()Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dx:Landroid/support/v4/app/U;

    invoke-virtual {v0}, Landroid/support/v4/app/U;->Hw()V

    goto :goto_39

    :cond_34
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dx:Landroid/support/v4/app/U;

    invoke-virtual {v0}, Landroid/support/v4/app/U;->Zo()V

    :cond_39
    :goto_39
    return-void
.end method

.method public final yS()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->Mr:Landroid/support/v4/app/q;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->we:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method
