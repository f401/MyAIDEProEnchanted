.class public final Labcd/pm;
.super Labcd/Am;


# instance fields
.field private final DW:Labcd/Pm;


# direct methods
.method public constructor <init>(Labcd/Pm;)V
    .registers 4

    const-string v0, "LineNumberTable"

    invoke-direct {p0, v0}, Labcd/Am;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, Labcd/hu;->Zo()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Labcd/pm;->DW:Labcd/Pm;

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Labcd/iu;

    const-string v1, "lineNumbers.isMutable()"

    invoke-direct {v0, v1}, Labcd/iu;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "lineNumbers == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public Hw()I
    .registers 2

    iget-object v0, p0, Labcd/pm;->DW:Labcd/Pm;

    invoke-virtual {v0}, Labcd/Xt;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public j6()Labcd/Pm;
    .registers 2

    iget-object v0, p0, Labcd/pm;->DW:Labcd/Pm;

    return-object v0
.end method
