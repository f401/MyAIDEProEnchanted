.class public abstract Labcd/Cm;
.super Labcd/Am;


# instance fields
.field private final DW:Labcd/Kr;

.field private final FH:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Labcd/Kr;I)V
    .registers 6

    invoke-direct {p0, p1}, Labcd/Am;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p2}, Labcd/hu;->Zo()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    iput-object p2, p0, Labcd/Cm;->DW:Labcd/Kr;

    iput p3, p0, Labcd/Cm;->FH:I

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Labcd/iu;

    const-string v1, "parameterAnnotations.isMutable()"

    invoke-direct {v0, v1}, Labcd/iu;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "parameterAnnotations == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final Hw()I
    .registers 2

    iget v0, p0, Labcd/Cm;->FH:I

    add-int/lit8 v0, v0, 0x6

    return v0
.end method

.method public final j6()Labcd/Kr;
    .registers 2

    iget-object v0, p0, Labcd/Cm;->DW:Labcd/Kr;

    return-object v0
.end method
