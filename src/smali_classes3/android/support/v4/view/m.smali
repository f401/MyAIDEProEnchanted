.class public Landroid/support/v4/view/m;
.super Ljava/lang/Object;


# instance fields
.field private DW:I

.field private final j6:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/view/m;->j6:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public j6()I
    .registers 2

    iget v0, p0, Landroid/support/v4/view/m;->DW:I

    return v0
.end method

.method public j6(Landroid/view/View;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/view/m;->j6(Landroid/view/View;I)V

    return-void
.end method

.method public j6(Landroid/view/View;I)V
    .registers 3

    const/4 p1, 0x0

    iput p1, p0, Landroid/support/v4/view/m;->DW:I

    return-void
.end method

.method public j6(Landroid/view/View;Landroid/view/View;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v4/view/m;->j6(Landroid/view/View;Landroid/view/View;II)V

    return-void
.end method

.method public j6(Landroid/view/View;Landroid/view/View;II)V
    .registers 5

    iput p3, p0, Landroid/support/v4/view/m;->DW:I

    return-void
.end method
