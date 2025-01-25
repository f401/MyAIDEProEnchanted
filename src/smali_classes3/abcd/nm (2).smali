.class public final Labcd/nm;
.super Labcd/Am;


# instance fields
.field private final DW:Labcd/Ss;


# direct methods
.method public constructor <init>(Labcd/Ss;)V
    .registers 3

    const-string v0, "Exceptions"

    invoke-direct {p0, v0}, Labcd/Am;-><init>(Ljava/lang/String;)V

    :try_start_5
    invoke-interface {p1}, Labcd/Ss;->Zo()Z

    move-result v0
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_9} :catch_16

    if-nez v0, :cond_e

    iput-object p1, p0, Labcd/nm;->DW:Labcd/Ss;

    return-void

    :cond_e
    :try_start_e
    new-instance p1, Labcd/iu;

    const-string v0, "exceptions.isMutable()"

    invoke-direct {p1, v0}, Labcd/iu;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_16
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_16} :catch_16

    :catch_16
    move-exception p1

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "exceptions == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public Hw()I
    .registers 2

    iget-object v0, p0, Labcd/nm;->DW:Labcd/Ss;

    invoke-interface {v0}, Labcd/Ss;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public j6()Labcd/Ss;
    .registers 2

    iget-object v0, p0, Labcd/nm;->DW:Labcd/Ss;

    return-object v0
.end method
