.class public Landroid/support/v4/content/Loader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/content/Loader$a;,
        Landroid/support/v4/content/Loader$b;,
        Landroid/support/v4/content/Loader$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field DW:Landroid/support/v4/content/Loader$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/Loader$c",
            "<TD;>;"
        }
    .end annotation
.end field

.field FH:Landroid/support/v4/content/Loader$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/Loader$b",
            "<TD;>;"
        }
    .end annotation
.end field

.field Hw:Landroid/content/Context;

.field VH:Z

.field Zo:Z

.field gn:Z

.field j6:I

.field u7:Z

.field v5:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->v5:Z

    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->Zo:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->VH:Z

    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->gn:Z

    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->u7:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/content/Loader;->Hw:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public DW()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->u7:Z

    return-void
.end method

.method public DW(Landroid/support/v4/content/Loader$b;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader$b",
            "<TD;>;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/content/Loader;->FH:Landroid/support/v4/content/Loader$b;

    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/content/Loader;->FH:Landroid/support/v4/content/Loader$b;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attempting to unregister the wrong listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No listener register"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public DW(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/content/Loader;->DW:Landroid/support/v4/content/Loader$c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Landroid/support/v4/content/Loader$c;->j6(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected EQ()V
    .registers 1

    return-void
.end method

.method public FH()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/content/Loader;->FH:Landroid/support/v4/content/Loader$b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroid/support/v4/content/Loader$b;->j6(Landroid/support/v4/content/Loader;)V

    :cond_0
    return-void
.end method

.method public Hw()V
    .registers 1

    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->EQ()V

    return-void
.end method

.method protected J0()V
    .registers 1

    return-void
.end method

.method protected J8()V
    .registers 1

    return-void
.end method

.method public QX()V
    .registers 2

    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->u7:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->tp()V

    :cond_0
    return-void
.end method

.method public VH()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->VH:Z

    return v0
.end method

.method public Ws()V
    .registers 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->we()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->VH:Z

    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->v5:Z

    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->Zo:Z

    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->gn:Z

    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->u7:Z

    return-void
.end method

.method public final XL()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->v5:Z

    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->VH:Z

    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->Zo:Z

    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->J0()V

    return-void
.end method

.method public Zo()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->Zo:Z

    return v0
.end method

.method public aM()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->v5:Z

    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->J8()V

    return-void
.end method

.method public gn()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->v5:Z

    return v0
.end method

.method public j3()Z
    .registers 3

    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->gn:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->gn:Z

    iget-boolean v1, p0, Landroid/support/v4/content/Loader;->u7:Z

    or-int/2addr v1, v0

    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->u7:Z

    return v0
.end method

.method public j6(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p1, v0}, Labcd/o;->j6(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j6(ILandroid/support/v4/content/Loader$c;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/support/v4/content/Loader$c",
            "<TD;>;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/content/Loader;->DW:Landroid/support/v4/content/Loader$c;

    if-nez v0, :cond_0

    iput-object p2, p0, Landroid/support/v4/content/Loader;->DW:Landroid/support/v4/content/Loader$c;

    iput p1, p0, Landroid/support/v4/content/Loader;->j6:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There is already a listener registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j6(Landroid/support/v4/content/Loader$b;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader$b",
            "<TD;>;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/content/Loader;->FH:Landroid/support/v4/content/Loader$b;

    if-nez v0, :cond_0

    iput-object p1, p0, Landroid/support/v4/content/Loader;->FH:Landroid/support/v4/content/Loader$b;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There is already a listener registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j6(Landroid/support/v4/content/Loader$c;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader$c",
            "<TD;>;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/content/Loader;->DW:Landroid/support/v4/content/Loader$c;

    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/content/Loader;->DW:Landroid/support/v4/content/Loader$c;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attempting to unregister the wrong listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No listener register"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j6(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/content/Loader;->j6:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mListener="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/content/Loader;->DW:Landroid/support/v4/content/Loader$c;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->v5:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->gn:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->u7:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->v5:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mContentChanged="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->gn:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mProcessingChange="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->u7:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_1
    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->Zo:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->VH:Z

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAbandoned="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->Zo:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mReset="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->VH:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_3
    return-void
.end method

.method public j6()Z
    .registers 2

    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->u7()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p0, v0}, Labcd/o;->j6(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/content/Loader;->j6:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tp()V
    .registers 2

    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->v5:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->Hw()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->gn:Z

    goto :goto_0
.end method

.method protected u7()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public v5()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/content/Loader;->Hw:Landroid/content/Context;

    return-object v0
.end method

.method protected we()V
    .registers 1

    return-void
.end method
