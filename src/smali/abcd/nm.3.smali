.class public final Labcd/nm;
.super Labcd/Am;


# instance fields
.field private final DW:Labcd/Ss;


# direct methods
.method public constructor <init>(Labcd/Ss;)V
    .registers 4

    const-string v0, "Exceptions"

    invoke-direct {p0, v0}, Labcd/Am;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p1}, Labcd/Ss;->Zo()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Labcd/nm;->DW:Labcd/Ss;

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Labcd/iu;

    const-string v1, "exceptions.isMutable()"

    invoke-direct {v0, v1}, Labcd/iu;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "exceptions == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
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
