.class public final Labcd/wm;
.super Labcd/Am;


# instance fields
.field private final DW:Labcd/Js;


# direct methods
.method public constructor <init>(Labcd/Js;)V
    .registers 4

    const-string v0, "Signature"

    invoke-direct {p0, v0}, Labcd/Am;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Labcd/wm;->DW:Labcd/Js;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "signature == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
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
