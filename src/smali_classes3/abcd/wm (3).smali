.class public final Labcd/wm;
.super Labcd/Am;


# instance fields
.field private final DW:Labcd/Js;


# direct methods
.method public constructor <init>(Labcd/Js;)V
    .registers 3

    const-string v0, "Signature"

    invoke-direct {p0, v0}, Labcd/Am;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_a

    iput-object p1, p0, Labcd/wm;->DW:Labcd/Js;

    return-void

    :cond_a
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "signature == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public Hw()I
    .registers 2

    const/16 v0, 0x8

    return v0
.end method

.method public j6()Labcd/Js;
    .registers 2

    iget-object v0, p0, Labcd/wm;->DW:Labcd/Js;

    return-object v0
.end method
