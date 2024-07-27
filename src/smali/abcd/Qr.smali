.class public final Labcd/Qr;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/ls;


# static fields
.field public static final DW:Labcd/Qr;

.field public static final j6:Labcd/Qr;


# instance fields
.field private final FH:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Labcd/Qr;

    invoke-direct {v0}, Labcd/Qr;-><init>()V

    sput-object v0, Labcd/Qr;->j6:Labcd/Qr;

    new-instance v0, Labcd/Qr;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Labcd/Qr;-><init>(Z)V

    sput-object v0, Labcd/Qr;->DW:Labcd/Qr;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/Qr;->FH:Z

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Labcd/Qr;->FH:Z

    return-void
.end method

.method private j6(Labcd/cs;)I
    .registers 6

    const/4 v1, 0x0

    invoke-virtual {p1}, Labcd/Xt;->size()I

    move-result v3

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v0, v3, :cond_0

    invoke-virtual {p1, v0}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v1

    invoke-virtual {v1}, Labcd/bs;->Hw()I

    move-result v1

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    return v2
.end method


# virtual methods
.method public j6()I
    .registers 2

    const/16 v0, 0x10

    return v0
.end method

.method public j6(Labcd/es;Labcd/bs;Labcd/bs;)Z
    .registers 7

    const/4 v1, 0x0

    invoke-virtual {p2}, Labcd/bs;->getType()Labcd/Qs;

    move-result-object v0

    sget-object v2, Labcd/Qs;->VH:Labcd/Qs;

    if-eq v0, v2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p3}, Labcd/bs;->J8()Labcd/Rs;

    move-result-object v0

    instance-of v0, v0, Labcd/ys;

    if-nez v0, :cond_2

    invoke-virtual {p2}, Labcd/bs;->J8()Labcd/Rs;

    move-result-object v0

    instance-of v0, v0, Labcd/ys;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Labcd/es;->Hw()I

    move-result v0

    const/16 v2, 0xf

    if-ne v0, v2, :cond_1

    invoke-virtual {p2}, Labcd/bs;->J8()Labcd/Rs;

    move-result-object v0

    check-cast v0, Labcd/ys;

    invoke-virtual {v0}, Labcd/Ds;->VH()Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Labcd/bs;->J8()Labcd/Rs;

    move-result-object v0

    check-cast v0, Labcd/ys;

    invoke-virtual {p1}, Labcd/es;->Hw()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move v0, v1

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0}, Labcd/Ds;->we()Z

    move-result v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {v0}, Labcd/ys;->rN()I

    move-result v0

    neg-int v0, v0

    invoke-static {v0}, Labcd/ys;->j6(I)Labcd/ys;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Ds;->VH()Z

    move-result v0

    goto :goto_0

    :pswitch_3
    invoke-virtual {v0}, Labcd/Ds;->VH()Z

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public j6(Labcd/es;Labcd/cs;)Z
    .registers 5

    iget-boolean v0, p0, Labcd/Qr;->FH:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Labcd/es;->VH()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Labcd/Qr;->j6(Labcd/cs;)I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
