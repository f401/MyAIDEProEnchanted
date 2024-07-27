.class public final Labcd/km;
.super Labcd/Am;


# instance fields
.field private final DW:Labcd/Ms;


# direct methods
.method public constructor <init>(Labcd/Ms;)V
    .registers 4

    const-string v0, "ConstantValue"

    invoke-direct {p0, v0}, Labcd/Am;-><init>(Ljava/lang/String;)V

    instance-of v0, p1, Labcd/Js;

    if-nez v0, :cond_1

    instance-of v0, p1, Labcd/ys;

    if-nez v0, :cond_1

    instance-of v0, p1, Labcd/Es;

    if-nez v0, :cond_1

    instance-of v0, p1, Labcd/xs;

    if-nez v0, :cond_1

    instance-of v0, p1, Labcd/us;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "constantValue == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad type for constantValue"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Labcd/km;->DW:Labcd/Ms;

    return-void
.end method


# virtual methods
.method public Hw()I
    .registers 2

    const/16 v0, 0x8

    return v0
.end method

.method public j6()Labcd/Ms;
    .registers 2

    iget-object v0, p0, Labcd/km;->DW:Labcd/Ms;

    return-object v0
.end method
