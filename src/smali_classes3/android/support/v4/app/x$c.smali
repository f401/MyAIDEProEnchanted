.class Landroid/support/v4/app/x$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field public final DW:Landroid/animation/Animator;

.field public final j6:Landroid/view/animation/Animation;


# direct methods
.method private constructor <init>(Landroid/animation/Animator;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/x$c;->j6:Landroid/view/animation/Animation;

    iput-object p1, p0, Landroid/support/v4/app/x$c;->DW:Landroid/animation/Animator;

    if-eqz p1, :cond_b

    return-void

    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Animator cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Landroid/animation/Animator;Landroid/support/v4/app/s;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/support/v4/app/x$c;-><init>(Landroid/animation/Animator;)V

    return-void
.end method

.method private constructor <init>(Landroid/view/animation/Animation;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/app/x$c;->j6:Landroid/view/animation/Animation;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/x$c;->DW:Landroid/animation/Animator;

    if-eqz p1, :cond_b

    return-void

    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Animation cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Landroid/view/animation/Animation;Landroid/support/v4/app/s;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/support/v4/app/x$c;-><init>(Landroid/view/animation/Animation;)V

    return-void
.end method
