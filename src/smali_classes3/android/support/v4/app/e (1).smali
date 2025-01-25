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
            "Ljava/util/ArrayList<",
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
            "Ljava/util/ArrayList<",
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
            "Ljava/util/ArrayList<",
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
            "Ljava/util/ArrayList<",
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

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    sput-boolean v0, Landroid/support/v4/app/e;->j6:Z

    return-void
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
    .registers 2

    iget-object p0, p0, Landroid/support/v4/app/e$a;->DW:Landroid/support/v4/app/Fragment;

    if-eqz p0, :cond_1c

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->we:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->ro:Landroid/view/View;

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->BT:Z

    if-nez v0, :cond_1c

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->gW:Z

    if-nez v0, :cond_1c

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->ei()Z

    move-result p0

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    return p0
.end method

.method private j6(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V
    .registers 8

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v2

    if-nez v2, :cond_bf

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-eqz v2, :cond_bf

    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_bf

    :cond_20
    iget-object v0, p0, Landroid/support/v4/app/e;->DW:Landroid/support/v4/app/x;

    iput-object v0, p2, Landroid/support/v4/app/Fragment;->j3:Landroid/support/v4/app/x;

    const-string v0, " now "

    const-string v1, ": was "

    if-eqz p3, :cond_5c

    iget-object v2, p2, Landroid/support/v4/app/Fragment;->yS:Ljava/lang/String;

    if-eqz v2, :cond_5a

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    goto :goto_5a

    :cond_35
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Can\'t change tag of fragment "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Landroid/support/v4/app/Fragment;->yS:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5a
    :goto_5a
    iput-object p3, p2, Landroid/support/v4/app/Fragment;->yS:Ljava/lang/String;

    :cond_5c
    if-eqz p1, :cond_b6

    const/4 v2, -0x1

    if-eq p1, v2, :cond_92

    iget p3, p2, Landroid/support/v4/app/Fragment;->rN:I

    if-eqz p3, :cond_8d

    if-ne p3, p1, :cond_68

    goto :goto_8d

    :cond_68
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Can\'t change container ID of fragment "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Landroid/support/v4/app/Fragment;->rN:I

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8d
    :goto_8d
    iput p1, p2, Landroid/support/v4/app/Fragment;->rN:I

    iput p1, p2, Landroid/support/v4/app/Fragment;->er:I

    goto :goto_b6

    :cond_92
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Can\'t add fragment "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " with tag "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " to container view with no id"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_b6
    :goto_b6
    new-instance p1, Landroid/support/v4/app/e$a;

    invoke-direct {p1, p4, p2}, Landroid/support/v4/app/e$a;-><init>(ILandroid/support/v4/app/Fragment;)V

    invoke-virtual {p0, p1}, Landroid/support/v4/app/e;->j6(Landroid/support/v4/app/e$a;)V

    return-void

    :cond_bf
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Fragment "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " must be a public static class to be  properly recreated from"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " instance state."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
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
    .registers 5

    if-eqz p1, :cond_7

    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/app/e;->j6(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    return-object p0

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must use non-zero containerViewId"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
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
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/support/v4/app/Fragment;",
            ")",
            "Landroid/support/v4/app/Fragment;"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/support/v4/app/e;->FH:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_30

    iget-object v1, p0, Landroid/support/v4/app/e;->FH:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/e$a;

    iget v2, v1, Landroid/support/v4/app/e$a;->j6:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_28

    const/4 v3, 0x3

    if-eq v2, v3, :cond_22

    packed-switch v2, :pswitch_data_32

    goto :goto_2d

    :pswitch_1d  #0x9
    iget-object p2, v1, Landroid/support/v4/app/e$a;->DW:Landroid/support/v4/app/Fragment;

    goto :goto_2d

    :pswitch_20  #0x8
    const/4 p2, 0x0

    goto :goto_2d

    :cond_22
    :pswitch_22  #0x6
    iget-object v1, v1, Landroid/support/v4/app/e$a;->DW:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    :cond_28
    :pswitch_28  #0x7
    iget-object v1, v1, Landroid/support/v4/app/e$a;->DW:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_30
    return-object p2

    nop

    :pswitch_data_32
    .packed-switch 0x6
        :pswitch_22  #00000006
        :pswitch_28  #00000007
        :pswitch_20  #00000008
        :pswitch_1d  #00000009
    .end packed-switch
.end method

.method DW(Z)V
    .registers 8

    iget-object v0, p0, Landroid/support/v4/app/e;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_a2

    iget-object v2, p0, Landroid/support/v4/app/e;->FH:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/e$a;

    iget-object v3, v2, Landroid/support/v4/app/e$a;->DW:Landroid/support/v4/app/Fragment;

    if-eqz v3, :cond_21

    iget v4, p0, Landroid/support/v4/app/e;->gn:I

    invoke-static {v4}, Landroid/support/v4/app/x;->Hw(I)I

    move-result v4

    iget v5, p0, Landroid/support/v4/app/e;->u7:I

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/app/Fragment;->j6(II)V

    :cond_21
    iget v4, v2, Landroid/support/v4/app/e$a;->j6:I

    packed-switch v4, :pswitch_data_b0

    :pswitch_26  #0x2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown cmd: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v2, Landroid/support/v4/app/e$a;->j6:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3f  #0x9
    iget-object v4, p0, Landroid/support/v4/app/e;->DW:Landroid/support/v4/app/x;

    invoke-virtual {v4, v3}, Landroid/support/v4/app/x;->Ws(Landroid/support/v4/app/Fragment;)V

    goto :goto_8e

    :pswitch_45  #0x8
    iget-object v4, p0, Landroid/support/v4/app/e;->DW:Landroid/support/v4/app/x;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v4/app/x;->Ws(Landroid/support/v4/app/Fragment;)V

    goto :goto_8e

    :pswitch_4c  #0x7
    iget v4, v2, Landroid/support/v4/app/e$a;->Zo:I

    invoke-virtual {v3, v4}, Landroid/support/v4/app/Fragment;->j6(I)V

    iget-object v4, p0, Landroid/support/v4/app/e;->DW:Landroid/support/v4/app/x;

    invoke-virtual {v4, v3}, Landroid/support/v4/app/x;->Hw(Landroid/support/v4/app/Fragment;)V

    goto :goto_8e

    :pswitch_57  #0x6
    iget v4, v2, Landroid/support/v4/app/e$a;->v5:I

    invoke-virtual {v3, v4}, Landroid/support/v4/app/Fragment;->j6(I)V

    iget-object v4, p0, Landroid/support/v4/app/e;->DW:Landroid/support/v4/app/x;

    invoke-virtual {v4, v3}, Landroid/support/v4/app/x;->DW(Landroid/support/v4/app/Fragment;)V

    goto :goto_8e

    :pswitch_62  #0x5
    iget v4, v2, Landroid/support/v4/app/e$a;->Zo:I

    invoke-virtual {v3, v4}, Landroid/support/v4/app/Fragment;->j6(I)V

    iget-object v4, p0, Landroid/support/v4/app/e;->DW:Landroid/support/v4/app/x;

    invoke-virtual {v4, v3}, Landroid/support/v4/app/x;->Zo(Landroid/support/v4/app/Fragment;)V

    goto :goto_8e

    :pswitch_6d  #0x4
    iget v4, v2, Landroid/support/v4/app/e$a;->v5:I

    invoke-virtual {v3, v4}, Landroid/support/v4/app/Fragment;->j6(I)V

    iget-object v4, p0, Landroid/support/v4/app/e;->DW:Landroid/support/v4/app/x;

    invoke-virtual {v4, v3}, Landroid/support/v4/app/x;->QX(Landroid/support/v4/app/Fragment;)V

    goto :goto_8e

    :pswitch_78  #0x3
    iget v4, v2, Landroid/support/v4/app/e$a;->v5:I

    invoke-virtual {v3, v4}, Landroid/support/v4/app/Fragment;->j6(I)V

    iget-object v4, p0, Landroid/support/v4/app/e;->DW:Landroid/support/v4/app/x;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/support/v4/app/x;->j6(Landroid/support/v4/app/Fragment;Z)V

    goto :goto_8e

    :pswitch_84  #0x1
    iget v4, v2, Landroid/support/v4/app/e$a;->Zo:I

    invoke-virtual {v3, v4}, Landroid/support/v4/app/Fragment;->j6(I)V

    iget-object v4, p0, Landroid/support/v4/app/e;->DW:Landroid/support/v4/app/x;

    invoke-virtual {v4, v3}, Landroid/support/v4/app/x;->we(Landroid/support/v4/app/Fragment;)V

    :goto_8e
    iget-boolean v4, p0, Landroid/support/v4/app/e;->U2:Z

    if-nez v4, :cond_9e

    iget v2, v2, Landroid/support/v4/app/e$a;->j6:I

    const/4 v4, 0x3

    if-eq v2, v4, :cond_9e

    if-eqz v3, :cond_9e

    iget-object v2, p0, Landroid/support/v4/app/e;->DW:Landroid/support/v4/app/x;

    invoke-virtual {v2, v3}, Landroid/support/v4/app/x;->u7(Landroid/support/v4/app/Fragment;)V

    :cond_9e
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_8

    :cond_a2
    iget-boolean v0, p0, Landroid/support/v4/app/e;->U2:Z

    if-nez v0, :cond_af

    if-eqz p1, :cond_af

    iget-object p1, p0, Landroid/support/v4/app/e;->DW:Landroid/support/v4/app/x;

    iget v0, p1, Landroid/support/v4/app/x;->aM:I

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/x;->j6(IZ)V

    :cond_af
    return-void

    :pswitch_data_b0
    .packed-switch 0x1
        :pswitch_84  #00000001
        :pswitch_26  #00000002
        :pswitch_78  #00000003
        :pswitch_6d  #00000004
        :pswitch_62  #00000005
        :pswitch_57  #00000006
        :pswitch_4c  #00000007
        :pswitch_45  #00000008
        :pswitch_3f  #00000009
    .end packed-switch
.end method

.method DW(I)Z
    .registers 6

    iget-object v0, p0, Landroid/support/v4/app/e;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_23

    iget-object v3, p0, Landroid/support/v4/app/e;->FH:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/e$a;

    iget-object v3, v3, Landroid/support/v4/app/e$a;->DW:Landroid/support/v4/app/Fragment;

    if-eqz v3, :cond_19

    iget v3, v3, Landroid/support/v4/app/Fragment;->er:I

    goto :goto_1a

    :cond_19
    const/4 v3, 0x0

    :goto_1a
    if-eqz v3, :cond_20

    if-ne v3, p1, :cond_20

    const/4 p1, 0x1

    return p1

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_23
    return v1
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

    if-nez v0, :cond_8

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/e;->EQ:Z

    return-object p0

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This transaction is already being added to the back stack"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method VH()Z
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Landroid/support/v4/app/e;->FH:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    iget-object v2, p0, Landroid/support/v4/app/e;->FH:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/e$a;

    invoke-static {v2}, Landroid/support/v4/app/e;->DW(Landroid/support/v4/app/e$a;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v0, 0x1

    return v0

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1d
    return v0
.end method

.method public Zo()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/e;->we:Ljava/lang/String;

    return-object v0
.end method

.method public gn()V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/app/e;->a8:Ljava/util/ArrayList;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_19

    iget-object v2, p0, Landroid/support/v4/app/e;->a8:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_19
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/e;->a8:Ljava/util/ArrayList;

    :cond_1c
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
    .registers 5

    iget-boolean v0, p0, Landroid/support/v4/app/e;->J0:Z

    if-nez v0, :cond_4a

    sget-boolean v0, Landroid/support/v4/app/x;->j6:Z

    if-eqz v0, :cond_31

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Commit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/PrintWriter;

    new-instance v2, Labcd/p;

    invoke-direct {v2, v1}, Labcd/p;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v1, "  "

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0, v2}, Landroid/support/v4/app/e;->j6(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    :cond_31
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/e;->J0:Z

    iget-boolean v0, p0, Landroid/support/v4/app/e;->tp:Z

    if-eqz v0, :cond_3f

    iget-object v0, p0, Landroid/support/v4/app/e;->DW:Landroid/support/v4/app/x;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/x;->DW(Landroid/support/v4/app/e;)I

    move-result v0

    goto :goto_40

    :cond_3f
    const/4 v0, -0x1

    :goto_40
    iput v0, p0, Landroid/support/v4/app/e;->J8:I

    iget-object v0, p0, Landroid/support/v4/app/e;->DW:Landroid/support/v4/app/x;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/app/x;->j6(Landroid/support/v4/app/x$f;Z)V

    iget p1, p0, Landroid/support/v4/app/e;->J8:I

    return p1

    :cond_4a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "commit already called"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
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
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/support/v4/app/Fragment;",
            ")",
            "Landroid/support/v4/app/Fragment;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    const/4 v4, 0x0

    :goto_7
    iget-object v5, v0, Landroid/support/v4/app/e;->FH:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_ba

    iget-object v5, v0, Landroid/support/v4/app/e;->FH:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/e$a;

    iget v6, v5, Landroid/support/v4/app/e$a;->j6:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_b2

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x3

    const/16 v11, 0x9

    if-eq v6, v8, :cond_58

    if-eq v6, v10, :cond_41

    const/4 v8, 0x6

    if-eq v6, v8, :cond_41

    const/4 v8, 0x7

    if-eq v6, v8, :cond_b2

    const/16 v8, 0x8

    if-eq v6, v8, :cond_31

    goto/16 :goto_b7

    :cond_31
    iget-object v6, v0, Landroid/support/v4/app/e;->FH:Ljava/util/ArrayList;

    new-instance v8, Landroid/support/v4/app/e$a;

    invoke-direct {v8, v11, v3}, Landroid/support/v4/app/e$a;-><init>(ILandroid/support/v4/app/Fragment;)V

    invoke-virtual {v6, v4, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    iget-object v3, v5, Landroid/support/v4/app/e$a;->DW:Landroid/support/v4/app/Fragment;

    goto/16 :goto_b7

    :cond_41
    iget-object v6, v5, Landroid/support/v4/app/e$a;->DW:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v5, v5, Landroid/support/v4/app/e$a;->DW:Landroid/support/v4/app/Fragment;

    if-ne v5, v3, :cond_b7

    iget-object v3, v0, Landroid/support/v4/app/e;->FH:Ljava/util/ArrayList;

    new-instance v6, Landroid/support/v4/app/e$a;

    invoke-direct {v6, v11, v5}, Landroid/support/v4/app/e$a;-><init>(ILandroid/support/v4/app/Fragment;)V

    invoke-virtual {v3, v4, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    move-object v3, v9

    goto :goto_b7

    :cond_58
    iget-object v6, v5, Landroid/support/v4/app/e$a;->DW:Landroid/support/v4/app/Fragment;

    iget v8, v6, Landroid/support/v4/app/Fragment;->er:I

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v12

    sub-int/2addr v12, v7

    const/4 v13, 0x0

    :goto_62
    if-ltz v12, :cond_a2

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/support/v4/app/Fragment;

    iget v15, v14, Landroid/support/v4/app/Fragment;->er:I

    if-ne v15, v8, :cond_9f

    if-ne v14, v6, :cond_72

    const/4 v13, 0x1

    goto :goto_9f

    :cond_72
    if-ne v14, v3, :cond_81

    iget-object v3, v0, Landroid/support/v4/app/e;->FH:Ljava/util/ArrayList;

    new-instance v15, Landroid/support/v4/app/e$a;

    invoke-direct {v15, v11, v14}, Landroid/support/v4/app/e$a;-><init>(ILandroid/support/v4/app/Fragment;)V

    invoke-virtual {v3, v4, v15}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    move-object v3, v9

    :cond_81
    new-instance v15, Landroid/support/v4/app/e$a;

    invoke-direct {v15, v10, v14}, Landroid/support/v4/app/e$a;-><init>(ILandroid/support/v4/app/Fragment;)V

    iget v2, v5, Landroid/support/v4/app/e$a;->FH:I

    iput v2, v15, Landroid/support/v4/app/e$a;->FH:I

    iget v2, v5, Landroid/support/v4/app/e$a;->v5:I

    iput v2, v15, Landroid/support/v4/app/e$a;->v5:I

    iget v2, v5, Landroid/support/v4/app/e$a;->Hw:I

    iput v2, v15, Landroid/support/v4/app/e$a;->Hw:I

    iget v2, v5, Landroid/support/v4/app/e$a;->Zo:I

    iput v2, v15, Landroid/support/v4/app/e$a;->Zo:I

    iget-object v2, v0, Landroid/support/v4/app/e;->FH:Ljava/util/ArrayList;

    invoke-virtual {v2, v4, v15}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/2addr v4, v7

    :cond_9f
    :goto_9f
    add-int/lit8 v12, v12, -0x1

    goto :goto_62

    :cond_a2
    if-eqz v13, :cond_ac

    iget-object v2, v0, Landroid/support/v4/app/e;->FH:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    goto :goto_b7

    :cond_ac
    iput v7, v5, Landroid/support/v4/app/e$a;->j6:I

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b7

    :cond_b2
    iget-object v2, v5, Landroid/support/v4/app/e$a;->DW:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b7
    :goto_b7
    add-int/2addr v4, v7

    goto/16 :goto_7

    :cond_ba
    return-object v3
.end method

.method j6(I)V
    .registers 8

    iget-boolean v0, p0, Landroid/support/v4/app/e;->tp:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    sget-boolean v0, Landroid/support/v4/app/x;->j6:Z

    const-string v1, "FragmentManager"

    if-eqz v0, :cond_27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bump nesting in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " by "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    iget-object v0, p0, Landroid/support/v4/app/e;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_2e
    if-ge v2, v0, :cond_6a

    iget-object v3, p0, Landroid/support/v4/app/e;->FH:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/e$a;

    iget-object v4, v3, Landroid/support/v4/app/e$a;->DW:Landroid/support/v4/app/Fragment;

    if-eqz v4, :cond_67

    iget v5, v4, Landroid/support/v4/app/Fragment;->aM:I

    add-int/2addr v5, p1

    iput v5, v4, Landroid/support/v4/app/Fragment;->aM:I

    sget-boolean v4, Landroid/support/v4/app/x;->j6:Z

    if-eqz v4, :cond_67

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bump nesting of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Landroid/support/v4/app/e$a;->DW:Landroid/support/v4/app/Fragment;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Landroid/support/v4/app/e$a;->DW:Landroid/support/v4/app/Fragment;

    iget v3, v3, Landroid/support/v4/app/Fragment;->aM:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_67
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    :cond_6a
    return-void
.end method

.method j6(Landroid/support/v4/app/Fragment$c;)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/support/v4/app/e;->FH:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    iget-object v1, p0, Landroid/support/v4/app/e;->FH:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/e$a;

    invoke-static {v1}, Landroid/support/v4/app/e;->DW(Landroid/support/v4/app/e$a;)Z

    move-result v2

    if-eqz v2, :cond_1c

    iget-object v1, v1, Landroid/support/v4/app/e$a;->DW:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, p1}, Landroid/support/v4/app/Fragment;->j6(Landroid/support/v4/app/Fragment$c;)V

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1f
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
    .registers 5

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p3, p2}, Landroid/support/v4/app/e;->j6(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    return-void
.end method

.method public j6(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
    .registers 9

    if-eqz p3, :cond_da

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

    if-eqz v0, :cond_46

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

    :cond_46
    iget v0, p0, Landroid/support/v4/app/e;->Hw:I

    if-nez v0, :cond_4e

    iget v0, p0, Landroid/support/v4/app/e;->v5:I

    if-eqz v0, :cond_6d

    :cond_4e
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

    :cond_6d
    iget v0, p0, Landroid/support/v4/app/e;->Zo:I

    if-nez v0, :cond_75

    iget v0, p0, Landroid/support/v4/app/e;->VH:I

    if-eqz v0, :cond_94

    :cond_75
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

    :cond_94
    iget v0, p0, Landroid/support/v4/app/e;->Ws:I

    if-nez v0, :cond_9c

    iget-object v0, p0, Landroid/support/v4/app/e;->QX:Ljava/lang/CharSequence;

    if-eqz v0, :cond_b7

    :cond_9c
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

    :cond_b7
    iget v0, p0, Landroid/support/v4/app/e;->XL:I

    if-nez v0, :cond_bf

    iget-object v0, p0, Landroid/support/v4/app/e;->aM:Ljava/lang/CharSequence;

    if-eqz v0, :cond_da

    :cond_bf
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

    :cond_da
    iget-object v0, p0, Landroid/support/v4/app/e;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b2

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

    move-result v0

    const/4 v1, 0x0

    :goto_101
    if-ge v1, v0, :cond_1b2

    iget-object v2, p0, Landroid/support/v4/app/e;->FH:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/e$a;

    iget v3, v2, Landroid/support/v4/app/e$a;->j6:I

    packed-switch v3, :pswitch_data_1b4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cmd="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Landroid/support/v4/app/e$a;->j6:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_141

    :pswitch_124  #0x9
    const-string v3, "UNSET_PRIMARY_NAV"

    goto :goto_141

    :pswitch_127  #0x8
    const-string v3, "SET_PRIMARY_NAV"

    goto :goto_141

    :pswitch_12a  #0x7
    const-string v3, "ATTACH"

    goto :goto_141

    :pswitch_12d  #0x6
    const-string v3, "DETACH"

    goto :goto_141

    :pswitch_130  #0x5
    const-string v3, "SHOW"

    goto :goto_141

    :pswitch_133  #0x4
    const-string v3, "HIDE"

    goto :goto_141

    :pswitch_136  #0x3
    const-string v3, "REMOVE"

    goto :goto_141

    :pswitch_139  #0x2
    const-string v3, "REPLACE"

    goto :goto_141

    :pswitch_13c  #0x1
    const-string v3, "ADD"

    goto :goto_141

    :pswitch_13f  #0x0
    const-string v3, "NULL"

    :goto_141
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  Op #"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ": "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Landroid/support/v4/app/e$a;->DW:Landroid/support/v4/app/Fragment;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    if-eqz p3, :cond_1ae

    iget v3, v2, Landroid/support/v4/app/e$a;->FH:I

    if-nez v3, :cond_168

    iget v3, v2, Landroid/support/v4/app/e$a;->Hw:I

    if-eqz v3, :cond_187

    :cond_168
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "enterAnim=#"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Landroid/support/v4/app/e$a;->FH:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " exitAnim=#"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Landroid/support/v4/app/e$a;->Hw:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_187
    iget v3, v2, Landroid/support/v4/app/e$a;->v5:I

    if-nez v3, :cond_18f

    iget v3, v2, Landroid/support/v4/app/e$a;->Zo:I

    if-eqz v3, :cond_1ae

    :cond_18f
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "popEnterAnim=#"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Landroid/support/v4/app/e$a;->v5:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " popExitAnim=#"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v2, Landroid/support/v4/app/e$a;->Zo:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1ae
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_101

    :cond_1b2
    return-void

    nop

    :pswitch_data_1b4
    .packed-switch 0x0
        :pswitch_13f  #00000000
        :pswitch_13c  #00000001
        :pswitch_139  #00000002
        :pswitch_136  #00000003
        :pswitch_133  #00000004
        :pswitch_130  #00000005
        :pswitch_12d  #00000006
        :pswitch_12a  #00000007
        :pswitch_127  #00000008
        :pswitch_124  #00000009
    .end packed-switch
.end method

.method j6(Ljava/util/ArrayList;II)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/e;",
            ">;II)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-ne p3, p2, :cond_4

    return v0

    :cond_4
    iget-object v1, p0, Landroid/support/v4/app/e;->FH:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v1, :cond_52

    iget-object v4, p0, Landroid/support/v4/app/e;->FH:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/e$a;

    iget-object v4, v4, Landroid/support/v4/app/e$a;->DW:Landroid/support/v4/app/Fragment;

    if-eqz v4, :cond_1d

    iget v4, v4, Landroid/support/v4/app/Fragment;->er:I

    goto :goto_1e

    :cond_1d
    const/4 v4, 0x0

    :goto_1e
    if-eqz v4, :cond_4f

    if-eq v4, v2, :cond_4f

    move v2, p2

    :goto_23
    if-ge v2, p3, :cond_4e

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/e;

    iget-object v6, v5, Landroid/support/v4/app/e;->FH:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_32
    if-ge v7, v6, :cond_4b

    iget-object v8, v5, Landroid/support/v4/app/e;->FH:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v4/app/e$a;

    iget-object v8, v8, Landroid/support/v4/app/e$a;->DW:Landroid/support/v4/app/Fragment;

    if-eqz v8, :cond_43

    iget v8, v8, Landroid/support/v4/app/Fragment;->er:I

    goto :goto_44

    :cond_43
    const/4 v8, 0x0

    :goto_44
    if-ne v8, v4, :cond_48

    const/4 p1, 0x1

    return p1

    :cond_48
    add-int/lit8 v7, v7, 0x1

    goto :goto_32

    :cond_4b
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    :cond_4e
    move v2, v4

    :cond_4f
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_52
    return v0
.end method

.method public j6(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/e;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    sget-boolean v0, Landroid/support/v4/app/x;->j6:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Run: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "FragmentManager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Landroid/support/v4/app/e;->tp:Z

    if-eqz p1, :cond_2e

    iget-object p1, p0, Landroid/support/v4/app/e;->DW:Landroid/support/v4/app/x;

    invoke-virtual {p1, p0}, Landroid/support/v4/app/x;->j6(Landroid/support/v4/app/e;)V

    :cond_2e
    const/4 p1, 0x1

    return p1
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

    if-ltz v1, :cond_25

    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/app/e;->J8:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_25
    iget-object v1, p0, Landroid/support/v4/app/e;->we:Ljava/lang/String;

    if-eqz v1, :cond_33

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/app/e;->we:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_33
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method v5()V
    .registers 9

    iget-object v0, p0, Landroid/support/v4/app/e;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    const/4 v3, 0x1

    if-ge v2, v0, :cond_9d

    iget-object v4, p0, Landroid/support/v4/app/e;->FH:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/e$a;

    iget-object v5, v4, Landroid/support/v4/app/e$a;->DW:Landroid/support/v4/app/Fragment;

    if-eqz v5, :cond_1e

    iget v6, p0, Landroid/support/v4/app/e;->gn:I

    iget v7, p0, Landroid/support/v4/app/e;->u7:I

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/app/Fragment;->j6(II)V

    :cond_1e
    iget v6, v4, Landroid/support/v4/app/e$a;->j6:I

    packed-switch v6, :pswitch_data_aa

    :pswitch_23  #0x2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown cmd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v4, Landroid/support/v4/app/e$a;->j6:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_3c  #0x9
    iget-object v6, p0, Landroid/support/v4/app/e;->DW:Landroid/support/v4/app/x;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/support/v4/app/x;->Ws(Landroid/support/v4/app/Fragment;)V

    goto :goto_8a

    :pswitch_43  #0x8
    iget-object v6, p0, Landroid/support/v4/app/e;->DW:Landroid/support/v4/app/x;

    invoke-virtual {v6, v5}, Landroid/support/v4/app/x;->Ws(Landroid/support/v4/app/Fragment;)V

    goto :goto_8a

    :pswitch_49  #0x7
    iget v6, v4, Landroid/support/v4/app/e$a;->FH:I

    invoke-virtual {v5, v6}, Landroid/support/v4/app/Fragment;->j6(I)V

    iget-object v6, p0, Landroid/support/v4/app/e;->DW:Landroid/support/v4/app/x;

    invoke-virtual {v6, v5}, Landroid/support/v4/app/x;->DW(Landroid/support/v4/app/Fragment;)V

    goto :goto_8a

    :pswitch_54  #0x6
    iget v6, v4, Landroid/support/v4/app/e$a;->Hw:I

    invoke-virtual {v5, v6}, Landroid/support/v4/app/Fragment;->j6(I)V

    iget-object v6, p0, Landroid/support/v4/app/e;->DW:Landroid/support/v4/app/x;

    invoke-virtual {v6, v5}, Landroid/support/v4/app/x;->Hw(Landroid/support/v4/app/Fragment;)V

    goto :goto_8a

    :pswitch_5f  #0x5
    iget v6, v4, Landroid/support/v4/app/e$a;->FH:I

    invoke-virtual {v5, v6}, Landroid/support/v4/app/Fragment;->j6(I)V

    iget-object v6, p0, Landroid/support/v4/app/e;->DW:Landroid/support/v4/app/x;

    invoke-virtual {v6, v5}, Landroid/support/v4/app/x;->QX(Landroid/support/v4/app/Fragment;)V

    goto :goto_8a

    :pswitch_6a  #0x4
    iget v6, v4, Landroid/support/v4/app/e$a;->Hw:I

    invoke-virtual {v5, v6}, Landroid/support/v4/app/Fragment;->j6(I)V

    iget-object v6, p0, Landroid/support/v4/app/e;->DW:Landroid/support/v4/app/x;

    invoke-virtual {v6, v5}, Landroid/support/v4/app/x;->Zo(Landroid/support/v4/app/Fragment;)V

    goto :goto_8a

    :pswitch_75  #0x3
    iget v6, v4, Landroid/support/v4/app/e$a;->Hw:I

    invoke-virtual {v5, v6}, Landroid/support/v4/app/Fragment;->j6(I)V

    iget-object v6, p0, Landroid/support/v4/app/e;->DW:Landroid/support/v4/app/x;

    invoke-virtual {v6, v5}, Landroid/support/v4/app/x;->we(Landroid/support/v4/app/Fragment;)V

    goto :goto_8a

    :pswitch_80  #0x1
    iget v6, v4, Landroid/support/v4/app/e$a;->FH:I

    invoke-virtual {v5, v6}, Landroid/support/v4/app/Fragment;->j6(I)V

    iget-object v6, p0, Landroid/support/v4/app/e;->DW:Landroid/support/v4/app/x;

    invoke-virtual {v6, v5, v1}, Landroid/support/v4/app/x;->j6(Landroid/support/v4/app/Fragment;Z)V

    :goto_8a
    iget-boolean v6, p0, Landroid/support/v4/app/e;->U2:Z

    if-nez v6, :cond_99

    iget v4, v4, Landroid/support/v4/app/e$a;->j6:I

    if-eq v4, v3, :cond_99

    if-eqz v5, :cond_99

    iget-object v3, p0, Landroid/support/v4/app/e;->DW:Landroid/support/v4/app/x;

    invoke-virtual {v3, v5}, Landroid/support/v4/app/x;->u7(Landroid/support/v4/app/Fragment;)V

    :cond_99
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_8

    :cond_9d
    iget-boolean v0, p0, Landroid/support/v4/app/e;->U2:Z

    if-nez v0, :cond_a8

    iget-object v0, p0, Landroid/support/v4/app/e;->DW:Landroid/support/v4/app/x;

    iget v1, v0, Landroid/support/v4/app/x;->aM:I

    invoke-virtual {v0, v1, v3}, Landroid/support/v4/app/x;->j6(IZ)V

    :cond_a8
    return-void

    nop

    :pswitch_data_aa
    .packed-switch 0x1
        :pswitch_80  #00000001
        :pswitch_23  #00000002
        :pswitch_75  #00000003
        :pswitch_6a  #00000004
        :pswitch_5f  #00000005
        :pswitch_54  #00000006
        :pswitch_49  #00000007
        :pswitch_43  #00000008
        :pswitch_3c  #00000009
    .end packed-switch
.end method
