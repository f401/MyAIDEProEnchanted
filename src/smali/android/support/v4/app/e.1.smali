.class final Landroid/support/v4/app/e;
.super Landroid/support/v4/app/D;

# interfaces
.implements Landroid/support/v4/app/r$a;
.implements Landroid/support/v4/app/x$f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/e$a;
    }
.end annotation


# static fields
.field static final j6:Z


# instance fields
.field final DW:Landroid/support/v4/app/x;

.field EQ:Z

.field FH:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/e$a;",
            ">;"
        }
    .end annotation
.end field

.field Hw:I

.field J0:Z

.field J8:I

.field Mr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field QX:Ljava/lang/CharSequence;

.field U2:Z

.field VH:I

.field Ws:I

.field XL:I

.field Zo:I

.field a8:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field aM:Ljava/lang/CharSequence;

.field gn:I

.field j3:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field tp:Z

.field u7:I

.field v5:I

.field we:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/support/v4/app/e;->j6:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/support/v4/app/x;)V
    .registers 3

    invoke-direct {p0}, Landroid/support/v4/app/D;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/e;->FH:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/e;->EQ:Z

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/e;->J8:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/e;->U2:Z

    iput-object p1, p0, Landroid/support/v4/app/e;->DW:Landroid/support/v4/app/x;

    return-void
.end method

