.class Landroid/support/v4/app/x$h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/app/Fragment$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "h"
.end annotation


# instance fields
.field private final DW:Landroid/support/v4/app/e;

.field private FH:I

.field private final j6:Z


# direct methods
.method constructor <init>(Landroid/support/v4/app/e;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Landroid/support/v4/app/x$h;->j6:Z

    iput-object p1, p0, Landroid/support/v4/app/x$h;->DW:Landroid/support/v4/app/e;

    return-void
.end method

.method static synthetic DW(Landroid/support/v4/app/x$h;)Landroid/support/v4/app/e;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/x$h;->DW:Landroid/support/v4/app/e;

    return-object v0
.end method

.method static synthetic j6(Landroid/support/v4/app/x$h;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v4/app/x$h;->j6:Z

    return v0
.end method


# virtual methods
.method public DW()V
    .registers 2

    iget v0, p0, Landroid/support/v4/app/x$h;->FH:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v4/app/x$h;->FH:I

    iget v0, p0, Landroid/support/v4/app/x$h;->FH:I

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/x$h;->DW:Landroid/support/v4/app/e;

    iget-object v0, v0, Landroid/support/v4/app/e;->DW:Landroid/support/v4/app/x;

    invoke-static {v0}, Landroid/support/v4/app/x;->j6(Landroid/support/v4/app/x;)V

    goto :goto_0
.end method

.method public FH()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/v4/app/x$h;->DW:Landroid/support/v4/app/e;

    iget-object v1, v0, Landroid/support/v4/app/e;->DW:Landroid/support/v4/app/x;

    iget-boolean v2, p0, Landroid/support/v4/app/x$h;->j6:Z

    invoke-static {v1, v0, v2, v3, v3}, Landroid/support/v4/app/x;->j6(Landroid/support/v4/app/x;Landroid/support/v4/app/e;ZZZ)V

    return-void
.end method

.method public Hw()V
    .registers 8

    const/4 v2, 0x1

    const/4 v0, 0x0

    iget v1, p0, Landroid/support/v4/app/x$h;->FH:I

    if-lez v1, :cond_1

    move v1, v2

    :goto_0
    iget-object v3, p0, Landroid/support/v4/app/x$h;->DW:Landroid/support/v4/app/e;

    iget-object v4, v3, Landroid/support/v4/app/e;->DW:Landroid/support/v4/app/x;

    iget-object v3, v4, Landroid/support/v4/app/x;->tp:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v0

    :goto_1
    if-ge v3, v5, :cond_2

    iget-object v0, v4, Landroid/support/v4/app/x;->tp:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/support/v4/app/Fragment;->j6(Landroid/support/v4/app/Fragment$c;)V

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->ei()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->lp()V

    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_1
    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/x$h;->DW:Landroid/support/v4/app/e;

    iget-object v3, v0, Landroid/support/v4/app/e;->DW:Landroid/support/v4/app/x;

    iget-boolean v4, p0, Landroid/support/v4/app/x$h;->j6:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v3, v0, v4, v1, v2}, Landroid/support/v4/app/x;->j6(Landroid/support/v4/app/x;Landroid/support/v4/app/e;ZZZ)V

    return-void
.end method

.method public j6()V
    .registers 2

    iget v0, p0, Landroid/support/v4/app/x$h;->FH:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/app/x$h;->FH:I

    return-void
.end method

.method public v5()Z
    .registers 2

    iget v0, p0, Landroid/support/v4/app/x$h;->FH:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
