.class public Landroid/support/v4/app/p;
.super Ljava/lang/Object;


# instance fields
.field private final j6:Landroid/support/v4/app/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/q<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/support/v4/app/q;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/q<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/app/p;->j6:Landroid/support/v4/app/q;

    return-void
.end method

.method public static final j6(Landroid/support/v4/app/q;)Landroid/support/v4/app/p;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/q<",
            "*>;)",
            "Landroid/support/v4/app/p;"
        }
    .end annotation

    new-instance v0, Landroid/support/v4/app/p;

    invoke-direct {v0, p0}, Landroid/support/v4/app/p;-><init>(Landroid/support/v4/app/q;)V

    return-object v0
.end method


# virtual methods
.method public DW()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/p;->j6:Landroid/support/v4/app/q;

    iget-object v0, v0, Landroid/support/v4/app/q;->v5:Landroid/support/v4/app/x;

    invoke-virtual {v0}, Landroid/support/v4/app/x;->VH()V

    return-void
.end method

.method public DW(Z)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/p;->j6:Landroid/support/v4/app/q;

    iget-object v0, v0, Landroid/support/v4/app/q;->v5:Landroid/support/v4/app/x;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/x;->DW(Z)V

    return-void
.end method

.method public DW(Landroid/view/Menu;)Z
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/p;->j6:Landroid/support/v4/app/q;

    iget-object v0, v0, Landroid/support/v4/app/q;->v5:Landroid/support/v4/app/x;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/x;->DW(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public DW(Landroid/view/MenuItem;)Z
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/p;->j6:Landroid/support/v4/app/q;

    iget-object v0, v0, Landroid/support/v4/app/q;->v5:Landroid/support/v4/app/x;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/x;->DW(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public EQ()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/p;->j6:Landroid/support/v4/app/q;

    invoke-virtual {v0}, Landroid/support/v4/app/q;->FH()V

    return-void
.end method

.method public FH()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/p;->j6:Landroid/support/v4/app/q;

    iget-object v0, v0, Landroid/support/v4/app/q;->v5:Landroid/support/v4/app/x;

    invoke-virtual {v0}, Landroid/support/v4/app/x;->gn()V

    return-void
.end method

.method public FH(Z)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/p;->j6:Landroid/support/v4/app/q;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/q;->j6(Z)V

    return-void
.end method

.method public Hw()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/p;->j6:Landroid/support/v4/app/q;

    iget-object v0, v0, Landroid/support/v4/app/q;->v5:Landroid/support/v4/app/x;

    invoke-virtual {v0}, Landroid/support/v4/app/x;->tp()V

    return-void
.end method

.method public J0()Landroid/support/v4/app/r;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/p;->j6:Landroid/support/v4/app/q;

    invoke-virtual {v0}, Landroid/support/v4/app/q;->Zo()Landroid/support/v4/app/x;

    move-result-object v0

    return-object v0
.end method

.method public J8()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/p;->j6:Landroid/support/v4/app/q;

    iget-object v0, v0, Landroid/support/v4/app/q;->v5:Landroid/support/v4/app/x;

    invoke-virtual {v0}, Landroid/support/v4/app/x;->Mr()V

    return-void
.end method

.method public QX()Labcd/x;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lx<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/T;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/app/p;->j6:Landroid/support/v4/app/q;

    invoke-virtual {v0}, Landroid/support/v4/app/q;->J8()Labcd/x;

    move-result-object v0

    return-object v0
.end method

.method public VH()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/p;->j6:Landroid/support/v4/app/q;

    iget-object v0, v0, Landroid/support/v4/app/q;->v5:Landroid/support/v4/app/x;

    invoke-virtual {v0}, Landroid/support/v4/app/x;->J0()V

    return-void
.end method

.method public Ws()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/p;->j6:Landroid/support/v4/app/q;

    invoke-virtual {v0}, Landroid/support/v4/app/q;->J0()V

    return-void
.end method

.method public XL()Landroid/support/v4/app/y;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/p;->j6:Landroid/support/v4/app/q;

    iget-object v0, v0, Landroid/support/v4/app/q;->v5:Landroid/support/v4/app/x;

    invoke-virtual {v0}, Landroid/support/v4/app/x;->a8()Landroid/support/v4/app/y;

    move-result-object v0

    return-object v0
.end method

.method public Zo()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/p;->j6:Landroid/support/v4/app/q;

    iget-object v0, v0, Landroid/support/v4/app/q;->v5:Landroid/support/v4/app/x;

    invoke-virtual {v0}, Landroid/support/v4/app/x;->we()V

    return-void
.end method

.method public aM()Landroid/os/Parcelable;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/p;->j6:Landroid/support/v4/app/q;

    iget-object v0, v0, Landroid/support/v4/app/q;->v5:Landroid/support/v4/app/x;

    invoke-virtual {v0}, Landroid/support/v4/app/x;->lg()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public gn()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/p;->j6:Landroid/support/v4/app/q;

    iget-object v0, v0, Landroid/support/v4/app/q;->v5:Landroid/support/v4/app/x;

    invoke-virtual {v0}, Landroid/support/v4/app/x;->J8()V

    return-void
.end method

.method public j6(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/p;->j6:Landroid/support/v4/app/q;

    iget-object v0, v0, Landroid/support/v4/app/q;->v5:Landroid/support/v4/app/x;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/x;->DW(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public j6(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 6

    iget-object v0, p0, Landroid/support/v4/app/p;->j6:Landroid/support/v4/app/q;

    iget-object v0, v0, Landroid/support/v4/app/q;->v5:Landroid/support/v4/app/x;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/x;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public j6()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/p;->j6:Landroid/support/v4/app/q;

    iget-object v0, v0, Landroid/support/v4/app/q;->v5:Landroid/support/v4/app/x;

    invoke-virtual {v0}, Landroid/support/v4/app/x;->Zo()V

    return-void
.end method

.method public j6(Labcd/x;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/T;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/app/p;->j6:Landroid/support/v4/app/q;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/q;->j6(Labcd/x;)V

    return-void
.end method

.method public j6(Landroid/content/res/Configuration;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/p;->j6:Landroid/support/v4/app/q;

    iget-object v0, v0, Landroid/support/v4/app/q;->v5:Landroid/support/v4/app/x;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/x;->j6(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public j6(Landroid/os/Parcelable;Landroid/support/v4/app/y;)V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/app/p;->j6:Landroid/support/v4/app/q;

    iget-object v0, v0, Landroid/support/v4/app/q;->v5:Landroid/support/v4/app/x;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/x;->j6(Landroid/os/Parcelable;Landroid/support/v4/app/y;)V

    return-void
.end method

.method public j6(Landroid/support/v4/app/Fragment;)V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/app/p;->j6:Landroid/support/v4/app/q;

    iget-object v1, v0, Landroid/support/v4/app/q;->v5:Landroid/support/v4/app/x;

    invoke-virtual {v1, v0, v0, p1}, Landroid/support/v4/app/x;->j6(Landroid/support/v4/app/q;Landroid/support/v4/app/o;Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method public j6(Landroid/view/Menu;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/p;->j6:Landroid/support/v4/app/q;

    iget-object v0, v0, Landroid/support/v4/app/q;->v5:Landroid/support/v4/app/x;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/x;->j6(Landroid/view/Menu;)V

    return-void
.end method

.method public j6(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Landroid/support/v4/app/p;->j6:Landroid/support/v4/app/q;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/q;->j6(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public j6(Z)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/p;->j6:Landroid/support/v4/app/q;

    iget-object v0, v0, Landroid/support/v4/app/q;->v5:Landroid/support/v4/app/x;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/x;->j6(Z)V

    return-void
.end method

.method public j6(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .registers 4

    iget-object v0, p0, Landroid/support/v4/app/p;->j6:Landroid/support/v4/app/q;

    iget-object v0, v0, Landroid/support/v4/app/q;->v5:Landroid/support/v4/app/x;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/x;->j6(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result p1

    return p1
.end method

.method public j6(Landroid/view/MenuItem;)Z
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/p;->j6:Landroid/support/v4/app/q;

    iget-object v0, v0, Landroid/support/v4/app/q;->v5:Landroid/support/v4/app/x;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/x;->j6(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public tp()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/p;->j6:Landroid/support/v4/app/q;

    invoke-virtual {v0}, Landroid/support/v4/app/q;->DW()V

    return-void
.end method

.method public u7()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/p;->j6:Landroid/support/v4/app/q;

    iget-object v0, v0, Landroid/support/v4/app/q;->v5:Landroid/support/v4/app/x;

    invoke-virtual {v0}, Landroid/support/v4/app/x;->Ws()V

    return-void
.end method

.method public v5()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/p;->j6:Landroid/support/v4/app/q;

    iget-object v0, v0, Landroid/support/v4/app/q;->v5:Landroid/support/v4/app/x;

    invoke-virtual {v0}, Landroid/support/v4/app/x;->EQ()V

    return-void
.end method

.method public we()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/p;->j6:Landroid/support/v4/app/q;

    iget-object v0, v0, Landroid/support/v4/app/q;->v5:Landroid/support/v4/app/x;

    invoke-virtual {v0}, Landroid/support/v4/app/x;->XL()Z

    move-result v0

    return v0
.end method
