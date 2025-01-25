.class Landroid/support/v4/app/U;
.super Landroid/support/v4/app/T;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/U$a;
    }
.end annotation


# static fields
.field static j6:Z


# instance fields
.field final DW:Labcd/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly<",
            "Landroid/support/v4/app/U$a;",
            ">;"
        }
    .end annotation
.end field

.field final FH:Labcd/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly<",
            "Landroid/support/v4/app/U$a;",
            ">;"
        }
    .end annotation
.end field

.field final Hw:Ljava/lang/String;

.field VH:Landroid/support/v4/app/q;

.field Zo:Z

.field v5:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/support/v4/app/q;Z)V
    .registers 5

    invoke-direct {p0}, Landroid/support/v4/app/T;-><init>()V

    new-instance v0, Labcd/y;

    invoke-direct {v0}, Labcd/y;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/U;->DW:Labcd/y;

    new-instance v0, Labcd/y;

    invoke-direct {v0}, Labcd/y;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/U;->FH:Labcd/y;

    iput-object p1, p0, Landroid/support/v4/app/U;->Hw:Ljava/lang/String;

    iput-object p2, p0, Landroid/support/v4/app/U;->VH:Landroid/support/v4/app/q;

    iput-boolean p3, p0, Landroid/support/v4/app/U;->v5:Z

    return-void
.end method


