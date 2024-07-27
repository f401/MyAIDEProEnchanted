.class Landroid/support/v4/app/x$g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/app/x$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation


# instance fields
.field final DW:I

.field final FH:I

.field final Hw:Landroid/support/v4/app/x;

.field final j6:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/support/v4/app/x;Ljava/lang/String;II)V
    .registers 5

    iput-object p1, p0, Landroid/support/v4/app/x$g;->Hw:Landroid/support/v4/app/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/support/v4/app/x$g;->j6:Ljava/lang/String;

    iput p3, p0, Landroid/support/v4/app/x$g;->DW:I

    iput p4, p0, Landroid/support/v4/app/x$g;->FH:I

    return-void
.end method


# virtual methods
.method public j6(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/e;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/app/x$g;->Hw:Landroid/support/v4/app/x;

    iget-object v0, v0, Landroid/support/v4/app/x;->a8:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    iget v1, p0, Landroid/support/v4/app/x$g;->DW:I

    if-gez v1, :cond_0

    iget-object v1, p0, Landroid/support/v4/app/x$g;->j6:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->Sf()Landroid/support/v4/app/r;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/r;->v5()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/x$g;->Hw:Landroid/support/v4/app/x;

    iget-object v3, p0, Landroid/support/v4/app/x$g;->j6:Ljava/lang/String;

    iget v4, p0, Landroid/support/v4/app/x$g;->DW:I

    iget v5, p0, Landroid/support/v4/app/x$g;->FH:I

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/x;->j6(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result v0

    goto :goto_0
.end method
