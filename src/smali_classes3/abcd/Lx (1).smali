.class final Labcd/Lx;
.super Labcd/Ix;


# instance fields
.field private final DW:Labcd/Jx;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Labcd/Ix;-><init>()V

    new-instance v0, Labcd/Jx;

    invoke-direct {v0}, Labcd/Jx;-><init>()V

    iput-object v0, p0, Labcd/Lx;->DW:Labcd/Jx;

    return-void
.end method


# virtual methods
.method public final j6(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .registers 5

    if-eq p2, p1, :cond_17

    if-eqz p2, :cond_f

    iget-object v0, p0, Labcd/Lx;->DW:Labcd/Jx;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Labcd/Jx;->j6(Ljava/lang/Throwable;Z)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_f
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The suppressed exception cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Self suppression is not allowed."

    invoke-direct {p1, v0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
