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
    .registers 1

    iget-object p0, p0, Landroid/support/v4/app/x$h;->DW:Landroid/support/v4/app/e;

    return-object p0
.end method

.method static synthetic j6(Landroid/support/v4/app/x$h;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/support/v4/app/x$h;->j6:Z

    return p0
.end method


# virtual methods
.method public DW()V
    .registers 2

    iget v0, p0, Landroid/support/v4/app/x$h;->FH:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v4/app/x$h;->FH:I

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Landroid/support/v4/app/x$h;->DW:Landroid/support/v4/app/e;

    iget-object v0, v0, Landroid/support/v4/app/e;->DW:Landroid/support/v4/app/x;

    invoke-static {v0}, Landroid/support/v4/app/x;->j6(Landroid/support/v4/app/x;)V

    return-void
.end method

.method public FH()V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/app/x$h;->DW:Landroid/support/v4/app/e;

    iget-object v1, v0, Landroid/support/v4/app/e;->DW:Landroid/support/v4/app/x;

    iget-boolean v2, p0, Landroid/support/v4/app/x$h;->j6:Z

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3, v3}, Landroid/support/v4/app/x;->j6(Landroid/support/v4/app/x;Landroid/support/v4/app/e;ZZZ)V

    return-void
.end method

.method public Hw()V
    .registers 8

    iget v0, p0, Landroid/support/v4/app/x$h;->FH:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    iget-object v3, p0, Landroid/support/v4/app/x$h;->DW:Landroid/support/v4/app/e;

    iget-object v3, v3, Landroid/support/v4/app/e;->DW:Landroid/support/v4/app/x;

    iget-object v4, v3, Landroid/support/v4/app/x;->tp:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_13
    if-ge v2, v4, :cond_2f

    iget-object v5, v3, Landroid/support/v4/app/x;->tp:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/Fragment;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/support/v4/app/Fragment;->j6(Landroid/support/v4/app/Fragment$c;)V

    if-eqz v0, :cond_2c

    invoke-virtual {v5}, Landroid/support/v4/app/Fragment;->ei()Z

    move-result v6

    if-eqz v6, :cond_2c

    invoke-virtual {v5}, Landroid/support/v4/app/Fragment;->lp()V

    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_2f
    iget-object v2, p0, Landroid/support/v4/app/x$h;->DW:Landroid/support/v4/app/e;

    iget-object v3, v2, Landroid/support/v4/app/e;->DW:Landroid/support/v4/app/x;

    iget-boolean v4, p0, Landroid/support/v4/app/x$h;->j6:Z

    xor-int/2addr v0, v1

    invoke-static {v3, v2, v4, v0, v1}, Landroid/support/v4/app/x;->j6(Landroid/support/v4/app/x;Landroid/support/v4/app/e;ZZZ)V

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

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