.method private static DW(Landroid/support/v4/app/e$a;)Z
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/e$a;->DW:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Landroid/support/v4/app/Fragment;->we:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/support/v4/app/Fragment;->ro:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Landroid/support/v4/app/Fragment;->BT:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Landroid/support/v4/app/Fragment;->gW:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->ei()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j6(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V
    .registers 8

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/e;->DW:Landroid/support/v4/app/x;

    iput-object v0, p2, Landroid/support/v4/app/Fragment;->j3:Landroid/support/v4/app/x;

    if-eqz p3, :cond_2

    iget-object v0, p2, Landroid/support/v4/app/Fragment;->yS:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_1
    iput-object p3, p2, Landroid/support/v4/app/Fragment;->yS:Ljava/lang/String;

    :cond_2
    if-eqz p1, :cond_4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_7

    iget v0, p2, Landroid/support/v4/app/Fragment;->rN:I

    if-eqz v0, :cond_3

    if-ne v0, p1, :cond_6

    :cond_3
    iput p1, p2, Landroid/support/v4/app/Fragment;->rN:I

    iput p1, p2, Landroid/support/v4/app/Fragment;->er:I

    :cond_4
    new-instance v0, Landroid/support/v4/app/e$a;

    invoke-direct {v0, p4, p2}, Landroid/support/v4/app/e$a;-><init>(ILandroid/support/v4/app/Fragment;)V

    invoke-virtual {p0, v0}, Landroid/support/v4/app/e;->j6(Landroid/support/v4/app/e$a;)V

    return-void

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t change tag of fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Landroid/support/v4/app/Fragment;->yS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " now "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t change container ID of fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Landroid/support/v4/app/Fragment;->rN:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " now "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t add fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " with tag "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to container view with no id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " must be a public static class to be  properly recreated from"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " instance state."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public DW()I
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/app/e;->j6(Z)I

    move-result v0

    return v0
.end method

.method public DW(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/D;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/app/e;->DW(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/D;

    return-object p0
.end method

.method public DW(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/D;
    .registers 6

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/app/e;->j6(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must use non-zero containerViewId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public DW(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/D;
    .registers 4

    new-instance v0, Landroid/support/v4/app/e$a;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p1}, Landroid/support/v4/app/e$a;-><init>(ILandroid/support/v4/app/Fragment;)V

    invoke-virtual {p0, v0}, Landroid/support/v4/app/e;->j6(Landroid/support/v4/app/e$a;)V

    return-object p0
.end method

.method DW(Ljava/util/ArrayList;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/support/v4/app/Fragment;",
            ")",
            "Landroid/support/v4/app/Fragment;"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/e;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/e;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/e$a;

    iget v2, v0, Landroid/support/v4/app/e$a;->j6:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    packed-switch v2, :pswitch_data_0

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :pswitch_0
    iget-object p2, v0, Landroid/support/v4/app/e$a;->DW:Landroid/support/v4/app/Fragment;

    goto :goto_1

    :pswitch_1
    const/4 p2, 0x0

    goto :goto_1

    :cond_0
    :pswitch_2
    iget-object v0, v0, Landroid/support/v4/app/e$a;->DW:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    :pswitch_3
    iget-object v0, v0, Landroid/support/v4/app/e$a;->DW:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method DW(Z)V
    .registers 7

    iget-object v0, p0, Landroid/support/v4/app/e;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/e;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/e$a;

    iget-object v2, v0, Landroid/support/v4/app/e$a;->DW:Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_0

    iget v3, p0, Landroid/support/v4/app/e;->gn:I

    invoke-static {v3}, Landroid/support/v4/app/x;->Hw(I)I

    move-result v3

    iget v4, p0, Landroid/support/v4/app/e;->u7:I

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/Fragment;->j6(II)V

    :cond_0
    iget v3, v0, Landroid/support/v4/app/e$a;->j6:I

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown cmd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/support/v4/app/e$a;->j6:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iget-object v3, p0, Landroid/support/v4/app/e;->DW:Landroid/support/v4/app/x;

    invoke-virtual {v3, v2}, Landroid/support/v4/app/x;->Ws(Landroid/support/v4/app/Fragment;)V

    :goto_1
    iget-boolean v3, p0, Landroid/support/v4/app/e;->U2:Z

    if-nez v3, :cond_1

    iget v0, v0, Landroid/support/v4/app/e$a;->j6:I

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    if-eqz v2, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/e;->DW:Landroid/support/v4/app/x;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/x;->u7(Landroid/support/v4/app/Fragment;)V

    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :pswitch_2
    iget-object v3, p0, Landroid/support/v4/app/e;->DW:Landroid/support/v4/app/x;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v4/app/x;->Ws(Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    :pswitch_3
    iget v3, v0, Landroid/support/v4/app/e$a;->Zo:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/Fragment;->j6(I)V

    iget-object v3, p0, Landroid/support/v4/app/e;->DW:Landroid/support/v4/app/x;

    invoke-virtual {v3, v2}, Landroid/support/v4/app/x;->Hw(Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    :pswitch_4
    iget v3, v0, Landroid/support/v4/app/e$a;->v5:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/Fragment;->j6(I)V

    iget-object v3, p0, Landroid/support/v4/app/e;->DW:Landroid/support/v4/app/x;

    invoke-virtual {v3, v2}, Landroid/support/v4/app/x;->DW(Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    :pswitch_5
    iget v3, v0, Landroid/support/v4/app/e$a;->Zo:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/Fragment;->j6(I)V

    iget-object v3, p0, Landroid/support/v4/app/e;->DW:Landroid/support/v4/app/x;

    invoke-virtual {v3, v2}, Landroid/support/v4/app/x;->Zo(Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    :pswitch_6
    iget v3, v0, Landroid/support/v4/app/e$a;->v5:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/Fragment;->j6(I)V

    iget-object v3, p0, Landroid/support/v4/app/e;->DW:Landroid/support/v4/app/x;

    invoke-virtual {v3, v2}, Landroid/support/v4/app/x;->QX(Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    :pswitch_7
    iget v3, v0, Landroid/support/v4/app/e$a;->v5:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/Fragment;->j6(I)V

    iget-object v3, p0, Landroid/support/v4/app/e;->DW:Landroid/support/v4/app/x;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/support/v4/app/x;->j6(Landroid/support/v4/app/Fragment;Z)V

    goto :goto_1

    :pswitch_8
    iget v3, v0, Landroid/support/v4/app/e$a;->Zo:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/Fragment;->j6(I)V

    iget-object v3, p0, Landroid/support/v4/app/e;->DW:Landroid/support/v4/app/x;

    invoke-virtual {v3, v2}, Landroid/support/v4/app/x;->we(Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Landroid/support/v4/app/e;->U2:Z

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    iget-object v0, p0, Landroid/support/v4/app/e;->DW:Landroid/support/v4/app/x;

    iget v1, v0, Landroid/support/v4/app/x;->aM:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/x;->j6(IZ)V

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method DW(I)Z
    .registers 6

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v4/app/e;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/e;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/e$a;

    iget-object v0, v0, Landroid/support/v4/app/e$a;->DW:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/support/v4/app/Fragment;->er:I

    :goto_1
    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_1

    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public FH(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/D;
    .registers 4

    new-instance v0, Landroid/support/v4/app/e$a;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1}, Landroid/support/v4/app/e$a;-><init>(ILandroid/support/v4/app/Fragment;)V

    invoke-virtual {p0, v0}, Landroid/support/v4/app/e;->j6(Landroid/support/v4/app/e$a;)V

    return-object p0
.end method

.method public FH()V
    .registers 3

    invoke-virtual {p0}, Landroid/support/v4/app/e;->Hw()Landroid/support/v4/app/D;

    iget-object v0, p0, Landroid/support/v4/app/e;->DW:Landroid/support/v4/app/x;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/app/x;->DW(Landroid/support/v4/app/x$f;Z)V

    return-void
.end method

.method public Hw()Landroid/support/v4/app/D;
    .registers 3

    iget-boolean v0, p0, Landroid/support/v4/app/e;->tp:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/e;->EQ:Z

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This transaction is already being added to the back stack"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method VH()Z
    .registers 4

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/e;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/e;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/e$a;

    invoke-static {v0}, Landroid/support/v4/app/e;->DW(Landroid/support/v4/app/e$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public Zo()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/e;->we:Ljava/lang/String;

    return-object v0
.end method

.method public gn()V
    .registers 4

    iget-object v1, p0, Landroid/support/v4/app/e;->a8:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/e;->a8:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/e;->a8:Ljava/util/ArrayList;

    :cond_1
    return-void
.end method

.method public j6()I
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/app/e;->j6(Z)I

    move-result v0

    return v0
.end method

.method j6(Z)I
    .registers 6

    const/4 v3, 0x0

    iget-boolean v0, p0, Landroid/support/v4/app/e;->J0:Z

    if-nez v0, :cond_2

    sget-boolean v0, Landroid/support/v4/app/x;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Commit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "FragmentManager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Labcd/p;

    const-string v2, "FragmentManager"

    invoke-direct {v1, v2}, Labcd/p;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v1, "  "

    invoke-virtual {p0, v1, v3, v0, v3}, Landroid/support/v4/app/e;->j6(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/e;->J0:Z

    iget-boolean v0, p0, Landroid/support/v4/app/e;->tp:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/e;->DW:Landroid/support/v4/app/x;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/x;->DW(Landroid/support/v4/app/e;)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/e;->J8:I

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/e;->DW:Landroid/support/v4/app/x;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/app/x;->j6(Landroid/support/v4/app/x$f;Z)V

    iget v0, p0, Landroid/support/v4/app/e;->J8:I

    return v0

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/e;->J8:I

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "commit already called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j6(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/D;
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/v4/app/e;->j6(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    return-object p0
.end method

.method public j6(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/D;
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/app/e;->j6(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    return-object p0
.end method

.method public j6(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/D;
    .registers 4

    new-instance v0, Landroid/support/v4/app/e$a;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p1}, Landroid/support/v4/app/e$a;-><init>(ILandroid/support/v4/app/Fragment;)V

    invoke-virtual {p0, v0}, Landroid/support/v4/app/e;->j6(Landroid/support/v4/app/e$a;)V

    return-object p0
.end method

.method public j6(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/D;
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Landroid/support/v4/app/e;->j6(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    return-object p0
.end method

.method j6(Ljava/util/ArrayList;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/support/v4/app/Fragment;",
            ")",
            "Landroid/support/v4/app/Fragment;"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/e;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_9

    iget-object v0, p0, Landroid/support/v4/app/e;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/e$a;

    iget v2, v0, Landroid/support/v4/app/e$a;->j6:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_8

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_8

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/support/v4/app/e;->FH:Ljava/util/ArrayList;

    new-instance v3, Landroid/support/v4/app/e$a;

    const/16 v4, 0x9

    invoke-direct {v3, v4, p2}, Landroid/support/v4/app/e$a;-><init>(ILandroid/support/v4/app/Fragment;)V

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    iget-object p2, v0, Landroid/support/v4/app/e$a;->DW:Landroid/support/v4/app/Fragment;

    goto :goto_1

    :cond_2
    iget-object v2, v0, Landroid/support/v4/app/e$a;->DW:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, v0, Landroid/support/v4/app/e$a;->DW:Landroid/support/v4/app/Fragment;

    if-ne v0, p2, :cond_0

    iget-object v2, p0, Landroid/support/v4/app/e;->FH:Ljava/util/ArrayList;

    new-instance v3, Landroid/support/v4/app/e$a;

    const/16 v4, 0x9

    invoke-direct {v3, v4, v0}, Landroid/support/v4/app/e$a;-><init>(ILandroid/support/v4/app/Fragment;)V

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    const/4 p2, 0x0

    goto :goto_1

    :cond_3
    iget-object v6, v0, Landroid/support/v4/app/e$a;->DW:Landroid/support/v4/app/Fragment;

    iget v7, v6, Landroid/support/v4/app/Fragment;->er:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v5, v2, -0x1

    const/4 v4, 0x0

    move v3, v1

    move-object v2, p2

    :goto_2
    if-ltz v5, :cond_6

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    iget v8, v1, Landroid/support/v4/app/Fragment;->er:I

    if-ne v8, v7, :cond_a

    if-ne v1, v6, :cond_4

    const/4 v1, 0x1

    :goto_3
    add-int/lit8 v5, v5, -0x1

    move v4, v1

    goto :goto_2

    :cond_4
    if-ne v1, v2, :cond_5

    iget-object v2, p0, Landroid/support/v4/app/e;->FH:Ljava/util/ArrayList;

    new-instance v8, Landroid/support/v4/app/e$a;

    const/16 v9, 0x9

    invoke-direct {v8, v9, v1}, Landroid/support/v4/app/e$a;-><init>(ILandroid/support/v4/app/Fragment;)V

    invoke-virtual {v2, v3, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    const/4 v2, 0x0

    :cond_5
    new-instance v8, Landroid/support/v4/app/e$a;

    const/4 v9, 0x3

    invoke-direct {v8, v9, v1}, Landroid/support/v4/app/e$a;-><init>(ILandroid/support/v4/app/Fragment;)V

    iget v9, v0, Landroid/support/v4/app/e$a;->FH:I

    iput v9, v8, Landroid/support/v4/app/e$a;->FH:I

    iget v9, v0, Landroid/support/v4/app/e$a;->v5:I

    iput v9, v8, Landroid/support/v4/app/e$a;->v5:I

    iget v9, v0, Landroid/support/v4/app/e$a;->Hw:I

    iput v9, v8, Landroid/support/v4/app/e$a;->Hw:I

    iget v9, v0, Landroid/support/v4/app/e$a;->Zo:I

    iput v9, v8, Landroid/support/v4/app/e$a;->Zo:I

    iget-object v9, p0, Landroid/support/v4/app/e;->FH:Ljava/util/ArrayList;

    invoke-virtual {v9, v3, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    move v1, v4

    goto :goto_3

    :cond_6
    if-eqz v4, :cond_7

    iget-object v0, p0, Landroid/support/v4/app/e;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    :goto_4
    move v1, v3

    move-object p2, v2

    goto/16 :goto_1

    :cond_7
    const/4 v1, 0x1

    iput v1, v0, Landroid/support/v4/app/e$a;->j6:I

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    iget-object v0, v0, Landroid/support/v4/app/e$a;->DW:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_9
    return-object p2

    :cond_a
    move v1, v4

    goto :goto_3
.end method

.method j6(I)V
    .registers 7

    iget-boolean v0, p0, Landroid/support/v4/app/e;->tp:Z

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    sget-boolean v0, Landroid/support/v4/app/x;->j6:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bump nesting in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "FragmentManager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/e;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/e;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/e$a;

    iget-object v3, v0, Landroid/support/v4/app/e$a;->DW:Landroid/support/v4/app/Fragment;

    if-eqz v3, :cond_3

    iget v4, v3, Landroid/support/v4/app/Fragment;->aM:I

    add-int/2addr v4, p1

    iput v4, v3, Landroid/support/v4/app/Fragment;->aM:I

    sget-boolean v3, Landroid/support/v4/app/x;->j6:Z

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bump nesting of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/support/v4/app/e$a;->DW:Landroid/support/v4/app/Fragment;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/support/v4/app/e$a;->DW:Landroid/support/v4/app/Fragment;

    iget v0, v0, Landroid/support/v4/app/Fragment;->aM:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "FragmentManager"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method j6(Landroid/support/v4/app/Fragment$c;)V
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/e;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/e;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/e$a;

    invoke-static {v0}, Landroid/support/v4/app/e;->DW(Landroid/support/v4/app/e$a;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v0, Landroid/support/v4/app/e$a;->DW:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->j6(Landroid/support/v4/app/Fragment$c;)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method j6(Landroid/support/v4/app/e$a;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/e;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Landroid/support/v4/app/e;->Hw:I

    iput v0, p1, Landroid/support/v4/app/e$a;->FH:I

    iget v0, p0, Landroid/support/v4/app/e;->v5:I

    iput v0, p1, Landroid/support/v4/app/e$a;->Hw:I

    iget v0, p0, Landroid/support/v4/app/e;->Zo:I

    iput v0, p1, Landroid/support/v4/app/e$a;->v5:I

    iget v0, p0, Landroid/support/v4/app/e;->VH:I

    iput v0, p1, Landroid/support/v4/app/e$a;->Zo:I

    return-void
.end method

.method public j6(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p3, v0}, Landroid/support/v4/app/e;->j6(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    return-void
.end method

.method public j6(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
    .registers 9

    if-eqz p3, :cond_8

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/e;->we:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mIndex="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/e;->J8:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mCommitted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/e;->J0:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget v0, p0, Landroid/support/v4/app/e;->gn:I

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTransition=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/e;->gn:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mTransitionStyle=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/e;->u7:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Landroid/support/v4/app/e;->Hw:I

    if-nez v0, :cond_1

    iget v0, p0, Landroid/support/v4/app/e;->v5:I

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/e;->Hw:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/e;->v5:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    iget v0, p0, Landroid/support/v4/app/e;->Zo:I

    if-nez v0, :cond_3

    iget v0, p0, Landroid/support/v4/app/e;->VH:I

    if-eqz v0, :cond_4

    :cond_3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPopEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/e;->Zo:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mPopExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/e;->VH:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4
    iget v0, p0, Landroid/support/v4/app/e;->Ws:I

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/support/v4/app/e;->QX:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    :cond_5
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/e;->Ws:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBreadCrumbTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/e;->QX:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_6
    iget v0, p0, Landroid/support/v4/app/e;->XL:I

    if-nez v0, :cond_7

    iget-object v0, p0, Landroid/support/v4/app/e;->aM:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    :cond_7
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbShortTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/e;->XL:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBreadCrumbShortTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/e;->aM:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_8
    iget-object v0, p0, Landroid/support/v4/app/e;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Operations:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Landroid/support/v4/app/e;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_d

    iget-object v0, p0, Landroid/support/v4/app/e;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/e$a;

    iget v1, v0, Landroid/support/v4/app/e$a;->j6:I

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cmd="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/support/v4/app/e$a;->j6:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  Op #"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ": "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v0, Landroid/support/v4/app/e$a;->DW:Landroid/support/v4/app/Fragment;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    if-eqz p3, :cond_c

    iget v1, v0, Landroid/support/v4/app/e$a;->FH:I

    if-nez v1, :cond_9

    iget v1, v0, Landroid/support/v4/app/e$a;->Hw:I

    if-eqz v1, :cond_a

    :cond_9
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "enterAnim=#"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v0, Landroid/support/v4/app/e$a;->FH:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " exitAnim=#"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v0, Landroid/support/v4/app/e$a;->Hw:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_a
    iget v1, v0, Landroid/support/v4/app/e$a;->v5:I

    if-nez v1, :cond_b

    iget v1, v0, Landroid/support/v4/app/e$a;->Zo:I

    if-eqz v1, :cond_c

    :cond_b
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "popEnterAnim=#"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v0, Landroid/support/v4/app/e$a;->v5:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " popExitAnim=#"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v0, Landroid/support/v4/app/e$a;->Zo:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_c
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    :pswitch_0
    const-string v1, "UNSET_PRIMARY_NAV"

    goto :goto_1

    :pswitch_1
    const-string v1, "SET_PRIMARY_NAV"

    goto :goto_1

    :pswitch_2
    const-string v1, "ATTACH"

    goto :goto_1

    :pswitch_3
    const-string v1, "DETACH"

    goto :goto_1

    :pswitch_4
    const-string v1, "SHOW"

    goto :goto_1

    :pswitch_5
    const-string v1, "HIDE"

    goto/16 :goto_1

    :pswitch_6
    const-string v1, "REMOVE"

    goto/16 :goto_1

    :pswitch_7
    const-string v1, "REPLACE"

    goto/16 :goto_1

    :pswitch_8
    const-string v1, "ADD"

    goto/16 :goto_1

    :pswitch_9
    const-string v1, "NULL"

    goto/16 :goto_1

    :cond_d
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method j6(Ljava/util/ArrayList;II)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/e;",
            ">;II)Z"
        }
    .end annotation

    const/4 v3, 0x0

    if-ne p3, p2, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/e;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v1, -0x1

    move v6, v3

    :goto_1
    if-ge v6, v7, :cond_6

    iget-object v0, p0, Landroid/support/v4/app/e;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/e$a;

    iget-object v0, v0, Landroid/support/v4/app/e$a;->DW:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_1

    iget v2, v0, Landroid/support/v4/app/Fragment;->er:I

    :goto_2
    if-eqz v2, :cond_7

    if-eq v2, v1, :cond_7

    move v5, p2

    :goto_3
    if-ge v5, p3, :cond_5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/e;

    iget-object v1, v0, Landroid/support/v4/app/e;->FH:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v4, v3

    :goto_4
    if-ge v4, v8, :cond_4

    iget-object v1, v0, Landroid/support/v4/app/e;->FH:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/e$a;

    iget-object v1, v1, Landroid/support/v4/app/e$a;->DW:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_2

    iget v1, v1, Landroid/support/v4/app/Fragment;->er:I

    :goto_5
    if-ne v1, v2, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_2

    :cond_2
    move v1, v3

    goto :goto_5

    :cond_3
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_4

    :cond_4
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_3

    :cond_5
    move v0, v2

    :goto_6
    add-int/lit8 v2, v6, 0x1

    move v1, v0

    move v6, v2

    goto :goto_1

    :cond_6
    move v0, v3

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_6
.end method

.method public j6(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .registers 5
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

    sget-boolean v0, Landroid/support/v4/app/x;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Run: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "FragmentManager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Landroid/support/v4/app/e;->tp:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/e;->DW:Landroid/support/v4/app/x;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/x;->j6(Landroid/support/v4/app/e;)V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "BackStackEntry{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/app/e;->J8:I

    if-ltz v1, :cond_0

    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/app/e;->J8:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/e;->we:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/app/e;->we:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method v5()V
    .registers 9

    const/4 v7, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v4/app/e;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/e;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/e$a;

    iget-object v4, v0, Landroid/support/v4/app/e$a;->DW:Landroid/support/v4/app/Fragment;

    if-eqz v4, :cond_0

    iget v5, p0, Landroid/support/v4/app/e;->gn:I

    iget v6, p0, Landroid/support/v4/app/e;->u7:I

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/app/Fragment;->j6(II)V

    :cond_0
    iget v5, v0, Landroid/support/v4/app/e$a;->j6:I

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown cmd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/support/v4/app/e$a;->j6:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iget-object v5, p0, Landroid/support/v4/app/e;->DW:Landroid/support/v4/app/x;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/support/v4/app/x;->Ws(Landroid/support/v4/app/Fragment;)V

    :goto_1
    iget-boolean v5, p0, Landroid/support/v4/app/e;->U2:Z

    if-nez v5, :cond_1

    iget v0, v0, Landroid/support/v4/app/e$a;->j6:I

    if-eq v0, v7, :cond_1

    if-eqz v4, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/e;->DW:Landroid/support/v4/app/x;

    invoke-virtual {v0, v4}, Landroid/support/v4/app/x;->u7(Landroid/support/v4/app/Fragment;)V

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :pswitch_2
    iget-object v5, p0, Landroid/support/v4/app/e;->DW:Landroid/support/v4/app/x;

    invoke-virtual {v5, v4}, Landroid/support/v4/app/x;->Ws(Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    :pswitch_3
    iget v5, v0, Landroid/support/v4/app/e$a;->FH:I

    invoke-virtual {v4, v5}, Landroid/support/v4/app/Fragment;->j6(I)V

    iget-object v5, p0, Landroid/support/v4/app/e;->DW:Landroid/support/v4/app/x;

    invoke-virtual {v5, v4}, Landroid/support/v4/app/x;->DW(Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    :pswitch_4
    iget v5, v0, Landroid/support/v4/app/e$a;->Hw:I

    invoke-virtual {v4, v5}, Landroid/support/v4/app/Fragment;->j6(I)V

    iget-object v5, p0, Landroid/support/v4/app/e;->DW:Landroid/support/v4/app/x;

    invoke-virtual {v5, v4}, Landroid/support/v4/app/x;->Hw(Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    :pswitch_5
    iget v5, v0, Landroid/support/v4/app/e$a;->FH:I

    invoke-virtual {v4, v5}, Landroid/support/v4/app/Fragment;->j6(I)V

    iget-object v5, p0, Landroid/support/v4/app/e;->DW:Landroid/support/v4/app/x;

    invoke-virtual {v5, v4}, Landroid/support/v4/app/x;->QX(Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    :pswitch_6
    iget v5, v0, Landroid/support/v4/app/e$a;->Hw:I

    invoke-virtual {v4, v5}, Landroid/support/v4/app/Fragment;->j6(I)V

    iget-object v5, p0, Landroid/support/v4/app/e;->DW:Landroid/support/v4/app/x;

    invoke-virtual {v5, v4}, Landroid/support/v4/app/x;->Zo(Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    :pswitch_7
    iget v5, v0, Landroid/support/v4/app/e$a;->Hw:I

    invoke-virtual {v4, v5}, Landroid/support/v4/app/Fragment;->j6(I)V

    iget-object v5, p0, Landroid/support/v4/app/e;->DW:Landroid/support/v4/app/x;

    invoke-virtual {v5, v4}, Landroid/support/v4/app/x;->we(Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    :pswitch_8
    iget v5, v0, Landroid/support/v4/app/e$a;->FH:I

    invoke-virtual {v4, v5}, Landroid/support/v4/app/Fragment;->j6(I)V

    iget-object v5, p0, Landroid/support/v4/app/e;->DW:Landroid/support/v4/app/x;

    invoke-virtual {v5, v4, v2}, Landroid/support/v4/app/x;->j6(Landroid/support/v4/app/Fragment;Z)V

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Landroid/support/v4/app/e;->U2:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/app/e;->DW:Landroid/support/v4/app/x;

    iget v1, v0, Landroid/support/v4/app/x;->aM:I

    invoke-virtual {v0, v1, v7}, Landroid/support/v4/app/x;->j6(IZ)V

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
