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

    move-result v3

    new-instance v4, Labcd/co$c;

    invoke-direct {v4, v3}, Labcd/co$c;-><init>(I)V

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_3

    invoke-virtual {p0, v2}, Labcd/Wn;->get(I)Labcd/Vn;

    move-result-object v1

    instance-of v0, v1, Labcd/do;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Labcd/do;

    invoke-virtual {v0}, Labcd/do;->we()Labcd/ds;

    move-result-object v0

    invoke-virtual {v1}, Labcd/Vn;->FH()I

    move-result v1

    invoke-virtual {v4, v1, v0}, Labcd/co$c;->j6(ILabcd/ds;)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    instance-of v0, v1, Labcd/eo;

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, Labcd/eo;

    invoke-virtual {v0}, Labcd/eo;->we()Labcd/bs;

    move-result-object v0

    invoke-virtual {v1}, Labcd/Vn;->FH()I

    move-result v1

    invoke-virtual {v4, v1, v0}, Labcd/co$c;->DW(ILabcd/bs;)V

    goto :goto_1

    :cond_2
    instance-of v0, v1, Labcd/bo;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Labcd/bo;

    invoke-virtual {v0}, Labcd/bo;->we()Labcd/bs;

    move-result-object v0

    invoke-virtual {v1}, Labcd/Vn;->FH()I

    move-result v1

    invoke-virtual {v4, v1, v0}, Labcd/co$c;->j6(ILabcd/bs;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Labcd/co$c;->j6()Labcd/co;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public get(I)Labcd/co$b;
    .registers 3

    invoke-virtual {p0, p1}, Labcd/Xt;->DW(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/co$b;

    return-object v0
.end method

.method public j6(ILabcd/co$b;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Labcd/Xt;->j6(ILjava/lang/Object;)V

    return-void
.end method
