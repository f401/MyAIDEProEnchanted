.class public final Labcd/co;
.super Labcd/Xt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/co$a;,
        Labcd/co$b;,
        Labcd/co$c;
    }
.end annotation


# static fields
.field public static final FH:Labcd/co;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Labcd/co;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Labcd/co;-><init>(I)V

    sput-object v0, Labcd/co;->FH:Labcd/co;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/Xt;-><init>(I)V

    return-void
.end method

.method public static j6(Labcd/Wn;)Labcd/co;
    .registers 6

    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v0

    new-instance v1, Labcd/co$c;

    invoke-direct {v1, v0}, Labcd/co$c;-><init>(I)V

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_4b

    invoke-virtual {p0, v2}, Labcd/Wn;->get(I)Labcd/Vn;

    move-result-object v3

    instance-of v4, v3, Labcd/do;

    if-eqz v4, :cond_23

    move-object v4, v3

    check-cast v4, Labcd/do;

    invoke-virtual {v4}, Labcd/do;->we()Labcd/ds;

    move-result-object v4

    invoke-virtual {v3}, Labcd/Vn;->FH()I

    move-result v3

    invoke-virtual {v1, v3, v4}, Labcd/co$c;->j6(ILabcd/ds;)V

    goto :goto_48

    :cond_23
    instance-of v4, v3, Labcd/eo;

    if-eqz v4, :cond_36

    move-object v4, v3

    check-cast v4, Labcd/eo;

    invoke-virtual {v4}, Labcd/eo;->we()Labcd/bs;

    move-result-object v4

    invoke-virtual {v3}, Labcd/Vn;->FH()I

    move-result v3

    invoke-virtual {v1, v3, v4}, Labcd/co$c;->DW(ILabcd/bs;)V

    goto :goto_48

    :cond_36
    instance-of v4, v3, Labcd/bo;

    if-eqz v4, :cond_48

    move-object v4, v3

    check-cast v4, Labcd/bo;

    invoke-virtual {v4}, Labcd/bo;->we()Labcd/bs;

    move-result-object v4

    invoke-virtual {v3}, Labcd/Vn;->FH()I

    move-result v3

    invoke-virtual {v1, v3, v4}, Labcd/co$c;->j6(ILabcd/bs;)V

    :cond_48
    :goto_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_4b
    invoke-virtual {v1}, Labcd/co$c;->j6()Labcd/co;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public get(I)Labcd/co$b;
    .registers 2

    invoke-virtual {p0, p1}, Labcd/Xt;->DW(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/co$b;

    return-object p1
.end method

.method public j6(ILabcd/co$b;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Labcd/Xt;->j6(ILjava/lang/Object;)V

    return-void
.end method