# virtual methods
.method DW()V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/app/U;->DW:Labcd/y;

    invoke-virtual {v0}, Labcd/y;->DW()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_17

    iget-object v2, p0, Landroid/support/v4/app/U;->DW:Labcd/y;

    invoke-virtual {v2, v0}, Labcd/y;->Zo(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/U$a;

    iput-boolean v1, v2, Landroid/support/v4/app/U$a;->EQ:Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_17
    return-void
.end method

.method FH()V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/U;->DW:Labcd/y;

    invoke-virtual {v0}, Labcd/y;->DW()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    iget-object v1, p0, Landroid/support/v4/app/U;->DW:Labcd/y;

    invoke-virtual {v1, v0}, Labcd/y;->Zo(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/U$a;

    invoke-virtual {v1}, Landroid/support/v4/app/U$a;->FH()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method Hw()V
    .registers 5

    sget-boolean v0, Landroid/support/v4/app/U;->j6:Z

    const-string v1, "LoaderManager"

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retaining in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    iget-boolean v0, p0, Landroid/support/v4/app/U;->v5:Z

    if-nez v0, :cond_3d

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "here"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Called doRetain when not started: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_3d
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/U;->Zo:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/app/U;->v5:Z

    iget-object v1, p0, Landroid/support/v4/app/U;->DW:Labcd/y;

    invoke-virtual {v1}, Labcd/y;->DW()I

    move-result v1

    sub-int/2addr v1, v0

    :goto_4a
    if-ltz v1, :cond_5a

    iget-object v0, p0, Landroid/support/v4/app/U;->DW:Labcd/y;

    invoke-virtual {v0, v1}, Labcd/y;->Zo(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/U$a;

    invoke-virtual {v0}, Landroid/support/v4/app/U$a;->Hw()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_4a

    :cond_5a
    return-void
.end method

.method VH()V
    .registers 3

    iget-boolean v0, p0, Landroid/support/v4/app/U;->Zo:Z

    if-eqz v0, :cond_39

    sget-boolean v0, Landroid/support/v4/app/U;->j6:Z

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finished Retaining in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "LoaderManager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/U;->Zo:Z

    iget-object v0, p0, Landroid/support/v4/app/U;->DW:Labcd/y;

    invoke-virtual {v0}, Labcd/y;->DW()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_29
    if-ltz v0, :cond_39

    iget-object v1, p0, Landroid/support/v4/app/U;->DW:Labcd/y;

    invoke-virtual {v1, v0}, Labcd/y;->Zo(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/U$a;

    invoke-virtual {v1}, Landroid/support/v4/app/U$a;->DW()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_29

    :cond_39
    return-void
.end method

.method Zo()V
    .registers 5

    sget-boolean v0, Landroid/support/v4/app/U;->j6:Z

    const-string v1, "LoaderManager"

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    iget-boolean v0, p0, Landroid/support/v4/app/U;->v5:Z

    if-nez v0, :cond_3d

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "here"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Called doStop when not started: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_3d
    iget-object v0, p0, Landroid/support/v4/app/U;->DW:Labcd/y;

    invoke-virtual {v0}, Labcd/y;->DW()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_45
    if-ltz v0, :cond_55

    iget-object v1, p0, Landroid/support/v4/app/U;->DW:Labcd/y;

    invoke-virtual {v1, v0}, Labcd/y;->Zo(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/U$a;

    invoke-virtual {v1}, Landroid/support/v4/app/U$a;->Zo()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_45

    :cond_55
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/U;->v5:Z

    return-void
.end method

.method public gn()Z
    .registers 7

    iget-object v0, p0, Landroid/support/v4/app/U;->DW:Labcd/y;

    invoke-virtual {v0}, Labcd/y;->DW()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_9
    if-ge v2, v0, :cond_22

    iget-object v4, p0, Landroid/support/v4/app/U;->DW:Labcd/y;

    invoke-virtual {v4, v2}, Labcd/y;->Zo(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/U$a;

    iget-boolean v5, v4, Landroid/support/v4/app/U$a;->gn:Z

    if-eqz v5, :cond_1d

    iget-boolean v4, v4, Landroid/support/v4/app/U$a;->Zo:Z

    if-nez v4, :cond_1d

    const/4 v4, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v4, 0x0

    :goto_1e
    or-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_22
    return v3
.end method

.method j6()V
    .registers 4

    iget-boolean v0, p0, Landroid/support/v4/app/U;->Zo:Z

    const-string v1, "LoaderManager"

    if-nez v0, :cond_3b

    sget-boolean v0, Landroid/support/v4/app/U;->j6:Z

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destroying Active in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    iget-object v0, p0, Landroid/support/v4/app/U;->DW:Labcd/y;

    invoke-virtual {v0}, Labcd/y;->DW()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_26
    if-ltz v0, :cond_36

    iget-object v2, p0, Landroid/support/v4/app/U;->DW:Labcd/y;

    invoke-virtual {v2, v0}, Labcd/y;->Zo(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/U$a;

    invoke-virtual {v2}, Landroid/support/v4/app/U$a;->j6()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_26

    :cond_36
    iget-object v0, p0, Landroid/support/v4/app/U;->DW:Labcd/y;

    invoke-virtual {v0}, Labcd/y;->j6()V

    :cond_3b
    sget-boolean v0, Landroid/support/v4/app/U;->j6:Z

    if-eqz v0, :cond_53

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destroying Inactive in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_53
    iget-object v0, p0, Landroid/support/v4/app/U;->FH:Labcd/y;

    invoke-virtual {v0}, Labcd/y;->DW()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_5b
    if-ltz v0, :cond_6b

    iget-object v1, p0, Landroid/support/v4/app/U;->FH:Labcd/y;

    invoke-virtual {v1, v0}, Labcd/y;->Zo(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/U$a;

    invoke-virtual {v1}, Landroid/support/v4/app/U$a;->j6()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_5b

    :cond_6b
    iget-object v0, p0, Landroid/support/v4/app/U;->FH:Labcd/y;

    invoke-virtual {v0}, Labcd/y;->j6()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/U;->VH:Landroid/support/v4/app/q;

    return-void
.end method

.method j6(Landroid/support/v4/app/U$a;)V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/app/U;->DW:Labcd/y;

    iget v1, p1, Landroid/support/v4/app/U$a;->j6:I

    invoke-virtual {v0, v1, p1}, Labcd/y;->DW(ILjava/lang/Object;)V

    iget-boolean v0, p0, Landroid/support/v4/app/U;->v5:Z

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Landroid/support/v4/app/U$a;->v5()V

    :cond_e
    return-void
.end method

.method j6(Landroid/support/v4/app/q;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/app/U;->VH:Landroid/support/v4/app/q;

    return-void
.end method

.method public j6(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 13

    iget-object v0, p0, Landroid/support/v4/app/U;->DW:Labcd/y;

    invoke-virtual {v0}, Labcd/y;->DW()I

    move-result v0

    const-string v1, ": "

    const-string v2, "  #"

    const-string v3, "    "

    const/4 v4, 0x0

    if-lez v0, :cond_56

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Active Loaders:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    :goto_27
    iget-object v6, p0, Landroid/support/v4/app/U;->DW:Labcd/y;

    invoke-virtual {v6}, Labcd/y;->DW()I

    move-result v6

    if-ge v5, v6, :cond_56

    iget-object v6, p0, Landroid/support/v4/app/U;->DW:Labcd/y;

    invoke-virtual {v6, v5}, Labcd/y;->Zo(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/app/U$a;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Landroid/support/v4/app/U;->DW:Labcd/y;

    invoke-virtual {v7, v5}, Labcd/y;->Hw(I)I

    move-result v7

    invoke-virtual {p3, v7}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/support/v4/app/U$a;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v6, v0, p2, p3, p4}, Landroid/support/v4/app/U$a;->j6(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_27

    :cond_56
    iget-object v0, p0, Landroid/support/v4/app/U;->FH:Labcd/y;

    invoke-virtual {v0}, Labcd/y;->DW()I

    move-result v0

    if-lez v0, :cond_a4

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Inactive Loaders:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_75
    iget-object v3, p0, Landroid/support/v4/app/U;->FH:Labcd/y;

    invoke-virtual {v3}, Labcd/y;->DW()I

    move-result v3

    if-ge v4, v3, :cond_a4

    iget-object v3, p0, Landroid/support/v4/app/U;->FH:Labcd/y;

    invoke-virtual {v3, v4}, Labcd/y;->Zo(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/U$a;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Landroid/support/v4/app/U;->FH:Labcd/y;

    invoke-virtual {v5, v4}, Labcd/y;->Hw(I)I

    move-result v5

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/support/v4/app/U$a;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v3, v0, p2, p3, p4}, Landroid/support/v4/app/U$a;->j6(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_75

    :cond_a4
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "LoaderManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/app/U;->VH:Landroid/support/v4/app/q;

    invoke-static {v1, v0}, Labcd/o;->j6(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method v5()V
    .registers 5

    sget-boolean v0, Landroid/support/v4/app/U;->j6:Z

    const-string v1, "LoaderManager"

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    iget-boolean v0, p0, Landroid/support/v4/app/U;->v5:Z

    if-eqz v0, :cond_3d

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "here"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Called doStart when already started: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_3d
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/U;->v5:Z

    iget-object v1, p0, Landroid/support/v4/app/U;->DW:Labcd/y;

    invoke-virtual {v1}, Labcd/y;->DW()I

    move-result v1

    sub-int/2addr v1, v0

    :goto_47
    if-ltz v1, :cond_57

    iget-object v0, p0, Landroid/support/v4/app/U;->DW:Labcd/y;

    invoke-virtual {v0, v1}, Labcd/y;->Zo(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/U$a;

    invoke-virtual {v0}, Landroid/support/v4/app/U$a;->v5()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_47

    :cond_57
    return-void
.end method
