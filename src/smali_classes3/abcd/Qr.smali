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

    invoke-virtual {p1}, Labcd/Xt;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v1, v0, :cond_14

    invoke-virtual {p1, v1}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v3

    invoke-virtual {v3}, Labcd/bs;->Hw()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_14
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

    invoke-virtual {p2}, Labcd/bs;->getType()Labcd/Qs;

    move-result-object v0

    sget-object v1, Labcd/Qs;->VH:Labcd/Qs;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_a

    return v2

    :cond_a
    invoke-virtual {p3}, Labcd/bs;->J8()Labcd/Rs;

    move-result-object v0

    instance-of v0, v0, Labcd/ys;

    if-nez v0, :cond_2e

    invoke-virtual {p2}, Labcd/bs;->J8()Labcd/Rs;

    move-result-object p3

    instance-of p3, p3, Labcd/ys;

    if-eqz p3, :cond_2d

    invoke-virtual {p1}, Labcd/es;->Hw()I

    move-result p1

    const/16 p3, 0xf

    if-ne p1, p3, :cond_2d

    invoke-virtual {p2}, Labcd/bs;->J8()Labcd/Rs;

    move-result-object p1

    check-cast p1, Labcd/ys;

    :goto_28
    invoke-virtual {p1}, Labcd/Ds;->VH()Z

    move-result p1

    return p1

    :cond_2d
    return v2

    :cond_2e
    invoke-virtual {p3}, Labcd/bs;->J8()Labcd/Rs;

    move-result-object p2

    check-cast p2, Labcd/ys;

    invoke-virtual {p1}, Labcd/es;->Hw()I

    move-result p1

    packed-switch p1, :pswitch_data_50

    :pswitch_3b  #0x13
    return v2

    :pswitch_3c  #0x17, 0x18, 0x19
    invoke-virtual {p2}, Labcd/Ds;->we()Z

    move-result p1

    return p1

    :pswitch_41  #0xf
    invoke-virtual {p2}, Labcd/ys;->rN()I

    move-result p1

    neg-int p1, p1

    invoke-static {p1}, Labcd/ys;->j6(I)Labcd/ys;

    move-result-object p1

    goto :goto_28

    :pswitch_4b  #0xe, 0x10, 0x11, 0x12, 0x14, 0x15, 0x16
    invoke-virtual {p2}, Labcd/Ds;->VH()Z

    move-result p1

    return p1

    :pswitch_data_50
    .packed-switch 0xe
        :pswitch_4b  #0000000e
        :pswitch_41  #0000000f
        :pswitch_4b  #00000010
        :pswitch_4b  #00000011
        :pswitch_4b  #00000012
        :pswitch_3b  #00000013
        :pswitch_4b  #00000014
        :pswitch_4b  #00000015
        :pswitch_4b  #00000016
        :pswitch_3c  #00000017
        :pswitch_3c  #00000018
        :pswitch_3c  #00000019
    .end packed-switch
.end method

.method public j6(Labcd/es;Labcd/cs;)Z
    .registers 4

    iget-boolean v0, p0, Labcd/Qr;->FH:Z

    if-nez v0, :cond_13

    invoke-virtual {p1}, Labcd/es;->VH()Z

    move-result p1

    if-eqz p1, :cond_13

    invoke-direct {p0, p2}, Labcd/Qr;->j6(Labcd/cs;)I

    move-result p1

    const/4 p2, 0x6

    if-lt p1, p2, :cond_13

    const/4 p1, 0x1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    return p1
.end method
